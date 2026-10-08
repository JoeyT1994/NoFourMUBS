#pragma once
#ifndef POLY_DEG
#define POLY_DEG 4
#endif
// Eight-variable total-degree Taylor model. Tail means error <= tail*h^(m+1),
// h=max_j |xi_j| on [-1,1]^8. All nonconstant input terms have this radial scale.
struct PBasis{
 vector<array<int,8>> ex;vector<int> degree;vector<array<int,3>> pairs;
 array<int,8> linear;int n;
 void rec(array<int,8>&v,int j,int left){if(j==7){v[j]=left;ex.push_back(v);return;}for(int k=0;k<=left;k++){v[j]=k;rec(v,j+1,left-k);}}
 PBasis(){array<int,8>v{};for(int d=0;d<=POLY_DEG;d++){int prev=ex.size();rec(v,0,d);for(int j=prev;j<(int)ex.size();j++)degree.push_back(d);}n=ex.size();
 std::map<array<int,8>,int>index;for(int j=0;j<n;j++){index[ex[j]]=j;if(degree[j]==1)for(int k=0;k<8;k++)if(ex[j][k])linear[k]=j;}
 for(int i=0;i<n;i++)for(int j=0;j<n;j++)if(degree[i]+degree[j]<=POLY_DEG){array<int,8>x;for(int k=0;k<8;k++)x[k]=ex[i][k]+ex[j][k];pairs.push_back({i,j,index.at(x)});}
 }
};
static const PBasis pb;
inline I p_add(I a,I b){if(a.lo==0&&a.hi==0)return b;if(b.lo==0&&b.hi==0)return a;return a+b;}
inline I p_mul(I a,I b){if((a.lo==0&&a.hi==0)||(b.lo==0&&b.hi==0))return I(0);return a*b;}
inline I p_sub(I a,I b){return a-b;}
inline I p_div(I a,I b){return a/b;}
inline double p_upadd(double a,double b){if(a==0)return b;if(b==0)return a;return up(a+b);}
inline double p_upmul(double a,double b){if(a==0||b==0)return 0;return up(a*b);}
struct PM{
 vector<I>a;double tail;
 PM(double x=0):a(pb.n),tail(0){a[0]=I(x);}PM(I x):a(pb.n),tail(0){a[0]=x;}
 array<double,POLY_DEG+1> norms()const{array<double,POLY_DEG+1>s{};for(int i=0;i<pb.n;i++)s[pb.degree[i]]=p_upadd(s[pb.degree[i]],mag(a[i]));return s;}
 double norm()const{double v=0;for(I x:a)v=p_upadd(v,mag(x));return v;}
};
inline PM operator+(const PM&a,const PM&b){PM c;for(int i=0;i<pb.n;i++)c.a[i]=p_add(a.a[i],b.a[i]);c.tail=p_upadd(a.tail,b.tail);return c;}
inline PM operator-(const PM&a){PM c;for(int i=0;i<pb.n;i++)c.a[i]=-a.a[i];c.tail=a.tail;return c;}
inline PM operator-(const PM&a,const PM&b){return a+(-b);}
inline PM operator*(const PM&a,const PM&b){PM c;for(auto p:pb.pairs)c.a[p[2]]=p_add(c.a[p[2]],p_mul(a.a[p[0]],b.a[p[1]]));auto an=a.norms(),bn=b.norms();double tr=0,na=0,nb=0;for(int i=0;i<=POLY_DEG;i++){na=p_upadd(na,an[i]);nb=p_upadd(nb,bn[i]);for(int j=0;j<=POLY_DEG;j++)if(i+j>POLY_DEG)tr=p_upadd(tr,p_upmul(an[i],bn[j]));}
 c.tail=p_upadd(tr,p_upadd(p_upmul(na,b.tail),p_upadd(p_upmul(nb,a.tail),p_upmul(a.tail,b.tail))));return c;}
inline PM scalePM(const PM&a,I s){PM c;for(int i=0;i<pb.n;i++)c.a[i]=p_mul(a.a[i],s);c.tail=p_upmul(a.tail,mag(s));return c;}
inline PM inv(const PM&a){I ci=inv(a.a[0]);PM x=scalePM(a,ci);x.a[0]=I(0);double alpha=p_upadd(x.norm(),x.tail);if(!(alpha<1))throw std::runtime_error("Taylor inverse majorant");PM term(1),sum(1);for(int k=1;k<=POLY_DEG;k++){term=term*(-x);sum=sum+term;}PM c=scalePM(sum,ci);I rr(1);for(int k=0;k<=POLY_DEG;k++)rr=rr*I(alpha);rr=rr/(I(1)-I(alpha));c.tail=p_upadd(c.tail,p_upmul(mag(ci),rr.hi));return c;}
inline PM operator/(const PM&a,const PM&b){return a*inv(b);}
inline PM sq(const PM&a){return a*a;}
inline PM root(const PM&a){if(!(a.a[0].lo>0))throw std::runtime_error("Taylor square root center");I cr=root(a.a[0]);PM x=scalePM(a,inv(a.a[0]));x.a[0]=I(0);double alpha=p_upadd(x.norm(),x.tail);if(!(alpha<1))throw std::runtime_error("Taylor square-root majorant");PM term(1),sum(1);I co(1);for(int k=1;k<=POLY_DEG;k++){co=co*I(1.5-k)/I(k);term=term*x;sum=sum+scalePM(term,co);}co=co*I(.5-POLY_DEG)/I(POLY_DEG+1);I rr(1);for(int k=0;k<=POLY_DEG;k++)rr=rr*I(alpha);rr=I(mag(co))*rr/(I(1)-I(alpha));PM c=scalePM(sum,cr);c.tail=p_upadd(c.tail,p_upmul(mag(cr),rr.hi));return c;}
inline C<PM> phasePM(int ri,I mid,double w,int index){C<I>center=root6<I>(ri)*expbox(mid,0);PM re(center.re),im(center.im);C<I>co=center;double fact=1;for(int k=1;k<=POLY_DEG;k++){co=co*C<I>(I(0),I(w)/I(k));array<int,8>ex{};ex[index]=k;int slot=0;while(pb.ex[slot]!=ex)slot++;re.a[slot]=co.re;im.a[slot]=co.im;}
 I rem(1);for(int k=1;k<=POLY_DEG+1;k++)rem=rem*I(w)/I(k);re.tail=im.tail=rem.hi;return C<PM>(re,im);}
