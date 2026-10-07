// Wide F6 tube: complete integer confinement of the relaxed common-ray set of ONE reference matrix K.
// Generalizes ProvenResults/FourierNeighbourhood/ClusterTube/expanded_cover.cpp: the F6 column phases
// j*(i+1)*L/6 are replaced by the phases psi[i][j] of a dephased reference K (row 0 = ones), in table units 2pi/L,
// and the raw amplitude tolerance tau and label radius rho are parameters.
//   refcover TRIG CENTERS REF TAU_NUM TAU_DEN RHO_NUM RHO_DEN
// CENTERS: 48 lines of 5 "x y" integer pairs (rational unit centres times Q, error < 1 per coordinate);
// REF: 30 integers psi[i][j], i = 1..5 (rows), j = 0..5 (columns), each in [0, L).
// Every ray x = (1, e^{i t_1..5})/sqrt6 whose raw overlaps with all six columns of K have modulus within tau of
// sqrt6 is proved to lie within projector distance < rho of a centre (exhaustive 32-ary subdivision of the 5-torus).
// arithmetic.hpp is the audited prefix of PracticalTube/tube.cpp (extracted verbatim by the driver).
#include "arithmetic.hpp"
#include <vector>
#include <string>
vector<array<Z,5>> centers;
int psi[5][6];
I TOL; I RHO_NUM, RHO_DEN;
uint64_t nodes=0,rejections=0,inclusions=0;
vector<uint64_t> labels;
I rootceil(uint64_t n){ I x=sqrt((double)n); while(uint64_t(x)*x<n)++x; while(x>0&&uint64_t(x-1)*(x-1)>=n)--x; return x; }
bool allows(const V&v,int n){
 for(int j=0;j<6;j++){
  V c,h;for(int i=0;i<5;i++){ c[i]=(2*v[i]+1)*(L/(2*n))-psi[i][j]; h[i]=L/(2*n); }
  if(!possible(c,h,root6,TOL))return false;
 }
 return true;
}
int label(const V&v,int n){
 array<Z,5> z;for(int j=0;j<5;j++)z[j]=trig[(2*v[j]+1)*(L/(2*n))];
 I rad=ceildiv(710*Q*(L/(2*n)),113*I(L));
 for(size_t k=0;k<centers.size();k++){
  Z s{Q,0};for(int j=0;j<5;j++){ Z c=centers[k][j],t=z[j]; s.x+=(c.x*t.x+c.y*t.y)/Q; s.y+=(c.x*t.y-c.y*t.x)/Q; }
  I lo=max(I(0),norm(s)-37);
  assert(lo<=6*Q);
  I dist=rootceil(uint64_t(36*Q*Q-lo*lo));
  if((dist+6*rad)*RHO_DEN<6*RHO_NUM*Q)return int(k);
 }
 return -1;
}
bool cover(const V&v,int n){
 ++nodes;
 if(!allows(v,n)){++rejections;return true;}
 int k=label(v,n);if(k>=0){++inclusions;++labels[k];return true;}
 if(n==MAXN){ cout<<"UNCOVERED "<<n;for(int x:v)cout<<" "<<x;cout<<endl;return false; }
 for(int mask=0;mask<32;mask++){ V u;for(int j=0;j<5;j++)u[j]=2*v[j]+((mask>>j)&1); if(!cover(u,2*n))return false; }
 return true;
}
int main(int argc,char**argv){
 assert(argc==8);
 ifstream in(argv[1],ios::binary);int32_t l,q;
 in.read((char*)&l,4);in.read((char*)&q,4);assert(l==L&&q==Q);
 for(auto&t:trig){ int32_t x,y;in.read((char*)&x,4);in.read((char*)&y,4); assert(in&&llabs(x)<=Q+1&&llabs(y)<=Q+1);t={x,y}; }
 assert(in.peek()==EOF);
 ifstream cs(argv[2]); array<Z,5> c;
 while(true){ bool ok=true; for(auto&z:c){ if(!(cs>>z.x>>z.y)){ok=false;break;} assert(llabs(z.x)<=Q+1&&llabs(z.y)<=Q+1);} if(!ok)break; centers.push_back(c);} 
 assert(centers.size()>=1); labels.assign(centers.size(),0);
 ifstream rs(argv[3]); for(int i=0;i<5;i++)for(int j=0;j<6;j++){ assert(rs>>psi[i][j]); assert(0<=psi[i][j]&&psi[i][j]<L); }
 { string extra; assert(!(rs>>extra)); }
 I tn=atoll(argv[4]),td=atoll(argv[5]); RHO_NUM=atoll(argv[6]); RHO_DEN=atoll(argv[7]);
 assert(tn>0&&td>0&&RHO_NUM>0&&RHO_DEN>0&&RHO_NUM<RHO_DEN);
 assert(RHO_DEN*(6*Q+6*Q)<(I(1)<<62) && 6*RHO_NUM*Q<(I(1)<<62));
 TOL=ceildiv(Q*tn,td);
 root6=I(sqrt(6.0*Q*Q)); while(root6*root6>6*Q*Q)--root6; while((root6+1)*(root6+1)<=6*Q*Q)++root6;
 bool ok=true;V v;
 for(v[0]=0;v[0]<N;v[0]++)for(v[1]=0;v[1]<N;v[1]++)for(v[2]=0;v[2]<N;v[2]++)for(v[3]=0;v[3]<N;v[3]++)
 for(v[4]=0;v[4]<N;v[4]++)if(ok)ok=cover(v,N);
 for(size_t k=0;k<centers.size();k++)cout<<"LABEL "<<k<<" "<<labels[k]<<"\n";
 if(ok)cout<<"PASS nodes "<<nodes<<" rejected "<<rejections<<" included "<<inclusions<<endl;
 else cout<<"FAIL nodes "<<nodes<<endl;
 return ok?0:1;
}
