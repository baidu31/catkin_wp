#include <control_toolbox/fuzzy_pid.h>


float FuzzyKp(float e, float ec)
{
    float es[7];
    float ecs[7];
    //模糊推理规则的可信度通过取小点运算得到
    float form[7][7];
    int i, j;
    //求得的最大值赋给form[a][b]
    int a=0, b=0;
    float lsd; int p;
    float detkp;

    int kp[7][7] = {{PB,PB,PM,PS,PS,ZO,ZO},
                    {PB,PB,PM,PS,PS,ZO,NS},
                    {PM,PM,PM,PS,ZO,NS,NS},
                    {PM,PM,PS,ZO,NS,NM,NM},
                    {PS,PS,ZO,NS,NS,NM,NM},
                    {PS,ZO,NS,NM,NM,NM,NB},
                    {ZO,ZO,NM,NM,NM,NB,NB}};

    es[NB] = ufl(e, -3, -1);
    es[NM] = uf(e, -3, -2, 0);
    es[NS] = uf(e, -3, -1,1);
    es[ZO] = uf(e, -2, 0, 2);
    es[PS] = uf(e, -1, 1, 3);
    es[PM] = uf(e, 0, 2, 3);
    es[PB] = ufr(e, 1, 3);

    ecs[NB] = ufl(ec, -3, -1);
    ecs[NM] = uf(ec, -3, -2, 0);
    ecs[NS] = uf(ec, -3, -1, 1);
    ecs[ZO] = uf(ec, -2, 0, 2);
    ecs[PS] = uf(ec, -1, 1, 3);
    ecs[PM] = uf(ec, 0, 2, 3);
    ecs[PB] = ufr(ec, 1, 3);


    for(i=0; i<7;i++)
    {
        float w,h,r;
        for(j=0;j<7;j++)
        {
            h=es[i];
            r=ecs[j];
            w=fand(h,r);
            form[i][j]=w;
        }
    }

    for(i=0; i<7;i++)
    {
        for(j=0;j<7;j++)
        {
            if(form[a][b]<form[i][j])
            {
                a=i;
                b=j;
            }
        }
    }
    lsd=form[a][b];
    p=kp[a][b];

    if(p==NB)          detkp = cufl(lsd, -0.3, -0.1);
    else if(p==NM)     detkp = cuf(lsd, -0.3, 0.2, 0);
    else if(p==NS)     detkp = cuf(lsd, -0.3, -0.1, 0.1);
    else if(p==ZO)     detkp = cuf(lsd, -0.2, 0, 0.2);
    else if(p==PS)     detkp = cuf(lsd, -0.1, 0.1, 0.3);
    else if(p==PM)     detkp = cuf(lsd, 0, 0.2, 0.3);
    else if(p==PB)     detkp = cufr(lsd, 0.1, 0.3);

    return detkp;

}


//求隶属度（三角形）模糊化处理
float uf(float x, float a, float b, float c)
{
    if(x<=a)   return (0);
    else if((a<x)&&(x<=b))  return ((x-a)/(b-a));
    else if((b<x)&&(x<=c))  return ((c-x)/(c-b));
    else if(x>c)            return (0);
}

//三角形反模糊化处理（最大隶属度法）
float cuf(float x, float a, float b, float c)
{
    float y, z;
    z = (b-a)*x+a;
    y = c-(c-b)*x;
    return (y+z)/2;
}

//梯形（左）求隶属度模糊化
float ufl(float x, float a, float b)
{
    if(x<=a)    return 1;
    else if((a<x)&&(x<=b))   return (b-x)/(b-a);
    else if(x>b)             return 0;
}

//梯形反模糊化
float cufl(float x, float a, float b)
{
    return b-(b-a)*x;
}

//梯形（右）求隶属度模糊化
float ufr(float x, float a, float b)
{
    if(x<=a)      return 0;
    if((a<x)&&(x<b))     return (x-a)/(b-a);
    if(x>=b)      return 1;
}

//梯形反模糊化
float cufr(float x, float a, float b)
{
    return (b-a)*x + a;
}

//求交集
float fand(float a, float b)
{
    return (a<b)?a:b;
}

//求并集
float forr(float a, float b)
{
    return (a<b)?b:a;
}
