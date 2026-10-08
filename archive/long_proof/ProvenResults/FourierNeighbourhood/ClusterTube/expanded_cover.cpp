// Expanded F6 tube: raw amplitude 1/5, confinement radius 5/27.
// Complete integer confinement to the 48 supplied rational phase centres.
// arithmetic.hpp is extracted byte-for-byte from the audited tube.cpp prefix.
#include "arithmetic.hpp"
array<array<Z,5>,48> centers;
uint64_t nodes=0,rejections=0,inclusions=0;
array<uint64_t,48> labels{};
constexpr int RHO_DEN=27;

I rootceil(uint64_t n){
 I x=sqrt((double)n);
 while(uint64_t(x)*x<n)++x;
 while(x>0&&uint64_t(x-1)*(x-1)>=n)--x;
 return x;
}
bool allows(const V&v,int n){
 for(int j=0;j<6;j++){
  V c,h;for(int i=0;i<5;i++){
   c[i]=(2*v[i]+1)*(L/(2*n))-j*(i+1)*(L/6);
   h[i]=L/(2*n);
  }
  if(!possible(c,h,root6,ceildiv(Q,5)))return false;
 }
 return true;
}
int label(const V&v,int n){
 array<Z,5> z;for(int j=0;j<5;j++)z[j]=trig[(2*v[j]+1)*(L/(2*n))];
 I rad=ceildiv(710*Q*(L/(2*n)),113*I(L));
 for(int k=0;k<48;k++){
  Z s{Q,0};for(int j=0;j<5;j++){
   Z c=centers[k][j],t=z[j];
   s.x+=(c.x*t.x+c.y*t.y)/Q;
   s.y+=(c.x*t.y-c.y*t.x)/Q;
  }
  I lo=max(I(0),norm(s)-37);
  assert(lo<=6*Q);
  I dist=rootceil(uint64_t(36*Q*Q-lo*lo));
  if((dist+6*rad)*RHO_DEN<30*Q)return k;
 }
 return -1;
}
bool cover(const V&v,int n){
 ++nodes;
 if(!allows(v,n)){++rejections;return true;}
 int k=label(v,n);if(k>=0){++inclusions;++labels[k];return true;}
 if(n==MAXN){
  cout<<"UNCOVERED "<<n;for(int x:v)cout<<" "<<x;cout<<endl;return false;
 }
 for(int mask=0;mask<32;mask++){
  V u;for(int j=0;j<5;j++)u[j]=2*v[j]+((mask>>j)&1);
  if(!cover(u,2*n))return false;
 }
 return true;
}
int main(int argc,char**argv){
 assert(argc==3);
 ifstream in(argv[1],ios::binary);int32_t l,q;
 in.read((char*)&l,4);in.read((char*)&q,4);assert(l==L&&q==Q);
 for(auto&t:trig){
  int32_t x,y;in.read((char*)&x,4);in.read((char*)&y,4);
  assert(in&&llabs(x)<=Q+1&&llabs(y)<=Q+1);t={x,y};
 }
 assert(in.peek()==EOF);
 ifstream cs(argv[2]);
 for(auto&c:centers)for(auto&z:c){cs>>z.x>>z.y;assert(cs&&llabs(z.x)<=Q+1&&llabs(z.y)<=Q+1);}
 string extra;assert(!(cs>>extra));
 root6=I(sqrt(6.0*Q*Q));
 while(root6*root6>6*Q*Q)--root6;
 while((root6+1)*(root6+1)<=6*Q*Q)++root6;
 // Six exact chirp common rays, at every subdivision level.
 int controls=0;
 for(int j=0;j<6;j++)for(int n=N;n<=MAXN;n*=2){
  V v;for(int k=1;k<6;k++)v[k-1]=n*mod(k*k+2*j*k,12)/12;
  assert(allows(v,n));++controls;
 }
 assert(controls==48);cout<<"CONTROLS "<<controls<<endl;
 bool ok=true;V v;
 for(v[0]=0;v[0]<N;v[0]++)for(v[1]=0;v[1]<N;v[1]++)
 for(v[2]=0;v[2]<N;v[2]++)for(v[3]=0;v[3]<N;v[3]++)
 for(v[4]=0;v[4]<N;v[4]++)if(ok)ok=cover(v,N);
 if(!ok)return 1;
 assert(31*nodes+uint64_t(N)*N*N*N*N==32*(rejections+inclusions));
 for(int k=0;k<48;k++){assert(labels[k]>0);cout<<"LABEL "<<k<<" "<<labels[k]<<endl;}
 cout<<"PASS nodes "<<nodes<<" rejected "<<rejections<<" included "<<inclusions<<endl;
 return 0;
}
