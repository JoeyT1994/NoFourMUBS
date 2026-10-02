// Outward IEEE-754 binary64 interval matrix product. No FMA or fast math.
#include <cmath>
#include <limits>
#include <cstddef>
extern "C" int interval_matmul(const double* al,const double* ah,const double* bl,const double* bh,double* cl,double* ch,int m,int n,int p){
 if(!std::numeric_limits<double>::is_iec559 || sizeof(double)!=8 || m<1||n<1||p<1)return 1;
 const double inf=std::numeric_limits<double>::infinity();
 for(int i=0;i<m;i++)for(int j=0;j<p;j++){
  double lo=0,hi=0;
  for(int k=0;k<n;k++){
   double a=al[i*n+k],b=ah[i*n+k],c=bl[k*p+j],d=bh[k*p+j];
   if(!(a<=b&&c<=d)||!std::isfinite(a)||!std::isfinite(b)||!std::isfinite(c)||!std::isfinite(d))return 2;
   volatile double t0=a*c,t1=a*d,t2=b*c,t3=b*d;
   double mn=std::fmin(std::fmin(t0,t1),std::fmin(t2,t3)),mx=std::fmax(std::fmax(t0,t1),std::fmax(t2,t3));
   volatile double sl=lo+std::nextafter(mn,-inf),sh=hi+std::nextafter(mx,inf);
   lo=std::nextafter(sl,-inf);hi=std::nextafter(sh,inf);
  }
  if(!std::isfinite(lo)||!std::isfinite(hi))return 3;
  cl[i*p+j]=lo;ch[i*p+j]=hi;
 }
 return 0;
}
struct I {double l,h;};
static const double infv=std::numeric_limits<double>::infinity();
static I add(I x,I y){volatile double a=x.l+y.l,b=x.h+y.h;return {std::nextafter(a,-infv),std::nextafter(b,infv)};}
static I neg(I x){return {-x.h,-x.l};}
static I mul(I x,I y){volatile double a=x.l*y.l,b=x.l*y.h,c=x.h*y.l,d=x.h*y.h;return {std::nextafter(std::fmin(std::fmin(a,b),std::fmin(c,d)),-infv),std::nextafter(std::fmax(std::fmax(a,b),std::fmax(c,d)),infv)};}
static I divpos(I x,double y){volatile double a=x.l/y,b=x.h/y;return {std::nextafter(a,-infv),std::nextafter(b,infv)};}
// Terms are grouped by row pair. phi has the nine nonconstant monomials
// u,v,u^2,uv,v^2,u^3,u^2v,uv^2,v^3; normalized normal variables in [-1,1].
extern "C" int phase_polynomial(const double* zrlo,const double* zrhi,const double* zilo,const double* zihi,const double* plo,const double* phi,double* outlo,double* outhi,int pairs,int columns){
 const int N=136;int ex[N],ey[N],index[16][16];
 for(int i=0;i<16;i++)for(int j=0;j<16;j++)index[i][j]=-1;
 int nn=0;for(int d=0;d<=15;d++)for(int j=0;j<=d;j++){int i=d-j;ex[nn]=i;ey[nn]=j;index[i][j]=nn++;}
 const int px[9]={1,0,2,1,0,3,2,1,0},py[9]={0,1,0,1,2,0,1,2,3};
 for(int r=0;r<pairs;r++){
  I re[N]{},im[N]{};
  for(int col=0;col<columns;col++){
   int t=r*columns+col;I zre{zrlo[t],zrhi[t]},zim{zilo[t],zihi[t]};I pol[9];
   for(int k=0;k<9;k++)pol[k]={plo[t*9+k],phi[t*9+k]};
   I power[N]{};power[0]={1,1};int maxdegree=0;double factorial=1;
   for(int order=1;order<=5;order++){
    I next[N]{};
    for(int a=0;a<N;a++)if(ex[a]+ey[a]<=maxdegree){
     if(power[a].l==0&&power[a].h==0)continue;
     for(int k=0;k<9;k++){
      if(pol[k].l==0&&pol[k].h==0)continue;
      int x=ex[a]+px[k],y=ey[a]+py[k];if(x+y>15)return 4;
      int b=index[x][y];next[b]=add(next[b],mul(power[a],pol[k]));
     }
    }
    maxdegree+=3;factorial*=order;
    for(int k=1;k<N;k++){
     power[k]=next[k];
     if(ex[k]+ey[k]>maxdegree)continue;
     I w=divpos(power[k],factorial),ar=mul(zre,w),ai=mul(zim,w);
     if(order%4==1){re[k]=add(re[k],neg(ai));im[k]=add(im[k],ar);}
     if(order%4==2){re[k]=add(re[k],neg(ar));im[k]=add(im[k],neg(ai));}
     if(order%4==3){re[k]=add(re[k],ai);im[k]=add(im[k],neg(ar));}
     if(order%4==0){re[k]=add(re[k],ar);im[k]=add(im[k],ai);}
    }
    power[0]={0,0};
   }
  }
  for(int k=1;k<N;k++){
   int a=(2*r)*135+k-1,b=(2*r+1)*135+k-1;
   if(!std::isfinite(re[k].l)||!std::isfinite(re[k].h)||!std::isfinite(im[k].l)||!std::isfinite(im[k].h))return 5;
   outlo[a]=re[k].l;outhi[a]=re[k].h;outlo[b]=im[k].l;outhi[b]=im[k].h;
  }
 }
 return 0;
}
static double upper_abs(I x){return std::fmax(std::fabs(x.l),std::fabs(x.h));}
static I scale(I x,int n){return mul(x,{double(n),double(n)});}
static I sym(double r){return {-r,r};}
static bool valid(I x){return x.l<=x.h&&std::isfinite(x.l)&&std::isfinite(x.h);}
static I sqr(I x){I y=mul(x,x);if(x.l<=0&&x.h>=0)y.l=0;return y;}
// Finite Taylor identities for real arguments, not a libm-accuracy assumption.
static int trig(I x,I& co,I& si){
 double a=upper_abs(x);if(!(a<=2.0))return 11;
 I xx=sqr(x),tc{1,1},ts=x;co=tc;si=ts;
 for(int k=1;k<=10;k++){
  tc=neg(divpos(mul(tc,xx),double((2*k-1)*(2*k))));co=add(co,tc);
  ts=neg(divpos(mul(ts,xx),double((2*k)*(2*k+1))));si=add(si,ts);
 }
 I rc{1,1},rs{1,1};for(int k=1;k<=22;k++)rc=divpos(mul(rc,{a,a}),double(k));
 for(int k=1;k<=23;k++)rs=divpos(mul(rs,{a,a}),double(k));
 co=add(co,sym(rc.h));si=add(si,sym(rs.h));return valid(co)&&valid(si)?0:12;
}
static void complex_mul(I ar,I ai,I br,I bi,I& cr,I& ci){cr=add(mul(ar,br),neg(mul(ai,bi)));ci=add(mul(ar,bi),mul(ai,br));}
// z inputs: 15 row pairs times 6 columns; phi coefficients: the 9 normalized monomials.
// J outputs: [n*n*30,21], flattened. Each cell has its own centre Jacobian and two derivative enclosures.
extern "C" int cubic_jacobians(const double* zrl,const double* zrh,const double* zil,const double* zih,const double* pl,const double* ph,double* j0l,double* j0h,double* jsl,double* jsh,double* jtl,double* jth,int n){
 if(n<1||n>32)return 10;
 int pos[6][6];int nn=0;for(int i=0;i<6;i++)for(int j=0;j<6;j++){pos[i][j]=-1;if(i&&j&&!(i<=2&&j<=2))pos[i][j]=nn++;}
 if(nn!=21)return 13;
 const size_t total=size_t(n)*n*30*21;
 for(size_t k=0;k<total;k++){j0l[k]=j0h[k]=jsl[k]=jsh[k]=jtl[k]=jth[k]=0;}
 I d=divpos({1,1},double(n));
 for(int ii=0;ii<n;ii++)for(int jj=0;jj<n;jj++){
  int cell=ii*n+jj;I s=add({-1,-1},scale(d,2*ii+1)),t=add({-1,-1},scale(d,2*jj+1));
  I s2=mul(s,s),t2=mul(t,t),st=mul(s,t);int r=0;
  for(int i=0;i<6;i++)for(int k=i+1;k<6;k++,r++)for(int j=1;j<6;j++){
   int id=r*6+j;I b[9];for(int l=0;l<9;l++){b[l]={pl[id*9+l],ph[id*9+l]};if(!valid(b[l]))return 14;}
   I mon[9]={s,t,s2,st,t2,mul(s2,s),mul(s2,t),mul(s,t2),mul(t2,t)};
   I pc{0,0};for(int l=0;l<9;l++)pc=add(pc,mul(b[l],mon[l]));
   I pu=add(add(add(b[0],scale(mul(b[2],s),2)),mul(b[3],t)),add(add(scale(mul(b[5],s2),3),scale(mul(b[6],st),2)),mul(b[7],t2)));
   I pv=add(add(add(b[1],mul(b[3],s)),scale(mul(b[4],t),2)),add(add(mul(b[6],s2),scale(mul(b[7],st),2)),scale(mul(b[8],t2),3)));
   I quu=add(scale(b[2],2),add(scale(mul(b[5],s),6),scale(mul(b[6],t),2)));
   I quv=add(b[3],add(scale(mul(b[6],s),2),scale(mul(b[7],t),2)));
   I qvv=add(scale(b[4],2),add(scale(mul(b[7],s),2),scale(mul(b[8],t),6)));
   I d2=mul(d,d),d3=mul(d2,d);
   I rad=add(mul({upper_abs(pu)+0.0,upper_abs(pu)},d),mul({upper_abs(pv),upper_abs(pv)},d));
   rad=add(rad,divpos(mul({upper_abs(quu),upper_abs(quu)},d2),2));rad=add(rad,mul({upper_abs(quv),upper_abs(quv)},d2));rad=add(rad,divpos(mul({upper_abs(qvv),upper_abs(qvv)},d2),2));
   for(int l=5;l<9;l++)rad=add(rad,mul({upper_abs(b[l]),upper_abs(b[l])},d3));
   I pur=add(mul({upper_abs(quu),upper_abs(quu)},d),mul({upper_abs(quv),upper_abs(quv)},d));
   pur=add(pur,mul(add(add(scale({upper_abs(b[5]),upper_abs(b[5])},3),scale({upper_abs(b[6]),upper_abs(b[6])},2)),{upper_abs(b[7]),upper_abs(b[7])}),d2));
   I pvr=add(mul({upper_abs(quv),upper_abs(quv)},d),mul({upper_abs(qvv),upper_abs(qvv)},d));
   pvr=add(pvr,mul(add(add({upper_abs(b[6]),upper_abs(b[6])},scale({upper_abs(b[7]),upper_abs(b[7])},2)),scale({upper_abs(b[8]),upper_abs(b[8])},3)),d2));
   I co,si,cow,siw;int stat=trig(pc,co,si);if(stat)return stat;stat=trig(add(pc,sym(rad.h)),cow,siw);if(stat)return stat;
   I zr{zrl[id],zrh[id]},zi{zil[id],zih[id]},r0,i0,rw,iw;if(!valid(zr)||!valid(zi))return 15;
   complex_mul(zr,zi,co,si,r0,i0);complex_mul(zr,zi,cow,siw,rw,iw);
   I u=add(pu,sym(pur.h)),v=add(pv,sym(pvr.h));
   I dr[3]={neg(i0),neg(mul(rw,u)),neg(mul(rw,v))};I di[3]={r0,neg(mul(iw,u)),neg(mul(iw,v))};
   for(int a=0;a<2;a++){int row=a==0?i:k,p=pos[row][j];if(p<0)continue;
    for(int x=0;x<3;x++){I er=a==0?dr[x]:neg(dr[x]),ei=a==0?di[x]:neg(di[x]);if(!valid(er)||!valid(ei))return 16;
     double* outl=x==0?j0l:(x==1?jsl:jtl);double* outh=x==0?j0h:(x==1?jsh:jth);
     size_t kr=(size_t(cell)*30+2*r)*21+p,ki=kr+21;outl[kr]=er.l;outh[kr]=er.h;outl[ki]=ei.l;outh[ki]=ei.h;
    }
   }
  }
 }
 return 0;
}
static double root_upper(double x){
 if(!(x>=0&&std::isfinite(x)))return infv;
 double y=std::sqrt(x);if(y==0&&x==0)return 0;
 for(int i=0;i<16;i++){if(mul({y,y},{y,y}).l>=x)return y;y=std::nextafter(y,infv);}return infv;
}
// A: exact dyadic binary64 preconditioners [n*n*21,30].
extern "C" int envelope_bounds(const double* A,const double* fl,const double* fh,const double* tail,const double* j0l,const double* j0h,const double* jsl,const double* jsh,const double* jtl,const double* jth,double* eta,double* K,double* W,int n){
 for(int i=0;i<21;i++){eta[i]=0;for(int k=0;k<21;k++)K[i*21+k]=0;for(int r=0;r<15;r++)W[i*15+r]=0;}
 for(int cell=0;cell<n*n;cell++)for(int i=0;i<21;i++){
  const double* a=A+(cell*21+i)*30;
  I e{0,0};
  for(int col=0;col<135;col++){I x{0,0};for(int k=0;k<30;k++)x=add(x,mul({a[k],a[k]},{fl[k*135+col],fh[k*135+col]}));double ab=upper_abs(x);e=add(e,{ab,ab});}
  for(int r=0;r<15;r++){
   I norm=add(mul({a[2*r],a[2*r]},{a[2*r],a[2*r]}),mul({a[2*r+1],a[2*r+1]},{a[2*r+1],a[2*r+1]}));double w=root_upper(norm.h);W[i*15+r]=std::fmax(W[i*15+r],w);e=add(e,mul({w,w},{tail[r],tail[r]}));
  }
  if(!valid(e))return 21;eta[i]=std::fmax(eta[i],e.h);
  for(int col=0;col<21;col++){
   I x0{0,0},xs{0,0},xt{0,0};for(int k=0;k<30;k++){size_t at=(size_t(cell)*30+k)*21+col;I aa{a[k],a[k]};x0=add(x0,mul(aa,{j0l[at],j0h[at]}));xs=add(xs,mul(aa,{jsl[at],jsh[at]}));xt=add(xt,mul(aa,{jtl[at],jth[at]}));}
   x0=add({i==col?1.0:0.0,i==col?1.0:0.0},neg(x0));
   double b0=upper_abs(x0),bs=upper_abs(xs),bt=upper_abs(xt);I sum=add({b0,b0},add(divpos({bs,bs},double(n)),divpos({bt,bt},double(n))));
   if(!valid(sum))return 22;K[i*21+col]=std::fmax(K[i*21+col],sum.h);
  }
 }
 return 0;
}
// General real phase equations used by the signed-side chart.
// Every term is weight * Re/Im(z * exp(i phi)); its constant is removed exactly.
extern "C" int equation_polynomial(const double* zrl,const double* zrh,const double* zil,const double* zih,const double* pl,const double* ph,const int* rows,const int* which,const double* weights,double* outlo,double* outhi,int nt,int neq){
 if(nt<1||nt>1000||neq<1||neq>64)return 30;
 const int N=136;int ex[N],ey[N],index[16][16];for(int i=0;i<16;i++)for(int j=0;j<16;j++)index[i][j]=-1;
 int nn=0;for(int d=0;d<=15;d++)for(int j=0;j<=d;j++){ex[nn]=d-j;ey[nn]=j;index[d-j][j]=nn++;}
 const int px[9]={1,0,2,1,0,3,2,1,0},py[9]={0,1,0,1,2,0,1,2,3};
 I out[64][135]{};
 for(int t=0;t<nt;t++){
  int r=rows[t],w=which[t];if(r<0||r>=neq||(w!=0&&w!=1)||!std::isfinite(weights[t])||std::fabs(weights[t])>1)return 31;
  I zr{zrl[t],zrh[t]},zi{zil[t],zih[t]};if(!valid(zr)||!valid(zi)||upper_abs(zr)>2||upper_abs(zi)>2)return 32;
  I pol[9];for(int k=0;k<9;k++){pol[k]={pl[t*9+k],ph[t*9+k]};if(!valid(pol[k])||upper_abs(pol[k])>1)return 33;}
  I power[N]{};power[0]={1,1};int maxdegree=0;double factorial=1;
  for(int order=1;order<=5;order++){
   I next[N]{};
   for(int a=0;a<N;a++)if(ex[a]+ey[a]<=maxdegree){
    if(power[a].l==0&&power[a].h==0)continue;
    for(int k=0;k<9;k++){
     if(pol[k].l==0&&pol[k].h==0)continue;
     int x=ex[a]+px[k],y=ey[a]+py[k];if(x+y>15)return 34;
     int b=index[x][y];next[b]=add(next[b],mul(power[a],pol[k]));
    }
   }
   maxdegree+=3;factorial*=order;
   I zz=order%4==0?(w==0?zr:zi):order%4==1?(w==0?neg(zi):zr):order%4==2?(w==0?neg(zr):neg(zi)):(w==0?zi:neg(zr));
   zz=mul(zz,{weights[t],weights[t]});
   for(int k=1;k<N;k++){power[k]=next[k];if(ex[k]+ey[k]>maxdegree)continue;out[r][k-1]=add(out[r][k-1],mul(zz,divpos(power[k],factorial)));}
   power[0]={0,0};
  }
 }
 for(int r=0;r<neq;r++)for(int k=0;k<135;k++){if(!valid(out[r][k]))return 35;outlo[r*135+k]=out[r][k].l;outhi[r*135+k]=out[r][k].h;}
 return 0;
}
static void poly_eval(const I* b,I s,I t,I& f,I& fu,I& ft){
 I s2=sqr(s),t2=sqr(t),st=mul(s,t),mon[9]={s,t,s2,st,t2,mul(s2,s),mul(s2,t),mul(s,t2),mul(t2,t)};
 f={0,0};for(int k=0;k<9;k++)f=add(f,mul(b[k],mon[k]));
 fu=add(add(add(b[0],scale(mul(b[2],s),2)),mul(b[3],t)),add(add(scale(mul(b[5],s2),3),scale(mul(b[6],st),2)),mul(b[7],t2)));
 ft=add(add(add(b[1],mul(b[3],s)),scale(mul(b[4],t),2)),add(add(mul(b[6],s2),scale(mul(b[7],st),2)),scale(mul(b[8],t2),3)));
}
extern "C" int equation_jacobians(const double* zrl,const double* zrh,const double* zil,const double* zih,const double* pl,const double* ph,const int* rows,const int* which,const double* weights,const int* powers,double* j0l,double* j0h,double* jsl,double* jsh,double* jtl,double* jth,int nt,int neq,int nv,int n){
 if(nt<1||nt>1000||neq<1||neq>64||nv<1||nv>32||n<1||n>16)return 40;
 I d=divpos({1,1},double(n));
 for(int ii=0;ii<n;ii++)for(int jj=0;jj<n;jj++){
  I out[3][64][32]{};int cell=ii*n+jj;
  I s=add({-1,-1},scale(d,2*ii+1)),t=add({-1,-1},scale(d,2*jj+1)),sw=add(s,sym(d.h)),tw=add(t,sym(d.h));
  for(int term=0;term<nt;term++){
   int r=rows[term],whichpart=which[term];if(r<0||r>=neq||(whichpart!=0&&whichpart!=1)||!std::isfinite(weights[term]))return 41;
   I b[9];for(int k=0;k<9;k++){b[k]={pl[term*9+k],ph[term*9+k]};if(!valid(b[k])||upper_abs(b[k])>1)return 42;}
   I f0,u0,t0,fw,uw,ttw;poly_eval(b,s,t,f0,u0,t0);poly_eval(b,sw,tw,fw,uw,ttw);
   I co,si,cow,siw;int status=trig(f0,co,si);if(status)return status;status=trig(fw,cow,siw);if(status)return status;
   I zr{zrl[term],zrh[term]},zi{zil[term],zih[term]},r0,i0,rw,iw;if(!valid(zr)||!valid(zi))return 43;
   complex_mul(zr,zi,co,si,r0,i0);complex_mul(zr,zi,cow,siw,rw,iw);
   I ds[3]={whichpart==0?neg(i0):r0,neg(mul(whichpart==0?rw:iw,uw)),neg(mul(whichpart==0?rw:iw,ttw))};
   for(int k=0;k<nv;k++){
    int power=powers[term*nv+k];if(power==0)continue;if(power<-8||power>8)return 44;
    I weight=mul({weights[term],weights[term]},{double(power),double(power)});
    for(int a=0;a<3;a++)out[a][r][k]=add(out[a][r][k],mul(weight,ds[a]));
   }
  }
  for(int a=0;a<3;a++)for(int r=0;r<neq;r++)for(int k=0;k<nv;k++){
   I v=out[a][r][k];if(!valid(v))return 45;size_t ix=(size_t(cell)*neq+r)*nv+k;
   double* lo=a==0?j0l:(a==1?jsl:jtl);double* hi=a==0?j0h:(a==1?jsh:jth);lo[ix]=v.l;hi[ix]=v.h;
  }
 }
 return 0;
}
extern "C" int general_envelopes(const double* A,const double* fl,const double* fh,const double* tail,const double* j0l,const double* j0h,const double* jsl,const double* jsh,const double* jtl,const double* jth,double* eta,double* K,double* W,int neq,int nv,int n){
 if(neq<1||neq>64||nv<1||nv>32||n<1||n>16)return 50;
 for(int i=0;i<nv;i++){eta[i]=0;for(int k=0;k<nv;k++)K[i*nv+k]=0;for(int r=0;r<neq;r++)W[i*neq+r]=0;}
 for(int cell=0;cell<n*n;cell++)for(int i=0;i<nv;i++){
  const double* a=A+(cell*nv+i)*neq;for(int r=0;r<neq;r++){if(!std::isfinite(a[r])||std::fabs(a[r])>1048576)return 51;W[i*neq+r]=std::fmax(W[i*neq+r],std::fabs(a[r]));}
  I e{0,0};
  for(int col=0;col<135;col++){I x{0,0};for(int k=0;k<neq;k++)x=add(x,mul({a[k],a[k]},{fl[k*135+col],fh[k*135+col]}));double ab=upper_abs(x);e=add(e,{ab,ab});}
  for(int r=0;r<neq;r++){if(!(tail[r]>=0&&tail[r]<=100&&std::isfinite(tail[r])))return 52;double ar=std::fabs(a[r]);e=add(e,mul({ar,ar},{tail[r],tail[r]}));}
  if(!valid(e))return 53;eta[i]=std::fmax(eta[i],e.h);
  for(int col=0;col<nv;col++){
   I x0{0,0},xs{0,0},xt{0,0};for(int k=0;k<neq;k++){size_t at=(size_t(cell)*neq+k)*nv+col;I aa{a[k],a[k]};x0=add(x0,mul(aa,{j0l[at],j0h[at]}));xs=add(xs,mul(aa,{jsl[at],jsh[at]}));xt=add(xt,mul(aa,{jtl[at],jth[at]}));}
   x0=add({i==col?1.0:0.0,i==col?1.0:0.0},neg(x0));
   double b0=upper_abs(x0),bs=upper_abs(xs),bt=upper_abs(xt);I sum=add({b0,b0},add(divpos({bs,bs},double(n)),divpos({bt,bt},double(n))));
   if(!valid(sum))return 54;K[i*nv+col]=std::fmax(K[i*nv+col],sum.h);
  }
 }
 return 0;
}
extern "C" int audit_trig(double lo,double hi,double* out){I co,si;int s=trig({lo,hi},co,si);if(s)return s;out[0]=co.l;out[1]=co.h;out[2]=si.l;out[3]=si.h;return 0;}
// First tangential Taylor jet of the normal residual. The phase predictor
// is affine in the two tangential parameters and cubic in the two normals.
// Output columns are F0, hp*Fp, hq*Fq, each in the 189 nonconstant monomials
// of total normal degree at most 18. All constants cancel by exact identities.
extern "C" int tangent_polynomial(const double* zrl,const double* zrh,const double* zil,const double* zih,const double* cl,const double* ch,const double* cpl,const double* cph,const double* cql,const double* cqh,const double* bpl,const double* bph,const double* bql,const double* bqh,const int* rows,const int* which,const double* weights,double* outlo,double* outhi,int nt,int neq,double hp,double hq){
 if(nt<1||nt>1000||neq<1||neq>64||!(hp>=0&&hp<=1&&hq>=0&&hq<=1))return 60;
 const int N=190;int ex[N],ey[N],index[19][19];for(int i=0;i<19;i++)for(int j=0;j<19;j++)index[i][j]=-1;
 int nn=0;for(int d=0;d<=18;d++)for(int j=0;j<=d;j++){ex[nn]=d-j;ey[nn]=j;index[d-j][j]=nn++;}
 const int px[9]={1,0,2,1,0,3,2,1,0},py[9]={0,1,0,1,2,0,1,2,3};I out[64][567]{};
 for(int t=0;t<nt;t++){
  int r=rows[t],wh=which[t];if(r<0||r>=neq||(wh!=0&&wh!=1)||!std::isfinite(weights[t])||std::fabs(weights[t])>1)return 61;
  I zr{zrl[t],zrh[t]},zi{zil[t],zih[t]},bp{bpl[t],bph[t]},bq{bql[t],bqh[t]};if(!valid(zr)||!valid(zi)||!valid(bp)||!valid(bq)||upper_abs(zr)>2||upper_abs(zi)>2||upper_abs(bp)>128||upper_abs(bq)>128)return 62;
  I pol[9],pp[9],pq[9];for(int k=0;k<9;k++){
   pol[k]={cl[t*9+k],ch[t*9+k]};pp[k]={cpl[t*9+k],cph[t*9+k]};pq[k]={cql[t*9+k],cqh[t*9+k]};
   if(!valid(pol[k])||!valid(pp[k])||!valid(pq[k])||upper_abs(pol[k])>1||upper_abs(pp[k])>1024||upper_abs(pq[k])>1024)return 63;
  }
  I ere[N]{},eim[N]{},power[N]{};power[0]={1,1};int maxdegree=0;double factorial=1;
  for(int order=1;order<=5;order++){
   I next[N]{};
   for(int a=0;a<N;a++)if(ex[a]+ey[a]<=maxdegree){
    if(power[a].l==0&&power[a].h==0)continue;
    for(int k=0;k<9;k++){if(pol[k].l==0&&pol[k].h==0)continue;int x=ex[a]+px[k],y=ey[a]+py[k];if(x+y>18)return 64;int b=index[x][y];next[b]=add(next[b],mul(power[a],pol[k]));}
   }
   maxdegree+=3;factorial*=order;
   for(int k=1;k<N;k++){power[k]=next[k];if(ex[k]+ey[k]>maxdegree)continue;I v=divpos(power[k],factorial);if(order%4==0)ere[k]=add(ere[k],v);if(order%4==1)eim[k]=add(eim[k],v);if(order%4==2)ere[k]=add(ere[k],neg(v));if(order%4==3)eim[k]=add(eim[k],neg(v));}
   power[0]={0,0};
  }
  I ppr[N]{},ppi[N]{},pqr[N]{},pqi[N]{};
  for(int a=0;a<N;a++)if(ex[a]+ey[a]<=15){
   I er=a==0?I{1,1}:ere[a],ei=eim[a];
   for(int k=0;k<9;k++){int x=ex[a]+px[k],y=ey[a]+py[k];int b=index[x][y];ppr[b]=add(ppr[b],mul(pp[k],er));ppi[b]=add(ppi[b],mul(pp[k],ei));pqr[b]=add(pqr[b],mul(pq[k],er));pqi[b]=add(pqi[b],mul(pq[k],ei));}
  }
  for(int k=1;k<N;k++){
   I yr[3]={ere[k],neg(add(mul(bp,eim[k]),ppi[k])),neg(add(mul(bq,eim[k]),pqi[k]))};
   I yi[3]={eim[k],add(mul(bp,ere[k]),ppr[k]),add(mul(bq,ere[k]),pqr[k])};
   for(int a=0;a<3;a++){
    I xr,xi;complex_mul(zr,zi,yr[a],yi[a],xr,xi);I ww{weights[t],weights[t]};if(a==1)ww=mul(ww,{hp,hp});if(a==2)ww=mul(ww,{hq,hq});
    out[r][a*189+k-1]=add(out[r][a*189+k-1],mul(wh==0?xr:xi,ww));
   }
  }
 }
 for(int r=0;r<neq;r++)for(int k=0;k<567;k++){if(!valid(out[r][k]))return 65;outlo[r*567+k]=out[r][k].l;outhi[r*567+k]=out[r][k].h;}
 return 0;
}

extern "C" int general_envelopes_wide(const double* A,const double* fl,const double* fh,const double* tail,const double* j0l,const double* j0h,const double* jsl,const double* jsh,const double* jtl,const double* jth,double* eta,double* K,double* W,int neq,int nv,int n,int ncoef){
 if(ncoef<1||ncoef>4096||neq<1||neq>64||nv<1||nv>32||n<1||n>16)return 50;
 for(int i=0;i<nv;i++){eta[i]=0;for(int k=0;k<nv;k++)K[i*nv+k]=0;for(int r=0;r<neq;r++)W[i*neq+r]=0;}
 for(int cell=0;cell<n*n;cell++)for(int i=0;i<nv;i++){
  const double* a=A+(cell*nv+i)*neq;for(int r=0;r<neq;r++){if(!std::isfinite(a[r])||std::fabs(a[r])>1048576)return 51;W[i*neq+r]=std::fmax(W[i*neq+r],std::fabs(a[r]));}
  I e{0,0};
  for(int col=0;col<ncoef;col++){I x{0,0};for(int k=0;k<neq;k++)x=add(x,mul({a[k],a[k]},{fl[k*ncoef+col],fh[k*ncoef+col]}));double ab=upper_abs(x);e=add(e,{ab,ab});}
  for(int r=0;r<neq;r++){if(!(tail[r]>=0&&tail[r]<=100&&std::isfinite(tail[r])))return 52;double ar=std::fabs(a[r]);e=add(e,mul({ar,ar},{tail[r],tail[r]}));}
  if(!valid(e))return 53;eta[i]=std::fmax(eta[i],e.h);
  for(int col=0;col<nv;col++){
   I x0{0,0},xs{0,0},xt{0,0};for(int k=0;k<neq;k++){size_t at=(size_t(cell)*neq+k)*nv+col;I aa{a[k],a[k]};x0=add(x0,mul(aa,{j0l[at],j0h[at]}));xs=add(xs,mul(aa,{jsl[at],jsh[at]}));xt=add(xt,mul(aa,{jtl[at],jth[at]}));}
   x0=add({i==col?1.0:0.0,i==col?1.0:0.0},neg(x0));
   double b0=upper_abs(x0),bs=upper_abs(xs),bt=upper_abs(xt);I sum=add({b0,b0},add(divpos({bs,bs},double(n)),divpos({bt,bt},double(n))));
   if(!valid(sum))return 54;K[i*nv+col]=std::fmax(K[i*nv+col],sum.h);
  }
 }
 return 0;
}
// Exact seed invariant and its four phase derivatives; all arithmetic outward.
struct Z { I r,i; };
static Z za(Z x,Z y){return {add(x.r,y.r),add(x.i,y.i)};}
static Z zn(Z x){return {neg(x.r),neg(x.i)};}
static Z zc(Z x){return {x.r,neg(x.i)};}
static Z zm(Z x,Z y){Z z;complex_mul(x.r,x.i,y.r,y.i,z.r,z.i);return z;}
static Z iz(Z x){return {neg(x.i),x.r};}
static I normz(Z x){return add(sqr(x.r),sqr(x.i));}
static I twiceRe(Z x){return scale(x.r,2);}
static I r_formula(const Z* a,I* grad){
 Z one{{1,1},{0,0}},zero{{0,0},{0,0}};
 Z s=zn(za(one,za(a[0],a[1]))),t=zn(za(one,za(a[2],a[3])));
 Z ca=zm(a[2],zc(a[0])),db=zm(a[3],zc(a[1])),r=zn(za(one,za(ca,db)));
 I X=normz(s),Y=normz(t),Z0=normz(r),p=add(X,add(Y,Z0));
 I J=twiceRe(zm(zm(s,r),zc(t)));
 I W=add(add(mul(X,Y),mul(X,Z0)),add(mul(Y,Z0),neg(mul(mul(X,Y),Z0))));
 I g=add({27,27},add(neg(scale(p,3)),J));
 I et=add({9,9},add(neg(p),J));
 I chi=add(W,add(neg(mul(add(p,{-9,-9}),add(p,{-18,-18}))),mul(add(p,{-15,-15}),J)));
 I R=add(scale(mul(sqr(g),et),4),neg(sqr(chi)));
 Z sd[4]={zn(iz(a[0])),zn(iz(a[1])),zero,zero};
 Z td[4]={zero,zero,zn(iz(a[2])),zn(iz(a[3]))};
 Z rd[4]={iz(ca),iz(db),zn(iz(ca)),zn(iz(db))};
 for(int k=0;k<4;k++){
  I xd=twiceRe(zm(sd[k],zc(s))),yd=twiceRe(zm(td[k],zc(t))),zd=twiceRe(zm(rd[k],zc(r)));
  I pd=add(xd,add(yd,zd));
  I jd=twiceRe(za(zm(za(zm(sd[k],r),zm(s,rd[k])),zc(t)),zm(zm(s,r),zc(td[k]))));
  I wd=add(mul(xd,add(Y,add(Z0,neg(mul(Y,Z0))))),add(mul(yd,add(X,add(Z0,neg(mul(X,Z0))))),mul(zd,add(X,add(Y,neg(mul(X,Y)))))));
  I gd=add(neg(scale(pd,3)),jd),ed=add(neg(pd),jd);
  I cd=add(wd,add(neg(mul(pd,add(scale(p,2),{-27,-27}))),add(mul(pd,J),mul(add(p,{-15,-15}),jd))));
  grad[k]=add(add(scale(mul(mul(g,gd),et),8),scale(mul(sqr(g),ed),4)),neg(scale(mul(chi,cd),2)));
 }
 return R;
}
extern "C" int seed_invariants(const double* zrlo,const double* zrhi,const double* zilo,const double* zihi,double* lo,double* hi){
 Z a[4];for(int k=0;k<4;k++){a[k]={{zrlo[k],zrhi[k]},{zilo[k],zihi[k]}};if(!valid(a[k].r)||!valid(a[k].i)||upper_abs(a[k].r)>2||upper_abs(a[k].i)>2)return 70;}
 I grad[4];I R=r_formula(a,grad);if(!valid(R))return 71;lo[0]=R.l;hi[0]=R.h;
 for(int k=0;k<4;k++){if(!valid(grad[k]))return 72;lo[k+1]=grad[k].l;hi[k+1]=grad[k].h;}return 0;
}
static int monotone_eval(const double* lows,const double* highs,double sqrt3lo,double sqrt3hi,I& bound){
 const Z roots[4]={{{-.5,-.5},{sqrt3lo/2,sqrt3hi/2}},{{-.5,-.5},{-sqrt3hi/2,-sqrt3lo/2}},{{.5,.5},{sqrt3lo/2,sqrt3hi/2}},{{-.5,-.5},{sqrt3lo/2,sqrt3hi/2}}};
 Z a[4];for(int k=0;k<4;k++){I co,si;int st=trig({lows[k],highs[k]},co,si);if(st)return st;a[k]=zm(roots[k],{co,si});}
 I grad[4];r_formula(a,grad);bound=grad[1];return valid(bound)?0:73;
}
extern "C" int monotone_box(const double* lows,const double* highs,double sqrt3lo,double sqrt3hi,double* out){I b;int st=monotone_eval(lows,highs,sqrt3lo,sqrt3hi,b);out[0]=b.l;out[1]=b.h;return st;}
struct MonoCell { double lo[4],hi[4]; int depth; };
extern "C" int monotone_cover(double sqrt3lo,double sqrt3hi,unsigned long long limit,unsigned long long* counts,double* output){
 if(!(sqrt3lo>1&&sqrt3hi<2&&sqrt3lo<=sqrt3hi))return 80;
 // Check the directed sqrt proposal by squaring, not by trusting libm.
 if(mul({sqrt3lo,sqrt3lo},{sqrt3lo,sqrt3lo}).h>3||mul({sqrt3hi,sqrt3hi},{sqrt3hi,sqrt3hi}).l<3)return 81;
 MonoCell stack[64];int sp=1;stack[0]={{-13.0/128,-1.0/16,-3.0/8,-5.0/32},{13.0/128,1.0/16,9.0/16,7.0/64},0};
 unsigned long long visited=0,accepted=0,maxdepth=0;double minbound=infv;
 while(sp){
  if(++visited>limit){counts[0]=visited;counts[1]=accepted;counts[2]=maxdepth;output[0]=minbound;return 82;}
  MonoCell x=stack[--sp];I b;int st=monotone_eval(x.lo,x.hi,sqrt3lo,sqrt3hi,b);if(st)return st;
  if(b.l>128){accepted++;minbound=std::fmin(minbound,b.l);if((unsigned)x.depth>maxdepth)maxdepth=x.depth;continue;}
  if(x.depth>=40||sp>60)return 83;
  int j=0;double width=x.hi[0]-x.lo[0];for(int k=1;k<4;k++){double w=x.hi[k]-x.lo[k];if(w>width){j=k;width=w;}}
  double mid=(x.lo[j]+x.hi[j])/2;MonoCell y=x;x.depth++;y.depth++;x.hi[j]=mid;y.lo[j]=mid;stack[sp++]=y;stack[sp++]=x;
 }
 counts[0]=visited;counts[1]=accepted;counts[2]=maxdepth;output[0]=minbound;return 0;
}
