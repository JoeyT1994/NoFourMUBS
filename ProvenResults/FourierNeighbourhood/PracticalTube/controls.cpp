#define main certificate_main
#include "tube.cpp"
#undef main
int main(int argc, char** argv){
 assert(argc==2);
 std::ifstream in(argv[1],std::ios::binary);
 int32_t l,q;in.read((char*)&l,4);in.read((char*)&q,4);assert(l==L&&q==Q);
 for(auto&t:trig){int32_t x,y;in.read((char*)&x,4);in.read((char*)&y,4);assert(in);t={x,y};}
 root6=(I)sqrt(6.0*Q*Q);
 while(root6*root6>6*Q*Q)--root6;
 while((root6+1)*(root6+1)<=6*Q*Q)++root6;
 int count=0;
 for(int trans=0;trans<2;trans++){
  Family f(0,0,trans);
  for(int j=0;j<6;j++)for(int n=N;n<=MAXN;n*=2){
   V v;for(int k=1;k<6;k++)v[k-1]=n*mod(k*k+2*j*k,12)/12;
   assert(f.allows(v,n));count++;
  }
 }
 for(int j=1;j<6;j++)for(int n=N;n<=MAXN;n*=2){
  V v;for(int k=1;k<6;k++)v[k-1]=n*mod(j*k,6)/6;
  assert(ort_possible(v,n));count++;
 }
 std::cout<<"PASS: "<<count<<" exact Fourier/chirp positive controls at every subdivision level\n";
}
