"""Whole-pattern exclusion by a moving anchored-column secant certificate.

Input: a handoff cell JSON and its .input.json.gz record. Original H and K
radii are retained. The complete phase cover is inherited, not enumerated.
Replay accepts only Arb inequalities; numerical fits propose P, lambda, x*.
"""
import os
for key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS'):
    os.environ[key]='1'
import argparse, gzip, hashlib, json, sys, time
from pathlib import Path
import numpy as np
from scipy.optimize import least_squares
from flint import arb, arb_mat, ctx

HERE=Path(__file__).resolve().parent
# Vendored: the caller puts the pinned checker tree's TripleClassification/code first on sys.path (TC_ROOT, default
# this file's repository); anchored_column_certificate and native_columns come from there.
ROOT=Path(os.environ.get('TC_ROOT', HERE.parents[2])).resolve()   # HERE is projector/
for d in (ROOT/'proof/theorems/TC_triple_classification/family_neighbourhoods', ROOT/'TripleClassification/code'):
    if str(d) not in sys.path: sys.path.insert(0,str(d))
import anchored_column_certificate as A
import native_columns as C
ctx.prec=160


def digest(path): return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def load(path,rebuild=True):
    path=Path(path); d=json.loads(path.read_text())
    inp=path.with_name(path.stem+'.input.json.gz'); record=json.loads(gzip.decompress(inp.read_bytes()))
    if hashlib.sha256(json.dumps(record['record'],sort_keys=True).encode()).hexdigest()!=record['record_sha256']:
        raise ValueError('record hash mismatch')
    if (d['ball'],d['level'],d['cell'])!=(record['ball'],record['level'],record['cell']):
        raise ValueError('cell and record identity mismatch')
    if [c['colour'] for c in d['blocking']]!=d['blocking_colours']:
        raise ValueError('blocking pattern mismatch')
    if d['cover'].get('blocking_is_a_pattern') is not True or len(d['blocking'])!=6:
        raise ValueError('missing inherited pattern cover')
    dependencies=[Path(A.__file__),Path(C.__file__),Path(C.Z.__file__)]
    n=d['normal_form']; model={}
    for key,width in [('Q0',1),('U',4),('H2',16),('X',len(n['X'])//36)]:
        if len(n[key])!=36*width:raise ValueError('invalid normal form dimensions')
        model[key]=arb_mat([[arb(n[key][i*width+j]) for j in range(width)] for i in range(36)])
    model.update(r=arb(n['r']),tau=arb(n['tau']))
    if rebuild:
        precision=ctx.prec
        import patches, seedcert
        model=patches.normal_form(seedcert.Ball(record['record']),prec=precision)
        dependencies.extend(Path(patches.__file__).parent.glob('*.py'))
        dependencies.append(Path(patches.__file__).parent/'wholeball_basis.json')
    cols=[]
    for c in d['blocking']:
        v=[arb(x) for x in c['v0']];r=arb(c['phase_radius'])
        if len(v)!=6 or not all(x.is_finite() for x in v) or not r.is_finite() or not r>0:
            raise ValueError('invalid phase ball')
        cols.append(dict(v0=v,radius=r,colour=c['colour']))
    if not model['r']>=0 or not model['tau']>=0:raise ValueError('invalid H radii')
    binding=dict(cell_sha256=digest(path),input_sha256=digest(inp),record_sha256=record['record_sha256'],
                 ball=d['ball'],level=d['level'],cell=d['cell'],blocking_colours=d['blocking_colours'],
                 dependencies_sha256={str(p.relative_to(ROOT)):digest(p) for p in sorted(set(dependencies))})
    return model,cols,binding


def encoded(x):
    x=np.asarray(x)
    return [float(v).hex() for v in x] if x.ndim==1 else [encoded(row) for row in x]


def propose(path,column=None,anchors=None):
    model,cols,binding=load(path,rebuild=False)
    return dict(schema='tc-moving-secant-proposal-v1',cell_sha256=binding['cell_sha256'],
                input_sha256=binding['input_sha256'],**propose_columns(model,cols,column,anchors))


def propose_columns(model,cols,column=None,anchors=None):
    """The numerical proposal for six phase balls cols (dicts v0, radius) and an H model (vendored split of propose)."""
    if anchors is None:anchors=sorted(range(6),key=lambda j:A.mid(cols[j]['radius']))[:2]
    if column is None:column=next(i for i in range(6) if i not in anchors)
    E=A.numeric(A.basis()); H=np.exp(1j*A.numeric(model['Q0']).reshape(6,6))
    v=np.array([[A.mid(c['v0'][a]) for c in cols] for a in range(6)])
    anchor=np.exp(1j*v[:,anchors])
    def equations(t):
        k=np.exp(1j*(v[:,column]+np.einsum('aj,j->a',E,t)));m=np.einsum('aj,a->j',H.conj(),k)
        z=anchor.conj()*k[:,None];g=z.sum(0)
        f=np.r_[g.real,g.imag,(abs(m)**2-6)/6]
        jg=np.einsum('at,aj->tj',1j*z,E);jm=np.einsum('aj,a,ab->jb',H.conj(),1j*k,E)
        return f,np.r_[jg.real,jg.imag,2*(m.conj()[:,None]*jm).real/6]
    fit=least_squares(lambda t:equations(t)[0],np.zeros(5),jac=lambda t:equations(t)[1],
                      max_nfev=100,ftol=1e-14,xtol=1e-14,gtol=1e-14)
    rho=np.linalg.norm(fit.fun)
    if not rho>1e-14:raise ArithmeticError('no transverse proposal')
    return dict(column=column,anchors=list(anchors),t=encoded(fit.x),P=encoded(np.linalg.pinv(fit.jac)),lam=encoded(fit.fun/rho))


def linear_parameter_map(L,terms):
    D=arb_mat(L.nrows(),4)
    for z,ell,g,error,width in terms:
        y=A.dot(L,z)
        for i in range(L.nrows()):
            for k in range(4):D[i,k]-=2*y[i].imag*g[k]
    return D


def moving_parameters(terms,B,r):
    out=[]
    for z,ell,g,error,width in terms:
        moving=[g[k]+sum((ell[j]*B[j,k] for j in range(5)),arb(0)) for k in range(4)]
        out.append((z,ell,moving,error,(A.norm(moving)*r+error).upper()))
    return out


def secant_gap(P,terms,radius,offset,carrier,r,drift):
    """Average derivative along the entire segment, not its pointwise minimum."""
    S=arb_mat(5,5);tail=arb_mat(5,5);L=[arb_mat(5,5) for _ in range(5)]
    for z,ell in terms:
        y=A.dot(P,z)
        AA,DA=A.symmetric_majorant([-2*v.imag for v in y],ell)
        BB,DB=A.symmetric_majorant([-2*v.real for v in y],ell)
        delta=sum((ell[j]*offset[j,0] for j in range(5)),arb(0))
        motion=[sum((ell[j]*carrier[j,k] for j in range(5)),arb(0)) for k in range(4)]
        alpha=(A.norm(ell)*radius+abs(delta)+A.norm(motion)*r).upper()
        if not 0<alpha<arb.pi():raise ArithmeticError('secant phase range not verified')
        S+=AA
        for j in range(5):L[j]+=ell[j]*BB
        tail+=(1-alpha.sin()/alpha)*(DA+AA)/2+(alpha/2-(1-alpha.cos())/alpha)*DB
    square=sum((x*x for x in L),arb_mat(5,5))
    linear=radius*A.eigen_upper(square).sqrt()/2
    motion=[sum((L[j]*carrier[j,k] for j in range(5)),arb_mat(5,5)) for k in range(4)]
    if any(x!=0 for x in carrier.entries()):
        linear+=r*A.eigen_upper(sum((x*x for x in motion),arb_mat(5,5))).sqrt()/2
    shift=sum((L[j]*offset[j,0]/2 for j in range(5)),arb_mat(5,5))
    return A.eigen_lower(S-shift-tail-(linear+drift)*A.identity(5))


def decode(values,shape):
    x=np.asarray(values,dtype=object)
    if x.shape!=shape:raise ValueError('proposal dimensions')
    vals=[float.fromhex(v) for v in x.flat]
    if not np.isfinite(vals).all():raise ValueError('nonfinite proposal')
    return arb_mat(np.array(vals).reshape(shape).tolist())


def check(path,proposal,rebuild=True,moving=True):
    start=time.monotonic();model,cols,binding=load(path,rebuild)
    if proposal.get('schema')!='tc-moving-secant-proposal-v1' or any(proposal[k]!=binding[k] for k in ['cell_sha256','input_sha256']):
        raise ValueError('proposal binding mismatch')
    result=check_columns(model,cols,proposal,moving)
    return dict(schema='tc-moving-secant-receipt-v1',status='EXCLUDED_GIVEN_PHASE_COVER',**binding,**result,
                model_rebuilt=rebuild,seconds=time.monotonic()-start,checker_sha256=digest(__file__),
                scope='One blocking pattern over the complete original cell and phase balls. Phase-cover completeness inherited; H and narrow anchor tubes rebuilt.')


def check_columns(model,cols,proposal,moving=True):
    """The Arb check for six phase balls cols (dicts v0, radius, colour) and an H model (vendored split of check);
    raises unless the selected pattern is excluded."""
    cols=[dict(x) for x in cols]
    c=proposal['column'];anchors=proposal['anchors']
    if len(anchors)!=2 or len({c,*anchors})!=3 or any(type(i) is not int or not 0<=i<6 for i in [c,*anchors]):
        raise ValueError('invalid column selection')
    tube_records=[]
    for j in anchors:
        old=cols[j];pp=C.build(model,[A.mid(x) for x in old['v0']])
        offset=A.norm([pp['v0'][a,0]-old['v0'][a] for a in range(6)])
        bd=C.contract(pp,(old['radius']+offset).upper())
        cols[j]=dict(old,v0=A.vec(pp['v0']),T=pp['T'],epsilon=bd['epsilon'])
        tube_records.append(dict(column=j,colour=old['colour'],radius=str(old['radius']),
                                 center_adjustment=str(offset),epsilon=str(bd['epsilon'])))
    t=decode([[v] for v in proposal['t']],(5,1));P=decode(proposal['P'],(5,10));lam=decode([proposal['lam']],(1,10))
    E=A.basis();et=E*t;center=[cols[c]['v0'][a]+et[a,0] for a in range(6)]
    ref=A.reference_terms(model,cols,anchors,center,E)
    params=A.parameter_terms(model,cols,anchors,center,E)
    pv,M=A.value_and_jacobian(P,ref);D=linear_parameter_map(P,params)
    if not A.positive_definite((M+M.transpose())/2):raise ArithmeticError('predictor matrix invertibility not certified')
    B=-(M.inv()*D) if moving else arb_mat(5,4)
    terms=moving_parameters(params,B,model['r']);force=A.forcing(P,terms,model['r'])
    # For B=-(P J)^(-1) P D, the first-order selected w term vanishes
    # identically. B is an exact algebraically defined matrix enclosed by Arb.
    linear=arb(0) if moving else force['linear']
    N=(A.norm(pv.entries())+linear+force['remainder']).upper()
    residual=D+M*B
    initial_gap=secant_gap(P,ref,cols[c]['radius'].upper(),t,B,model['r'],force['drift'])
    if not initial_gap>0:raise ArithmeticError('whole original phase-ball secant gap not positive')
    cap=(N/initial_gap).upper();steps=[dict(gap=str(initial_gap),radius=str(cap))]
    for _ in range(3):
        try:g=secant_gap(P,ref,cap,arb_mat(5,1),arb_mat(5,4),arb(0),force['drift'])
        except ArithmeticError:break
        if not g>0:break
        new=(N/g).upper()
        if not new<cap:break
        cap=new;steps.append(dict(gap=str(g),radius=str(cap)))
    lv,lj=A.value_and_jacobian(lam,ref);lf=A.forcing(lam,terms,model['r'])
    curvature=sum((2*abs(A.dot(lam,z)[0]).upper()*A.norm(ell)*A.norm(ell) for z,ell in ref),arb(0))
    loss=lf['linear']+lf['remainder']+(A.norm(lj.entries())+lf['drift'])*cap+curvature*cap*cap/2
    margin=lv[0,0]-loss
    if not margin>0:raise ArithmeticError('transverse margin not positive')
    return dict(column=c,colour=cols[c]['colour'],anchors=anchors,source_H_radius=str(model['r']),
                source_column_radius=str(cols[c]['radius']),anchor_tubes=tube_records,
                moving_frame=moving,predictor=[str(x) for x in B.entries()],
                predictor_identity_residual_bound=str(A.norm(residual.entries())),
                first_order_selected_w_term='IDENTICALLY ZERO' if moving else str(linear),
                selected_numerator=str(N),selected_remainder=str(force['remainder']),steps=steps,
                transverse_value=str(lv[0,0]),transverse_parameter_linear=str(lf['linear']),
                transverse_parameter_remainder=str(lf['remainder']),transverse_margin=str(margin),precision_bits=ctx.prec)


def main():
    ap=argparse.ArgumentParser();ap.add_argument('cell');ap.add_argument('--proposal');ap.add_argument('--out',required=True)
    ap.add_argument('--column',type=int);ap.add_argument('--anchors',type=int,nargs=2)
    ap.add_argument('--input-model',action='store_true');ap.add_argument('--fixed-frame',action='store_true')
    args=ap.parse_args();out=Path(args.out)
    try:
        proposal=json.loads(Path(args.proposal).read_text()) if args.proposal else propose(args.cell,args.column,args.anchors)
        if not args.proposal:out.with_suffix('.proposal.json').write_text(json.dumps(proposal,indent=2)+'\n')
        result=check(args.cell,proposal,rebuild=not args.input_model,moving=not args.fixed_frame)
    except (ValueError,ArithmeticError,ZeroDivisionError) as e:
        result=dict(status='NOT_ESTABLISHED',reason=str(e),checker_sha256=digest(__file__))
    out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
    return 0 if result['status']=='EXCLUDED_GIVEN_PHASE_COVER' else 1


if __name__=='__main__':raise SystemExit(main())
