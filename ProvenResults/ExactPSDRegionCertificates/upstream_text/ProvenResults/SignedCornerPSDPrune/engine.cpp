// Outward binary64 core. No transcendental seed evaluations or pointwise
// floating acceptances. Build without fast-math and without contraction.
#include <algorithm>
#include <array>
#include <cmath>
#include <cfenv>
#include <limits>
#include <stdexcept>
#include <vector>
#include "determinant_terms.hpp"
using std::array;
static constexpr double INF=std::numeric_limits<double>::infinity();
static inline double dn(double x){if(!std::isfinite(x))throw std::runtime_error("range");return std::nextafter(x,-INF);}
static inline double up(double x){if(!std::isfinite(x))throw std::runtime_error("range");return std::nextafter(x,INF);}
struct I {
 double l,u;
 I(double x=0):l(x),u(x){}
 I(double a,double b):l(a),u(b){if(!(std::isfinite(a)&&std::isfinite(b)&&a<=b))throw std::runtime_error("interval");}
 bool zero()const{return l==0&&u==0;}
};
static I operator+(I a,I b){if(a.zero())return b;if(b.zero())return a;return I(dn(a.l+b.l),up(a.u+b.u));}
static I operator-(I a){return I(-a.u,-a.l);}
static I operator-(I a,I b){return a+-b;}
static I operator*(I a,I b){if(a.zero()||b.zero())return I(0);double v[4]={a.l*b.l,a.l*b.u,a.u*b.l,a.u*b.u};for(double x:v)if(!std::isfinite(x))throw std::runtime_error("range");return I(dn(*std::min_element(v,v+4)),up(*std::max_element(v,v+4)));}
static I sq(I a){if(a.zero())return I(0);double lo=a.l<=0&&a.u>=0?0:std::min(a.l*a.l,a.u*a.u);double hi=std::max(a.l*a.l,a.u*a.u);return I(lo==0?0:dn(lo),up(hi));}
static I inv(I a){if(a.l<=0&&a.u>=0)throw std::runtime_error("denominator");return I(dn(1/a.u),up(1/a.l));}
static I operator/(I a,I b){return a*inv(b);}
static double mag(I a){return std::max(std::abs(a.l),std::abs(a.u));}
static I root(I a){if(a.l<0)throw std::runtime_error("sqrt");return I(a.l==0?0:dn(std::sqrt(a.l)),a.u==0?0:up(std::sqrt(a.u)));}
struct C {
 I re,im;
 C(double x=0):re(x),im(0){}
 C(I x,I y=I(0)):re(x),im(y){}
 bool zero()const{return re.zero()&&im.zero();}
};
static C operator+(C a,C b){return C(a.re+b.re,a.im+b.im);}
static C operator-(C a){return C(-a.re,-a.im);}
static C operator-(C a,C b){return a+-b;}
static C operator*(C a,C b){if(a.zero()||b.zero())return C(0);return C(a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re);}
static C operator*(C a,I b){return C(a.re*b,a.im*b);}
static C cj(C a){return C(a.re,-a.im);}
static I norm2(C a){return sq(a.re)+sq(a.im);}
static C inv(C a){I n=norm2(a);if(!(n.l>0))throw std::runtime_error("denominator");return cj(a)*inv(n);}
static C operator/(C a,C b){return a*inv(b);}
static const C ii(I(0),I(1));
// Hessians are symmetric, stored in ten upper-triangular entries.
static constexpr int HI[10]={0,0,0,0,1,1,1,2,2,3};
static constexpr int HJ[10]={0,1,2,3,1,2,3,2,3,3};
struct J {
 C v;array<C,4>d;array<C,10>h;
 J(double x=0):v(x){}
 J(C x):v(x){}
};
static J operator+(const J&a,const J&b){J z(a.v+b.v);for(int i=0;i<4;i++)z.d[i]=a.d[i]+b.d[i];for(int i=0;i<10;i++)z.h[i]=a.h[i]+b.h[i];return z;}
static J operator-(const J&a){J z(-a.v);for(int i=0;i<4;i++)z.d[i]=-a.d[i];for(int i=0;i<10;i++)z.h[i]=-a.h[i];return z;}
static J operator-(const J&a,const J&b){return a+-b;}
static J operator*(const J&a,const J&b){J z(a.v*b.v);for(int i=0;i<4;i++)z.d[i]=a.d[i]*b.v+a.v*b.d[i];for(int k=0;k<10;k++){int i=HI[k],j=HJ[k];z.h[k]=a.h[k]*b.v+a.d[i]*b.d[j]+a.d[j]*b.d[i]+a.v*b.h[k];}return z;}
static J operator*(const J&a,C b){J z(a.v*b);for(int i=0;i<4;i++)z.d[i]=a.d[i]*b;for(int i=0;i<10;i++)z.h[i]=a.h[i]*b;return z;}
static J cj(const J&a){J z(cj(a.v));for(int i=0;i<4;i++)z.d[i]=cj(a.d[i]);for(int i=0;i<10;i++)z.h[i]=cj(a.h[i]);return z;}
static J real(const J&a){J z(C(a.v.re));for(int i=0;i<4;i++)z.d[i]=C(a.d[i].re);for(int i=0;i<10;i++)z.h[i]=C(a.h[i].re);return z;}
static J inv(const J&a){C v=inv(a.v),v2=v*v,v3=v2*v;J z(v);for(int i=0;i<4;i++)z.d[i]=-v2*a.d[i];for(int k=0;k<10;k++){int i=HI[k],j=HJ[k];z.h[k]=v3*a.d[i]*a.d[j]*C(2)-v2*a.h[k];}return z;}
static J operator/(const J&a,const J&b){return a*inv(b);}
static J abs2(const J&a){return real(a*cj(a));}
static J powu(J a,int k){if(k<0)return powu(cj(a),-k);J z(1);for(int i=0;i<k;i++)z=z*a;return z;}
static J sq(const J&a){return a*a;}
struct L {J a,b;L(double x=0):a(x),b(0){}L(J x):a(x),b(0){}L(J x,J y):a(x),b(y){}};
static L operator+(const L&a,const L&b){return L(a.a+b.a,a.b+b.b);}
static L operator-(const L&a){return L(-a.a,-a.b);}
static L operator-(const L&a,const L&b){return a+-b;}
static L operator*(const L&a,const J&b){return L(a.a*b,a.b*b);}
static L operator*(const L&a,C b){return L(a.a*b,a.b*b);}
static L cj(const L&a){return L(cj(a.a),cj(a.b));}
static L real(const L&a){return L(real(a.a),real(a.b));}
static L product(const L&a,const L&b,const J&R){return L(a.a*b.a+a.b*b.b*R,a.a*b.b+a.b*b.a);}
struct Expressions {J R,scale;array<J,3>gram;array<array<L,4>,3>nf;};
static array<J,6> coeffs(J A,J B){J ai=cj(A),bi=cj(B);return {
 -sq(A-B)*(A+B)*sq(ai)*sq(bi),
 (A-B)*(A+B)*(A*B-J(1))*sq(ai)*bi,
 sq(B-J(1))*(B+J(1))*ai*bi,
 -(sq(A)-B)*(B-J(1))*(B+J(1))*ai*sq(bi),
 sq(A-J(1))*(A+J(1))*ai*bi,
 (A-J(1))*(A+J(1))*(A-sq(B))*sq(ai)*bi};}
static Expressions expressions(array<J,4>p,bool cleared,bool paired){
 J a=p[0],b=p[1],c=p[2],d=p[3];J s=-J(1)-a-b,t=-J(1)-c-d,r=-J(1)-c*cj(a)-d*cj(b);
 J X=abs2(s),Y=abs2(t),Z=abs2(r),pp=X+Y+Z,JJ=real(s*r*cj(t))*C(2),W=X*Y+X*Z+Y*Z-X*Y*Z;
 J g=J(27)-pp*C(3)+JJ,eta=J(9)-pp+JJ,chi=W-(pp-J(9))*(pp-J(18))+(pp-J(15))*JJ;
 Expressions out;out.R=sq(g)*eta*C(4)-sq(chi);out.gram={s,t,r};
 array<J,3>P={r*sq(s)+cj(r)*sq(t)+(J(3)-Z)*s*t,t*sq(cj(s))+sq(r)*cj(t)+(J(3)-Y)*r*cj(s),s*sq(cj(t))+sq(cj(r))*cj(s)+(J(3)-X)*cj(r)*cj(t)};
 array<J,3>k={J(9)-Z,J(9)-Y,J(9)-X};
 J scale(1);L u,v,w,Pi,C1,C2;
 auto numerator=[&](int i,int j){return L(sq(g)*C(2)+k[i]*k[j]*eta*C(2)+(k[i]+k[j])*chi,(k[j]-k[i])*ii);};
 if(cleared){
  array<J,3>n={abs2(P[0]),abs2(P[1]),abs2(P[2])};scale=n[0]*n[1]*n[2];
  u=numerator(0,1)*(P[0]*cj(P[1])*n[2]*C(0.5));
  v=numerator(0,2)*(P[0]*cj(P[2])*n[1]*C(0.5));
  w=numerator(2,1)*(P[2]*cj(P[1])*n[0]*C(0.5));
  Pi=L(chi+k[0]*eta*C(2),J(ii))*(P[0]*n[1]*n[2]*C(0.5));
  C1=L(chi+k[1]*eta*C(2),J(-ii))*(cj(P[1])*n[0]*n[2]*C(0.5));
  C2=L(chi+k[2]*eta*C(2),J(-ii))*(cj(P[2])*n[0]*n[1]*C(0.5));
 }else{
  array<J,3>ip={inv(P[0]),inv(P[1]),inv(P[2])};
  u=numerator(0,1)*(cj(ip[0])*ip[1]*C(0.5));
  v=numerator(0,2)*(cj(ip[0])*ip[2]*C(0.5));
  w=numerator(2,1)*(cj(ip[2])*ip[1]*C(0.5));
  Pi=L(chi+k[0]*eta*C(2),J(ii))*(cj(ip[0])*C(0.5));
  C1=L(chi+k[1]*eta*C(2),J(-ii))*(ip[1]*C(0.5));
  C2=L(chi+k[2]*eta*C(2),J(-ii))*(ip[2]*C(0.5));
 }
 out.scale=scale;out.gram={scale*s,scale*t,scale*r};
 L moments[7][7];bool filled[7][7]={};
 auto set=[&](int x,int y,L z){moments[x+3][y+3]=z;moments[3-x][3-y]=cj(z);filled[x+3][y+3]=true;filled[3-x][3-y]=true;};
 auto get=[&](int x,int y){if(x< -3||x>3||y< -3||y>3||!filled[x+3][y+3])throw std::runtime_error("moment index");return moments[x+3][y+3];};
 set(0,0,L(scale*C(3)));set(1,0,L(scale*s));set(0,1,L(scale*t));set(1,-1,L(scale*cj(r)));
 set(2,0,L(scale*sq(s))-u*(cj(s)*C(2)));set(0,2,L(scale*sq(t))-v*(cj(t)*C(2)));set(1,1,L(scale*s*t)-Pi);
 set(2,-1,L(scale*s*cj(r))-C1);set(-1,2,L(scale*t*r)-C2);
 set(2,1,get(1,1)*s-u*(cj(s)*t-r));set(1,2,get(1,1)*t-v*(cj(t)*s-cj(r)));
 set(2,-2,L(scale*sq(cj(r)))-w*(r*C(2)));
 set(3,-1,get(2,-1)*s+u*(cj(t)-cj(s)*cj(r)));
 set(-1,3,get(-1,2)*t+v*(cj(s)-cj(t)*r));
 set(3,-2,get(2,-1)*cj(r)+w*(t-r*s));
 set(-2,3,get(-1,2)*r+cj(w)*(s-cj(r)*t));
 array<J,3>xx={J(1),a,b},yy={J(1),c,d};int pq[6][2]={{1,1},{1,-1},{2,-1},{0,1},{-1,2},{1,0}};int pairs[3][2]={{0,1},{0,2},{1,2}};int weights[4][2]={{0,0},{1,0},{0,1},{-1,1}};
 if(!paired)for(int j=0;j<3;j++){int j0=pairs[j][0],j1=pairs[j][1];auto ds=coeffs(xx[j1]*cj(xx[j0]),yy[j1]*cj(yy[j0]));
  for(int k2=0;k2<6;k2++)ds[k2]=ds[k2]*powu(xx[j0],-pq[k2][0])*powu(yy[j0],-pq[k2][1]);
  for(int z=0;z<4;z++){L ff;for(int k2=0;k2<6;k2++){int x=pq[k2][0],y=pq[k2][1],wx=weights[z][0],wy=weights[z][1];ff=ff+get(x+wx,y+wy)*ds[k2]-get(-x+wx,-y+wy)*cj(ds[k2]);}ff=ff*ii;out.nf[j][z]=z==0?real(ff):ff;}
 }
 if(paired){
  out.scale=scale*scale;out.gram={out.scale*s,out.scale*t,out.scale*r};
  array<J,4>raw={J(3),s,t,r};
  for(int j=0;j<3;j++){
   L total;array<L,3>weighted;
   for(const auto&term:DTERMS){
    int pp0=term[1],qq0=term[2],rr0=term[3],ss0=term[4];
    J co=powu(xx[j],-pp0-qq0)*powu(yy[j],-rr0-ss0)*C(term[0]);
    L mq=get(qq0,ss0);total=total+product(get(pp0,rr0),mq,out.R)*co;
    for(int z=1;z<4;z++)weighted[z-1]=weighted[z-1]+product(get(pp0+weights[z][0],rr0+weights[z][1]),mq,out.R)*co;
   }
   total=total*(ii*C(0.5));out.nf[j][0]=real(total);
   for(int z=1;z<4;z++)out.nf[j][z]=total*raw[z]-weighted[z-1]*ii;
  }
 }
 return out;
}
static array<J,4> seed(const double*x){array<J,4>p;for(int i=0;i<4;i++){C v(I(x[4*i],x[4*i+1]),I(x[4*i+2],x[4*i+3]));p[i]=J(v);p[i].d[i]=ii*v;for(int k=0;k<10;k++)if(HI[k]==i&&HJ[k]==i)p[i].h[k]=-v;}return p;}
static I taylor_part(const J&c,const J&b,const double*r,bool imag){I e;for(int i=0;i<4;i++)e=e+I(r[i])*I(mag(imag?c.d[i].im:c.d[i].re));for(int k=0;k<10;k++){int i=HI[k],j=HJ[k];e=e+I(r[i])*I(r[j])*I(mag(imag?b.h[k].im:b.h[k].re))*I(i==j?0.5:1);}I cv=imag?c.v.im:c.v.re;return cv+I(-e.u,e.u);}
static C taylor(const J&c,const J&b,const double*r){return C(taylor_part(c,b,r,false),taylor_part(c,b,r,true));}
static void put(I v,double*&p){*p++=v.l;*p++=v.u;}
static void put(C v,double*&p){put(v.re,p);put(v.im,p);}
extern "C" int compute(const double*input,double*output,int cleared){
 try{if(!std::numeric_limits<double>::is_iec559||std::fegetround()!=FE_TONEAREST)return -9;auto c=expressions(seed(input),cleared&1,cleared&2);auto b=expressions(seed(input+16),cleared&1,cleared&2);const double*r=input+32;double*q=output;put(taylor_part(c.R,b.R,r,false),q);put(taylor_part(c.scale,b.scale,r,false),q);for(int j=0;j<3;j++)put(taylor(c.gram[j],b.gram[j],r),q);for(int j=0;j<3;j++)for(int z=0;z<4;z++){put(taylor(c.nf[j][z].a,b.nf[j][z].a,r),q);put(taylor(c.nf[j][z].b,b.nf[j][z].b,r),q);}return int(q-output);
 }catch(...){return -1;}}
// Test a single necessary PSD pencil. Witness index 0: diagonal; 1..3:
// two-by-two principal minors; 4: determinant.
static int bad_psd(I q,I scale,I f0,array<C,3>ff,array<C,3>gg,int eps,I&bound){I dd=q*scale*I(3)+f0*I(eps);if(dd.u<0){bound=dd;return 0;}array<C,3>z;for(int j=0;j<3;j++)z[j]=gg[j]*q+ff[j]*I(eps);for(int j=0;j<3;j++){I det=sq(dd)-norm2(z[j]);if(det.u<0){bound=det;return j+1;}}I det=dd*dd*dd+(z[0]*z[2]*cj(z[1])).re*I(2)-dd*(norm2(z[0])+norm2(z[1])+norm2(z[2]));if(det.u<0){bound=det;return 4;}return -1;}
static I readI(const double*&p){double a=*p++,b=*p++;return I(a,b);}
static C readC(const double*&p){I a=readI(p),b=readI(p);return C(a,b);}
extern "C" int certify(const double*co,int maxdepth,int maxnodes,double*cert){
 try{if(std::fegetround()!=FE_TONEAREST)return -9;const double*p=co;I R=readI(p),scale=readI(p);array<C,3>G;for(int j=0;j<3;j++)G[j]=readC(p);C A[3][4],B[3][4];for(int j=0;j<3;j++)for(int z=0;z<4;z++){A[j][z]=readC(p);B[j][z]=readC(p);}if(R.u<=0){cert[0]=-1;return 1;}I qr=root(I(std::max(0.0,R.l),R.u));double*out=cert;int leaves=0;
 for(int sg:{1,-1}){struct Cell{double l,u;int depth;};std::vector<Cell>stack{{qr.l,qr.u,0}};int nodes=0;while(!stack.empty()){if(++nodes>maxnodes)return 0;auto c=stack.back();stack.pop_back();I q(c.l,c.u);bool found=false;for(int j=0;j<3&&!found;j++){I f0=A[j][0].re+B[j][0].re*q*I(sg);array<C,3>ff;for(int z=0;z<3;z++)ff[z]=A[j][z+1]+B[j][z+1]*q*I(sg);for(int ep:{1,-1}){I bound;int which=bad_psd(q,scale,f0,ff,G,ep,bound);if(which>=0){*out++=sg;*out++=q.l;*out++=q.u;*out++=j;*out++=ep;*out++=which;*out++=bound.l;*out++=bound.u;leaves++;found=true;break;}}}if(found)continue;if(c.depth>=maxdepth)return 0;double m=c.l/2+c.u/2;if(!(m>c.l&&m<c.u))return 0;stack.push_back({m,c.u,c.depth+1});stack.push_back({c.l,m,c.depth+1});}}
 return leaves;
 }catch(...){return -1;}}
// Arithmetic probe used only by the exact-rational independent verifier.
extern "C" int test_arithmetic(int op,const double*a,double*b){try{I x(a[0],a[1]),y(a[2],a[3]),z;switch(op){case 0:z=x+y;break;case 1:z=x-y;break;case 2:z=x*y;break;case 3:z=x/y;break;case 4:z=sq(x);break;case 5:z=root(x);break;default:return -1;}b[0]=z.l;b[1]=z.u;return 0;}catch(...){return -1;}}

// Couple orientations at the SAME radical value q. The matched=1 option
// requires the separately certified absence of a Tao corner, and uses the
// accepted non-Tao matched-completion exhaustion (vertical sign is opposite).
extern "C" int certify_joint(const double*data,int n,const int*orientation,int matched,int maxdepth,int maxnodes,double*cert){
 try{
  if(std::fegetround()!=FE_TONEAREST||n<1||n>8)return -9;
  struct Provider{I R,scale;array<C,3>G;C A[3][4],B[3][4];int orientation;};
  std::vector<Provider>ps;I RR;
  for(int k=0;k<n;k++){
   const double*p=data+112*k;Provider z;z.R=readI(p);z.scale=readI(p);for(int j=0;j<3;j++)z.G[j]=readC(p);
   for(int j=0;j<3;j++)for(int m=0;m<4;m++){z.A[j][m]=readC(p);z.B[j][m]=readC(p);}
   z.orientation=orientation[k];if(z.orientation!=0&&z.orientation!=1)return -9;
   RR=k==0?z.R:I(std::max(RR.l,z.R.l),std::min(RR.u,z.R.u));ps.push_back(z);
  }
  if(RR.u<=0){cert[0]=-1;return 1;}
  I qr=root(I(std::max(0.0,RR.l),RR.u));int leaves=0;double*out=cert;
  for(int code=0;code<4;code++){
   if(matched&&code!=1&&code!=2)continue;
   int hsg=code<2?1:-1,vsg=code%2==0?1:-1;
   struct Cell{double l,u;int depth;};std::vector<Cell>stack{{qr.l,qr.u,0}};int nodes=0;
   while(!stack.empty()){
    if(++nodes>maxnodes)return 0;auto cell=stack.back();stack.pop_back();I q(cell.l,cell.u);bool found=false;
    for(int k=0;k<n&&!found;k++){
     const auto&z=ps[k];int sg=z.orientation?vsg:hsg;
     for(int j=0;j<3&&!found;j++){
      I f0=z.A[j][0].re+z.B[j][0].re*q*I(sg);array<C,3>ff;
      for(int m=0;m<3;m++)ff[m]=z.A[j][m+1]+z.B[j][m+1]*q*I(sg);
      for(int ep:{1,-1}){
       I bound;int which=bad_psd(q,z.scale,f0,ff,z.G,ep,bound);
       if(which>=0){*out++=code;*out++=q.l;*out++=q.u;*out++=k;*out++=j;*out++=ep;*out++=which;*out++=bound.l;*out++=bound.u;leaves++;found=true;break;}
      }
     }
    }
    if(found)continue;if(cell.depth>=maxdepth)return 0;double m=cell.l/2+cell.u/2;if(!(m>cell.l&&m<cell.u))return 0;
    stack.push_back({m,cell.u,cell.depth+1});stack.push_back({cell.l,m,cell.depth+1});
   }
  }
  return leaves;
 }catch(...){return -1;}
}

// Exact-rational AD regression hook: no acceptance path calls this function.
extern "C" int test_jets(const double*input,double*output){
 try{
  auto p=seed(input);
  J f=p[0]*p[1]+cj(p[2])*p[3]*C(2)+inv(J(3)+p[0]+p[2]);
  double*out=output;put(f.v,out);for(const auto&v:f.d)put(v,out);for(const auto&v:f.h)put(v,out);
  return int(out-output);
 }catch(...){return -1;}
}
