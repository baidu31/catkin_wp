#include <string>
#include <iostream>
#include <cmath>
using namespace std;


class FuzzyPID
{
public:
    const static int N=7;
private:
    double e;             //误差
    double de;            //误差的变化率
    double emax;          //误差基本论域的上限
    double demax;         //误差变化率基本论域的上限
    double delta_Kp_max;  //delta_kp输出的上限
    double delta_Ki_max;  //delta_ki输出的上限
    double delta_Kd_max;  //delta_kd输出的上限
    double Ke;            //Ke=n/emax,  量化论域为[-3,-2,-1,0,1,2,3];
    double Kde;           //Kde=n/demax, 量化论域为[-3,-2,-1,0,1,2,3];
    double Ku_p;          //Ku_p=Kpmax/n,　量化论域为[-3,-2,-1,0,1,2,3];
    double Ku_i;          //Ku_i=Kimax/n, 量化论域为[-3,-2,-1,0,1,2,3];
    double Ku_d;          //Ku_d=Kumax/n, 量化论域为[-3,-2,-1,0,1,2,3];
    int Kp_rule_matrix[N][N];           //Kp模糊规则矩阵
    int Ki_rule_matrix[N][N];           //Ki模糊规则矩阵
    int Kd_rule_matrix[N][N];           //Kd模糊规则矩阵
    string mf_t_e;                      //e的隶属度函数类型
    string mf_t_de;                     //de的隶属度函数类型
    string mf_t_Kp;                     //kp的隶属度函数类型
    string mf_t_Ki;                     //ki的隶属度函数类型
    string mf_t_Kd;                     //kd的隶属度函数类型
    double *e_mf_paras;                  //误差的隶属度函数的参数
    double *de_mf_paras;                  //误差的偏差隶属度函数的参数
    double *Kp_mf_paras;                  //kp的隶属度函数的参数
    double *Ki_mf_paras;                  //ki的隶属度函数的参数
    double *Kd_mf_paras;                  //kd的隶属度函数的参数
    double Kp;
    double Ki;
    double Kd;
    double A;
    double B;
    double C;

    void showMf(const string & type, double *mf_paras);             //显示隶属度函数的信息
    void setMf_sub(const string & type, double *paras, int n);      //设置模糊隶属度函数的子函数

public:
    FuzzyPID(double e_max, double de_max, double kp_max, double ki_max, double kd_max, double Kp0, double Ki0, double Kd0);
    FuzzyPID(double *fuzzyLimit, double *pidInitVal);
    ~FuzzyPID();
    double trimf(double x, double a, double b, double c);          //三角隶属函数
    double gaussmf(double x, double ave, double sigma);           //正态隶属函数
    double trapmf(double x, double a, double b, double c, double d);   //梯形隶属函数
    void setMf(const string & mf_type_e, double *e_mf,
               const string & mf_type_de, double *de_mf,
               const string & mf_type_Kp, double *Kp_mf,
               const string & mf_type_Ki, double *Ki_mf,
               const string & mf_type_Kd, double *Kd_mf);          //设置模糊隶属函数的参数
    void setRuleMatrix(int kp_m[N][N], int ki_m[N][N], int kd_m[N][N]);   //设置模糊规则
    void realize(double e_in, double de_in, double &Kp_out, double &Ki_out, double &Kd_out);         //实现模糊控制
    void showInfo();                         //显示该模糊控制器的信息
    void resetPID();


};