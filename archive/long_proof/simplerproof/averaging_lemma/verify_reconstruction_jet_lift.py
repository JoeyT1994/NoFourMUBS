"""Independent controls and higher-precision replay of the active seed lift."""
import hashlib,itertools,json,sys,time
from pathlib import Path
import sympy as S
import numpy as np
import mpmath as mp
from flint import arb,acb,fmpq,ctx
import reconstruction_jet_lift as lift
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]

def rational_controls():
    xs=S.symbols('x0:5',real=True)
    f=(xs[0]*xs[1]+xs[2]**2+S.I*xs[3]*xs[4]+3)/(7+xs[0]-S.I*xs[1]);f=f+S.conjugate(f)/3
    expr=[f]+[S.diff(f,x) for x in xs]+[S.diff(f,x,y) for x in xs for y in xs]
    centers=[S.Rational(j+1,10) for j in range(5)];width=S.Rational(1,100)
    aa=lambda q:arb(int(q.p))/int(q.q)
    lift.DOMAIN_WIDTHS=[aa(width)]*5
    x=[lift.Jet.variable(acb(aa(c)+arb(0,aa(width))),j,acb(aa(c))) for j,c in enumerate(centers)]
    g=(x[0]*x[1]+x[2]**2+acb(0,1)*x[3]*x[4]+3)/(7+x[0]-acb(0,1)*x[1]);g=g+g.conjugate()/3
    result=[g.v]+g.d+[v for row in g.h for v in row]
    count=0
    for signs in itertools.product([-1,1],repeat=5):
        sub=dict(zip(xs,[c+s*width for c,s in zip(centers,signs)]))
        for formula,bound in zip(expr,result):
            value=S.expand_complex(formula.subs(sub));re,im=value.as_real_imag()
            assert bound.real.contains(fmpq(int(re.p),int(re.q)))
            assert bound.imag.contains(fmpq(int(im.p),int(im.q)))
            count+=1
    for function in [lambda:lift.norm([acb('nan')]),lambda:lift.Jet(0).reciprocal(),
                     lambda:lift.Jet(-1).log(),lambda:lift.Jet(-1).sqrt()]:
        try:function()
        except AssertionError:pass
        else:raise AssertionError('An invalid domain or nonfinite value was accepted')
    assert lift.norm([acb(arb('0 +/- 1e-30'))]).is_finite()
    return count

def model_controls():
    sys.path.insert(0,str(ROOT/'MinimalConstruction/Implementation'))
    from model import Model
    mp.mp.dps=65;maximum=0.0;count=0
    cc=[arb.pi()*n/3 for n in [1,2,2,4]]
    _,choices=lift.carrier(cc+[arb(0)],[arb(0)]*5)
    for offsets in [(0,0,0,1),(1,-1,1,2)]:
        phases=[mp.pi*n/3+mp.mpf(v)/10000 for n,v in zip([1,2,2,4],offsets)]
        for sheet in [1,-1]:
            model=Model([mp.exp(mp.j*x) for x in phases],sheet=sheet);Hmp=np.array(model.hadamard().tolist(),complex)
            H,_=lift.carrier([arb(str(x)) for x in phases]+[arb(str(sheet*mp.sqrt(model.R)))],[arb(0)]*5,choices)
            A=np.array([[complex(float(x.v.real.mid()),float(x.v.imag.mid())) for x in row] for row in H])
            discrepancy=min(float(np.max(abs(A-Hmp[np.ix_((0,1,2)+rp,(0,1,2)+cp)])))
                            for rp,cp in itertools.product(itertools.permutations(range(3,6)),repeat=2))
            assert discrepancy<1e-12;maximum=max(maximum,discrepancy);count+=1
    return dict(numerical_controls=count,maximum_entry_discrepancy=maximum,scope='Independent implementation controls, not proof acceptance')

def main():
    start=time.monotonic();ctx.prec=160;controls=rational_controls();model=model_controls();replays=[]
    for precision in [128,192]:
        ctx.prec=precision;r=lift.certify(arb(1)/1024,64,(1,1,1,8))
        assert r['ok'] and arb(r['phase_norm_upper'])<arb(24)/100
        assert r['verified_rectangles']+64*r['seed_tiles_excluded']==8*64
        replays.append(dict(precision=precision,result=r));print('PASS',precision,r['phase_norm_upper'],r['verified_rectangles'],'rectangles',flush=True)
    sources=[Path(__file__),HERE/'reconstruction_jet_lift.py',ROOT/'MinimalConstruction/Implementation/model.py',
        ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting/side_cover_lift.py',
        ROOT/'ProvenResults/CornerBounds/PairedSidePrune/paired_prune.py',
        ROOT/'ProvenResults/CornerBounds/SideTriplePrune/triple_prune.py',
        ROOT/'ProvenResults/CornerBounds/SideColumnPrune/prune.py']
    result=dict(status='PASS',scope='Complete active seed cube of halfwidth 1/1024; not a global cover',global_confinement_proved=False,
        seed_pi_thirds=[1,2,2,4],halfwidth='1/1024',cutoff=5,phase_norm_bound='6/25',
        exact_rational_value_gradient_Hessian_controls=controls,invalid_input_controls=4,model_controls=model,replays=replays,
        sources={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},seconds=time.monotonic()-start)
    (HERE/'active_seed_lift_receipt.json').write_text(json.dumps(result,indent=2)+'\n')
    print('PASS complete active cube; seconds',time.monotonic()-start,flush=True)
if __name__=='__main__':main()
