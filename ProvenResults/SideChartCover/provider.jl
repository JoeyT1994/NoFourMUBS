# Additive implicit side-chart provider. See PROOF.md before integration.
# REVIEW STATUS: supplied implementation; NOT executed in this environment.
# Use a fresh Julia process with the pinned production sources.
# Floats propose roots, inverse matrices and polynomial predictors ONLY.
# All acceptances below use guarded FastTM or outward IntervalArithmetic.
using LinearAlgebra, SHA
const SC_ROOT = get(ENV, "NOFOURMUBS_ROOT", normpath(joinpath(@__DIR__, "..", "..")))
const SC_CERT = joinpath(SC_ROOT, "NumericalCampaign", "Certification")
const SC_FASTTM_SHA = "7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa"
const SC_COVER_SHA = "bec3bcd67a8f6ff67bf30f34dbb871804788d8579db74991d18d699cad3ae428"
function sc_check_sources()
    bytes2hex(sha256(read(joinpath(SC_CERT, "fasttm.jl")))) == SC_FASTTM_SHA || error("unreviewed FastTM source")
    bytes2hex(sha256(read(joinpath(SC_CERT, "cover.jl")))) == SC_COVER_SHA || error("unreviewed cover source")
    true
end
sc_check_sources()
isdefined(Main, :certify_cell_cover_accelerated) || include(joinpath(SC_CERT, "cover_accelerated.jl"))
include("cover_model.jl")

# Start a NEW exact polynomial expression, not an enclosure of the old function.
# Only used for proposals which are subsequently residual-validated.
sc_poly(a::FTM{Q}) where Q = FTM{Q}(copy(coeffs(a)), 0.0)
sc_poly(z::CTM) = CTM(sc_poly(z.re), sc_poly(z.im))
sc_ib(z::CTM) = Complex(fbound(z.re), fbound(z.im))
sc_cmag(z) = sqrt(real(z)^2 + imag(z)^2)
sc_zconst(q, z) = CTM(tmconst(q, Float64(real(z))), tmconst(q, Float64(imag(z))))
sc_realrow(A, x) = [sum(A[i,k] * x[k] for k in eachindex(x)) for i in axes(A,1)]
function sc_add_error(x::FTM, e::Float64)
    isfinite(e) && e >= 0 || error("invalid enclosure error")
    r = sup(interval(remainder_radius(x)) + interval(e))
    set_remainder(x, r) # never shrink a remainder
end
sc_add_error(z::CTM,e::Float64) = CTM(sc_add_error(z.re,e),sc_add_error(z.im,e))

function sc_moments(q)
    x=q[1:2:6]; y=q[2:2:6]
    [sum(f(v) for v in a) for a in (x,y,y.-x) for f in (cos,sin)]
end
function sc_jacobian(q)
    z=zero(q[1]); J=fill(z,6,6)
    for k in 1:3
        a,b=q[2k-1],q[2k]; d=b-a
        J[1,2k-1]=-sin(a); J[2,2k-1]=cos(a)
        J[3,2k]=-sin(b); J[4,2k]=cos(b)
        J[5,2k-1]=sin(d); J[6,2k-1]=-cos(d)
        J[5,2k]=-sin(d); J[6,2k]=cos(d)
    end
    J
end
function sc_target(x)
    a,b,c,d=x
    out=typeof(x[1])[]
    for (u,v) in ((a,b),(c,d),(c-a,d-b))
        push!(out,-1-cos(u)-cos(v)); push!(out,-sin(u)-sin(v))
    end
    out
end
function sc_invariants(ph)
    a,b,c,d=ph
    s=-1-a-b; t=-1-c-d; r=-1-c*conj(a)-d*conj(b)
    X=real(s*conj(s)); Y=real(t*conj(t)); Z=real(r*conj(r))
    p=X+Y+Z; J=2real(s*r*conj(t)); W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3p+J; eta=9-p+J; chi=W-(p-9)*(p-18)+(p-15)*J
    R=4g*g*eta-chi*chi
    (;s,t,r,X,Y,Z,g,eta,chi,R)
end

"""Float proposal only; no value returned here can authorize acceptance."""
function sc_side_proposal(theta, sign)
    v=sc_invariants(cis.(theta)); s,t,r=v.s,v.t,v.r
    v.R>0 && isfinite(v.R) || error("no positive-R centre proposal")
    z=(v.chi+sign*im*sqrt(v.R))/(2v.g)
    P=[r*s*s+conj(r)*t*t+(3-v.Z)*s*t,
       t*conj(s)^2+r*r*conj(t)+(3-v.Y)*r*conj(s),
       s*conj(t)^2+conj(r)^2*conj(s)+(3-v.X)*conj(r)*conj(t)]
    lam=[(v.g+k*conj(z))/conj(p) for (k,p) in zip((9-v.Z,9-v.Y,9-v.X),P)]
    u=lam[1]*conj(lam[2]); mu=s/3; nu=t/3; n=1-abs2(mu)
    k=r/3-nu*conj(mu); alpha=mu*mu-u*conj(mu); gamma=2mu*nu-z*lam[1]/3
    delta=sqrt(complex(v.g/27*lam[1]*conj(lam[2])*conj(lam[3])))
    df=27/v.g*(n*gamma-2alpha*k)*conj(delta)
    if real(df)<0; delta=-delta; df=-df; end
    rr=(n+real(df))/2; q=alpha/rr
    cp=(k-delta*conj(q))/n; cmn=(k*q+delta)/n; sig=u+mu*q
    xi=sig^2/rr; w=cis(angle(xi)/3); omega=cis(2pi/3)
    M=[1 0 0; mu sig q*conj(sig); nu cp*sig cmn*conj(sig)]
    B=M*Diagonal([1,conj(w),w])*[omega^(j*k) for j in 0:2,k in 0:2]
    phase=[angle(B[i,j]) for j in 1:3 for i in 2:3]
    target=sc_target(theta)
    for _ in 1:7
        phase -= sc_jacobian(phase) \ (sc_moments(phase)-target)
    end
    all(isfinite,phase) || error("nonfinite phase proposal")
    phase
end

"""Validate a moving polynomial-centred implicit chart over the entire seed box."""
function sc_side(theta, rho; q=4, sign=1, predictor_steps=6, radius_steps=10)
    p0=sc_side_proposal(theta,sign)
    A=inv(sc_jacobian(p0)) # exact dyadic entries are used below; not a certified inverse yet
    all(isfinite,A) || error("nonfinite preconditioner")
    x=[tmvar(q,i,theta[i],rho) for i in 1:4]
    target=sc_target(x); p=[tmconst(q,v) for v in p0]
    for _ in 1:predictor_steps
        corr=sc_realrow(A,sc_moments(p)-target)
        p=sc_poly.(p-corr)
    end
    residual=sc_realrow(A,sc_moments(p)-target)
    eta=[sup(abs(fbound(e))) for e in residual]
    rad=max(2.0^-46,2maximum(eta)) # proposal only, later checked with intervals
    for _ in 1:radius_steps
        isfinite(rad) && rad>0 || error("invalid phase radius proposal")
        Q=[fbound(v)+interval(-rad,rad) for v in p]
        J=sc_jacobian(Q)
        lambda=[sum(abs(interval(Int(i==j))-sum(interval(A[i,k])*J[k,j] for k in 1:6)) for j in 1:6) for i in 1:6]
        if all(sup(lambda[i])<1 && sup(interval(eta[i])+lambda[i]*interval(rad))<rad for i in 1:6)
            roots=[sc_add_error(v,rad) for v in p]
            o=cex_tm(tmconst(q,0.0))
            B=[i==1 ? o : cex_tm(roots[2j+i-3]) for i in 1:3,j in 1:3]
            return (ok=true,B=B,phases=roots,phase_error=rad,lambda_rows=sup.(lambda),eta=eta)
        end
        rad*=2 # proposal change, no interval assertion made here
    end
    (ok=false,reason=:side_contraction)
end

# Each disjunct has an outward proof that a permutation cannot match the sides.
const SC_PERMS=((1,2,3),(1,3,2),(2,1,3),(2,3,1),(3,1,2),(3,2,1))
function sc_separate_orbits(B1,B2)
    U=sc_ib.(B1); V=sc_ib.(B2)
    disjoint(z,w)=sup(real(z))<inf(real(w)) || sup(real(w))<inf(real(z)) ||
                  sup(imag(z))<inf(imag(w)) || sup(imag(w))<inf(imag(z))
    all(any(disjoint(U[i,j],V[i,per[j]]) for i in 2:3,j in 1:3) for per in SC_PERMS)
end

"""Forced completion with a validated fixed inverse; no square root or 1/sqrt(R)."""
function sc_completion(E,B,C; q=4, predictor_steps=8)
    A=cadj(C); F=mmul(cadj(E),B)
    Y=inv(centre.(A)) # exact binary complex proposal
    all(isfinite,Y) || error("nonfinite completion preconditioner")
    YY=[sc_zconst(q,Y[i,j]) for i in 1:3,j in 1:3]
    YA=mmul(YY,A)
    KI=[Complex(interval(Int(i==j)),interval(0.0))-sc_ib(YA[i,j]) for i in 1:3,j in 1:3]
    lam=maximum(sup(sum(sc_cmag(KI[i,j]) for j in 1:3)) for i in 1:3)
    lam<1 || return (ok=false,reason=:completion_conditioning)
    D0=-Y*centre.(F)
    D=[sc_zconst(q,D0[i,j]) for i in 1:3,j in 1:3]
    for _ in 1:predictor_steps
        D=sc_poly.(D-mmul(YY,mmul(A,D)+F))
    end
    residual=mmul(YY,mmul(A,D)+F)
    errors=[sup(interval(maximum(sup(sc_cmag(sc_ib(residual[i,j]))) for i in 1:3))/(interval(1.0)-interval(lam))) for j in 1:3]
    DD=[sc_add_error(D[i,j],errors[j]) for i in 1:3,j in 1:3]
    (ok=true,D=DD,lambda=lam,column_errors=errors)
end

"""Four orbit-representative H models. Their 36 permutations each enclose ALL framed completions.
The signed float proposal labels are NOT used to identify a sheet. Two-orbit exhaustion plus
validated separation provides coverage independently at every seed point. No flatness is
asserted for an unmatched pairing. Permuted representatives need not be sent to the cover.
"""
function sidechart_models(theta,rho; q=4)
    length(theta)==4 && all(v->v isa Float64 && isfinite(v),theta) || error("four exact Float64 centres required")
    rho isa Float64 && isfinite(rho) && rho>0 || error("positive exact Float64 seed radius required")
    2<=q<=12 || error("order outside 2..12")
    x=[tmvar(q,i,theta[i],rho) for i in 1:4]; ph=cex_tm.(x)
    rb=fbound(sc_invariants(ph).R)
    inf(rb)>1 || return (ok=false,reason=:R_guard,R=rb)
    # Vertical predictors MUST share the original normalized variables. Build them
    # in transposed coordinates, then swap their monomial coordinates 2 and 3.
    h=[sc_side(theta,rho;q=q,sign=sg) for sg in (1,-1)]
    v=[sc_side(theta[[1,3,2,4]],rho;q=q,sign=sg) for sg in (1,-1)]
    all(z->z.ok,vcat(h,v)) || return (ok=false,reason=:side_contraction,R=rb)
    sc_separate_orbits(h[1].B,h[2].B) && sc_separate_orbits(v[1].B,v[2].B) ||
        return (ok=false,reason=:orbit_separation,R=rb)
    a,b,c,d=ph; o=one(a); E=[o o o;o a b;o c d]
    models=Matrix{typeof(a)}[]; completions=Any[]
    for hh in h,vv in v
        C=permutedims(sc_swap23.(vv.B))
        dd=sc_completion(E,hh.B,C;q=q)
        dd.ok || return (ok=false,reason=:completion_conditioning,R=rb)
        push!(models,[E hh.B;C dd.D]); push!(completions,dd)
    end
    (ok=true,models=models,R=rb,horizontal=h,vertical=v,completions=completions,
     completion_scope=:all_physical_up_to_ordinary_side_permutations)
end

# Exact permutation of normalized seed variables; coefficient values and remainder
# are preserved. Without this step, the vertical side would use the wrong seeds!
function sc_swap23(a::FTM{Q}) where Q
    T=FastTM.table(Q); co=zeros(Float64,length(coeffs(a)))
    for (k,e) in enumerate(T.exps)
        co[T.index[(e[1],e[3],e[2],e[4])]]=coeffs(a)[k]
    end
    FTM{Q}(co,remainder_radius(a))
end
sc_swap23(z::CTM)=CTM(sc_swap23(z.re),sc_swap23(z.im))

sc_failure(reason; nt=0, elapsed=0.0)=(ok=false,reason=reason,nt=nt,nlabels=0,nkept=0,nrej=0,nO=0,nU=0,
                                     nbases=0,rmax=NaN,level=0,t=elapsed)
"""Same cover result fields; success requires all four representatives to pass.
Counts are summed over representatives; rmax and level are their maxima. The budget
and deadline are shared across representatives. No successful model construction
alone returns ok=true from this function.
"""
function certify_cell_sidechart(theta,rho; q=4, partition=false,budget=4_000_000,deadline=Inf,kwargs...)
    start=time(); built=nothing
    try
        built=sidechart_models(theta,rho;q=q)
    catch ex
        ex isa InterruptException && rethrow()
        return sc_failure(:model_exception;elapsed=time()-start)
    end
    built.ok || return sc_failure(built.reason;elapsed=time()-start)
    counts=Dict(k=>0 for k in (:nt,:nlabels,:nkept,:nrej,:nO,:nU,:nbases)); rmax=0.0; level=0
    for H in built.models
        time()>deadline && return sc_failure(:time_limit;nt=counts[:nt],elapsed=time()-start)
        remaining=budget-counts[:nt]
        remaining>0 || return sc_failure(:cover_budget;nt=counts[:nt],elapsed=time()-start)
        result=certify_cover_with_model(H;q=q,budget=remaining,deadline=deadline,
            verifier=CartesianVerifier(),sharp_capacity=true,tight_pairs=true,
            label_builder=partition ? PartitionLabels() : make_labels,kwargs...)
        for k in keys(counts); counts[k]+=get(result,k,0); end
        result.ok || return merge(result,(nt=counts[:nt],t=time()-start))
        rmax=max(rmax,result.rmax); level=max(level,result.level)
    end
    (ok=true,reason=:none,nt=counts[:nt],nlabels=counts[:nlabels],nkept=counts[:nkept],nrej=counts[:nrej],
     nO=counts[:nO],nU=counts[:nU],nbases=counts[:nbases],rmax=rmax,level=level,t=time()-start)
end
