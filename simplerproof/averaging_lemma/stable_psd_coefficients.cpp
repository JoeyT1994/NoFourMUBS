#include "../../ProvenResults/SignedCornerPSDPrune/engine.cpp"
static J stable_R(const J&p,const J&j,const J&w){return J(-1)*powu(p,4)+J(2)*powu(p,3)*j+J(18)*powu(p,3)+J(-1)*powu(p,2)*powu(j,2)+J(-24)*powu(p,2)*j+J(2)*powu(p,2)*w+J(-81)*powu(p,2)+J(2)*p*powu(j,2)+J(-2)*p*j*w+J(54)*p*j+J(-54)*p*w+J(4)*powu(j,3)+J(27)*powu(j,2)+J(30)*j*w+J(-1)*powu(w,2)+J(324)*w;}
static J stable_numerator(const J&p,const J&j,const J&w,const J&z,const J&y){return J(1)*powu(p,2)*z+J(1)*powu(p,2)*y+J(-1)*p*j*z+J(-1)*p*j*y+J(6)*p*j+J(-2)*p*z*y+J(-9)*p*z+J(-9)*p*y+J(2)*powu(j,2)+J(2)*j*z*y+J(-3)*j*z+J(-3)*j*y+J(-1)*w*z+J(-1)*w*y+J(18)*w+J(18)*z*y;}
static J stable_A(const J&p,const J&j,const J&w,const J&z){return J(-1)*powu(p,2)+J(1)*p*j+J(2)*p*z+J(9)*p+J(-2)*j*z+J(3)*j+J(1)*w+J(-18)*z;}
static Expressions stable_expressions(array<J,4>p,bool cleared,bool paired){
 J a=p[0],b=p[1],c=p[2],d=p[3];J s=-J(1)-a-b,t=-J(1)-c-d,r=-J(1)-c*cj(a)-d*cj(b);
 J X=abs2(s),Y=abs2(t),Z=abs2(r),pp=X+Y+Z,JJ=real(s*r*cj(t))*C(2),W=X*Y+X*Z+Y*Z-X*Y*Z;
 J g=J(27)-pp*C(3)+JJ,eta=J(9)-pp+JJ,chi=W-(pp-J(9))*(pp-J(18))+(pp-J(15))*JJ;
 Expressions out;out.R=stable_R(pp,JJ,W);out.gram={s,t,r};
 array<J,3>P={r*sq(s)+cj(r)*sq(t)+(J(3)-Z)*s*t,t*sq(cj(s))+sq(r)*cj(t)+(J(3)-Y)*r*cj(s),s*sq(cj(t))+sq(cj(r))*cj(s)+(J(3)-X)*cj(r)*cj(t)};
 array<J,3>k={J(9)-Z,J(9)-Y,J(9)-X};
 J scale(1);L u,v,w,Pi,C1,C2;
 auto numerator=[&](int i,int j){return L(stable_numerator(pp,JJ,W,J(9)-k[i],J(9)-k[j]),(k[j]-k[i])*ii);};
 if(cleared){
  array<J,3>n={abs2(P[0]),abs2(P[1]),abs2(P[2])};scale=n[0]*n[1]*n[2];
  u=numerator(0,1)*(P[0]*cj(P[1])*n[2]*C(0.5));
  v=numerator(0,2)*(P[0]*cj(P[2])*n[1]*C(0.5));
  w=numerator(2,1)*(P[2]*cj(P[1])*n[0]*C(0.5));
  Pi=L(stable_A(pp,JJ,W,J(9)-k[0]),J(ii))*(P[0]*n[1]*n[2]*C(0.5));
  C1=L(stable_A(pp,JJ,W,J(9)-k[1]),J(-ii))*(cj(P[1])*n[0]*n[2]*C(0.5));
  C2=L(stable_A(pp,JJ,W,J(9)-k[2]),J(-ii))*(cj(P[2])*n[0]*n[1]*C(0.5));
 }else{
  array<J,3>ip={inv(P[0]),inv(P[1]),inv(P[2])};
  u=numerator(0,1)*(cj(ip[0])*ip[1]*C(0.5));
  v=numerator(0,2)*(cj(ip[0])*ip[2]*C(0.5));
  w=numerator(2,1)*(cj(ip[2])*ip[1]*C(0.5));
  Pi=L(stable_A(pp,JJ,W,J(9)-k[0]),J(ii))*(cj(ip[0])*C(0.5));
  C1=L(stable_A(pp,JJ,W,J(9)-k[1]),J(-ii))*(ip[1]*C(0.5));
  C2=L(stable_A(pp,JJ,W,J(9)-k[2]),J(-ii))*(ip[2]*C(0.5));
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


extern "C" int stable_compute(const double*input,double*output,int options){
 try{if(!std::numeric_limits<double>::is_iec559||std::fegetround()!=FE_TONEAREST)return -9;
 auto c=stable_expressions(seed(input),options&1,options&2),b=stable_expressions(seed(input+16),options&1,options&2);
 const double*r=input+32;double*q=output;put(taylor_part(c.R,b.R,r,false),q);put(taylor_part(c.scale,b.scale,r,false),q);
 for(int j=0;j<3;j++)put(taylor(c.gram[j],b.gram[j],r),q);
 for(int j=0;j<3;j++)for(int z=0;z<4;z++){put(taylor(c.nf[j][z].a,b.nf[j][z].a,r),q);put(taylor(c.nf[j][z].b,b.nf[j][z].b,r),q);}
 return int(q-output);
 }catch(...){return -1;}
}
