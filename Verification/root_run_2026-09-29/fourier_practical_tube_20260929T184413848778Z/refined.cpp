// Independent integer replay of a Fourier-family tube cover.
#include <algorithm>
#include <array>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <functional>
#include <iostream>
#include <vector>
#include <unordered_map>
using namespace std;
using V=array<int,5>; using I=int64_t;
constexpr int L=218880,N=19,MAXN=2432; constexpr I Q=I(1)<<26;
struct Z{I x,y;}; vector<Z> trig(L);
int mod(int a,int n){a%=n;return a<0?a+n:a;}
I norm(Z z){ uint64_t v=uint64_t(z.x*z.x+z.y*z.y); uint64_t r=sqrt((double)v); while(r*r>v)--r; while((r+1)*(r+1)<=v)++r; return r; }
int code(V v){int k=0;for(int a:v)k=N*k+a;return k;}
I ceildiv(I a,I b){return (a+b-1)/b;}
I root6;
uint64_t tests=0;
// All phase arguments are integer multiples of 2*pi/L. True trig
// values differ from stored coordinates/Q by strictly less than 1/Q.
bool possible(const V& c,const V& h,I target,I tolerance){
 ++tests; Z s{Q,0}; Z end[5][2]; int total=0;
 for(int i=0;i<5;i++){Z t=trig[mod(c[i],L)];s.x+=t.x;s.y+=t.y;total+=h[i];}
 I distance=llabs(norm(s)-target);
 I error=ceildiv(710*Q*total,113*I(L));
 if(distance>error+tolerance+10)return false;
 if(710*I(total)>=113*I(L))return true;
 for(int i=0;i<5;i++)for(int b=0;b<2;b++)end[i][b]=trig[mod(c[i]+(2*b-1)*h[i],L)];
 for(int mask=0;mask<32;mask++){
  Z d{Q-s.x,-s.y};
  for(int i=0;i<5;i++){Z t=end[i][(mask>>i)&1];d.x+=t.x;d.y+=t.y;}
  if(distance<=norm(d)+tolerance+26)return true;
 }
 return false;
}
bool ort_possible(const V& v,int n){V c,h;for(int i=0;i<5;i++){c[i]=(2*v[i]+1)*(L/(2*n));h[i]=L/(2*n);}return possible(c,h,0,0);}
bool descend(V v,int n,const function<bool(const V&,int)>& admissible){
 if(!admissible(v,n))return false;
 if(n==MAXN)return true;
 for(int mask=0;mask<32;mask++){V child;for(int i=0;i<5;i++)child[i]=2*v[i]+((mask>>i)&1);if(descend(child,2*n,admissible))return true;}
 return false;
}
void each_coarse(const function<void(const V&)>& visit){V v;for(v[0]=0;v[0]<N;v[0]++)for(v[1]=0;v[1]<N;v[1]++)for(v[2]=0;v[2]<N;v[2]++)for(v[3]=0;v[3]<N;v[3]++)for(v[4]=0;v[4]<N;v[4]++)visit(v);}
vector<uint8_t> orth(N*N*N*N*N);
void build_orth(){
 size_t count=0;
 each_coarse([&](const V&v){if(descend(v,N,ort_possible)){
  ++count; for(int m=0;m<32;m++){V u;for(int i=0;i<5;i++)u[i]=(v[i]+((m>>i)&1))%N;orth[code(u)]=1;}
 }});
 cout<<"ORTH "<<count<<" shifted "<<count_if(orth.begin(),orth.end(),[](int v){return v;})<<endl;
 assert(!orth[0]);
}
struct Family {
 V center[6], half[6]; I tolerance=ceildiv(Q,1000);
 Family(int a,int b,int trans){
  int cm[6][6],hm[6][6];
  for(int j=0;j<6;j++)for(int i=0;i<6;i++){
   int q=(j%2&&(i==1||i==4))?a:(j%2&&(i==2||i==5))?b:0;
   bool vary=j%2&&i%3!=0;
   cm[j][i]=mod((j*i)*(L/6)+2*q*(L/720)+(vary?L/720:0),L);
   hm[j][i]=vary?L/720:0;
  }
  for(int j=0;j<6;j++)for(int i=1;i<6;i++){
   center[j][i-1]=trans?cm[i][j]:cm[j][i];half[j][i-1]=trans?hm[i][j]:hm[j][i];
  }
 }
 bool allows(const V&v,int n)const{
  for(int j=0;j<6;j++){
   V c,h;for(int i=0;i<5;i++){c[i]=(2*v[i]+1)*(L/(2*n))-center[j][i];h[i]=L/(2*n)+half[j][i];}
   if(!possible(c,h,root6,tolerance))return false;
  }return true;
 }
};
bool adjacent(const V&a,const V&b){V d;for(int i=0;i<5;i++)d[i]=mod(a[i]-b[i],N);return orth[code(d)];}
bool clique_exists(const vector<vector<uint8_t>>&g,vector<int> pool,int need){
 if(need==0)return true;
 while((int)pool.size()>=need){int a=pool.back();pool.pop_back();vector<int> next;for(int b:pool)if(g[a][b])next.push_back(b);if(clique_exists(g,next,need-1))return true;}return false;
}
bool run(int a,int b,int trans){
 Family f(a,b,trans);vector<V> candidates;
 each_coarse([&](const V&v){if(descend(v,N,[&](const V&u,int n){return f.allows(u,n);}))candidates.push_back(v);});
 int K=candidates.size();cout<<"CELL "<<trans<<" "<<a<<" "<<b<<" labels "<<K<<flush;
 vector<vector<uint8_t>> graph(K,vector<uint8_t>(K));for(int i=0;i<K;i++)for(int j=0;j<K;j++)graph[i][j]=adjacent(candidates[i],candidates[j]);
 for(int i=0;i<K;i++)for(int j=0;j<K;j++)assert(graph[i][j]==graph[j][i]);
 unordered_map<uint64_t,bool> family_cache;
 auto cached_family=[&](const V&v,int n){
  if(n==N)return true; // v is a retained coarse family label here.
  int level=0;for(int m=n;m>N;m/=2)++level;
  uint64_t key=uint64_t(level)<<60;for(int i=0;i<5;i++)key|=uint64_t(v[i])<<(12*i);
  auto it=family_cache.find(key);if(it!=family_cache.end())return it->second;
  bool ok=f.allows(v,n);family_cache.emplace(key,ok);return ok;
 };
 unordered_map<uint64_t,vector<int8_t>> pair_cache;
 auto cached_pair=[&](const V&v,int n,int j){
  int level=0;for(int m=n;m>N;m/=2)++level;
  uint64_t key=uint64_t(level)<<60;for(int i=0;i<5;i++)key|=uint64_t(v[i])<<(12*i);
  auto it=pair_cache.find(key);
  if(it==pair_cache.end()&&pair_cache.size()<100000)
   it=pair_cache.emplace(key,vector<int8_t>(K,-1)).first;
  if(it!=pair_cache.end()&&it->second[j]>=0)return bool(it->second[j]);
  V c,h;for(int i=0;i<5;i++){c[i]=(2*v[i]+1)*(L/(2*n))-(2*candidates[j][i]+1)*(L/(2*N));h[i]=L/(2*n)+L/(2*N);}
  bool ok=possible(c,h,root6,0);
  if(it!=pair_cache.end())it->second[j]=ok;
  return ok;
 };
 uint64_t cliques=0;int max_good=0;vector<int> chosen;
 function<bool(vector<int>)> walk=[&](vector<int> pool){
  if(chosen.size()==6){
   ++cliques;vector<int> good;
   for(int k=0;k<K;k++){
    auto admissible=[&](const V&v,int n){
     if(!cached_family(v,n))return false;
     for(int j:chosen)if(!cached_pair(v,n,j))return false;
     return true;
    };
    if(descend(candidates[k],N,admissible))good.push_back(k);
   }
   max_good=max(max_good,(int)good.size());
   if(clique_exists(graph,good,6)){cout<<" INCONCLUSIVE C";for(int j:chosen)cout<<" "<<j;cout<<endl;return false;}
   return true;
  }
  while(pool.size()+chosen.size()>=6){int j=pool.back();pool.pop_back();vector<int> next;for(int k:pool)if(graph[j][k])next.push_back(k);chosen.push_back(j);if(!walk(next))return false;chosen.pop_back();}
  return true;
 };
 vector<int> pool;for(int j=0;j<K;j++)pool.push_back(j);
 bool ok=walk(pool);cout<<" cliques "<<cliques<<" max_good "<<max_good<<" result "<<ok<<" tests "<<tests<<endl;return ok;
}
int main(int argc,char**argv){
 if(argc!=6){cerr<<"usage: tube trig.bin orientation a_start a_stop b_only(-1=all)\n";return 2;}
 ifstream in(argv[1],ios::binary);int32_t l,q;in.read((char*)&l,4);in.read((char*)&q,4);assert(l==L&&q==Q);
 for(auto&t:trig){int32_t x,y;in.read((char*)&x,4);in.read((char*)&y,4);assert(in&&llabs(x)<=Q+1&&llabs(y)<=Q+1);t={x,y};}assert(in.peek()==EOF);
 root6=norm({Q,Q}); // overwritten by exact sqrt of 6 Q^2
 root6=(I)sqrt(6.0*Q*Q);while(root6*root6>6*Q*Q)--root6;while((root6+1)*(root6+1)<=6*Q*Q)++root6;
 build_orth();int orientation=stoi(argv[2]),lo=stoi(argv[3]),hi=stoi(argv[4]),only=stoi(argv[5]);
 for(int a=lo;a<hi;a++)for(int b=0;b<=a/2+1;b++)if(only<0||b==only)if(!run(a,b,orientation))return 1;
 cout<<"PASS"<<endl;
}
