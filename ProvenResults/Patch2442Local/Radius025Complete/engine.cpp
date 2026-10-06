#include "interval_model.hpp"
#include <map>
#include "taylor_model.hpp"
#include <string>
#include <ctime>
#include <map>
struct MatrixRecord{array<int,4>roots;array<int,8>rows;array<array<double,8>,8>P;};
static vector<MatrixRecord>MAT;static vector<array<int,4>>GRID;
struct Cell{int grid;std::string path;};
static constexpr double RHO=0x1.999999999999bp-6,DELTA=0x1.999999999999bp-5;static constexpr double QCOEFF=67;static double QMAX;
inline bool haszero(I x){return x.lo<=0&&x.hi>=0;}
inline bool within(I x,double q){return x.lo<=q&&x.hi>=-q;}
void readmat(const char*file){std::ifstream f(file);int n;f>>n;if(n!=63)throw std::runtime_error("reference count");MAT.resize(n);for(auto&r:MAT){for(auto&i:r.roots)f>>i;for(auto&i:r.rows)f>>i;for(auto&row:r.P)for(auto&v:row)f>>v;}if(!f)throw std::runtime_error("matrix input");for(auto&r:MAT){for(int x:r.roots)if(x<0||x>=6)throw std::runtime_error("root index");for(int x:r.rows)if(x<0||x>=94)throw std::runtime_error("residual index");for(auto&row:r.P)for(double x:row)if(!std::isfinite(x))throw std::runtime_error("preconditioner coefficient");}for(int a:{-1,0,1})for(int b=0;b<6;b++)for(int c:{-1,0,1})for(int d=0;d<6;d++)GRID.push_back({a,b,c,d});}
int lookup(array<int,4>root){for(int k=0;k<4;k++)root[k]=(root[k]%6+6)%6;for(int i=0;i<(int)MAT.size();i++)if(MAT[i].roots==root)return i;return -1;}
void geometry(const Cell&c,array<I,4>&mid,array<double,4>&rad,array<double,4>&extent){array<unsigned long long,4>idx{};array<int,4>lev{};for(int k=0;k<(int)c.path.size();k++){int j=k%4;idx[j]=2*idx[j]+(c.path[k]=='1');lev[j]++;if(lev[j]>45)throw std::runtime_error("geometry depth");}for(int j=0;j<4;j++){long long den=1LL<<lev[j],num=(long long)(2*idx[j]+1)-den;I scale=pii()/I(6);mid[j]=I(std::ldexp((double)num,-lev[j]))*scale;rad[j]=(I(std::ldexp(1.,-lev[j]))*scale).hi;extent[j]=up(mag(mid[j])+rad[j]);}}
I side_distance2(int root,I mid,double radius){if(radius>=pii().lo)return I(0,4);C<I>x=root6<I>(root)*expbox(mid,radius);I y=I(2)*(I(1)-I(std::min(1.,x.re.hi)));return I(std::max(0.,y.lo),4);}
bool side_prune(array<int,4>g,array<I,4>mid,array<double,4>rad,int j){int k=j+1;auto a=side_distance2(2*g[j]-g[k],I(2)*mid[j]-mid[k],up(up(2*rad[j])+rad[k]));auto b=side_distance2(g[j]-2*g[k],mid[j]-I(2)*mid[k],up(rad[j]+up(2*rad[k])));auto c=side_distance2(g[j]+g[k],mid[j]+mid[k],up(rad[j]+rad[k]));I lower=I(9)*I(a.lo)*I(b.lo)*I(c.lo);I bound=I(64)*I(RHO)+I(QMAX);return lower.lo>sq(bound).hi;}

bool invert8(double J[8][8],array<array<double,8>,8>&P){double M[8][16];for(int i=0;i<8;i++)for(int j=0;j<16;j++)M[i][j]=j<8?J[i][j]:double(i==j-8);for(int k=0;k<8;k++){int m=k;for(int i=k+1;i<8;i++)if(std::abs(M[i][k])>std::abs(M[m][k]))m=i;if(std::abs(M[m][k])<1e-12)return false;for(int j=0;j<16;j++)std::swap(M[k][j],M[m][j]);double pivot=M[k][k];for(int j=0;j<16;j++)M[k][j]/=pivot;for(int i=0;i<8;i++)if(i!=k){double a=M[i][k];for(int j=0;j<16;j++)M[i][j]-=a*M[k][j];}}for(int i=0;i<8;i++)for(int j=0;j<8;j++){double x=M[i][j+8];if(!std::isfinite(x)||std::abs(x)>1e12)return false;P[i][j]=x;}return true;}
int dynamic_prune(array<int,4>g,array<I,4>mid,array<double,4>rad){
 array<C<G1>,4>u0,z0;for(int j=0;j<4;j++){u0[j]=gradvar(0,I(0),j);z0[j]=gradvar(g[j],mid[j],j+4);}auto H0=model(u0,z0);array<G1,94>fs;double J[94][8],V[94][8];for(int i=0;i<94;i++){fs[i]=getres(H0,i);for(int j=0;j<8;j++){J[i][j]=(fs[i].d[j].lo+fs[i].d[j].hi)/2;V[i][j]=J[i][j]*(i<13?32:1);}}
 array<int,8>rows;bool chosen[94]={};for(int k=0;k<8;k++){int best=-1;double bn=-1;for(int i=0;i<94;i++)if(!chosen[i]){double norm=0;for(double x:V[i])norm+=x*x;if(norm>bn){bn=norm;best=i;}}if(best<0||bn<1e-20)return -1;chosen[best]=true;rows[k]=best;double q[8],norm=std::sqrt(bn);for(int j=0;j<8;j++)q[j]=V[best][j]/norm;for(int i=0;i<94;i++)if(!chosen[i])for(int rep=0;rep<2;rep++){double dot=0;for(int j=0;j<8;j++)dot+=V[i][j]*q[j];for(int j=0;j<8;j++)V[i][j]-=dot*q[j];}}
 double JS[8][8];for(int i=0;i<8;i++)for(int j=0;j<8;j++)JS[i][j]=J[rows[i]][j];array<array<double,8>,8>P;if(!invert8(JS,P))return -1;
 array<C<PM>,4>u,z;for(int j=0;j<4;j++){u[j]=phasePM(0,I(0),RHO,j);z[j]=phasePM(g[j],mid[j],rad[j],j+4);}auto H=model(u,z);array<PM,8>f;for(int k=0;k<8;k++)f[k]=getres(H,rows[k]);
 for(int i=0;i<8;i++){
  PM sum;double cc=0;for(int k=0;k<8;k++){sum=sum+scalePM(f[k],I(P[i][k]));if(rows[k]>=13)cc=p_upadd(cc,std::abs(P[i][k]));}
  I enc=sum.a[0];for(int k=1;k<pb.n;k++){bool even=true;for(int e:pb.ex[k])if(e%2)even=false;I r=even?I(std::min(0.,sum.a[k].lo),std::max(0.,sum.a[k].hi)):I(-mag(sum.a[k]),mag(sum.a[k]));enc=p_add(enc,r);}
  enc=p_add(enc,I(-sum.tail,sum.tail));if(!within(enc,p_upmul(cc,QMAX)))return i;
 }

 return -1;
}
int terminal(const Cell&cell,long long&costly){array<I,4>mid;array<double,4>rad,extent;geometry(cell,mid,rad,extent);auto g=GRID[cell.grid];int mi=lookup(g);if(mi>=0&&*std::max_element(extent.begin(),extent.end())<=DELTA)return 1;
 if(side_prune(g,mid,rad,0))return 2;if(side_prune(g,mid,rad,2))return 3;
 array<C<I>,4>u,z;for(int j=0;j<4;j++){u[j]=expbox(I(0),RHO);z[j]=root6<I>(g[j])*expbox(mid[j],rad[j]);}auto H=model(u,z);
 for(int k=0;k<13;k++)if(!haszero(getres(H,k)))return 10+k;
 if(mi>=0){for(int k:MAT[mi].rows)if(k>=13&&!within(signedf(H,k-13),QMAX))return 100+k;}
 // Test all mixed corners if inexpensive range tests have not excluded the cell.
 for(int k=13;k<94;k++)if(!within(signedf(H,k-13),QMAX))return 100+k;
 if(*std::max_element(rad.begin(),rad.end())<=.07){costly++;int k=dynamic_prune(g,mid,rad);if(k>=0)return 400+k;}
 return 0;}


#include <sstream>

struct DenseRecord{int id;array<array<double,94>,8>P;};
static vector<DenseRecord> read_dense(const char*file){
 std::ifstream in(file);int count;in>>count;if(!in||count!=13)throw std::runtime_error("dense count");
 vector<DenseRecord> records;array<bool,63>seen{};
 for(int i=0;i<count;i++){
  DenseRecord r;in>>r.id;if(!in||r.id<0||r.id>=63||seen[r.id])throw std::runtime_error("dense reference");seen[r.id]=true;
  for(auto&row:r.P)for(double&x:row){in>>x;if(!in||!std::isfinite(x))throw std::runtime_error("dense coefficient");}
  records.push_back(r);
 }
 std::string extra;if(in>>extra)throw std::runtime_error("trailing dense data");if(!in.eof())throw std::runtime_error("dense input failure");return records;
}
static int run_pm_local(const char*densefile,const char*outfile){
 if(POLY_DEG!=4)throw std::runtime_error("local proof requires degree four");
 auto records=read_dense(densefile);std::ofstream out(outfile);if(!out)throw std::runtime_error("local output");out<<std::setprecision(17);
 for(const auto&rec:records){int n=rec.id;auto m=MAT.at(n);
  array<C<PM>,4>u,z;for(int k=0;k<4;k++){u[k]=phasePM(0,I(0),RHO,k);z[k]=phasePM(m.roots[k],I(0),DELTA,k+4);}auto H=model(u,z);
  array<PM,94>f;for(int k=0;k<94;k++)f[k]=getres(H,k);
  for(int row=0;row<8;row++){
   PM pf;for(int k=0;k<94;k++)if(rec.P[row][k])pf=pf+scalePM(f[k],I(rec.P[row][k]));double wi=row<4?RHO:DELTA;
   double linear=0,nonlinear=0;
   for(int a=1;a<pb.n;a++){
    I v=p_div(pf.a[a],I(wi));if(pb.degree[a]==1&&pb.ex[a][row]==1)v=p_sub(v,I(1));
    if(pb.degree[a]==1)linear=p_upadd(linear,mag(v));else nonlinear=p_upadd(nonlinear,mag(v));
   }
   double tail=up(pf.tail/wi),ci=0;for(int k=13;k<94;k++)ci=p_upadd(ci,std::abs(rec.P[row][k]));
   double source=up(p_upmul(p_upmul(p_upmul(QCOEFF,RHO),RHO),ci)/wi);
   double score=p_upadd(p_upadd(p_upadd(linear,nonlinear),tail),source);
   out<<n<<" "<<row<<" "<<linear<<" "<<nonlinear<<" "<<tail<<" "<<ci<<" "<<source<<" "<<score<<"\n";
   if(!(score<1))throw std::runtime_error("local contraction failed");
  }
 }
 out.flush();if(!out)throw std::runtime_error("local output failure");return 0;
}
static int dense_binding(const char*input,const char*output){
 auto records=read_dense(input);std::ofstream out(output);out<<std::hexfloat;
 for(const auto&r:records)for(int i=0;i<8;i++)for(int k=0;k<94;k++)out<<r.id<<" "<<i<<" "<<k<<" "<<r.P[i][k]<<"\n";
 if(!out)throw std::runtime_error("dense binding output");return 0;
}
static int replay_all(const char*input,const char*output){
 if(POLY_DEG!=2&&POLY_DEG!=4)throw std::runtime_error("global proof requires degree two or four");
 std::ifstream in(input);std::ofstream out(output);if(!in||!out)throw std::runtime_error("replay I/O");
 long long n=0,costly=0;std::map<int,long long>counts;int grid,recorded;std::string path;clock_t start=clock();
 while(in>>grid>>path>>recorded){
  if(grid<0||grid>=324)throw std::runtime_error("grid index");if(path=="-")path.clear();
  if(path.size()>80||path.find_first_not_of("01")!=std::string::npos)throw std::runtime_error("binary path");
  int actual=terminal(Cell{grid,path},costly);if(!actual)throw std::runtime_error("unverified terminal "+std::to_string(grid)+" "+path);
  out<<grid<<" "<<(path.empty()?"-":path)<<" "<<actual<<"\n";n++;counts[actual]++;
 }
 if(!in.eof()||n==0)throw std::runtime_error("malformed or empty replay input");
 out.flush();if(!out)throw std::runtime_error("output failure");
 std::cout<<"{\"terminals\":"<<n<<",\"cpu_seconds\":"<<double(clock()-start)/CLOCKS_PER_SEC<<",\"costly\":"<<costly<<",\"predicates\":{";
 bool first=true;for(auto x:counts){if(!first)std::cout<<",";first=false;std::cout<<"\""<<x.first<<"\":"<<x.second;}std::cout<<"}}\n";return 0;
}
int main(int argc,char**argv){try{
 guards();if(argc!=6)throw std::runtime_error("engine local|replay words matrices input output");readwords(argv[2]);readmat(argv[3]);QMAX=(I(QCOEFF)*I(RHO)*I(RHO)).hi;
 if(!(RHO>0.025&&DELTA>0.05&&QMAX>0.041875))throw std::runtime_error("constant guard");
 auto start=clock();std::string mode(argv[1]);int code;
 if(mode=="dense")code=dense_binding(argv[4],argv[5]);else if(mode=="local")code=run_pm_local(argv[4],argv[5]);else if(mode=="replay")code=replay_all(argv[4],argv[5]);else if(mode=="grid"){std::ofstream out(argv[5]);out<<std::hexfloat<<"K "<<RHO<<" "<<DELTA<<" "<<QMAX<<"\n";for(int i=0;i<324;i++){auto g=GRID.at(i);out<<i;for(auto x:g)out<<" "<<x;out<<"\n";}if(!out)throw std::runtime_error("grid output");code=0;}else throw std::runtime_error("operation");
 if(mode=="local")std::cout<<"{\"local_representatives\":13,\"cpu_seconds\":"<<double(clock()-start)/CLOCKS_PER_SEC<<"}\n";
 return code;
 }catch(const std::exception&e){std::cerr<<"VERIFICATION_ERROR: "<<e.what()<<"\n";return 2;}}
