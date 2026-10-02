"""Fail-closed local replay in a temporary guarded copy; no campaign jobs.

The guards enforce the theorem's hypotheses. They do not certify all cells
or modify the source or running campaign. Julia controls include both exact
rational comparisons and explicitly labelled implementation regressions.
"""
from pathlib import Path
import argparse, hashlib, json, math, os, shutil, subprocess, tempfile

ROOT=Path(__file__).resolve().parents[2]
SOURCE_SHA256='428779a80cc547b1c87f6352ad55da8c752f116a3799bad4aa8cc816a152f914'   # unguarded original
GUARDED_SHA256='e18d1563b7413ad70423ed1dc16a3a785b929607611aac036fe61048a77df984'      # original + this guard (reviewed, 29 Sep 2026)
PRODUCTION_SHA256='7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa'   # guarded + rescaled inv/sqrt (RESCALED_INTRINSICS.md)

# The production source differs from the reviewed guarded source only by the rescaled inv/sqrt block and a
# three-line header note.  previous_from_production() undoes exactly those two edits and must give GUARDED_SHA256.
INTRINSICS_GUARDED = r'''# 1/(c0+h) = Σ_{k≤Q} (-h)^k / c0^(k+1) + tail,  |tail| ≤ X^(Q+1) / (|c0| (1 - X)),  X = H/|c0| < 1
# (exact geometric tail of the convergent series; much sharper than a worst-case Lagrange bound).
function Base.inv(a::TM{Q}) where Q
    X = interval(a.c[1]); H = interval(hbound(a)); ac = abs(X)
    x = H / ac
    sup(x) < 1 || error("inv: model range reaches 0 (H/|c0| = $(sup(x)))")
    fk = [interval((-1)^k) / X^(k + 1) for k in 0:Q]
    series(a, fk, sup(x^(Q + 1) / (ac * (interval(1.0) - x))))
end
# sqrt(c0+h) = sqrt(c0) Σ b_k (h/c0)^k,  b_k = binom(1/2, k);  |b_k| decreases for k ≥ 2, so
# |tail| ≤ sqrt(c0) |b_{Q+1}| X^(Q+1) / (1 - X),  X = H/c0 < 1.
function Base.sqrt(a::TM{Q}) where Q
    X = interval(a.c[1]); H = interval(hbound(a))
    inf(X) > 0 || error("sqrt: centre not positive")
    x = H / X
    sup(x) < 1 || error("sqrt: model range reaches 0 (H/c0 = $(sup(x)))")
    bin = [interval(1.0)]
    for k in 1:Q + 1; push!(bin, bin[end] * (interval(0.5) - interval(k - 1)) / interval(k)); end
    sX = sqrt(X)
    fk = [bin[k + 1] * sX / X^k for k in 0:Q]
    series(a, fk, sup(sX * abs(bin[Q + 2]) * x^(Q + 1) / (interval(1.0) - x)))
end
'''
RESCALE_NOTE_START = '# 30 Sep 2026: inv and sqrt'
RESCALE_NOTE_END = 'The guard is unchanged.\n'
INTRINSICS_START = '# inv and sqrt expand about'

def previous_from_production(src):
    assert hashlib.sha256(src.encode()).hexdigest()==PRODUCTION_SHA256, 'Unreviewed production FastTM source'
    a=src.index(INTRINSICS_START); b=src.index('\nend # module')
    h0=src.index(RESCALE_NOTE_START); h1=src.index(RESCALE_NOTE_END)+len(RESCALE_NOTE_END)
    prev=src.replace(src[a:b],INTRINSICS_GUARDED,1).replace(src[h0:h1],'',1)
    assert hashlib.sha256(prev.encode()).hexdigest()==GUARDED_SHA256, 'production differs from guarded source beyond inv/sqrt'
    return prev

GUARDS=r'''
const INV_M = 2.0^40
const INV_MODELS = Ref(0)
const INV_MAX_NORM = Ref(0.0)
const INV_MAX_ORDER = Ref(0)
function invariant_state(Q, c, r)
    0 <= Q <= 12 || error("invariant: order outside 0..12")
    length(c) == binomial(Q+4,4) || error("invariant: coefficient count")
    isfinite(r) && r >= 0 || error("invariant: invalid remainder")
    s = 0.0
    for x in c
        isfinite(x) || error("invariant: nonfinite coefficient")
        s += abs(x)
    end
    isfinite(s) || error("invariant: norm overflow")
    # B(c) <= 2s by the theorem's exact sum-length inequality.
    upper = sup(2interval(s) + interval(r))
    upper <= INV_M || error("invariant: model norm exceeds proved range")
    INV_MODELS[] += 1
    INV_MAX_NORM[] = max(INV_MAX_NORM[], upper)
    INV_MAX_ORDER[] = max(INV_MAX_ORDER[], Q)
    nothing
end
function invariant_scalar(x::Real)
    xf = Float64(x)
    xf == x || error("invariant: inexact scalar conversion")
    isfinite(xf) && abs(xf) <= INV_M || error("invariant: scalar outside proved range")
    nothing
end
function invariant_interval(X::Interval)
    X isa Interval{Float64} || error("invariant: non-binary64 interval")
    m=mid(X)
    invariant_scalar(m)
    d=sup(mag(X-interval(m)))
    isfinite(d) && 0 <= d <= INV_M || error("invariant: interval deviation outside proved range")
    nothing
end
function invariant_pad(x)
    isfinite(x) && 0 <= x <= 2.0^100 || error("invariant: invalid padding argument")
    nothing
end
'''

def guarded_source(source):
    assert hashlib.sha256(source.encode()).hexdigest()==SOURCE_SHA256, 'Unreviewed FastTM source'
    replacements=[]
    def replace(old,new,count=1):
        nonlocal source
        assert source.count(old)==count,(old,source.count(old))
        source=source.replace(old,new)
        replacements.append({'needle':old,'count':count})
    replace('using IntervalArithmetic\n','using IntervalArithmetic\n'+GUARDS)
    replace('@inline up(x::Float64) = muladd(x, 1.0 + 2.0^-30, 1e-300)',
            '@inline up(x::Float64) = (invariant_pad(x); muladd(x, 1.0 + 2.0^-30, 1e-300))')
    replace('table(Q::Int) = get!(() -> build_table(Q), TABLES, Q)',
            'table(Q::Int) = (0 <= Q <= 12 || error("invariant: table order"); get!(() -> build_table(Q), TABLES, Q))')
    replace('struct TM{Q}\n    c::Vector{Float64}\n    r::Float64\nend',
            'struct TM{Q}\n    c::Vector{Float64}\n    r::Float64\n'
            '    function TM{Q}(c::Vector{Float64}, r::Float64) where Q\n'
            '        invariant_state(Q,c,r)\n        new{Q}(c,r)\n    end\nend')
    replace('set_remainder(a::TM{Q}, r) where Q = TM{Q}(a.c, r)',
            'set_remainder(a::TM{Q}, r) where Q = (r >= a.r || error("invariant: shrinking remainder"); TM{Q}(a.c, r))')
    replace('tmconst(Q::Int, x::Real) = (c = zeros(tmlen(Q));',
            'tmconst(Q::Int, x::Real) = (invariant_scalar(x); c = zeros(tmlen(Q));')
    replace('function tmconst(Q::Int, X::Interval)\n',
            'function tmconst(Q::Int, X::Interval)\n    invariant_interval(X)\n')
    replace('    xf = Float64(x); @assert xf == x "inexact scalar; use an Interval"',
            '    invariant_scalar(x)\n    xf = Float64(x); @assert xf == x "inexact scalar; use an Interval"',2)
    replace('function Base.:*(X::Interval, a::TM{Q}) where Q\n',
            'function Base.:*(X::Interval, a::TM{Q}) where Q\n    invariant_interval(X)\n')
    replace('Base.:/(a::TM, x::Real) = (interval(1.0) / interval(Float64(x))) * a',
            'Base.:/(a::TM, x::Real) = (invariant_scalar(x); (interval(1.0) / interval(Float64(x))) * a)')
    power='Base.:^(a::TM, n::Integer) = n == 0 ? one(a) : n == 1 ? a : (n % 2 == 0 ? (h = a^(n ÷ 2); h * h) : a * a^(n - 1))'
    replace(power,power.replace('= n == 0','= (n >= 0 || error("invariant: negative power"); n == 0')+')')
    replace('function bound(a::TM{Q}) where Q\n',
            'function bound(a::TM{Q}) where Q\n    invariant_state(Q,a.c,a.r)\n')
    return source,replacements

CONTROL=r'''
using Test, IntervalArithmetic
include(joinpath(@__DIR__, "Certification", "hform.jl"))
using .FastTM
@assert !Base.get_zero_subnormals() "gradual underflow required"
@assert rounding(Float64) == RoundNearest "round-to-nearest required"
println("Julia ",VERSION,"; gradual underflow enabled; Float64 round-to-nearest")
rat(x)=Rational{BigInt}(x)
@testset "range-guard rejection controls" begin
    @test_throws ErrorException tmconst(2,nextfloat(2.0^1023))
    @test_throws ErrorException tmconst(13,0.0)
    @test_throws ErrorException (2.0^41)*tmconst(2,0.0)
    @test_throws ErrorException tmconst(2,1.0)/(big(1)//big(3))
    @test_throws ErrorException tmconst(2,NaN)
    negative_exponent=Ref(-1)[] # avoid Julia's literal-power rewrite to inv
    @test_throws ErrorException tmconst(2,1.0)^negative_exponent
    @test_throws ErrorException FastTM.up(Inf)
    @test_throws ErrorException FastTM.up(-1.0)
    a=FastTM.TM{2}(zeros(tmlen(2)),1.0)
    @test_throws ErrorException set_remainder(a,0.0)
end
@testset "exact rational subnormal and cancellation controls" begin
    x=prevfloat(floatmin(Float64)); a=nextfloat(2.0^38)
    p=x*tmconst(2,a)
    exact=rat(x)*rat(a)
    @test abs(exact-rat(coeffs(p)[1])) <= rat(remainder_radius(p))
    q=p-coeffs(p)[1]
    residual=exact-rat(coeffs(p)[1]); B=bound(q)
    @test rat(inf(B)) <= residual <= rat(sup(B))
    t=nextfloat(0.0)*tmconst(12,1.0)
    @test rat(inf(bound(t))) <= rat(nextfloat(0.0)) <= rat(sup(bound(t)))
    z=tmvar(12,1,0.0,0.0)
    @test inf(bound(z)) <= 0 <= sup(bound(z))
end
# These are implementation regressions, not a universal proof by sampling.
@testset "order-12 intrinsic regressions" begin
    x=tmvar(12,1,0.25,0.01)
    models=(cos(x),sin(x),inv(2+x),sqrt(2+x))
    for s in (-1.0,0.0,1.0)
        xx=BigFloat(0.25)+BigFloat(0.01)*BigFloat(s)
        exacts=(cos(xx),sin(xx),inv(2+xx),sqrt(2+xx))
        for (m,exact) in zip(models,exacts)
            T=FastTM.table(tmorder(m))
            value=sum(BigFloat(coeffs(m)[k])*BigFloat(s)^T.exps[k][1]*
                      (any(!=(0),T.exps[k][2:4]) ? BigFloat(0) : BigFloat(1)) for k in 1:T.N)
            @test abs(exact-value) <= BigFloat(remainder_radius(m))
        end
    end
end
if ARGS[1] != "skip"
    println("control model checks=",FastTM.INV_MODELS[],"; control maximum order=",FastTM.INV_MAX_ORDER[])
    FastTM.INV_MODELS[]=0; FastTM.INV_MAX_NORM[]=0.0; FastTM.INV_MAX_ORDER[]=0
    theta=parse.(Float64,ARGS[2:5]); rho=parse(Float64,ARGS[6])
    cell=hcell(theta,rho)
    @test size(cell.H)==(6,6)
    @test all(z->isfinite(inf(fbound(z.re))) && isfinite(sup(fbound(z.re))) &&
                  isfinite(inf(fbound(z.im))) && isfinite(sup(fbound(z.im))),cell.H)
    println("PASS: local carrier Taylor-model replay, all construction guards passed")
    println("theta=",theta," radius=",rho)
end
println("guarded model constructions/checks=",FastTM.INV_MODELS[],
        "; largest certified norm bound=",FastTM.INV_MAX_NORM[],
        "; maximum Taylor order=",FastTM.INV_MAX_ORDER[])
println("PASS: guarded replay; this is not a full campaign audit")
'''

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--theta',nargs=4,type=float)
    parser.add_argument('--rho',type=float,default=math.pi/512+2.0**-40)
    parser.add_argument('--skip-carrier',action='store_true')
    parser.add_argument('--output-dir',type=Path,default=ROOT/'Review/invariant_replay')
    args=parser.parse_args()
    import struct
    theta=args.theta or [struct.unpack('d',struct.pack('Q',b))[0] for b in
        (0x40037d69d2109e0c,0x3fdf2aad0f8991ed,0xc0012d4e970797ad,0xbffe05cd71af651e)]
    julia=os.environ.get('JULIA_BIN') or shutil.which('julia')
    if not julia:raise SystemExit('Julia required; set JULIA_BIN')
    cert=ROOT/'NumericalCampaign/Certification'
    original=(cert/'fasttm.jl').read_text()
    h=hashlib.sha256(original.encode()).hexdigest()
    if h==PRODUCTION_SHA256:
        # production = reviewed guard verbatim + rescaled inv/sqrt; check that nothing else differs, replay unchanged
        previous_from_production(original)
        patched,replacements=original,[{'needle':'production = guarded source + rescaled inv/sqrt (checked)','count':0}]
    elif h==GUARDED_SHA256:
        patched,replacements=original,[{'needle':'production source is the guarded source','count':0}]
    else:
        patched,replacements=guarded_source(original)
    args.output_dir.mkdir(parents=True,exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='fasttm-invariant-') as td:
        tmp=Path(td)
        shutil.copytree(cert,tmp/'Certification',ignore=shutil.ignore_patterns('__pycache__','*.pyc'))
        (tmp/'Certification/fasttm.jl').write_text(patched)
        (tmp/'replay.jl').write_text(CONTROL)
        command=[julia,'--startup-file=no','--compiled-modules=existing',f'--project={cert/"jlenv_cluster"}',
                 str(tmp/'replay.jl'),'skip' if args.skip_carrier else 'carrier',*map(repr,theta),repr(args.rho)]
        run=subprocess.run(command,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=180)
    assert (cert/'fasttm.jl').read_text()==original
    (args.output_dir/'guarded_replay.txt').write_text(run.stdout)
    receipt={'status':'PASS' if run.returncode==0 else 'FAIL','exit_code':run.returncode,
             'source_sha256':SOURCE_SHA256,'instrumented_source_sha256':hashlib.sha256(patched.encode()).hexdigest(),
             'source_unchanged':True,'theta':theta,'rho':args.rho,'carrier_replayed':not args.skip_carrier,
             'guard_replacements':replacements,'scope':'One guarded local replay and controls, not all campaign cells'}
    (args.output_dir/'summary.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(run.stdout,end='')
    return run.returncode

if __name__=='__main__':raise SystemExit(main())
