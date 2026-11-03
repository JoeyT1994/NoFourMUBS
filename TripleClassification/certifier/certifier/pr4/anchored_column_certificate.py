"""Arb exclusion of a whole pattern using one column and two narrow anchors.

The input phase balls are inherited; this checker does not establish their
upstream torus-cover completeness. Anchor tubes are recomputed. No fine-bin
subdivision, exact minimizer, or numerical eigenvalue is trusted for acceptance.
All local work is bounded and single-threaded. See REPORT.md for the theorem.
"""
import os
for _key in ('OPENBLAS_NUM_THREADS', 'OMP_NUM_THREADS', 'MKL_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS'):
    os.environ[_key] = '1'
import argparse
import hashlib
import json
import math
import sys
import time
from pathlib import Path
import numpy as np
from scipy.optimize import least_squares
from flint import arb, acb, arb_mat, ctx

HERE = Path(__file__).resolve().parent
PAIRS = [(a,b) for a in range(6) for b in range(a+1,6)]
ctx.prec = 160


def A(x):
    return arb(float.fromhex(x)) if isinstance(x,str) and '0x' in x.lower() else arb(x)


def mid(x):
    return float(x.mid())


def norm(v):
    # An upper enclosure, also safe for intervals containing zero.
    return sum((abs(x).upper()*abs(x).upper() for x in v), arb(0)).sqrt().upper()


def vec(M):
    return [M[i,0] for i in range(M.nrows())]


def numeric(M):
    return np.array([[mid(M[i,j]) for j in range(M.ncols())] for i in range(M.nrows())])


def identity(n):
    return arb_mat([[int(i==j) for j in range(n)] for i in range(n)])


def positive_definite(M):
    """Interval LDL certificate, not a floating-point eigentest."""
    n=M.nrows(); L=[[arb(0) for _ in range(n)] for _ in range(n)]; D=[]
    for i in range(n):
        d=M[i,i]-sum((L[i][k]*L[i][k]*D[k] for k in range(i)),arb(0))
        if not d>0:
            return False
        D.append(d); L[i][i]=arb(1)
        for j in range(i+1,n):
            L[j][i]=(M[j,i]-sum((L[j][k]*L[i][k]*D[k] for k in range(i)),arb(0)))/d
    return True


def eigen_upper(M):
    candidate=float(np.linalg.eigvalsh(numeric(M))[-1])
    for digits in (8,6,4,2):
        scale=10**digits; b=arb(math.ceil(candidate*scale)+2)/scale
        if positive_definite(b*identity(M.nrows())-M):
            return b
    raise ArithmeticError('spectral upper bound not verified')


def eigen_lower(M):
    candidate=float(np.linalg.eigvalsh(numeric(M))[0])
    for digits in (8,6,4,2):
        scale=10**digits; b=arb(math.floor(candidate*scale)-2)/scale
        if positive_definite(M-b*identity(M.nrows())):
            return b
    raise ArithmeticError('spectral lower bound not verified')


def operator_norm(M):
    return eigen_upper(M*M.transpose()).sqrt().upper()


def basis():
    E=arb_mat(6,5)
    for j in range(5):
        scale=arb((j+1)*(j+2)).sqrt()
        for a in range(j+1): E[a,j]=1/scale
        E[j+1,j]=-(j+1)/scale
    return E


def cexp(theta):
    return acb(0,theta).exp()


def dot(L,z):
    return [sum((L[i,j]*z[j] for j in range(len(z))),acb(0)) for i in range(L.nrows())]


def outer(u,v):
    return arb_mat([[a*b for b in v] for a in u])


def symmetric_majorant(u,b):
    """S=sym(ub^T), D±S >= 0 by a sum-of-squares identity for any a>0."""
    un,bn=norm(u),norm(b)
    ratio=mid(bn)/mid(un) if mid(un)>1e-30 else 1.0
    if not math.isfinite(ratio) or ratio<=0: ratio=1.0
    a=arb(ratio)
    S=(outer(u,b)+outer(b,u))/2
    D=(a*outer(u,u)+outer(b,b)/a)/2
    return S,D


def load(path):
    raw=Path(path).read_bytes(); s=json.loads(raw); m=s['model']
    expected=hashlib.sha256(json.dumps(s['record'],sort_keys=True).encode()).hexdigest()
    if expected!=s['record_sha256']: raise ValueError('record hash mismatch')
    if s['schema']!='tc-pattern-snapshot-v1' or len(s['columns'])!=6:
        raise ValueError('unsupported snapshot')
    model={k:arb_mat([[A(x)] for x in m[k]]) if k=='Q0' else arb_mat([[A(x) for x in row] for row in m[k]])
           for k in ('Q0','U','H2','X')}
    model.update(r=A(m['r']),tau=A(m['tau']))
    columns=[dict(v0=[A(x) for x in c['v0']],T=arb_mat([[A(x) for x in row] for row in c['T']]),
                  epsilon=A(c['epsilon']),radius=A(c['phase_radius']),colour=c['colour']) for c in s['columns']]
    if not model['r']>=0 or not model['tau']>=0 or any(not c['epsilon']>=0 or not c['radius']>0 for c in columns):
        raise ValueError('nonpositive or indeterminate input bounds')
    return s,model,columns,hashlib.sha256(raw).hexdigest()


def reference_terms(model,columns,anchors,center,E):
    """F=2 Re sum z exp(i ell.d); F has 4 Gram and 6 unbiasedness equations."""
    out=[]; q=model['Q0']
    for a in range(6):
        z=[acb(0) for _ in range(10)]
        for t,c in enumerate(anchors):
            u=cexp(center[a]-columns[c]['v0'][a])/2
            z[t]=u; z[2+t]=acb(0,-1)*u
        out.append((z,[E[a,j] for j in range(5)]))
    for a,b in PAIRS:
        z=[acb(0) for _ in range(10)]
        for j in range(6): z[4+j]=cexp(center[a]-center[b]-q[6*a+j,0]+q[6*b+j,0])/6
        out.append((z,[E[a,j]-E[b,j] for j in range(5)]))
    return out


def parameter_terms(model,columns,anchors,center,E):
    """Separate terms to enclose the common w and anchor/normal remainders."""
    out=[]; q=model['Q0']; r=model['r']; tau=model['tau']
    for a in range(6):
        for t,c in enumerate(anchors):
            z=[acb(0) for _ in range(10)]; u=cexp(center[a]-columns[c]['v0'][a])/2
            z[t]=u; z[2+t]=acb(0,-1)*u
            g=[-columns[c]['T'][a,j] for j in range(4)]; error=columns[c]['epsilon'].upper()
            out.append((z,[E[a,j] for j in range(5)],g,error,(norm(g)*r+error).upper()))
    for a,b in PAIRS:
        for j in range(6):
            z=[acb(0) for _ in range(10)]; ai=6*a+j; bi=6*b+j
            z[4+j]=cexp(center[a]-center[b]-q[ai,0]+q[bi,0])/6
            g=[model['U'][bi,k]-model['U'][ai,k] for k in range(4)]
            error=norm([model['H2'][bi,k]-model['H2'][ai,k] for k in range(16)])*r*r/2
            error+=norm([model['X'][bi,k]-model['X'][ai,k] for k in range(model['X'].ncols())])*tau
            out.append((z,[E[a,k]-E[b,k] for k in range(5)],g,error.upper(),(norm(g)*r+error).upper()))
    return out


def forcing(L,terms,r):
    D=arb_mat(L.nrows(),4); remainders=[arb(0) for _ in range(L.nrows())]; drift=arb(0)
    for z,ell,g,error,width in terms:
        y=dot(L,z)
        for i in range(L.nrows()):
            for j in range(4): D[i,j]-=2*y[i].imag*g[j]
            remainders[i]+=2*abs(y[i]).upper()*(error+width*width/2)
        # Uniform in the wide-column phases: multiplication by a common
        # unit phase preserves the complex vector norm of each term.
        drift+=2*norm(y)*norm(ell)*width
    return dict(linear=(operator_norm(D)*r).upper(), remainder=norm(remainders), drift=drift.upper())


def value_and_jacobian(L,terms):
    val=arb_mat(L.nrows(),1); jac=arb_mat(L.nrows(),5)
    for z,ell in terms:
        y=dot(L,z)
        for i in range(L.nrows()):
            val[i,0]+=2*y[i].real
            for j in range(5): jac[i,j]-=2*y[i].imag*ell[j]
    return val,jac


def monotonicity(P,terms,radius,parameter_drift):
    S=arb_mat(5,5); tail=arb_mat(5,5); L=[arb_mat(5,5) for _ in range(5)]
    for z,ell in terms:
        y=dot(P,z)
        AA,DA=symmetric_majorant([-2*v.imag for v in y],ell)
        BB,DB=symmetric_majorant([-2*v.real for v in y],ell)
        alpha=(norm(ell)*radius).upper()
        if not alpha<arb.pi(): raise ArithmeticError('phase range exceeds Taylor-tail regime')
        S+=AA
        for j in range(5): L[j]+=ell[j]*BB
        tail+=(1-alpha.cos())*(DA+AA)/2+(alpha-alpha.sin())*DB
    square=sum((x*x for x in L),arb_mat(5,5))
    linear=(radius*eigen_upper(square).sqrt()).upper()
    lower=eigen_lower(S-tail-(linear+parameter_drift)*identity(5))
    return lower,dict(linear=str(linear),parameter_drift=str(parameter_drift),lower=str(lower))


def propose(snapshot,column,anchors):
    """Floating point supplies only the expansion point and multipliers."""
    s,model,columns,sha=load(snapshot); E=numeric(basis())
    H=np.exp(1j*numeric(model['Q0']).reshape(6,6)); v=np.array([[mid(c['v0'][a]) for c in columns] for a in range(6)])
    anchor=np.exp(1j*v[:,anchors])
    def equations(t):
        k=np.exp(1j*(v[:,column]+np.einsum('aj,j->a',E,t)))
        m=np.einsum('aj,a->j',H.conj(),k); z=anchor.conj()*k[:,None]; g=z.sum(0)
        f=np.r_[g.real,g.imag,(abs(m)**2-6)/6]
        jg=np.einsum('at,aj->tj',1j*z,E); jm=np.einsum('aj,a,ab->jb',H.conj(),1j*k,E)
        J=np.r_[jg.real,jg.imag,2*(m.conj()[:,None]*jm).real/6]
        return f,J
    # Start at the supplied column centre. No 30-variable fitted K is needed.
    initial=np.zeros(5)
    result=least_squares(lambda t:equations(t)[0],initial,jac=lambda t:equations(t)[1],
                         ftol=1e-14,xtol=1e-14,gtol=1e-14,max_nfev=100)
    P=np.linalg.pinv(result.jac); lam=result.fun/np.linalg.norm(result.fun)
    return dict(schema='tc-anchored-column-proposal-v1',snapshot_sha256=sha,column=column,anchors=list(anchors),
                t=[float(x).hex() for x in result.x],P=[[float(x).hex() for x in row] for row in P],
                lam=[float(x).hex() for x in lam],capture_targets=['0.3','0.1','0.03'])


def check(snapshot,proposal,rebuild_model=False):
    started=time.monotonic(); requested_precision=ctx.prec
    s,model,columns,sha=load(snapshot)
    if proposal['schema']!='tc-anchored-column-proposal-v1' or sha!=proposal['snapshot_sha256']:
        raise ValueError('proposal binding mismatch')
    c=proposal['column']; anchors=proposal['anchors']
    if len(anchors)!=2 or len({c,*anchors})!=3 or not all(0<=i<6 for i in [c,*anchors]):
        raise ValueError('invalid column selection')
    root=Path(os.environ['TC_ROOT']) if os.environ.get('TC_ROOT') else HERE.parents[1]   # the frozen TC tree
    sys.path.insert(0,str(root/'proof/theorems/TC_triple_classification/family_neighbourhoods'))
    import native_columns as C
    ctx.prec=requested_precision
    dependencies=[Path(C.__file__),Path(C.Z.__file__)]
    if rebuild_model:
        import patches,seedcert
        model=patches.normal_form(seedcert.Ball(s['record']),prec=requested_precision)
        dependencies.extend(Path(patches.__file__).parent.glob('*.py'))
        dependencies.append(Path(patches.__file__).parent/'wholeball_basis.json')
    tubes=[]
    for anchor in anchors:
        old=columns[anchor]
        prepared=C.build(model,[mid(x) for x in old['v0']])
        offset=norm([prepared['v0'][a,0]-old['v0'][a] for a in range(6)])
        initial=(old['radius']+offset).upper()
        bound=C.contract(prepared,initial)
        columns[anchor]=dict(v0=vec(prepared['v0']),T=prepared['T'],epsilon=bound['epsilon'],
                             radius=initial,colour=old['colour'])
        tubes.append(dict(column=anchor,source_radius=str(old['radius']),center_adjustment=str(offset),
                          epsilon=str(bound['epsilon']),contraction_steps=len(bound['trace'])))
    E=basis(); t=arb_mat([[A(x)] for x in proposal['t']]); P=arb_mat([[A(x) for x in row] for row in proposal['P']]); lam=arb_mat([[A(x) for x in proposal['lam']]])
    if t.nrows()!=5 or P.nrows()!=5 or P.ncols()!=10 or lam.ncols()!=10:
        raise ValueError('invalid multiplier dimensions')
    displacement=norm(vec(t)); source_radius=columns[c]['radius'].upper()
    if not displacement<source_radius: raise ArithmeticError('expansion point not proved inside source ball')
    et=E*t; center=[columns[c]['v0'][a]+et[a,0] for a in range(6)]
    ref=reference_terms(model,columns,anchors,center,E)
    param=parameter_terms(model,columns,anchors,center,E)
    fp=forcing(P,param,model['r']); fl=forcing(lam,param,model['r'])
    pv,pj=value_and_jacobian(P,ref); lv,lj=value_and_jacobian(lam,ref)
    numerator=(norm(vec(pv))+fp['linear']+fp['remainder']).upper()
    source=reference_terms(model,columns,anchors,columns[c]['v0'],E)
    steps=[]; domain=source; radius=source_radius
    for target_text in proposal['capture_targets']:
        target=A(target_text)
        if not target>0: raise ValueError('invalid capture target')
        gap,detail=monotonicity(P,domain,radius,fp['drift'])
        if not gap>0: raise ArithmeticError('global monotonicity not established')
        bound=(numerator/gap).upper()
        if not bound<target: raise ArithmeticError('capture target not established')
        steps.append(dict(domain_radius=str(radius),capture_bound=str(bound),accepted_radius=str(target),**detail))
        radius=target; domain=ref
    if not steps: raise ValueError('no capture steps')
    curvature=arb(0)
    for z,ell in ref:
        coeff=dot(lam,z)[0]; ellnorm=norm(ell)
        curvature+=2*abs(coeff).upper()*ellnorm*ellnorm
    gradient=norm([lj[0,j] for j in range(5)])
    loss=fl['linear']+fl['remainder']+(gradient+fl['drift'])*radius+curvature*radius*radius/2
    margin=lv[0,0]-loss
    if not margin>0: raise ArithmeticError('transverse sign not established')
    return dict(schema='tc-anchored-column-receipt-v1',status='EXCLUDED_GIVEN_INPUT_ENCLOSURES',
                snapshot_sha256=sha,record_sha256=s['record_sha256'],subatlas=s['subatlas'],sub=s['sub'],pattern=s['pattern'],
                column=c,colour=columns[c]['colour'],anchors=anchors,anchor_colours=[columns[i]['colour'] for i in anchors],
                H_radius=str(model['r']),source_column_radius=str(source_radius),expansion_displacement=str(displacement),
                H_model_rebuilt_from_record=rebuild_model,anchor_tubes_recomputed=tubes,
                dependencies_sha256={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(set(dependencies))},
                strong_forcing={k:str(v) for k,v in fp.items()},capture_numerator=str(numerator),steps=steps,
                transverse_reference=str(lv[0,0]),transverse_forcing={k:str(v) for k,v in fl.items()},
                transverse_gradient=str(gradient),transverse_curvature=str(curvature),transverse_margin=str(margin),
                precision_bits=ctx.prec,seconds=time.monotonic()-started,
                scope='One supplied pattern, whole recorded H cell and whole original column phase balls. Anchor tubes recomputed. Upstream completeness of the phase-ball cover is inherited.')


def main():
    ap=argparse.ArgumentParser(); ap.add_argument('snapshot'); ap.add_argument('--column',type=int,default=0)
    ap.add_argument('--anchors',type=int,nargs=2,default=[1,4]); ap.add_argument('--proposal'); ap.add_argument('--out',required=True)
    ap.add_argument('--rebuild-model',action='store_true',help='re-prove the original record H normal form before checking')
    args=ap.parse_args(); out=Path(args.out)
    try:
        if args.proposal: proposal=json.loads(Path(args.proposal).read_text())
        else:
            proposal=propose(args.snapshot,args.column,args.anchors)
            out.with_suffix('.proposal.json').write_text(json.dumps(proposal,indent=2)+'\n')
        result=check(args.snapshot,proposal,rebuild_model=args.rebuild_model)
    except (ValueError,ArithmeticError,ZeroDivisionError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc))
    result['checker_sha256']=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    out.write_text(json.dumps(result,indent=2)+'\n'); print(json.dumps(result,indent=2))
    return 0 if result['status']=='EXCLUDED_GIVEN_INPUT_ENCLOSURES' else 1


if __name__=='__main__':
    raise SystemExit(main())
