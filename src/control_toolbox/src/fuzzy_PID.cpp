#include <control_toolbox/fuzzy_PID.h>

FuzzyPID::FuzzyPID(double e_max, double de_max, double kp_max, double ki_max, double kd_max, double Kp0, double Ki0, double Kd0)
: emax(e_max), demax(de_max), delta_Kp_max(kp_max), delta_Ki_max(ki_max), delta_Kd_max(kd_max), 
e_mf_paras(NULL), de_mf_paras(NULL), Kp_mf_paras(NULL), Ki_mf_paras(NULL), Kd_mf_paras(NULL)
{
    e = 0;
    de = 0;
    Ke = (N/2)/emax;
    Kde = (N/2)/demax;
    Ku_p = delta_Kp_max/(N/2);
    Ku_i = delta_Ki_max/(N/2);
    Ku_d = delta_Kd_max/(N/2);
    mf_t_e  = "No type";
    mf_t_de = "No type";
    mf_t_Kp = "No type";
    mf_t_Ki = "No type";
    mf_t_Kd = "No type";
    Kp = Kp0;
    Ki = Ki0;
    Kd = Kd0;
    A = Kp + Ki + Kd;
    B = -2*Kd-Kp;
    C = Kd;
}

FuzzyPID::FuzzyPID(double *fuzzyLimit, double *pidInitVal)
{
    e = 0;
    de = 0;
    emax  = fuzzyLimit[0];
    demax = fuzzyLimit[1];
    delta_Kp_max = fuzzyLimit[2];
    delta_Ki_max = fuzzyLimit[3];
    delta_Kd_max = fuzzyLimit[4];
    Ke = (N/2)/emax;
    Kde = (N/2)/demax;
    Ku_p = delta_Kp_max/(N/2);
    Ku_i = delta_Ki_max/(N/2);
    Ku_d = delta_Kd_max/(N/2);
    mf_t_e  = "No type";
    mf_t_de = "No type";
    mf_t_Kp = "No type";
    mf_t_Ki = "No type";
    mf_t_Kd = "No type";
    e_mf_paras  = NULL;
    de_mf_paras = NULL;
    Kp_mf_paras = NULL;
    Ki_mf_paras = NULL;
    Kd_mf_paras = NULL;

    Kp = pidInitVal[0];
    Ki = pidInitVal[1];
    Kd = pidInitVal[2];
    A = Kp + Ki + Kd;
    B = -2*Kd-Kp;
    C = Kd;   
}

FuzzyPID::~FuzzyPID()
{
    delete [] e_mf_paras;
    delete [] de_mf_paras;
    delete [] Kp_mf_paras;
    delete [] Ki_mf_paras;
    delete [] Kd_mf_paras;
}

//三角隶属函数
double FuzzyPID::trimf(double x, double a, double b, double c)
{
    double u;
    if(x>=a&&x<=b)
         u=(x-a)/(b-a);
    else if(x>b&&x<=c)
         u=(c-x)/(c-b);
    else 
         u=0.0;
    return u;
}

//正态隶属函数
double FuzzyPID::gaussmf(double x, double ave, double sigma)
{
    double u;
    if(sigma<0)
    {
        cout << "In gaussmf, sigma must larger than 0"  << endl;
    }
    u=exp(-pow(((x-ave)/sigma),2));
    return u;
}

//梯形隶属函数
double FuzzyPID::trapmf(double x, double a, double b, double c, double d)
{
    double u;
    if(x>=a&&x<b)
         u=(x-a)/(b-a);
    else  if(x>=b&&x<c)
         u=1;
    else if(x>=c&&x<=d)
         u=(d-x)/(d-c);
    else 
         u=0;
    return 0;
}

//设置模糊规则Matrix
void FuzzyPID::setRuleMatrix(int kp_m[N][N], int ki_m[N][N], int kd_m[N][N])
{
    for(int i=0; i<N; i++)
        for(int j=0; j<N; j++)
        {
            Kp_rule_matrix[i][j] = kp_m[i][j];
            Ki_rule_matrix[i][j] = ki_m[i][j];
            Kd_rule_matrix[i][j] = kd_m[i][j];
        }
}

//设置模糊隶属度函数的子函数
void FuzzyPID::setMf_sub(const string & type, double * paras, int n)
{
    int N_mf_e, N_mf_de, N_mf_Kp, N_mf_Ki, N_mf_Kd;
    switch(n)
    {
        case 0:
               if(type=="trimf"||type=="gaussmf"||type=="trapmf")
                      mf_t_e = type;
                else
                      cout << "Type of membership function must be \"trimf\" or \"gaussmf\"  or \"trapmf\" " << endl;
                if(mf_t_e == "trimf")
                      N_mf_e = 3;
                else if(mf_t_e == "gaussmf")
                      N_mf_e = 2;
                else if(mf_t_e == "trapmf")
                      N_mf_e = 4;

                e_mf_paras = new double [N*N_mf_e];
                for(int i=0; i<N*N_mf_e; i++)
                      e_mf_paras[i] = paras[i];
                break;

        case 1:
               if(type=="trimf"||type=="gaussmf"||type=="trapmf")
                      mf_t_de = type;
                else
                      cout << "Type of membership function must be \"trimf\" or \"gaussmf\"  or \"trapmf\" " << endl;
                if(mf_t_de == "trimf")
                      N_mf_de = 3;
                else if(mf_t_de == "gaussmf")
                      N_mf_de = 2;
                else if(mf_t_de == "trapmf")
                      N_mf_de = 4;

                de_mf_paras = new double [N*N_mf_de];
                for(int i=0; i<N*N_mf_e; i++)
                      de_mf_paras[i] = paras[i];
                break;

        case 2:
               if(type=="trimf"||type=="gaussmf"||type=="trapmf")
                      mf_t_Kp = type;
                else
                      cout << "Type of membership function must be \"trimf\" or \"gaussmf\"  or \"trapmf\" " << endl;
                if(mf_t_Kp == "trimf")
                      N_mf_Kp = 3;
                else if(mf_t_Kp == "gaussmf")
                      N_mf_Kp = 2;
                else if(mf_t_Kp == "trapmf")
                      N_mf_Kp = 4;

                Kp_mf_paras = new double [N*N_mf_Kp];
                for(int i=0; i<N*N_mf_Kp; i++)
                      Kp_mf_paras[i] = paras[i];
                break;

        case 3:
               if(type=="trimf"||type=="gaussmf"||type=="trapmf")
                      mf_t_Ki = type;
                else
                      cout << "Type of membership function must be \"trimf\" or \"gaussmf\"  or \"trapmf\" " << endl;
                if(mf_t_Ki == "trimf")
                      N_mf_Ki = 3;
                else if(mf_t_Ki == "gaussmf")
                      N_mf_Ki = 2;
                else if(mf_t_Ki == "trapmf")
                      N_mf_Ki = 4;

                Ki_mf_paras = new double [N*N_mf_Ki];
                for(int i=0; i<N*N_mf_Ki; i++)
                      Ki_mf_paras[i] = paras[i];
                break;

        case 4:
               if(type=="trimf"||type=="gaussmf"||type=="trapmf")
                      mf_t_Kd = type;
                else
                      cout << "Type of membership function must be \"trimf\" or \"gaussmf\"  or \"trapmf\" " << endl;
                if(mf_t_Kd == "trimf")
                      N_mf_Kd = 3;
                else if(mf_t_Kd == "gaussmf")
                      N_mf_Kd = 2;
                else if(mf_t_Kd == "trapmf")
                      N_mf_Kd = 4;

                Kd_mf_paras = new double [N*N_mf_Kd];
                for(int i=0; i<N*N_mf_Kd; i++)
                      Kd_mf_paras[i] = paras[i];
                break;

        default: break;
    }
}

//设置模糊隶属度函数的类型和参数
void FuzzyPID::setMf(const string & mf_type_e,  double * e_mf,
                     const string & mf_type_de, double * de_mf,
                     const string & mf_type_Kp, double * Kp_mf,
                     const string & mf_type_Ki, double * Ki_mf,
                     const string & mf_type_Kd, double * Kd_mf)
{
    setMf_sub(mf_type_e,   e_mf, 0);
    setMf_sub(mf_type_de, de_mf, 1);
    setMf_sub(mf_type_Kp, Kp_mf, 2);
    setMf_sub(mf_type_Ki, Ki_mf, 3);
    setMf_sub(mf_type_Kd, Kd_mf, 4);
}

//实现模糊控制
void FuzzyPID::realize(double e_in, double de_in, double &Kp_out, double &Ki_out, double &Kd_out)
{
    double u_e[N], u_de[N], u_u[N];
    int u_e_index[3], u_de_index[3];   //假设一个输入最多激活三个模糊子集
    double delta_Kp, delta_Ki, delta_Kd;


    e = e_in;
    de = de_in;
    e = Ke * e;
    de = Kde * de;
    /*将误差e模糊化*/
    int j = 0;
    for(int i=0; i<N; i++)
    {
        if(mf_t_e=="trimf")
            u_e[i]=trimf(e, e_mf_paras[i*3],e_mf_paras[i*3+1],e_mf_paras[i*3+2]);//e模糊化，计算隶属度
        else if(mf_t_e=="gaussmf")
            u_e[i]=gaussmf(e, e_mf_paras[i*2],e_mf_paras[i*2+1]);
        else if(mf_t_e=="trapmf")
            u_e[i]=trapmf(e, e_mf_paras[i*4],e_mf_paras[i*4+1],e_mf_paras[i*4+2], e_mf_paras[i*4+3]);

        if(u_e[i]!=0)
            u_e_index[j++] = i;
    }
    for(;j<3;j++) u_e_index[j] = 0;

    /*将误差变化率de模糊化*/
    j=0;
    for(int i=0; i<N; i++)
    {
        if(mf_t_de=="trimf")
            u_de[i]=trimf(de, de_mf_paras[i*3],de_mf_paras[i*3+1],de_mf_paras[i*3+2]);//e模糊化，计算隶属度
        else if(mf_t_de=="gaussmf")
            u_de[i]=gaussmf(de, de_mf_paras[i*2],de_mf_paras[i*2+1]);
        else if(mf_t_de=="trapmf")
            u_de[i]=trapmf(de, de_mf_paras[i*4],de_mf_paras[i*4+1],de_mf_paras[i*4+2], de_mf_paras[i*4+3]);

        if(u_de[i]!=0)
            u_de_index[j++] = i;        
    }
    for(;j<3;j++) u_de_index[j] = 0;

    double den = 0, num = 0;
    /*计算delta_Kp和Kp*/
    for(int m=0; m<3; m++)
        for(int n=0; n<3; n++)
        {
            num+= u_e[u_e_index[m]]*u_de[u_de_index[n]]*Kp_rule_matrix[u_e_index[m]][u_de_index[n]];
            den+= u_e[u_e_index[m]]*u_de[u_de_index[n]];
        }
    delta_Kp = num/den;
    delta_Kp = Ku_p*delta_Kp;
    if(delta_Kp>=delta_Kp_max) delta_Kp = delta_Kp_max;
    else if(delta_Kp<=-delta_Kp_max) delta_Kp = -delta_Kp_max;
    Kp+= delta_Kp;
    if(Kp<0)   Kp=0;
    if(Kp>0.8)  Kp=0.8;
    //Kp=0.5;

    den = 0, num = 0;
    /*计算delta_Ki和Ki*/
    for(int m=0; m<3; m++)
        for(int n=0; n<3; n++)
        {
            num+= u_e[u_e_index[m]]*u_de[u_de_index[n]]*Ki_rule_matrix[u_e_index[m]][u_de_index[n]];
            den+= u_e[u_e_index[m]]*u_de[u_de_index[n]];
        }
    delta_Ki = num/den;
    delta_Ki = Ku_i*delta_Ki;
    if(delta_Ki>=delta_Ki_max) delta_Ki = delta_Ki_max;
    else if(delta_Ki<=-delta_Ki_max) delta_Ki = -delta_Ki_max;
    Ki+= delta_Ki;
    if(Ki<0)   Ki=0;
    if(Ki>0.5)  Ki=0.5;
    //Ki=0.1;

    den = 0, num = 0;
    /*计算delta_Kd和Kd*/
    for(int m=0; m<3; m++)
        for(int n=0; n<3; n++)
        {
            num+= u_e[u_e_index[m]]*u_de[u_de_index[n]]*Kd_rule_matrix[u_e_index[m]][u_de_index[n]];
            den+= u_e[u_e_index[m]]*u_de[u_de_index[n]];
        }
    delta_Kd = num/den;
    delta_Kd = Ku_d*delta_Kd;
    if(delta_Kd>=delta_Kd_max) delta_Kd = delta_Kd_max;
    else if(delta_Kd<=-delta_Kd_max) delta_Kd = -delta_Kd_max;
    Kd+= delta_Kd;
    if(Kd<0)   Kd=0;
    //if(Kd>0)  Kd=0;
    Kd=0;

    Kp_out = Kp;
    Ki_out = Ki;
    Kd_out = Kd;

    cout<<"deltaKp:   " << delta_Kp  << endl;
    cout<<"Kp:   " << Kp  << endl;
    cout<<"deltaKi:   " << delta_Ki  << endl;
    cout<<"Ki:   " << Ki  << endl;
    cout<<"deltaKd:   " << delta_Kd  << endl;
    cout<<"Kd:   " << Kd  << endl;
}

void FuzzyPID::showMf(const string & type, double * mf_paras)
{
    int tab;
    if(type=="trimf")
        tab = 2;
    else if(type=="gaussmf")
        tab = 1;
    else if(type=="trapmf")
        tab = 3;
    cout << "函数类型:  " << mf_t_e  << endl; 
    cout << "函数参数列表：　　" << endl;
    double *p=mf_paras;
    for(int i=0; i<N*(tab+1);i++)
    {
        cout.width(3);
        cout << p[i]<<"  ";
        if(i%(tab+1)==tab)
            cout << endl;
    }
}

void FuzzyPID::showInfo()
{
    cout << "Info of this fuzzy controller is as following:"<<endl;
    cout << "基本论域e:   ["<<-emax <<","<<emax<<"]"<<endl;
    cout << "基本论域de:  ["<<-demax <<","<<demax<<"]"<<endl;
    cout << "基本论域delta_Kp:  ["<<-delta_Kp_max<<","<<delta_Kp_max<<"]"<<endl;
    cout << "基本论域delta_Ki:  ["<<-delta_Ki_max<<","<<delta_Ki_max<<"]"<<endl;
    cout << "基本论域delta_Kd:  ["<<-delta_Kd_max<<","<<delta_Kd_max<<"]"<<endl;
    cout << "误差e的模糊隶属度函数的参数：　"  << endl;
    showMf(mf_t_e, e_mf_paras);
    cout << "误差变化率de的模糊隶属度函数的参数：　"  << endl;
    showMf(mf_t_de, de_mf_paras);
    cout << "delta_Kp的模糊隶属度函数的参数：　"  << endl;
    showMf(mf_t_Kp, Kp_mf_paras);
    cout << "delta_Ki的模糊隶属度函数的参数：　"  << endl;
    showMf(mf_t_Ki, Ki_mf_paras);
    cout << "delta_Kd的模糊隶属度函数的参数：　"  << endl;
    showMf(mf_t_Kd, Kd_mf_paras); 
    cout <<"模糊规则表: " << endl;
    cout <<"delta_Kp的模糊规则矩阵"<< endl;
    for(int i=0; i<N; i++)
    {
        for(int j=0; j<N; j++)
        {
            cout.width(3);
            cout<<Kp_rule_matrix[i][j]<<"  ";
        }
        cout<<endl;
    }
    cout <<"delta_Ki的模糊规则矩阵"<< endl;
    for(int i=0; i<N; i++)
    {
        for(int j=0; j<N; j++)
        {
            cout.width(3);
            cout<<Ki_rule_matrix[i][j]<<"  ";
        }
        cout<<endl;
    }
    cout <<"delta_Kd的模糊规则矩阵"<< endl;
    for(int i=0; i<N; i++)
    {
        for(int j=0; j<N; j++)
        {
            cout.width(3);
            cout<<Kd_rule_matrix[i][j]<<"  ";
        }
        cout<<endl;
    }
    cout << endl;
    cout<<"误差的量化比例因子Ke="<<Ke<<endl;
    cout<<"误差变化率的量化比例因子Kde="<<Kde<<endl;
    cout<<"输出的量化比例因子Ku_p="<<Ku_p<<endl;
    cout<<"输出的量化比例因子Ku_i="<<Ku_i<<endl;
    cout<<"输出的量化比例因子Ku_d="<<Ku_d<<endl;
    cout<<"误差e="<<e<<endl;
    cout<<"Kp="<<Kp<<endl;
    cout<<"Ki="<<Ki<<endl;
    cout<<"Kd="<<Kd<<endl;
    cout<<endl;
}

void FuzzyPID::resetPID()
{
    Kp = 0.01;
    Ki = 0.04;
    Kd = 0.01;
}