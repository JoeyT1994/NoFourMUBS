#include "../SignedCornerPSDPrune/engine.cpp"
#include "taylor.hpp"
static T stableR(const T&p,const T&j,const T&w){T pp=sq(p),jj=sq(j);return jj*j*C(4)+jj*(-pp+p*C(2)+T(27))+j*(pp*p*C(2)-pp*C(24)-p*w*C(2)+p*C(54)+w*C(30))-sq(pp)+pp*p*C(18)+pp*w*C(2)-pp*C(81)-p*w*C(54)-sq(w)+w*C(324);}
static T stableA(const T&p,const T&j,const T&w,const T&z){return w-sq(p)+p*C(9)-z*C(18)+z*p*C(2)+(p+T(3)-z*C(2))*j;}
static array<T,6> tcoeffs(T A,T B){T ai=cj(A),bi=cj(B);return {
 -sq(A-B)*(A+B)*sq(ai)*sq(bi),
 (A-B)*(A+B)*(A*B-T(1))*sq(ai)*bi,
 sq(B-T(1))*(B+T(1))*ai*bi,
 -(sq(A)-B)*(B-T(1))*(B+T(1))*ai*sq(bi),
 sq(A-T(1))*(A+T(1))*ai*bi,
 (A-T(1))*(A+T(1))*(A-sq(B))*sq(ai)*bi};}
extern "C" int mean_region(const double*input,double*output){try{
 if(!std::numeric_limits<double>::is_iec559||std::fegetround()!=FE_TONEAREST)return -9;
 auto seed=tseed(input,input+16);T a=seed[0],b=seed[1],c=seed[2],d=seed[3];
 T s=-T(1)-a-b,t=-T(1)-c-d,r=-T(1)-c*cj(a)-d*cj(b);
 T X=abs2(s),Y=abs2(t),Z=abs2(r),p=X+Y+Z,j=real(s*r*cj(t))*C(2),w=X*Y+X*Z+Y*Z-X*Y*Z;
 T R=stableR(p,j,w);
 array<T,3>P={r*sq(s)+cj(r)*sq(t)+(T(3)-Z)*s*t,t*sq(cj(s))+sq(r)*cj(t)+(T(3)-Y)*r*cj(s),s*sq(cj(t))+sq(cj(r))*cj(s)+(T(3)-X)*cj(r)*cj(t)};
 array<T,3>n={abs2(P[0]),abs2(P[1]),abs2(P[2])};T delta=n[0]*n[1]*n[2],D=delta*C(3);
 T pifact=P[0]*n[1]*n[2]*C(0.5),c1fact=cj(P[1])*n[0]*n[2]*C(0.5),c2fact=cj(P[2])*n[0]*n[1]*C(0.5);
 array<T,6>M={delta*s*t-stableA(p,j,w,Z)*pifact,delta*cj(r),delta*s*cj(r)-stableA(p,j,w,Y)*c1fact,delta*t,delta*t*r-stableA(p,j,w,X)*c2fact,delta*s};
 array<T,6>B={pifact*(-ii),T(0),c1fact*ii,T(0),c2fact*ii,T(0)};
 array<T,3>xx={T(1),a,b},yy={T(1),c,d};int pq[6][2]={{1,1},{1,-1},{2,-1},{0,1},{-1,2},{1,0}},pairs[3][2]={{0,1},{0,2},{1,2}};
 double*q=output;put(R.range().re,q);put(delta.range().re,q);double best=INF;array<double,4>scores={1,1,1,1};
 for(int k=0;k<3;k++){int u=pairs[k][0],v=pairs[k][1];auto ds=tcoeffs(xx[v]*cj(xx[u]),yy[v]*cj(yy[u]));T sa,sb;
  for(int z=0;z<6;z++){T co=ds[z]*powu(xx[u],-pq[z][0])*powu(yy[u],-pq[z][1]);sa=sa+co*M[z];sb=sb+co*B[z];}
  T A=real((sa-cj(sa))*ii),beta=real((sb-cj(sb))*ii);T Cc=sq(A)+(sq(beta)-sq(D))*R,cross=A*beta*C(2),Ff=sq(Cc)-sq(cross)*R;
  I cr=Cc.range().re,fr=Ff.range().re;if(cr.l<=0||fr.l<=0){cr=intersect(cr,bernstein_real(Cc));fr=intersect(fr,bernstein_real(Ff));}put(cr,q);put(fr,q);put(cross.range().re,q);
  double ca=(Cc.a[0].re.l+Cc.a[0].re.u)/2,fa=(Ff.a[0].re.l+Ff.a[0].re.u)/2;
  if(ca>0&&fa>0){double rate=std::max((cr.u-cr.l)/ca,(fr.u-fr.l)/fa);if(rate<best){best=rate;scores={0,0,0,0};for(int m=1;m<basis.n;m++)for(int i=0;i<4;i++)if(basis.e[m][i])scores[i]+=mag(Cc.a[m].re)/ca+mag(Ff.a[m].re)/fa;}}
 }
 for(double x:scores)*q++=x;return int(q-output);
 }catch(const NativeBudget&){return -2;}catch(...){return -1;}}
