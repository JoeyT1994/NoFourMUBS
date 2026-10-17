// Independently authored verification of A119 V2–V5, fresh full exhaustion.
// Grid endpoints are bounded int64; every potentially overflowing enclosure
// intermediate uses boost::multiprecision::cpp_int (default) or the checked
// fixed128 backend (A119_CHECKED_128), with checked narrowing in both routes.
// No producer search/checkpoint is read. Shared elementary Taylor/Krawczyk
// mechanism and reused candidate centers are declared in a119-run-scope.md.
#include <boost/multiprecision/cpp_int.hpp>
#include <algorithm>
#include <array>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>
#include "fixed_inputs.h"
#ifdef A119_CHECKED_128
using Big=boost::multiprecision::checked_int128_t;
constexpr const char* backend="checked_signed_magnitude_128";
#else
using Big=boost::multiprecision::cpp_int;
constexpr const char* backend="arbitrary_precision";
#endif
using Z=int64_t;
constexpr Z Q=Z(1)<<44, PAD=1024;
Z endpoint_max=0;
void require(bool b,const char* why){if(!b)throw std::runtime_error(why);}
Z checked(const Big& n){
    static const Big top=std::numeric_limits<Z>::max();
    require(n>=-top && n<=top,"endpoint exceeds checked storage");
    Z z=n.convert_to<Z>();endpoint_max=std::max(endpoint_max,z<0?-z:z);return z;
}
Big floorq(const Big& n,const Big& d){
    require(d>0,"nonpositive divisor");Big z=n/d;
    if(n<0 && n%d!=0)--z;return z;
}
Z down(const Big& n){return checked(floorq(n,Big(Q)));}
Z up(const Big& n){return checked(-floorq(-n,Big(Q)));}
Z idown(const Big& n,Z d){return checked(floorq(n,Big(d)));}
Z iup(const Big& n,Z d){return checked(-floorq(-n,Big(d)));}
struct Interval {
    Z lo=0,hi=0;
    Interval()=default;
    explicit Interval(Z a):lo(a),hi(a){}
    Interval(Z a,Z b):lo(a),hi(b){require(a<=b,"reversed interval");}
};
Interval add(Interval a,Interval b){return {checked(Big(a.lo)+b.lo),checked(Big(a.hi)+b.hi)};}
Interval neg(Interval a){return {checked(-Big(a.hi)),checked(-Big(a.lo))};}
Interval sub(Interval a,Interval b){return add(a,neg(b));}
Interval mul(Interval a,Interval b){
    std::array<Big,4> p={Big(a.lo)*b.lo,Big(a.lo)*b.hi,Big(a.hi)*b.lo,Big(a.hi)*b.hi};
    auto mm=std::minmax_element(p.begin(),p.end());return {down(*mm.first),up(*mm.second)};
}
Interval integer_scale(Z n,Interval a){
    if(n>=0)return {checked(Big(n)*a.lo),checked(Big(n)*a.hi)};
    return {checked(Big(n)*a.hi),checked(Big(n)*a.lo)};
}
Z magnitude(Interval a){return checked(std::max(Big(a.lo<0?-Big(a.lo):Big(a.lo)),Big(a.hi<0?-Big(a.hi):Big(a.hi))));}
Z midpoint(Interval a){return checked(Big(a.lo)+floorq(Big(a.hi)-a.lo,Big(2)));}
bool zero_possible(Interval a){return a.lo<=0 && a.hi>=0;}
Z distance_from_zero(Interval a){return zero_possible(a)?0:std::min(magnitude(Interval(a.lo)),magnitude(Interval(a.hi)));}

std::array<Z,10> cosine_coeff{},sine_coeff{};
void taylor_init(){
    Big factorial=1;
    for(int degree=0;degree<=19;degree++){
        if(degree)factorial*=degree;
        Z c=checked(Big(Q)/factorial);int j=degree/2;if(j%2)c=-c;
        (degree%2?sine_coeff:cosine_coeff)[j]=c;
    }
}
std::array<Z,2> point_trig(Z x){
    require(Big(x)>=-Big(32)*Q && Big(x)<=Big(32)*Q,"trig point outside proved range");
    // Nearest quarter turn, with exact floor at signed boundaries.
    Z k=idown(Big(2)*x+PI_LO/2,PI_LO);
    Z r=checked(Big(x)-idown(Big(k)*PI_LO,2));
    require(Big(r<0?-Big(r):Big(r))*1000<Big(786)*Q,"quarter-turn remainder outside proof");
    Z rr=down(Big(r)*r),c=cosine_coeff[9],s=sine_coeff[9];
    for(int j=8;j>=0;j--){c=checked(Big(cosine_coeff[j])+down(Big(c)*rr));s=checked(Big(sine_coeff[j])+down(Big(s)*rr));}
    s=down(Big(s)*r);
    switch((k%4+4)%4){case 0:return {s,c};case 1:return {c,-s};case 2:return {-s,-c};default:return {-c,s};}
}
Interval quarter_point(Z k){
    return k>=0?Interval(idown(Big(k)*PI_LO,2),iup(Big(k)*PI_HI,2)):
                Interval(idown(Big(k)*PI_HI,2),iup(Big(k)*PI_LO,2));
}
std::array<Interval,2> trig(Interval x){
    if(Big(x.hi)-x.lo>=Big(2)*PI_LO)return {Interval(-Q,Q),Interval(-Q,Q)};
    auto a=point_trig(x.lo),b=point_trig(x.hi);
    Interval s(std::max(-Q,std::min(a[0],b[0])-PAD),std::min(Q,std::max(a[0],b[0])+PAD));
    Interval c(std::max(-Q,std::min(a[1],b[1])-PAD),std::min(Q,std::max(a[1],b[1])+PAD));
    // Different index bounds from the producer: both signed pi endpoints,
    // with an extra integer either side, encompass every exact k*pi/2.
    Z first=std::min(idown(Big(2)*x.lo,PI_LO),idown(Big(2)*x.lo,PI_HI))-1;
    Z last=std::max(iup(Big(2)*x.hi,PI_LO),iup(Big(2)*x.hi,PI_HI))+1;
    require(first>=-65 && last<=65,"critical index outside proved finite range");
    for(Z k=first;k<=last;k++){
        auto t=quarter_point(k);if(t.hi<x.lo || t.lo>x.hi)continue;
        switch((k%4+4)%4){case 0:c.hi=Q;break;case 1:s.hi=Q;break;case 2:c.lo=-Q;break;default:s.lo=-Q;}
    }
    return {s,c};
}
std::array<Interval,75> coefficients;
void coefficient_init(){
    const Z source_radius=iup(Big(Q),1000000);
    for(int k=0;k<75;k++){
        const auto& a=fixed_coefficients[k];auto t=point_trig(a.gamma);
        auto re=sub(Interval(a.relo,a.rehi),Interval(t[1]-PAD,t[1]+PAD));
        auto im=sub(Interval(a.imlo,a.imhi),Interval(t[0]-PAD,t[0]+PAD));
        Z uncertainty=checked(Big(2)*(magnitude(re)+Big(magnitude(im)))+Big(4)*source_radius);
        require(uncertainty<Q/10000,"coefficient phase uncertainty too wide");
        coefficients[k]={checked(Big(a.gamma)-uncertainty),checked(Big(a.gamma)+uncertainty)};
    }
}
struct Box {std::array<Interval,5> x{};unsigned depth=0;};
using Vector=std::array<Interval,5>;
using Matrix=std::array<std::array<Interval,5>,5>;
using Preconditioner=std::array<std::array<Z,5>,5>;
void residual(const Box& b,Vector& f,Matrix& jac){
    f={};jac={};
    for(int k=0;k<75;k++){
        const auto& a=fixed_coefficients[k];int row=k/15;
        auto angle=add(sub(a.r?b.x[a.r-1]:Interval(),a.s?b.x[a.s-1]:Interval()),coefficients[k]);
        auto sc=trig(angle);f[row]=add(f[row],integer_scale(2,sc[1]));
        if(a.r)jac[row][a.r-1]=sub(jac[row][a.r-1],integer_scale(2,sc[0]));
        if(a.s)jac[row][a.s-1]=add(jac[row][a.s-1],integer_scale(2,sc[0]));
    }
}
bool choose_matrix(const Matrix& j,Preconditioner& a){
    double aug[5][10];
    for(int r=0;r<5;r++)for(int c=0;c<10;c++)aug[r][c]=c<5?double(midpoint(j[r][c]))/double(Q):double(c==r+5);
    for(int c=0;c<5;c++){
        int pivot=c;for(int r=c+1;r<5;r++)if(std::abs(aug[r][c])>std::abs(aug[pivot][c]))pivot=r;
        if(!std::isfinite(aug[pivot][c]) || std::abs(aug[pivot][c])<1e-12)return false;
        for(int col=0;col<10;col++)std::swap(aug[pivot][col],aug[c][col]);
        double divisor=aug[c][c];for(double& v:aug[c])v/=divisor;
        for(int r=0;r<5;r++)if(r!=c){double factor=aug[r][c];for(int col=0;col<10;col++)aug[r][col]-=factor*aug[c][col];}
    }
    for(int r=0;r<5;r++)for(int c=0;c<5;c++){
        double v=aug[r][c+5];if(!std::isfinite(v) || std::abs(v)>100)return false;
        a[r][c]=std::llround(v*double(Q));
    }
    return true;
}
bool enclosure(const Box& b,Box& image,Z& lipschitz,Preconditioner* returned=nullptr){
    Box center;std::array<Z,5> radius;
    for(int i=0;i<5;i++){
        Z m=midpoint(b.x[i]);center.x[i]=Interval(m);
        radius[i]=checked(std::max(Big(m)-b.x[i].lo,Big(b.x[i].hi)-m));
    }
    Vector f,fc;Matrix j,jc;residual(b,f,j);residual(center,fc,jc);
    Preconditioner a;if(!choose_matrix(jc,a))return false;if(returned)*returned=a;
    lipschitz=0;
    for(int row=0;row<5;row++){
        Interval translated=center.x[row];
        for(int k=0;k<5;k++)translated=sub(translated,mul(Interval(a[row][k]),fc[k]));
        Big spread=0,row_sum=0;
        for(int col=0;col<5;col++){
            Interval error(row==col?Q:0);
            for(int k=0;k<5;k++)error=sub(error,mul(Interval(a[row][k]),j[k][col]));
            Z bound=magnitude(error);spread+=up(Big(bound)*radius[col]);row_sum+=bound;
        }
        Z rad=checked(spread);image.x[row]=add(translated,Interval(-rad,rad));
        lipschitz=std::max(lipschitz,checked(row_sum));
    }
    return true;
}
bool inside(const Box& a,const Box& b,bool open=false){
    for(int i=0;i<5;i++)if(open?(a.x[i].lo<=b.x[i].lo || a.x[i].hi>=b.x[i].hi):(a.x[i].lo<b.x[i].lo || a.x[i].hi>b.x[i].hi))return false;
    return true;
}
bool apart(const Box& a,const Box& b){for(int i=0;i<5;i++)if(a.x[i].lo>b.x[i].hi || b.x[i].lo>a.x[i].hi)return true;return false;}
std::array<Box,48> large,small;
int known_domain(const Box& b){for(int i=0;i<48;i++)if(inside(b,large[i]))return i;return -1;}
void root_and_pair_certificates(){
    std::ofstream roots("independent_roots.jsonl"),pairs("independent_pairs.jsonl"),graph("independent_graph.txt");
    require(roots.good() && pairs.good() && graph.good(),"certificate output unavailable");
    Z max_lip=0;int certificates=0;
    for(int label=0;label<48;label++){
        for(int size=0;size<2;size++){
            Box b,k;Preconditioner a;Z radius=iup(Big(Q),size?250:1000),q;
            for(int coord=0;coord<5;coord++)b.x[coord]={checked(Big(fixed_centers[label][coord])-radius),checked(Big(fixed_centers[label][coord])+radius)};
            require(enclosure(b,k,q,&a),"root preconditioner unavailable");
            require(q<Q && inside(k,b,true),"uniform contraction certificate fails");
            if(size){large[label]=b;max_lip=std::max(max_lip,q);for(auto z:b.x)require(z.lo>-PI_LO && z.hi<PI_LO,"root domain meets torus boundary");}
            else small[label]=b;
            roots<<"{\"label\":"<<label<<",\"size\":\""<<(size?"large":"small")<<"\",\"lipschitz_numerator\":"<<q<<",\"domain\":[";
            for(int coord=0;coord<5;coord++){if(coord)roots<<',';roots<<'['<<b.x[coord].lo<<','<<b.x[coord].hi<<']';}
            roots<<"],\"image\":[";
            for(int coord=0;coord<5;coord++){if(coord)roots<<',';roots<<'['<<k.x[coord].lo<<','<<k.x[coord].hi<<']';}
            roots<<"],\"preconditioner\":[";
            for(int row=0;row<5;row++){if(row)roots<<',';roots<<'[';for(int col=0;col<5;col++){if(col)roots<<',';roots<<a[row][col];}roots<<']';}
            roots<<"]}\n";certificates++;
        }
        require(inside(small[label],large[label]),"small/large root identification fails");
        for(int previous=0;previous<label;previous++)require(apart(large[label],large[previous]),"large root domains overlap");
    }
    bool edge[48][48]{};int edges=0,count=0,triangles=0;Z gap=Q;
    for(int a=0;a<48;a++)for(int b=a+1;b<48;b++){
        Interval real(Q),imag;
        for(int i=0;i<5;i++){auto sc=trig(sub(small[b].x[i],small[a].x[i]));real=add(real,sc[1]);imag=add(imag,sc[0]);}
        bool possible=zero_possible(real)&&zero_possible(imag);edge[a][b]=edge[b][a]=possible;
        Z separated=std::max(distance_from_zero(real),distance_from_zero(imag));
        if(possible)edges++;else{require(Big(20)*separated>Q,"nonedge separation not strict");gap=std::min(gap,separated);}
        pairs<<"{\"a\":"<<a<<",\"b\":"<<b<<",\"real\":["<<real.lo<<','<<real.hi<<"],\"imag\":["<<imag.lo<<','<<imag.hi<<"],\"possible_edge\":"<<(possible?"true":"false")<<",\"coordinate_gap\":"<<separated<<"}\n";count++;
    }
    for(int a=0;a<48;a++)for(int b=a+1;b<48;b++)for(int c=b+1;c<48;c++)if(edge[a][b]&&edge[b][c]&&edge[a][c])triangles++;
    require(certificates==96 && count==1128 && triangles==0,"root/graph count or triangle predicate fails");
    graph<<48<<' '<<edges<<'\n';for(int a=0;a<48;a++)for(int b=a+1;b<48;b++)if(edge[a][b])graph<<a<<' '<<b<<'\n';
    std::cout<<"UNIFORM_ROOTS certificates="<<certificates<<" distinct=48 max_lipschitz_numerator="<<max_lip<<" denominator="<<Q<<'\n';
    std::cout<<"PAIR_CERTIFICATES count="<<count<<" edges="<<edges<<" triangles="<<triangles<<" min_nonedge_coordinate="<<gap<<" denominator="<<Q<<std::endl;
}
void smoke(){
#ifdef A119_CHECKED_128
    bool overflow_detected=false;
    try{Big a=Big(1)<<100;Big impossible=a*a;(void)impossible;}
    catch(const std::overflow_error&){overflow_detected=true;}
    require(overflow_detected,"fixed backend did not throw on overflow");
#endif
    require(idown(Big(-7),3)==-3 && iup(Big(-7),3)==-2,"signed integer division");
    auto p=mul(Interval(-Q,Q),Interval(2*Q,3*Q));require(p.lo==-3*Q && p.hi==3*Q,"signed interval product");
    auto zero=trig(Interval(0));require(zero[0].lo<=0 && zero[0].hi>=0 && zero[1].hi==Q,"zero trigonometry");
    auto pi=trig(Interval(PI_LO,PI_HI));require(pi[0].lo<=0 && pi[0].hi>=0 && pi[1].lo==-Q,"pi critical interval");
    auto all=trig(Interval(-PI_HI,PI_HI));require(all[0].lo==-Q && all[0].hi==Q && all[1].lo==-Q && all[1].hi==Q,"full circle");
    std::cout<<"ARITHMETIC_SMOKE_PASS backend="<<backend<<" checked_endpoints"<<std::endl;
}
void fresh_cover(){
    Box start;for(auto& a:start.x)a=Interval(-PI_HI,PI_HI);
    std::vector<Box> pending{start};uint64_t nodes=0,ranges=0,kraws=0,known=0,splits=0,contractions=0;unsigned depth=0;size_t max_pending=1;
    auto begun=std::chrono::steady_clock::now();
    while(!pending.empty()){
        Box b=pending.back();pending.pop_back();nodes++;depth=std::max(depth,b.depth);
        if(known_domain(b)>=0){known++;continue;}
        Vector values;Matrix jac;residual(b,values,jac);bool excluded=false;
        for(auto a:values)if(!zero_possible(a)){excluded=true;break;}
        if(excluded){ranges++;continue;}
        Box k;Z q;
        if(enclosure(b,k,q)){
            if(apart(b,k)){kraws++;continue;}
            if(known_domain(k)>=0){known++;continue;}
            Box intersect=b;long double relative_volume=1;
            for(int i=0;i<5;i++){
                intersect.x[i]={std::max(b.x[i].lo,k.x[i].lo),std::min(b.x[i].hi,k.x[i].hi)};
                Z width=checked(Big(b.x[i].hi)-b.x[i].lo);require(width>0,"unsplittable search box");
                relative_volume*=static_cast<long double>(intersect.x[i].hi-intersect.x[i].lo)/width;
            }
            // This floating choice selects efficiency only; the intersection
            // itself is an exact outward root-preserving operation.
            if(relative_volume<0.4L){b=intersect;contractions++;}
            require(!(q<Q && inside(k,b,true)),"uncatalogued contraction root");
        }
        int coord=0;for(int i=1;i<5;i++)if(Big(b.x[i].hi)-b.x[i].lo>Big(b.x[coord].hi)-b.x[coord].lo)coord=i;
        require(Big(b.x[coord].hi)-b.x[coord].lo>=iup(Big(Q),1000000000),"unresolved small box");
        Z cut=midpoint(b.x[coord]);require(cut>b.x[coord].lo && cut<b.x[coord].hi,"split does not decrease box");
        Box left=b,right=b;left.x[coord].hi=cut;right.x[coord].lo=cut;left.depth=right.depth=b.depth+1;
        require(left.x[coord].hi==right.x[coord].lo,"shared boundary lost");pending.push_back(right);pending.push_back(left);splits++;max_pending=std::max(max_pending,pending.size());
        if(nodes%50000==0)std::cout<<"PROGRESS nodes="<<nodes<<" pending="<<pending.size()<<" seconds="<<std::chrono::duration<double>(std::chrono::steady_clock::now()-begun).count()<<std::endl;
    }
    require(nodes==2*splits+1 && ranges+kraws+known==splits+1,"tree exhaustiveness count mismatch");
    std::ofstream out("independent_coverage.json");require(out.good(),"coverage output unavailable");
    out<<"{\"fresh_root\":true,\"producer_checkpoint_read\":false,\"nodes\":"<<nodes<<",\"range_exclusions\":"<<ranges<<",\"krawczyk_exclusions\":"<<kraws<<",\"known_domain_leaves\":"<<known<<",\"splits\":"<<splits<<",\"contractions\":"<<contractions<<",\"max_depth\":"<<depth<<",\"max_pending\":"<<max_pending<<",\"max_checked_endpoint\":"<<endpoint_max<<",\"complete\":true,\"seconds\":"<<std::chrono::duration<double>(std::chrono::steady_clock::now()-begun).count()<<"}\n";
    std::cout<<"COMPLETE_INDEPENDENT_FRESH_COVER nodes="<<nodes<<" range="<<ranges<<" kraw="<<kraws<<" known="<<known<<" splits="<<splits<<" contractions="<<contractions<<" depth="<<depth<<" max_pending="<<max_pending<<std::endl;
}
int main(int argc,char**argv){
    try{taylor_init();smoke();coefficient_init();root_and_pair_certificates();
        if(argc>1 && std::string(argv[1])=="--roots-only")return 0;
        fresh_cover();return 0;
    }catch(const std::exception& e){std::cerr<<"VERIFICATION_INCOMPLETE "<<e.what()<<std::endl;return 2;}
}
