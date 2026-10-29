"""Exclude a supplied phantom pattern by covering two weak phase directions.

Only proposals use optimization. Replay checks every closed partition piece,
rebuilds H on the unchanged record, and recomputes every capture and pair bound.
The snapshot's original column phase balls are the inherited input.
See ../PLANE_COLUMN_PROOF.md for the conditional theorem and integration scope.
"""
import argparse
import gzip
import hashlib
import itertools
import json
import math
import os
import sys
import time
from pathlib import Path
for _key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS','VECLIB_MAXIMUM_THREADS'):
    os.environ[_key]='1'
import numpy as np
from scipy.optimize import least_squares
from flint import arb,arb_mat,ctx
import anchored_column_certificate as A


def square_norm(v):return sum((x*x for x in v),arb(0)).sqrt()


def frame(weak):
    Q=A.identity(5)
    for n,proposal in ((5,weak[0]),(4,weak[1])):
        raw=arb_mat([[arb(float(x))] for x in proposal]);local=Q.transpose()*raw
        v=arb_mat([[local[i,0]] for i in range(n)]);norm=square_norm(v.entries())
        if not norm>0:raise ValueError('zero frame direction')
        v=v/norm
        if float(v[n-1,0])<0:v=-v
        v[n-1,0]+=1;d=sum((x*x for x in v.entries()),arb(0))
        if not d>arb(1)/10:raise ValueError('unstable frame proposal')
        hh=A.identity(5);small=A.identity(n)-2*v*v.transpose()/d
        for i in range(n):
            for j in range(n):hh[i,j]=small[i,j]
        Q=Q*hh
    return A.basis()*Q


def reference(model,center,E):
    out=[];q=model['Q0']
    for a,b in A.PAIRS:
        z=[A.cexp(center[a]-center[b]-q[6*a+j,0]+q[6*b+j,0])/6 for j in range(6)]
        out.append((z,[E[a,k]-E[b,k] for k in range(3)]))
    return out


def parameters(model,center,E,half):
    out=[];q=model['Q0'];r=model['r'];tau=model['tau']
    for a,b in A.PAIRS:
        ell=[E[a,k]-E[b,k] for k in range(3)];weak=[E[a,k]-E[b,k] for k in (3,4)]
        for j in range(6):
            z=[A.acb(0) for _ in range(6)];ai=6*a+j;bi=6*b+j
            z[j]=A.cexp(center[a]-center[b]-q[ai,0]+q[bi,0])/6
            g=[model['U'][bi,k]-model['U'][ai,k] for k in range(4)]
            error=A.norm([model['H2'][bi,k]-model['H2'][ai,k] for k in range(16)])*r*r/2
            error+=A.norm([model['X'][bi,k]-model['X'][ai,k] for k in range(model['X'].ncols())])*tau
            width=A.norm(g)*r+error+sum((abs(x)*half for x in weak),arb(0))
            out.append((z,ell,g,weak,error.upper(),width.upper()))
    return out


def forcing(L,terms,r,half):
    D=arb_mat(L.nrows(),4);dt=arb_mat(L.nrows(),2);remainders=[arb(0) for _ in range(L.nrows())];drift=arb(0)
    for z,ell,g,weak,error,width in terms:
        y=A.dot(L,z)
        for i in range(L.nrows()):
            for j in range(4):D[i,j]-=2*y[i].imag*g[j]
            for k in range(2):dt[i,k]-=2*y[i].imag*weak[k]
            remainders[i]+=2*abs(y[i]).upper()*(error+width*width/2)
        drift+=2*A.norm(y)*A.norm(ell)*width
    return (A.operator_norm(D)*r+A.operator_norm(dt)*arb(2).sqrt()*half+A.norm(remainders)).upper(),drift.upper()


def value_jac(L,terms):
    val=arb_mat(L.nrows(),1);jac=arb_mat(L.nrows(),3)
    for z,ell in terms:
        y=A.dot(L,z)
        for i in range(L.nrows()):
            val[i,0]+=2*y[i].real
            for j in range(3):jac[i,j]-=2*y[i].imag*ell[j]
    return val,jac


def monotonicity(P,terms,radius,drift):
    n=3;S=arb_mat(n,n);tail=arb_mat(n,n);L=[arb_mat(n,n) for _ in range(n)]
    for z,ell in terms:
        y=A.dot(P,z);AA,DA=A.symmetric_majorant([-2*v.imag for v in y],ell)
        BB,DB=A.symmetric_majorant([-2*v.real for v in y],ell);alpha=(A.norm(ell)*radius).upper()
        if not alpha<arb.pi():raise ArithmeticError('phase range')
        S+=AA
        for j in range(n):L[j]+=ell[j]*BB
        tail+=(1-alpha.cos())*(DA+AA)/2+(alpha-alpha.sin())*DB
    square=sum((x*x for x in L),arb_mat(n,n));linear=radius*A.eigen_upper(square).sqrt()
    return A.eigen_lower(S-tail-(linear+drift)*A.identity(n))


def require(condition,message):
    if not condition:raise ValueError(message)


def hex_array(values,shape):
    result=np.asarray(values,dtype=object)
    require(result.shape==shape,'invalid proposal dimensions')
    result=np.array([float.fromhex(x) for x in result.flat]).reshape(shape)
    require(np.isfinite(result).all(),'nonfinite proposal')
    return result


def encode(values):
    array=np.asarray(values)
    if array.ndim==1:return [float(x).hex() for x in array]
    return [encode(row) for row in array]


def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def read_json(path):
    raw=Path(path).read_bytes()
    return json.loads(gzip.decompress(raw) if raw[:2]==b'\x1f\x8b' else raw)


def context(path):
    """The recorded H radius is never replaced by a smaller radius."""
    s=read_json(path)
    require(s.get('schema')=='tc-pattern-snapshot-v1' and len(s.get('columns',[]))==6,'invalid snapshot')
    require(hashlib.sha256(json.dumps(s['record'],sort_keys=True).encode()).hexdigest()==s['record_sha256'],
            'record hash mismatch')
    require(s['pattern_colours']==[c['colour'] for c in s['columns']],'column colour mismatch')
    root=Path(os.environ.get('TC_ROOT',Path(__file__).resolve().parents[2])).resolve()
    sys.path.insert(0,str(root/'proof/theorems/TC_triple_classification/family_neighbourhoods'))
    import run as R
    import stagec_guard as G
    require(R.ROOT==root,'wrong native tree')
    binding=R.binding(R.DEFAULT_ATLAS)
    require(binding['id']=='aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7',
            'native source binding changed')
    ctx.prec=160
    ball=R.SC.Ball(s['record']);c1=R.SC.certify_c1(ball,max_boxes=4096)
    require(c1['ok'] is True,'C1 not certified')
    model=R.P.normal_form(ball,prec=160)
    require(model['summary']['status']=='CERTIFIED','normal form not certified')
    guard=G.check(R,s['record'])
    dependencies={str(p.relative_to(root)):digest(p) for p in R.source_paths()}
    for p in (Path(__file__).resolve(),Path(A.__file__).resolve(),Path(G.__file__).resolve()):
        dependencies[str(p.relative_to(root))]=digest(p)
    return s,model,R.C,dict(snapshot_sha256=digest(path),record_sha256=s['record_sha256'],
        native_binding=binding['id'],dependencies_sha256=dependencies,stage_c_preconditions=guard,
        H_model_rebuilt_from_record=True,H_radius=str(model['r']),precision_bits=ctx.prec)


class Column:
    def __init__(self,model,column,weak=None):
        self.model=model
        supplied=[arb(x) for x in column['v0']];radius=arb(column['phase_radius'])
        require(len(supplied)==6 and all(x.is_finite() for x in supplied) and radius.is_finite() and radius>0,
                'invalid phase ball')
        # An exact mean-zero center makes the orthogonal coordinate change
        # valid even when decimal serialization has widened the input center.
        v=arb_mat([[arb(float(x.mid()))] for x in supplied])
        projection=arb_mat([[arb(int(i==j))-arb(1)/6 for j in range(6)] for i in range(6)])
        self.v0=A.vec(projection*v)
        self.radius=(radius.upper()+A.norm([a-b for a,b in zip(self.v0,supplied)])).upper()
        self.vn=np.array([float(x.mid()) for x in self.v0])
        self.h=np.exp(1j*A.numeric(model['Q0']).reshape(6,6))
        if weak is None:
            _,j=self.equations(np.zeros(5),A.numeric(A.basis()))
            _,_,vh=np.linalg.svd(j,full_matrices=False);weak=np.array([vh[-1],vh[-2]])
        self.weak=weak;self.E=frame(weak);self.en=A.numeric(self.E)

    def equations(self,x,E=None):
        if E is None:E=self.en
        k=np.exp(1j*(self.vn+E@x));z=self.h.conj()*k[:,None];m=z.sum(0)
        return (np.abs(m)**2-6)/6,2*np.real(np.conj(m)[:,None]*(1j*z.T@E))/6

    def geometry(self,level,index):
        require(type(level) is int and 0<=level<=12 and len(index)==2 and
                all(type(i) is int and 0<=i<2**level for i in index),'invalid partition cell')
        mid=[self.radius*(2*i+1-2**level)/2**level for i in index]
        half=self.radius/2**level
        lower=[max(arb(0),(abs(x)-half).lower()) for x in mid]
        remaining=self.radius**2-sum((x*x for x in lower),arb(0))
        return mid,half,remaining

    def propose_slab(self,level,index):
        mid,half,remaining=self.geometry(level,index)
        if remaining<0:return dict(kind='outside')
        def equations(z):return self.equations(np.r_[z,[float(v) for v in mid]])
        fit=least_squares(lambda z:equations(z)[0],np.zeros(3),jac=lambda z:equations(z)[1][:,:3],
            max_nfev=100,ftol=1e-13,xtol=1e-13,gtol=1e-13)
        lam=fit.fun;ln=np.linalg.norm(lam)
        return dict(z=encode(fit.x),P=encode(np.linalg.pinv(fit.jac)),
                    lam=encode(lam/ln if ln>1e-15 else np.zeros(6)))

    def check_slab(self,level,index,proposal):
        mid,half,remaining=self.geometry(level,index)
        if remaining<0:return dict(status='OUTSIDE')
        require(proposal.get('kind')!='outside','source ball intersects claimed outside cell')
        z=hex_array(proposal['z'],(3,));p=hex_array(proposal['P'],(3,6))
        lam=arb_mat([list(hex_array(proposal['lam'],(6,)))])
        zstar=arb_mat([[arb(float(x))] for x in z]);P=arb_mat(p.tolist())
        source=[self.v0[a]+sum((self.E[a,3+k]*mid[k] for k in range(2)),arb(0)) for a in range(6)]
        center=[source[a]+sum((self.E[a,k]*zstar[k,0] for k in range(3)),arb(0)) for a in range(6)]
        ref=reference(self.model,center,self.E);param=parameters(self.model,center,self.E,half)
        force,drift=forcing(P,param,self.model['r'],half);value,_=value_jac(P,ref)
        domain=max(max(remaining.upper(),arb(0)).sqrt().upper(),A.norm(zstar.entries()))
        gap=monotonicity(P,reference(self.model,source,self.E),domain,drift)
        if not gap>0:raise ArithmeticError('strong-direction capture not established')
        numerator=(A.norm(value.entries())+force).upper();cap=(numerator/gap).upper()
        steps=[dict(lower=str(gap),radius=str(domain),capture=str(cap))]
        for _ in range(3):
            nextgap=monotonicity(P,ref,cap,drift)
            if not nextgap>0:break
            nextcap=(numerator/nextgap).upper()
            if not nextcap<cap:break
            steps.append(dict(lower=str(nextgap),radius=str(cap),capture=str(nextcap)))
            cap=nextcap
        lv,lj=value_jac(lam,ref);lf,ld=forcing(lam,param,self.model['r'],half)
        curvature=sum((2*abs(A.dot(lam,z)[0]).upper()*A.norm(ell)**2 for z,ell in ref),arb(0))
        margin=lv[0,0]-lf-(A.norm(lj.entries())+ld)*cap-curvature*cap*cap/2
        return dict(status='EXCLUDED' if margin>0 else 'CAPTURED',center=center,
                    radius=(cap*cap+2*half*half).sqrt().upper(),steps=steps,margin=margin)

    def root_proposal(self,center):
        E=A.numeric(A.basis());guess=E.T@(np.array([float(x.mid()) for x in center])-self.vn)
        fit=least_squares(lambda x:self.equations(x,E)[0],guess,jac=lambda x:self.equations(x,E)[1],
            max_nfev=100,ftol=1e-13,xtol=1e-13,gtol=1e-13)
        return self.vn+E@fit.x


def tube(C,model,root,capture,mode='native'):
    require(mode in ('native','constant'),'unknown tube mode')
    if mode=='constant':
        # A necessary phase enclosure needs no implicit-function derivative.
        v=C.project6()*arb_mat([[arb(float(x))] for x in root])
        offset=A.norm([v[i,0]-capture['center'][i] for i in range(6)])
        return dict(model=model,v0=v,T=arb_mat(6,4)),(capture['radius']+offset).upper()
    p=C.build(model,root)
    offset=A.norm([p['v0'][i,0]-capture['center'][i] for i in range(6)])
    bound=C.contract(p,(capture['radius']+offset).upper())
    return p,bound['epsilon']


def pair_margin(a,ea,b,eb):
    """The native orthogonality bound, with its strict margin exposed."""
    r=a['model']['r'];s=A.acb(0);gradient=[A.acb(0) for _ in range(4)];dt=b['T']-a['T']
    for j in range(6):
        z=A.cexp(b['v0'][j,0]-a['v0'][j,0]);s+=z
        for k in range(4):gradient[k]+=A.acb(0,dt[j,k])*z
    first=A.operator_norm(arb_mat([[v.real for v in gradient],[v.imag for v in gradient]]))*r
    error=ea+eb;delta=A.operator_norm(dt)*r+error
    return abs(s)-first-arb(6).sqrt()*error-delta*delta/2


def pair_excluded(left,right):
    """Search failure for one pair must not prevent trying other pairs."""
    try:
        return all(pair_margin(a,ea,b,eb)>0 for a,ea in left.values() for b,eb in right.values())
    except ArithmeticError:
        return False


def verify_tree(column,node,roots,C,level=0,index=(0,0),stats=None,tubes=None,root_modes=None):
    if root_modes is None:root_modes=['native']*len(roots)
    require(len(root_modes)==len(roots) and all(m in ('native','constant') for m in root_modes),'invalid root modes')
    if stats is None:stats={};tubes={}
    require(isinstance(node,dict),'invalid tree node')
    if 'children' in node:
        require(set(node)=={'children'} and len(node['children'])==4,'incomplete partition')
        for child,(i,j) in zip(node['children'],itertools.product(range(2),repeat=2)):
            verify_tree(column,child,roots,C,level+1,(2*index[0]+i,2*index[1]+j),stats,tubes,root_modes)
    else:
        require(node.get('kind') in ('outside','excluded','captured'),'unresolved leaf')
        result=column.check_slab(level,index,node);kind=result['status'].lower()
        require(node['kind']==kind,'leaf conclusion changed on replay')
        stats[kind]=stats.get(kind,0)+1
        if kind=='captured':
            key=node['root'];require(type(key) is int and 0<=key<len(roots),'invalid root reference')
            p,epsilon=tube(C,column.model,hex_array(roots[key],(6,)),result,root_modes[key])
            if key in tubes:epsilon=max(tubes[key][1],epsilon).upper()
            tubes[key]=(p,epsilon)
    return stats,tubes


def prove_column(model,supplied,C,depth=6,node_cap=6000,epsilon_target=.004):
    col=Column(model,supplied);roots=[];root_modes=[];count=0
    def visit(level,index):
        nonlocal count
        count+=1
        if count>node_cap:raise ArithmeticError('column node budget exhausted')
        proposal=col.propose_slab(level,index)
        try:result=col.check_slab(level,index,proposal)
        except ArithmeticError:result=dict(status='UNKNOWN')
        if result['status'] in ('EXCLUDED','OUTSIDE'):
            return dict(proposal,kind=result['status'].lower())
        if result['status']=='CAPTURED':
            root=col.root_proposal(result['center'])
            mode='native' if C.build(model,root)['Tnorm']*model['r']<arb('.1') else 'constant'
            if mode=='constant':
                # Retain the small local capture instead of pooling a
                # nearly singular branch around a fitted root.
                root=np.array([float(x.mid()) for x in result['center']])
            match=next((i for i,x in enumerate(roots)
                        if root_modes[i]==mode and np.linalg.norm(root-x)<1e-7),None)
            candidate=root if match is None else roots[match]
            _,epsilon=tube(C,model,candidate,result,mode)
            if epsilon<arb(epsilon_target) or level>=depth:
                if match is None:match=len(roots);roots.append(root);root_modes.append(mode)
                return dict(proposal,kind='captured',root=match)
        if level>=depth:raise ArithmeticError('column depth budget exhausted')
        return dict(children=[visit(level+1,(2*index[0]+i,2*index[1]+j))
                              for i,j in itertools.product(range(2),repeat=2)])
    tree=visit(0,(0,0))
    return dict(weak=encode(col.weak),roots=[encode(x) for x in roots],root_modes=root_modes,tree=tree)


def check(path,proposal):
    start=time.monotonic();s,model,C,binding=context(path)
    require(proposal.get('schema')=='tc-plane-column-proposal-v1' and
            proposal.get('snapshot_sha256')==binding['snapshot_sha256'],'proposal binding mismatch')
    items=proposal['columns']
    require(len(items) in (1,2) and len({x['column'] for x in items})==len(items),'invalid selected columns')
    captured=[];summary=[]
    for item in items:
        c=item['column'];require(type(c) is int and 0<=c<6,'invalid column')
        col=Column(model,s['columns'][c],hex_array(item['weak'],(2,5)))
        stats,tubes=verify_tree(col,item['tree'],item['roots'],C,root_modes=item.get('root_modes'))
        captured.append(tubes)
        summary.append(dict(column=c,colour=s['columns'][c]['colour'],leaves=stats,
            source_radius=str(col.radius),root_tubes=[dict(root=k,epsilon=str(e),
            mode=item.get('root_modes',['native']*len(item['roots']))[k],
            phase_radius=str((A.operator_norm(p['T'])*model['r']+e).upper())) for k,(p,e) in sorted(tubes.items())]))
    margins=[]
    if all(captured):
        require(len(captured)==2,'one nonempty column cannot exclude a basis')
        for ka,(a,ea) in sorted(captured[0].items()):
            for kb,(b,eb) in sorted(captured[1].items()):
                margin=pair_margin(a,ea,b,eb)
                if not margin>0:raise ArithmeticError('orthogonality not excluded for every captured pair')
                margins.append(dict(roots=[ka,kb],margin=str(margin)))
    return dict(schema='tc-plane-column-receipt-v1',status='EXCLUDED_GIVEN_INPUT_ENCLOSURES',**binding,
        subatlas=s['subatlas'],sub=s['sub'],pattern=s['pattern'],pattern_colours=s['pattern_colours'],
        columns=summary,pairs=margins,seconds=time.monotonic()-start,
        scope='One supplied pattern on the whole unchanged H record. All original column phase balls are covered. '
              'Their completeness and their identification with the upstream cover remain inherited.')


def propose(path,depth=6,max_columns=6):
    s,model,C,binding=context(path);done=[];attempts=[]
    order=sorted(range(6),key=lambda c:float(arb(s['columns'][c]['phase_radius']).mid()))
    for c in order[:max_columns]:
        try:
            item=dict(column=c,**prove_column(model,s['columns'][c],C,depth=depth))
            col=Column(model,s['columns'][c],hex_array(item['weak'],(2,5)))
            stats,tubes=verify_tree(col,item['tree'],item['roots'],C,root_modes=item.get('root_modes'))
            if not tubes:selected=[item]
            else:
                selected=None
                for other,other_tubes in done:
                    if pair_excluded(tubes,other_tubes):
                        selected=[other,item];break
            if selected is not None:
                return dict(schema='tc-plane-column-proposal-v1',snapshot_sha256=binding['snapshot_sha256'],columns=selected)
            done.append((item,tubes))
        except ArithmeticError as exc:attempts.append([c,str(exc)])
    raise ArithmeticError('no pair excluded; column attempts '+str(attempts))


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('snapshot',type=Path)
    p.add_argument('--proposal',type=Path);p.add_argument('--out',type=Path,required=True)
    p.add_argument('--depth',type=int,default=6);p.add_argument('--max-columns',type=int,default=6)
    args=p.parse_args();require(0<=args.depth<=10 and 1<=args.max_columns<=6,'invalid search budget')
    start=time.monotonic()
    try:
        proposal=read_json(args.proposal) if args.proposal else propose(args.snapshot,args.depth,args.max_columns)
        if not args.proposal:
            args.out.with_suffix('.proposal.json.gz').write_bytes(gzip.compress(json.dumps(proposal).encode(),mtime=0))
        result=check(args.snapshot,proposal)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc),snapshot_sha256=digest(args.snapshot))
    result.update(checker_sha256=digest(__file__),total_seconds=time.monotonic()-start)
    args.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','total_seconds')}),flush=True)
    return 0 if result['status']=='EXCLUDED_GIVEN_INPUT_ENCLOSURES' else 1


if __name__=='__main__':raise SystemExit(main())
