#include "mean_engine.cpp"
extern "C" int control_exponents(int*out){int*q=out;for(int i=0;i<basis.n;i++)for(int x:basis.e[i])*q++=x;return basis.n;}
extern "C" int control_weights(double*out){double*q=out;for(const auto&row:bernstein_weights.weights)for(I x:row)put(x,q);return int(q-out);}
extern "C" int control_polynomial(int mode,double*out){set_budget(0);array<T,4>x;for(int i=0;i<4;i++){array<int,4>e={0,0,0,0};e[i]=1;int k=0;while(basis.e[k]!=e)k++;x[i].a[k]=C(1);}
 T v;if(mode==0)v=powu(T(1)+x[0],6);else if(mode==1)v=powu(x[0]+x[1],5);else if(mode==2){T z=x[0]+x[1]*ii;v=z*cj(z);}else if(mode==3)v=(T(1)+x[0])*(T(1)-x[0])*powu(T(1)+x[1],4);else {T a=powu(T(1)+x[0]-x[1],4),b=powu(T(1)+x[2]+x[3],3);v=a*b-b*a;}
 double*q=out;for(const C&a:v.a)put(a,q);put(v.error,q);return int(q-out);}
