"""Arb proof of a separable row-projector witness over entire tube unions.

The columns are never paired or enumerated as tuples. Six affine lower
supports have coefficients summing to zero by definition. Every supplied
tube must be checked. Complete column coverage is a separate replay step.
"""
import moving_secant_certificate as M
from flint import arb,arb_mat,acb,ctx
import itertools,json,time
from pathlib import Path
A=M.A
PAIRS=list(itertools.combinations(range(6),2))

def decode(seed):
    if len(seed)!=86:raise ValueError('expected 66 weights and 20 affine coefficients')
    vals=[A.A(x) for x in seed]
    if not all(x.is_finite() and x.is_exact() for x in vals):raise ValueError('witness must contain exact finite constants')
    row=vals[:30];mixed=[vals[30+6*c:36+6*c] for c in range(6)]
    affine=[vals[66+4*c:70+4*c] for c in range(5)]
    affine.append([-sum((affine[c][k] for c in range(5)),arb(0)) for k in range(4)])
    return row,mixed,affine

def geometry(model):
    out=[];r=model['r'];tau=model['tau']
    if not r.is_finite() or not tau.is_finite() or not r>=0 or not tau>=0:raise ValueError('invalid H radii')
    for a,b in PAIRS:
        ell=[arb(int(j==a)-int(j==b)) for j in range(6)];terms=[]
        for j in range(6):
            ai=6*a+j;bi=6*b+j
            q=model['Q0'][ai,0]-model['Q0'][bi,0]
            u=[model['U'][bi,k]-model['U'][ai,k] for k in range(4)]
            h=arb_mat([[model['H2'][bi,4*k+l]-model['H2'][ai,4*k+l] for l in range(4)] for k in range(4)])
            h=(h+h.transpose())/2
            x=[model['X'][bi,k]-model['X'][ai,k] for k in range(model['X'].ncols())]
            hb=(A.norm(h.entries())*r*r/2+A.norm(x)*tau).upper()
            terms.append((q,u,h,x,hb))
        out.append((a,b,ell,terms))
    return out

def evaluate(model,prepared,epsilon,row,mixed,affine,geo=None):
    """Lower bound phi_c(V,Q)-d_c.w on one affine phase tube."""
    if geo is None:geo=geometry(model)
    v=prepared['v0'];T=prepared['T'];r=model['r'];tau=model['tau'];eps=epsilon
    if prepared.get('model') is not model:raise ValueError('tube must use common H model')
    if v.nrows()!=6 or v.ncols()!=1 or T.nrows()!=6 or T.ncols()!=4:raise ValueError('tube dimensions')
    if not eps.is_finite() or not eps>=0 or not all(x.is_finite() for x in [*v.entries(),*T.entries()]):raise ValueError('invalid tube')
    f=arb(0);ge=arb_mat(6,1);gw=arb_mat(4,1);hh=arb_mat(4,4);he=arb_mat(4,6);ee=arb_mat(6,6)
    nx=arb_mat(model['X'].ncols(),1);tail=arb(0)
    for p,(a,b,ell,terms) in enumerate(geo):
        base=A.cexp(v[a,0]-v[b,0]);motion=[T[a,k]-T[b,k] for k in range(4)]
        coeffs=[(base*acb(row[p],-row[15+p]),motion,None,None,arb(0))]
        for j,(q,u,h,x,hb) in enumerate(terms):
            coeffs.append((base*A.cexp(-q)*mixed[j]/3,[motion[k]+u[k] for k in range(4)],h,x,hb))
        for z,g,h,x,hb in coeffs:
            f+=z.real
            # ell has exactly two nonzero entries; preserve this sparsity.
            ge[a,0]-=z.imag;ge[b,0]+=z.imag
            ee[a,a]-=z.real;ee[b,b]-=z.real;ee[a,b]+=z.real;ee[b,a]+=z.real
            for k in range(4):
                gw[k,0]-=z.imag*g[k];he[k,a]-=z.real*g[k];he[k,b]+=z.real*g[k]
                for l in range(4):
                    hh[k,l]-=z.real*g[k]*g[l]
                    if h is not None:hh[k,l]-=z.imag*h[k,l]
            if x is not None:
                for k in range(len(x)):nx[k,0]-=z.imag*x[k]
            width=(A.norm(g)*r+arb(2).sqrt()*eps).upper()
            total=width+hb
            tail+=abs(z).upper()*(width*hb+hb*hb/2+total*total*total/6)
    wdiff=[gw[k,0]-affine[k] for k in range(4)]
    linear_e=eps*A.norm(ge.entries());linear_w=r*A.norm(wdiff);normal=tau*A.norm(nx.entries())
    quadratic_w=r*r*max(arb(0),-A.eigen_lower(hh))/2
    quadratic_e=eps*eps*max(arb(0),-A.eigen_lower(ee))/2
    cross=r*eps*A.operator_norm(he)
    lower=f-linear_e-linear_w-normal-quadratic_w-quadratic_e-cross-tail
    return dict(lower=lower,reference=f,linear_phase_error=linear_e,linear_w_residual=linear_w,
                normal_error=normal,quadratic_w=quadratic_w,quadratic_phase_error=quadratic_e,
                quadratic_cross=cross,third_order_and_normal_tail=tail)

def certify(model,columns,seed,progress=None,duty=1.):
    """columns is an ordered list of six nonempty {key:(tube,epsilon)} maps."""
    if len(columns)!=6 or any(not c for c in columns):raise ValueError('six nonempty column covers required')
    if not 0<duty<=1:raise ValueError('duty must be in (0,1]')
    row,mixed,affine=decode(seed);geo=geometry(model);mins=[];all_bounds=[]
    start=time.monotonic();cpu=time.process_time();block=time.process_time();n=0
    for c,tubes in enumerate(columns):
        records=[];worst=None
        for key,(p,eps) in tubes.items():
            result=evaluate(model,p,eps,row,mixed[c],affine[c],geo)
            records.append(dict(tube=str(key),lower=str(result['lower'])))
            if worst is None or result['lower'].lower()<worst[1]['lower'].lower():worst=key,result
            n+=1
            if n%50==0:
                if progress is not None:progress(c,n)
                if duty<1:time.sleep((time.process_time()-block)*(1/duty-1))
                block=time.process_time()
        # min of lower endpoints is an exact certified lower bound.
        minimum=min(A.A(x['lower']).lower() for x in records);mins.append(minimum)
        all_bounds.append(dict(column=c,count=len(tubes),minimum=str(minimum),worst_tube=str(worst[0]),
                               worst_terms={k:str(v) for k,v in worst[1].items()},bounds=records))
    margin=sum(mins,arb(0))
    return dict(schema='tc-projector-joint-receipt-v1',status='EXCLUDED_GIVEN_TUBE_COVERS' if margin>0 else 'NOT_ESTABLISHED',
                margin=str(margin),H_radius=str(model['r']),normal_radius=str(model['tau']),
                tube_count=n,affine_sum='IDENTICALLY ZERO BY DEFINITION',columns=all_bounds,
                seconds=time.monotonic()-start,cpu_seconds=time.process_time()-cpu,precision_bits=ctx.prec)

def saved_tubes(snapshot,model):
    cols=[]
    for c in snapshot['blocking_colours']:
        ts={}
        for key,t in snapshot['columns'][str(c)]['tubes'].items():
            p=dict(model=model,v0=arb_mat([[arb(x)] for x in t['v0']]),T=arb_mat([[arb(x) for x in line] for line in t['T']]))
            ts[key]=(p,arb(t['epsilon']))
        cols.append(ts)
    return cols

if __name__=='__main__':
    import argparse
    parser=argparse.ArgumentParser();parser.add_argument('--duty',type=float,default=.5);parser.add_argument('--limit',type=int)
    args=parser.parse_args();here=Path(__file__).resolve().parent
    source=here.parent/'TC_joint_kw_20261030/data/tubes/588_2_0_2_2_1.tubes.json';s=json.loads(source.read_text())
    model,_,binding=M.load(source.parent.parent/'cells/588_2_0_2_2_1.json')
    raw=json.loads(here.joinpath('projector_joint_probe.json').read_text());seed=raw['seed_hex'][:86]
    cols=saved_tubes(s,model)
    if args.limit:
        row,mixed,affine=decode(seed);geo=geometry(model);start=time.monotonic()
        for c in range(6):
            for p,e in list(cols[c].values())[:args.limit]:
                value=evaluate(model,p,e,row,mixed[c],affine[c],geo)
            print('sample',c,{k:str(v) for k,v in value.items()},flush=True)
        print('seconds',time.monotonic()-start)
    else:
        result=certify(model,cols,seed,lambda c,n:print('rigorous tube checks',n,flush=True),args.duty)
        result.update(binding=binding,tube_snapshot_sha256=M.digest(source),coverage_replayed=False)
        here.joinpath('projector_saved_tubes.receipt.json').write_text(json.dumps(result,indent=2)+'\n')
        print(result['status'],result['margin'],result['seconds'],flush=True)
