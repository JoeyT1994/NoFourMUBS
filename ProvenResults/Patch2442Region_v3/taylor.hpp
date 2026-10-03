// Finite multivariate Taylor polynomials on [-1,1]^4 with outward rectangular remainder.
#include <ctime>
struct NativeBudget {};
static double cpu_deadline=INF;
static void budget_check(){if(double(std::clock())/CLOCKS_PER_SEC>=cpu_deadline)throw NativeBudget();}
extern "C" void set_budget(double seconds){cpu_deadline=seconds>0?double(std::clock())/CLOCKS_PER_SEC+seconds:INF;}
#ifndef TM_ORDER
#define TM_ORDER 3
#endif
struct Basis {
 std::vector<array<int,4>> e;std::vector<int> degree;int n=0;std::vector<std::vector<int>> product;
 Basis(){for(int d=0;d<=2*TM_ORDER;d++)for(int a=0;a<=d;a++)for(int b=0;b<=d-a;b++)for(int c=0;c<=d-a-b;c++){e.push_back({a,b,c,d-a-b-c});degree.push_back(d);if(d<=TM_ORDER)n++;}
 product.resize(n,std::vector<int>(n));for(int i=0;i<n;i++)for(int j=0;j<n;j++){array<int,4>x;for(int k=0;k<4;k++)x[k]=e[i][k]+e[j][k];int z=0;while(e[z]!=x)z++;product[i][j]=z;}}
};
static const Basis basis;
static C monomial_range(C c,int i){bool even=true;for(int k:basis.e[i])if(k%2)even=false;return c*I(even?0:-1,1);}
struct T {
 std::vector<C> a;C error;
 T(double x=0):a(basis.n){a[0]=C(x);}
 T(C x):a(basis.n){a[0]=x;}
 C polynomial_range()const{C z=a[0];for(int i=1;i<basis.n;i++)z=z+monomial_range(a[i],i);return z;}
 C range()const{return polynomial_range()+error;}
};
static T operator+(const T&a,const T&b){T z;for(int i=0;i<basis.n;i++)z.a[i]=a.a[i]+b.a[i];z.error=a.error+b.error;return z;}
static T operator-(const T&a){T z;for(int i=0;i<basis.n;i++)z.a[i]=-a.a[i];z.error=-a.error;return z;}
static T operator-(const T&a,const T&b){return a+-b;}
static T operator*(const T&a,const T&b){budget_check();T z;std::vector<C>full(basis.e.size());for(int i=0;i<basis.n;i++)if(!a.a[i].zero())for(int j=0;j<basis.n;j++)if(!b.a[j].zero()){int k=basis.product[i][j];full[k]=full[k]+a.a[i]*b.a[j];}
 for(int i=0;i<basis.n;i++)z.a[i]=full[i];z.error=a.polynomial_range()*b.error+b.polynomial_range()*a.error+a.error*b.error;
 for(int i=basis.n;i<int(full.size());i++)z.error=z.error+monomial_range(full[i],i);return z;}
static T operator*(const T&a,C b){T z;for(int i=0;i<basis.n;i++)z.a[i]=a.a[i]*b;z.error=a.error*b;return z;}
static T cj(const T&a){T z;for(int i=0;i<basis.n;i++)z.a[i]=cj(a.a[i]);z.error=cj(a.error);return z;}
static T real(const T&a){T z;for(int i=0;i<basis.n;i++)z.a[i]=C(a.a[i].re);z.error=C(a.error.re);return z;}
static T inv(const T&){throw std::runtime_error("Taylor rational provider disabled");}
static T abs2(const T&a){return real(a*cj(a));}
static T powu(T a,int k){if(k<0)return powu(cj(a),-k);T z(1);for(int i=0;i<k;i++)z=z*a;return z;}
static T sq(const T&a){return a*a;}
static array<T,4> tseed(const double*x,const double*r){array<T,4>out;for(int i=0;i<4;i++){
 C centre(I(x[4*i],x[4*i+1]),I(x[4*i+2],x[4*i+3]));T z(centre);C co=centre;
 for(int k=1;k<=TM_ORDER;k++){co=co*ii*(I(r[i])/I(k));array<int,4>e={0,0,0,0};e[i]=k;int n=0;while(basis.e[n]!=e)n++;z.a[n]=co;}
 I rem(1);for(int k=1;k<=TM_ORDER+1;k++)rem=rem*I(r[i])/I(k);z.error=C(I(-rem.u,rem.u),I(-rem.u,rem.u));out[i]=z;}return out;}
// Tensor Bernstein coefficients of the retained real polynomial, exactly converted.
struct BernsteinWeights {
 std::vector<std::vector<I>> weights;
 static long choose(int n,int k){long z=1;for(int j=1;j<=k;j++)z=z*(n-j+1)/j;return z;}
 BernsteinWeights(){long fact=1;for(int i=1;i<=TM_ORDER;i++)fact*=i;long denominator=fact*fact*fact*fact;int size=1;for(int i=0;i<4;i++)size*=TM_ORDER+1;
  weights.resize(size,std::vector<I>(basis.n));
  for(int k=0;k<size;k++){int q=k;array<int,4>index;for(int v=0;v<4;v++){index[v]=q%(TM_ORDER+1);q/=TM_ORDER+1;}
   for(int m=0;m<basis.n;m++){long numerator=1;for(int v=0;v<4;v++){int power=basis.e[m][v];long a=0;for(int j=0;j<=std::min(index[v],power);j++)a+=choose(power,j)*(1L<<j)*((power-j)%2?-1:1)*choose(index[v],j)*(fact/choose(TM_ORDER,j));numerator*=a;}
    if(numerator==0)weights[k][m]=I(0);else if(numerator==denominator)weights[k][m]=I(1);else if(numerator==-denominator)weights[k][m]=I(-1);else weights[k][m]=I(double(numerator))/I(double(denominator));
   }
  }
 }
};
static const BernsteinWeights bernstein_weights;
static I bernstein_real(const T&p){double lo=INF,hi=-INF;for(const auto&row:bernstein_weights.weights){budget_check();I c;for(int j=0;j<basis.n;j++)c=c+p.a[j].re*row[j];lo=std::min(lo,c.l);hi=std::max(hi,c.u);}return I(lo,hi)+p.error.re;}
static I intersect(I a,I b){return I(std::max(a.l,b.l),std::min(a.u,b.u));}
