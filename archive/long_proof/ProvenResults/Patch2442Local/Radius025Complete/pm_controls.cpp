#include "interval_model.hpp"
#include <map>
#include "taylor_model.hpp"
int main(int argc,char**argv){try{
 guards();if(argc!=2)throw std::runtime_error("control output path");std::ofstream out(argv[1]);out<<std::setprecision(17);
 // Bind bit-adjacency against the standard nextafter operation on a broad finite control set.
 for(double x:{0.,-0.,1.,-1.,0.5,-0.5,0x1p-1022,-0x1p-1022,0x1p-1074,-0x1p-1074,0x1p500,-0x1p500}){
  if(dn(x)!=std::nextafter(x,-INF)||up(x)!=std::nextafter(x,INF))throw std::runtime_error("adjacency control");
 }
 std::vector<I> vals={I(0),I(1),I(-1),I(0x1p-20),I(-0x1p-20),I(.5),I(2),I(-2),I(-1,2),I(.25,.75),I(-.75,-.25),I(0x1p-500),I(0x1p500)};
 for(size_t i=0;i<vals.size();i++)for(size_t j=0;j<vals.size();j++)for(int k=0;k<8;k++){
  I a=vals[i],b=vals[j],r;if((k==3||k==7)&&b.lo<=0&&b.hi>=0)continue;
  if(k==0)r=a+b;else if(k==1)r=a-b;else if(k==2)r=a*b;else if(k==3)r=a/b;
  else if(k==4)r=p_add(a,b);else if(k==5)r=p_sub(a,b);else if(k==6)r=p_mul(a,b);else r=p_div(a,b);
  out<<"I "<<k<<" "<<a.lo<<" "<<a.hi<<" "<<b.lo<<" "<<b.hi<<" "<<r.lo<<" "<<r.hi<<"\n";
 }
 for(double t:{-0.75,-0.5,-0.25,0.,.25,.5,.75}){I s=sinpoly(I(t)),c=cospoly(I(t));out<<"T "<<t<<" "<<s.lo<<" "<<s.hi<<" "<<c.lo<<" "<<c.hi<<"\n";}
 out<<"B "<<POLY_DEG<<" "<<pb.n<<" "<<pb.pairs.size()<<"\n";
 for(int k=0;k<pb.n;k++){out<<"E "<<k;for(int e:pb.ex[k])out<<" "<<e;out<<"\n";}
 for(auto x:pb.pairs)out<<"J "<<x[0]<<" "<<x[1]<<" "<<x[2]<<"\n";
 array<PM,8>x;for(int i=0;i<8;i++){array<int,8>e{};e[i]=1;int id=pb.linear[i];x[i].a[id]=I(1);}
 PM a=PM(2)+scalePM(x[0],I(.125))-scalePM(x[1],I(.0625));PM b=PM(2)+scalePM(x[0],I(.0625));
 PM p=PM(1)+scalePM(x[0],I(.125))+scalePM(x[1],I(.0625));PM power(1);for(int k=0;k<6;k++)power=power*p;
 vector<PM> tests={power,inv(a),root(b*b),a*b-b*a,inv(inv(a)),root(PM(4)+scalePM(x[0],I(.125))-scalePM(x[1],I(.0625)))};
 for(int m=0;m<(int)tests.size();m++){out<<"P "<<m<<" "<<tests[m].tail<<"\n";for(int k=0;k<pb.n;k++)out<<"C "<<m<<" "<<k<<" "<<tests[m].a[k].lo<<" "<<tests[m].a[k].hi<<"\n";}
 if(!out)throw std::runtime_error("control output failure");return 0;
 }catch(const std::exception&e){std::cerr<<"CONTROL_ERROR "<<e.what()<<"\n";return 2;}}
