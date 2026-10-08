# Replay of a direct cluster cover: see PROOF.md and README.md.
# No root discovery, root-count assertion, or Jacobian regularity is used.
const ROOT = normpath(joinpath(@__DIR__, "../../.."))
include(joinpath(ROOT, "NumericalCampaign/Certification/hform.jl"))
include(joinpath(ROOT, "NumericalCampaign/Certification/fastexcl.jl"))
using DelimitedFiles, Printf
BLAS.set_num_threads(1)
# The center is exactly these IEEE binary64 values; radius is exactly 2^-10.
const SEED_BITS = UInt64[0x40037d69d2109e0c, 0x3fdf2aad0f8991ed, 0xc0012d4e970797ad, 0xbffe05cd71af651e]
const θ = reinterpret(Float64, SEED_BITS)
const ρ = 1.0 / 1024
const A = readdlm(joinpath(@__DIR__, "data/x6_clusters.csv"), ',', Float64)
@assert size(A) == (54, 10) && all(isfinite, A)
const centers = A[:, 1:5]
const radii = A[:, 6:10]
@assert all(0 .<= radii .<= .5) "Every label must have capacity one"
println("Julia ", VERSION, "; seed bits=", string.(SEED_BITS; base=16), "; radius=1/1024")
println("Capacity lower bound: 49/144 > 1/6; labels=", size(A, 1))
eic2(c)=Complex(cos(interval(c)),sin(interval(c)))
cmod(z)=sqrt(real(z)^2+imag(z)^2)
function graph()
 n=size(centers,1);O=falses(n,n);U=falses(n,n)
 for a in 1:n,b in a+1:n
  # Enclose the exact center differences, including subtraction rounding.
  g=(1+sum(Complex(cos(interval(centers[b,k])-interval(centers[a,k])),sin(interval(centers[b,k])-interval(centers[a,k]))) for k in 1:5))/6
  eps=sum(interval(radii[a,k])+interval(radii[b,k]) for k in 1:5)/6
  amp=cmod(g);low=max(0.0,inf(amp-eps));high=min(1.0,sup(amp+eps));bounds=interval(low,high)^2
  O[a,b]=O[b,a]=(low==0.0)
  target=interval(1.0)/6
  U[a,b]=U[b,a]=!(sup(bounds)<inf(target)||inf(bounds)>sup(target))
 end
 function cliques(cand,k,cur=Int[])
  length(cur)==k && return [copy(cur)]
  out=Vector{Vector{Int}}()
  for (ii,v) in enumerate(cand)
   cc=[w for w in cand[ii+1:end] if O[v,w]]
   length(cc)>=k-length(cur)-1 || continue
   append!(out,cliques(cc,k,[cur;v]))
  end
  out
 end
 bases=cliques(collect(1:n),6);surv=0
 for V in bases
  cand=[a for a in 1:n if all(U[a,v] for v in V)]
  isempty(cliques(cand,6)) || (surv+=1)
 end
 println("strict graph labels=",n," O=",sum(O)÷2," U=",sum(U)÷2," bases=",length(bases)," surviving=",surv);flush(stdout)
 println("Orthogonal six-label sets: ", bases)
 surv==0
end
@assert graph()
cell=hcell(θ,ρ;q=4)
# Check strict admissibility using Sylvester's criterion for 6I - EE*.
E = cell.H[1:3, 1:3]
EE = mmul(E, cadj(E))
s, t, r = -EE[2,1], -EE[3,1], -EE[3,2]
g = 27 - 3*(absq_tm(s)+absq_tm(t)+absq_tm(r)) + 2*real(s*r*conj(t))
minor2 = fbound(9-absq_tm(s))
gbound = fbound(g)
Rbound = fbound(cell.R)
@assert inf(minor2)>0 && inf(gbound)>0 && inf(Rbound)>0
println("Strict domain: minor2=", minor2, "; g=", gbound, "; R=", Rbound)
flush(stdout)
fc=FastCell(cell.H,2)
const HCOEF=Complex{Interval{Float64}}.(ic.(fc.h))
const REM=[interval(remainder_radius(truncate_order(cell.H[i,j].re,2)))+interval(remainder_radius(truncate_order(cell.H[i,j].im,2))) for i in 1:6,j in 1:6]
const DEV=[sum(cmod(HCOEF[i,j,a]) for a in 2:fc.N)+REM[i,j] for i in 1:6,j in 1:6]
function verified_excluded(c,w)
 z=[eic2(0.0);eic2.(c)]
 # use approximate candidates to prioritize the most separated columns only
 zf=[1.0;cis.(c)];sf,_=s_disc(fc,zf);order=sortperm(abs.(abs.(sf).-sqrt(6));rev=true)
 for j in order
  sc=sum(z[k]*conj(HCOEF[k,j,1]) for k in 1:6)
  er=sum(cmod(sum(z[k]*conj(HCOEF[k,j,a]) for k in 1:6)) for a in 2:fc.N)+sum(REM[:,j])
  # Any exact rotation is legitimate. Outward trig encloses this chosen angle.
  ang=angle(sf[j]);unit=eic2(ang);rot=conj(unit)*sc
  re=real(rot)+interval(-sup(er),sup(er));im=imag(rot)+interval(-sup(er),sup(er))
  # Expand S(c+δ,θ) about S(c,θ), with the constant coefficient arcs
  # enclosed directly and |(H-h0)(exp(iδ)-1)| <= DEV*min(2,w).
  for k in 1:5
   vv=conj(unit)*conj(HCOEF[k+1,j,1])*z[k+1]
   rr=cmod(vv);aa=atan(imag(vv),real(vv));ar=aa+interval(-w[k],w[k]);dv=DEV[k+1,j]*min(2.0,w[k])
   re+=rr*cos(ar)-real(vv)+interval(-sup(dv),sup(dv))
   im+=rr*sin(ar)-imag(vv)+interval(-sup(dv),sup(dv))
  end
  squared=re^2+im^2
  (sup(squared)<6||inf(squared)>6) && return true
 end
 false
end
function covered(lo,hi,c,w)
 for j in axes(centers,1)
  # cheap rejection; never used to accept
  all(k->abs(rem2pi(c[k]-centers[j,k],RoundNearest))+w[k]<radii[j,k]+1e-10,1:5) || continue
  good=true
  for k in 1:5
   shift=round(Int,(c[k]-centers[j,k])/(2pi))
   D=interval(lo[k],hi[k])-interval(centers[j,k])-2shift*interval(pi)
   if inf(D)<-radii[j,k]||sup(D)>radii[j,k];good=false;break;end
  end
  good && return j
 end
 0
end
function search()
 p=sup(interval(pi));stack=[(fill(-p,5),fill(p,5),0)];nt=0;nc=0;nf=0;nv=0;t0=time()
 while !isempty(stack)
  lo,hi,depth=pop!(stack);nt+=1;c=(lo+hi)/2
  w=[max(sup(interval(hi[k])-interval(c[k])),sup(interval(c[k])-interval(lo[k]))) for k in 1:5]
  if covered(lo,hi,c,w)>0;nc+=1;continue;end
  if excluded_fast(fc,c,w)
   if verified_excluded(c,w);nv+=1;continue;else;nf+=1;end
  end
  if nt>=2_000_000 || time()-t0>240
   println("STOP nodes=",nt," pending=",length(stack)," covered=",nc," rejected proposals=",nf," time=",time()-t0);return false
  end
  k=argmax(w)
  if w[k]<1e-5
   println("UNRESOLVED ",c," nodes=",nt," time=",time()-t0);return false
  end
  m=c[k];@assert lo[k]<m<hi[k]
  lo2=copy(lo);lo2[k]=m;hi2=copy(hi);hi2[k]=m
  push!(stack,(lo2,hi,depth+1),(lo,hi2,depth+1))
  if nt%50000==0;println("nodes ",nt," covered ",nc," rejected proposals ",nf," time ",time()-t0);flush(stdout);end
 end
 @assert nt == 2*(nc+nv)-1 "Incomplete binary subdivision"
 println("COMPLETE nodes=",nt," covered=",nc," excluded=",nv," rejected proposals=",nf," time=",time()-t0)
 true
end
if search()
 println("PASS: no quartet on the entire specified seed cell, using accepted local reconstruction identities and the campaign Taylor-model enclosures.")
else
 println("INCONCLUSIVE: coverage was not completed; no exclusion is certified.")
 exit(1)
end
