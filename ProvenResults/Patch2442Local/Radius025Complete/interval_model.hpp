#pragma once
#include <array>
#include <type_traits>
#include <vector>
#include <cmath>
#include <limits>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <cfenv>
#include <cfloat>
#include <cstdint>
#include <cstring>
#include <stdexcept>
using std::array;using std::vector;
static const double INF=std::numeric_limits<double>::infinity();
inline double adjacent(double x,bool upper){uint64_t b;std::memcpy(&b,&x,8);uint64_t a=b&UINT64_C(0x7fffffffffffffff);if(a>=UINT64_C(0x7ff0000000000000))throw std::runtime_error("nonfinite endpoint");if(a==0)b=upper?UINT64_C(1):UINT64_C(0x8000000000000001);else if((x>0)==upper)b++;else b--;double r;std::memcpy(&r,&b,8);return r;}
inline double dn(double x){return adjacent(x,false);}inline double up(double x){return adjacent(x,true);}
struct I{double lo,hi;I(double x=0):lo(x),hi(x){} I(double a,double b):lo(a),hi(b){if(a>b)throw std::runtime_error("reversed interval");}};
inline I operator+(I a,I b){if(a.lo==0&&a.hi==0)return b;if(b.lo==0&&b.hi==0)return a;return I(dn(a.lo+b.lo),up(a.hi+b.hi));}inline I operator-(I a){return I(-a.hi,-a.lo);}inline I operator-(I a,I b){return a+(-b);}
inline I operator*(I a,I b){if((a.lo==0&&a.hi==0)||(b.lo==0&&b.hi==0))return I(0);if(a.lo==1&&a.hi==1)return b;if(b.lo==1&&b.hi==1)return a;if(a.lo==-1&&a.hi==-1)return -b;if(b.lo==-1&&b.hi==-1)return -a;double p[]={a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi};return I(dn(*std::min_element(p,p+4)),up(*std::max_element(p,p+4)));}
inline I inv(I a){if(a.lo==1&&a.hi==1)return a;if(a.lo==-1&&a.hi==-1)return a;if(a.lo<=0&&a.hi>=0)throw std::runtime_error("zero divisor");return I(dn(1/a.hi),up(1/a.lo));}inline I operator/(I a,I b){return a*inv(b);}
inline I sq(I a){if(a.lo==0&&a.hi==0)return I(0);if(a.lo==1&&a.hi==1)return I(1);if(a.lo==-1&&a.hi==-1)return I(1);if(a.lo<=0&&a.hi>=0)return I(0,up(std::max(a.lo*a.lo,a.hi*a.hi)));return I(dn(std::min(a.lo*a.lo,a.hi*a.hi)),up(std::max(a.lo*a.lo,a.hi*a.hi)));}
inline I root(I a){
 if(a.lo<0)throw std::runtime_error("negative square root");
 if(a.hi==0)return I(0);
 double l=a.lo==0?0:std::max(0.,dn(std::sqrt(a.lo))),u=up(std::sqrt(a.hi));
 // Validate the proposed square-root bracket by outward multiplication.
 // This removes reliance on a library sqrt error estimate.
 for(int k=0;a.lo>0&&up(l*l)>a.lo;k++){if(k==8)throw std::runtime_error("sqrt lower check");l=dn(l);}
 for(int k=0;dn(u*u)<a.hi;k++){if(k==8)throw std::runtime_error("sqrt upper check");u=up(u);}
 return I(l,u);
}
inline double mag(I a){return std::max(std::abs(a.lo),std::abs(a.hi));}
inline I sinpoly(I a){I a2=a*a,t=a,s=a;for(int k=1;k<=20;k++){t=-(t*a2)/(I(2*k)*I(2*k+1));s=s+t;}I rem(1),m(mag(a));for(int k=1;k<=43;k++)rem=rem*m/I(k);return s+I(-rem.hi,rem.hi);}
inline I cospoly(I a){I a2=a*a,t=1,s=1;for(int k=1;k<=20;k++){t=-(t*a2)/(I(2*k-1)*I(2*k));s=s+t;}I rem(1),m(mag(a));for(int k=1;k<=42;k++)rem=rem*m/I(k);return s+I(-rem.hi,rem.hi);}
inline I pii(){return I(0x1.921fb54442d18p+1,0x1.921fb54442d19p+1);}inline I sq3(){return I(0x1.bb67ae8584caap+0,0x1.bb67ae8584cacp+0);}
struct A{
 I v;array<I,8>d;array<array<I,8>,8>h;A(double x=0):v(x){d.fill(I(0));for(auto&r:h)r.fill(I(0));}A(I x):v(x){d.fill(I(0));for(auto&r:h)r.fill(I(0));}
};
inline A operator+(const A&a,const A&b){A r(a.v+b.v);for(int k=0;k<8;k++){r.d[k]=a.d[k]+b.d[k];for(int j=0;j<8;j++)r.h[k][j]=a.h[k][j]+b.h[k][j];}return r;}
inline A operator-(const A&a){A r(-a.v);for(int k=0;k<8;k++){r.d[k]=-a.d[k];for(int j=0;j<8;j++)r.h[k][j]=-a.h[k][j];}return r;}
inline A operator-(const A&a,const A&b){return a+(-b);}
inline A operator*(const A&a,const A&b){A r(a.v*b.v);for(int k=0;k<8;k++){r.d[k]=a.d[k]*b.v+a.v*b.d[k];for(int j=0;j<8;j++)r.h[k][j]=a.h[k][j]*b.v+a.d[k]*b.d[j]+a.d[j]*b.d[k]+a.v*b.h[k][j];}return r;}
inline A inv(const A&a){I iv=inv(a.v);A r(iv);I factor=-(iv*iv),sec=I(2)*iv*iv*iv;for(int k=0;k<8;k++){r.d[k]=factor*a.d[k];for(int j=0;j<8;j++)r.h[k][j]=factor*a.h[k][j]+sec*a.d[k]*a.d[j];}return r;}
inline A operator/(const A&a,const A&b){return a*inv(b);}
inline A sq(const A&a){A r(sq(a.v));for(int k=0;k<8;k++){r.d[k]=I(2)*a.v*a.d[k];for(int j=0;j<8;j++)r.h[k][j]=I(2)*(a.d[k]*a.d[j]+a.v*a.h[k][j]);}return r;}
inline A root(const A&a){I rt=root(a.v);A r(rt);I f=inv(I(2)*rt),sec=-inv(I(4)*rt*rt*rt);for(int k=0;k<8;k++){r.d[k]=f*a.d[k];for(int j=0;j<8;j++)r.h[k][j]=f*a.h[k][j]+sec*a.d[k]*a.d[j];}return r;}
struct G1{I v;array<I,8>d;G1(double x=0):v(x){d.fill(I(0));}G1(I x):v(x){d.fill(I(0));}};
inline G1 operator+(const G1&a,const G1&b){G1 r(a.v+b.v);for(int k=0;k<8;k++)r.d[k]=a.d[k]+b.d[k];return r;}
inline G1 operator-(const G1&a){G1 r(-a.v);for(int k=0;k<8;k++)r.d[k]=-a.d[k];return r;}
inline G1 operator-(const G1&a,const G1&b){return a+(-b);}
inline G1 operator*(const G1&a,const G1&b){G1 r(a.v*b.v);for(int k=0;k<8;k++)r.d[k]=a.d[k]*b.v+a.v*b.d[k];return r;}
inline G1 inv(const G1&a){I iv=inv(a.v);G1 r(iv);I f=-(iv*iv);for(int k=0;k<8;k++)r.d[k]=f*a.d[k];return r;}
inline G1 operator/(const G1&a,const G1&b){return a*inv(b);}
inline G1 sq(const G1&a){G1 r(sq(a.v));for(int k=0;k<8;k++)r.d[k]=I(2)*a.v*a.d[k];return r;}
inline G1 root(const G1&a){I v=root(a.v);G1 r(v);I f=inv(I(2)*v);for(int k=0;k<8;k++)r.d[k]=f*a.d[k];return r;}
template<class T>struct C{T re,im;C(T r=0,T i=0):re(r),im(i){}};
template<class T>C<T> operator+(const C<T>&a,const C<T>&b){return C<T>(a.re+b.re,a.im+b.im);}template<class T>C<T> operator-(const C<T>&a){return C<T>(-a.re,-a.im);}template<class T>C<T> operator-(const C<T>&a,const C<T>&b){return a+(-b);}
template<class T>C<T> operator*(const C<T>&a,const C<T>&b){return C<T>(a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re);}template<class T>C<T> conj(const C<T>&a){return C<T>(a.re,-a.im);}template<class T>T norm2(const C<T>&a){return sq(a.re)+sq(a.im);}template<class T>C<T> inv(const C<T>&a){T v=inv(norm2(a));return C<T>(a.re*v,-a.im*v);}template<class T>C<T> operator/(const C<T>&a,const C<T>&b){return a*inv(b);}
template<class T>C<T> powc(C<T>x,int n){if(n<0){x=conj(x);n=-n;}C<T>r(T(1));while(n){if(n&1)r=r*x;n/=2;if(n)x=x*x;}return r;}
template<class T>C<T> om(int n){n=(n%3+3)%3;if(n==0)return C<T>(T(1));return C<T>(T(-.5),T(sq3()*I(n==1?.5:-.5)));}
template<class T>C<T> root6(int n){n=(n%6+6)%6;switch(n){case 0:return C<T>(T(1));case 1:return C<T>(T(.5),T(sq3()*I(.5)));case 2:return om<T>(1);case 3:return C<T>(T(-1));case 4:return om<T>(2);default:return C<T>(T(.5),T(sq3()*I(-.5)));}}
inline C<I> expbox(I mid,double radius){if(radius<0||radius>pii().lo)throw std::runtime_error("expbox radius domain");I co=cospoly(mid),si=sinpoly(mid);I cr,sr;if(radius==0){cr=I(1);sr=I(0);}else{cr=I(std::max(-1.,cospoly(I(radius)).lo),1);double sh=radius>=pii().lo/2?1:std::min(1.,sinpoly(I(radius)).hi);sr=I(-sh,sh);}return C<I>(co,si)*C<I>(cr,sr);}
inline C<A> expvar(I mid,double radius,int index){C<I>v=expbox(mid,radius);A re(v.re),im(v.im);re.d[index]=-v.im;im.d[index]=v.re;re.h[index][index]=-v.re;im.h[index][index]=-v.im;return C<A>(re,im);}
inline C<A> localvar(int rootindex,double radius,int index){C<I>v=root6<I>(rootindex)*expbox(I(0),radius);A re(v.re),im(v.im);re.d[index]=-v.im;im.d[index]=v.re;re.h[index][index]=-v.re;im.h[index][index]=-v.im;return C<A>(re,im);}
inline C<A> shiftvar(int rootindex,I mid,double radius,int index){C<I>v=root6<I>(rootindex)*expbox(mid,radius);A re(v.re),im(v.im);re.d[index]=-v.im;im.d[index]=v.re;re.h[index][index]=-v.re;im.h[index][index]=-v.im;return C<A>(re,im);}
inline C<G1> gradvar(int ri,I mid,int index){C<I>v=root6<I>(ri)*expbox(mid,0);G1 a(v.re),b(v.im);a.d[index]=-v.im;b.d[index]=v.re;return C<G1>(a,b);}
template<class T>using Mat=array<array<C<T>,3>,3>;template<class T>using HMat=array<array<C<T>,6>,6>;
template<class T>Mat<T> adjoint(Mat<T>a){Mat<T>r;for(int i=0;i<3;i++)for(int j=0;j<3;j++)r[i][j]=conj(a[j][i]);return r;}
template<class T>Mat<T> mm(Mat<T>a,Mat<T>b){Mat<T>r;for(int i=0;i<3;i++)for(int j=0;j<3;j++){C<T>s;for(int k=0;k<3;k++)s=s+a[i][k]*b[k][j];r[i][j]=s;}return r;}
template<class T>Mat<T> mi(Mat<T>a){Mat<T>r;for(int i=0;i<3;i++)for(int j=0;j<3;j++){int r0=(j+1)%3,r1=(j+2)%3,c0=(i+1)%3,c1=(i+2)%3;r[i][j]=a[r0][c0]*a[r1][c1]-a[r0][c1]*a[r1][c0];}C<T>det;for(int j=0;j<3;j++)det=det+a[0][j]*r[j][0];C<T>iv=inv(det);for(auto&row:r)for(auto&v:row)v=v*iv;return r;}
template<class T>Mat<T> sideK(Mat<T>E,array<C<T>,2>z){Mat<T>K;for(int j=0;j<3;j++)K[0][j]=C<T>(T(1));for(int j=0;j<2;j++){C<T>s=-(E[j+1][0]+E[j+1][1]+E[j+1][2]);C<T>a=s*conj(z[j])-C<T>(T(1));T k=root(inv(norm2(a))-T(.25));C<T>b(T(.5),j==0?-k:k);K[j+1][0]=C<T>(T(1));K[j+1][1]=a*b;K[j+1][2]=a*conj(b);}return K;}
template<class T>HMat<T> model(array<C<T>,4>u,array<C<T>,4>z){Mat<T>E;for(int i=0;i<3;i++)for(int j=0;j<3;j++)E[i][j]=om<T>(i*j);for(int i=1;i<3;i++)for(int j=1;j<3;j++)E[i][j]=E[i][j]*u[(i-1)*2+j-1];auto K=sideK(E,array<C<T>,2>{z[0],z[1]});Mat<T>Et;for(int i=0;i<3;i++)for(int j=0;j<3;j++)Et[i][j]=E[j][i];auto L=sideK(Et,array<C<T>,2>{z[2],z[3]});Mat<T>B=K,Cm;for(int i=1;i<3;i++)for(int j=0;j<3;j++)B[i][j]=B[i][j]*z[i-1];for(int i=0;i<3;i++)for(int j=0;j<3;j++){Cm[i][j]=L[j][i];if(j>0)Cm[i][j]=Cm[i][j]*z[j+1];}auto Eadj=adjoint(E);for(int i=0;i<3;i++)for(int j=1;j<3;j++)Eadj[i][j]=Eadj[i][j]*z[j-1];auto D=mm(mm(Cm,Eadj),mi(adjoint(K)));HMat<T>H;for(int i=0;i<3;i++)for(int j=0;j<3;j++){H[i][j]=E[i][j];H[i][3+j]=B[i][j];H[3+i][j]=Cm[i][j];H[3+i][3+j]=-D[i][j];}return H;}
struct Word{int e[9],co;};struct Corner{int rows[3],cols[3];};static vector<Word>WORDS;static vector<Corner>CORNERS;
inline void guards(){
 static_assert(sizeof(double)==8&&sizeof(uint64_t)==8,"binary64 sizes");
 if(FLT_EVAL_METHOD!=0)throw std::runtime_error("extended floating evaluation is unsupported");
 if(!std::numeric_limits<double>::is_iec559||std::numeric_limits<double>::digits!=53||std::fegetround()!=FE_TONEAREST)throw std::runtime_error("unsupported floating environment");
 volatile double x=std::numeric_limits<double>::denorm_min(),two=2.;
 if(x*two!=std::nextafter((double)x,1.)||x+0.!=x)throw std::runtime_error("flush-to-zero mode");
 uint64_t bits;double one=1.;std::memcpy(&bits,&one,8);if(bits!=UINT64_C(0x3ff0000000000000))throw std::runtime_error("binary64 encoding");
}
inline void readwords(const char*path){std::ifstream f(path);int n;f>>n;if(n!=48)throw std::runtime_error("word count");WORDS.resize(n);for(auto&w:WORDS){f>>w.co;if(std::abs(w.co)!=1)throw std::runtime_error("word coefficient");for(int&x:w.e){f>>x;if(x< -2||x>2)throw std::runtime_error("word exponent");}}if(!f)throw std::runtime_error("word input");for(int i=0;i<3;i++)for(int j=i+1;j<3;j++)for(int a=0;a<3;a++)for(int b=a+1;b<3;b++)for(int k=3;k<6;k++)for(int l=3;l<6;l++)CORNERS.push_back(Corner{{i,j,k},{a,b,l}});}
template<class T>T literal_signedf(HMat<T>&H,int index){Corner c=CORNERS.at(index);array<array<C<T>,5>,9>pw;for(int i=0;i<3;i++)for(int j=0;j<3;j++){C<T>v=H[c.rows[i]][c.cols[j]];int k=3*i+j;pw[k][2]=C<T>(T(1));pw[k][3]=v;pw[k][4]=v*v;pw[k][1]=conj(v);pw[k][0]=conj(v*v);}C<T>s;for(auto&w:WORDS){C<T>p(T(w.co));for(int k=0;k<9;k++)if(w.e[k])p=p*pw[k][w.e[k]+2];s=s+p;}return s.im;}
template<class T>T signedf(HMat<T>&H,int index){
 Corner c=CORNERS.at(index);auto&rr=c.rows;auto&cc=c.cols;
 auto deph=[&](int i,int j){return H[rr[i]][cc[j]]*H[rr[0]][cc[0]]*conj(H[rr[i]][cc[0]])*conj(H[rr[0]][cc[j]]);};
 C<T>a=deph(1,1),b=deph(1,2),c0=deph(2,1),d=deph(2,2),ai=conj(a),ci=conj(c0),one(T(1));
 C<T>ab=a-c0,ap=a+c0,am=a-one,cm=c0-one,cp=c0+one,aa=ai*ai,cci=ci*ci;
 C<T>f0=-(ab*ab*ap*aa*cci);
 C<T>f1=ab*ap*(a*c0-one)*aa*ci;
 C<T>f2=cm*cm*cp*ai*ci;
 C<T>f3=-((a*a-c0)*cm*cp*ai*cci);
 C<T>f4=am*am*(a+one)*ai*ci;
 C<T>f5=am*(a+one)*(a-c0*c0)*aa*ci;
 C<T>p2=f4*conj(b),p1=f0*b+f3-conj(f1*b+f2*b*b),p0=f5*b;
 return T(2)*(p2*d*d+p1*d+p0).im;
}
template<class T>T getres(HMat<T>&H,int index){if(index<9)return norm2(H[3+index/3][3+index%3])-T(1);if(index<13){C<T>s;bool tr=index>=11;for(int k=0;k<6;k++)s=s+(tr?H[k][2]*conj(H[k][1]):H[2][k]*conj(H[1][k]));return index%2==1?s.re:s.im;}if constexpr(false)return literal_signedf(H,index-13);else return signedf(H,index-13);}
