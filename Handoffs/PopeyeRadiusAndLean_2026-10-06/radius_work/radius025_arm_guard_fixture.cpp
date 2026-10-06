#include <map>
#include HEADER
static uint64_t readfpcr(){uint64_t v;asm volatile("mrs %0, fpcr":"=r"(v));return v;}
static void writefpcr(uint64_t v){asm volatile("msr fpcr, %0\nisb"::"r"(v):"memory");}
int main(int argc,char**argv){
 uint64_t original=readfpcr(),flag=argc>1?std::stoull(argv[1]):0;
 writefpcr((original&~(UINT64_C(1)<<24))|flag);
 bool accepted=true;try{guards();}catch(const std::exception&){accepted=false;}
 volatile double small=std::numeric_limits<double>::denorm_min(),large=std::ldexp(1.,1023);
 I r=I((double)small)*I((double)large);double truth=std::ldexp(1.,-51);
 bool enclosed=(r.lo<=truth&&truth<=r.hi);
 writefpcr(original);
 std::cout<<"{\"mode_bits\":"<<flag<<",\"guard_accepted\":"<<(accepted?"true":"false")<<",\"interval_product_encloses_exact\":"<<(enclosed?"true":"false")<<",\"lower\":\""<<std::hexfloat<<r.lo<<"\",\"upper\":\""<<r.hi<<"\"}\n";
}
