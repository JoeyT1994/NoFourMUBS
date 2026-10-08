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
