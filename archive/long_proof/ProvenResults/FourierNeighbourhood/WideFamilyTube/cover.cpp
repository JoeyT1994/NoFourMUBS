// Complete integer confinement on a closed Fourier-family parameter box.
// arithmetic.hpp is extracted byte-for-byte from the audited tube.cpp prefix.
#include "arithmetic.hpp"
vector<array<Z,5>> centers;
uint64_t nodes=0,rejections=0,inclusions=0;
vector<uint64_t> labels;
int rho_den,parameter_grid,parameter_a,parameter_b,tolerance_den;

I rootceil(uint64_t n){
 I x=sqrt((double)n);
 while(uint64_t(x)*x<n)++x;
 while(x>0&&uint64_t(x-1)*(x-1)>=n)--x;
 return x;
}
bool allows(const V&v,int n){
 for(int j=0;j<6;j++){
  V c,h;for(int i=0;i<5;i++){
   int row=i+1;
   bool vary=(j%2)&&(row%3!=0);
   int q=row%3==1?parameter_a:parameter_b;
   int shift=vary?(2*q+1)*(L/(2*parameter_grid)):0;
   c[i]=(2*v[i]+1)*(L/(2*n))-j*row*(L/6)-shift;
   h[i]=L/(2*n)+(vary?L/(2*parameter_grid):0);
  }
  if(!possible(c,h,root6,ceildiv(Q,tolerance_den)))return false;
 }
 return true;
}
int label(const V&v,int n){
 array<Z,5> z;for(int j=0;j<5;j++)z[j]=trig[(2*v[j]+1)*(L/(2*n))];
 I rad=ceildiv(710*Q*(L/(2*n)),113*I(L));
 for(int k=0;k<(int)centers.size();k++){
  Z s{Q,0};for(int j=0;j<5;j++){
   Z c=centers[k][j],t=z[j];
   s.x+=(c.x*t.x+c.y*t.y)/Q;
   s.y+=(c.x*t.y-c.y*t.x)/Q;
  }
  I lo=max(I(0),norm(s)-37);
  assert(lo<=6*Q);
  I dist=rootceil(uint64_t(36*Q*Q-lo*lo));
  if((dist+6*rad)*rho_den<6*Q)return k;
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
 assert(argc==9);
 parameter_grid=stoi(argv[4]);parameter_a=stoi(argv[5]);parameter_b=stoi(argv[6]);
 tolerance_den=stoi(argv[7]);rho_den=stoi(argv[8]);
 assert(parameter_grid>=180 && parameter_grid<=5760 && L%(2*parameter_grid)==0);
 assert(parameter_a>=0 && parameter_a<parameter_grid && parameter_b>=0 && parameter_b<parameter_grid);
 assert(tolerance_den>=6 && tolerance_den<=16384 && rho_den>=6 && rho_den<=128);
 ifstream in(argv[1],ios::binary);int32_t l,q;
 in.read((char*)&l,4);in.read((char*)&q,4);assert(l==L&&q==Q);
 for(auto&t:trig){
  int32_t x,y;in.read((char*)&x,4);in.read((char*)&y,4);
  assert(in&&llabs(x)<=Q+1&&llabs(y)<=Q+1);t={x,y};
 }
 assert(in.peek()==EOF);
 ifstream cs(argv[2]);int count;cs>>count;
 assert(cs&&count>0&&count<=1000);centers.resize(count);labels.resize(count);
 for(auto&c:centers)for(auto&z:c){cs>>z.x>>z.y;assert(cs&&llabs(z.x)<=Q+1&&llabs(z.y)<=Q+1);}
 string extra;assert(!(cs>>extra));
 root6=I(sqrt(6.0*Q*Q));
 while(root6*root6>6*Q*Q)--root6;
 while((root6+1)*(root6+1)<=6*Q*Q)++root6;
 // The Python verifier proves each rational ray is relaxed-unbiased at
 // the parameter midpoint, and lies in every listed closed phase box.
 ifstream positive(argv[3]);int control_count;positive>>control_count;
 assert(positive&&control_count>0);int controls=0;
 for(int k=0;k<control_count;k++){
  int n;V v;positive>>n;for(int&i:v)positive>>i;
  assert(positive&&n>=N&&n<=MAXN&&L%(2*n)==0);
  for(int i:v)assert(i>=0&&i<n);
  assert(allows(v,n));++controls;
 }
 assert(!(positive>>extra));
 V zero{};assert(!allows(zero,MAXN));
 cout<<"CONTROLS "<<controls<<endl;
 bool ok=true;V v;
 for(v[0]=0;v[0]<N;v[0]++)for(v[1]=0;v[1]<N;v[1]++)
 for(v[2]=0;v[2]<N;v[2]++)for(v[3]=0;v[3]<N;v[3]++)
 for(v[4]=0;v[4]<N;v[4]++)if(ok)ok=cover(v,N);
 if(!ok)return 1;
 assert(31*nodes+uint64_t(N)*N*N*N*N==32*(rejections+inclusions));
 for(int k=0;k<(int)centers.size();k++){cout<<"LABEL "<<k<<" "<<labels[k]<<endl;}
 cout<<"PASS nodes "<<nodes<<" rejected "<<rejections<<" included "<<inclusions<<endl;
 return 0;
}
