#!/usr/bin/env python3
"""Exhaustive two-dimensional weak-fiber cover, with Arb acceptance checks.

Outputs only complete coverage of possible full unbiasedness zeros by supplied
coarse caps. This is not by itself a pattern exclusion. The three strong
coordinates are eliminated by a uniform derivative contraction inequality.
"""
import argparse,copy,gzip,hashlib,itertools,json,math,os,time
import numpy as np
from flint import arb,ctx
from strong_contraction import A,uppernorm,helmert,mm,trans,gram_bound,certify as strong_certify
from numerical_scout import fj,helmert as helmert_np,mid
from scalar_second_order import second_order_error


def orthogonalize(M):
    """Arb enclosure of exact real Gram-Schmidt of supplied decimal matrix."""
    cols=[]
    for col in trans(M):
        v=[A(x) for x in col]
        for q in cols:
            dot=sum((a*b for a,b in zip(v,q)),arb(0));v=[a-dot*b for a,b in zip(v,q)]
        norm=sum((x*x for x in v),arb(0)).sqrt()
        if not norm>0:raise ValueError('failed Gram-Schmidt positivity')
        cols.append([x/norm for x in v])
    return trans(cols)

def floats(M):return np.array([[float(x.mid()) for x in row] for row in M])
def serial(M):return [[x.str(radius=True,more=True) for x in row] for row in M]
def cnorm(v):return sum((x.abs_upper()**2 for x in v),arb(0)).sqrt().upper()

def build_rotation(s,props,ci):
    cp=props['columns'][ci]
    if 'cover_rotation_proposal' in cp:return cp['cover_rotation_proposal']
    Q=np.array([mid(x) for x in s['model']['Q0']]).reshape(6,6);v=np.array([mid(x) for x in s['columns'][ci]['v0']]);x=np.mean([z['x'] for z in cp['roots']],axis=0) if cp['roots'] else np.zeros(5)
    _,J=fj(x,v,Q);u,sv,vh=np.linalg.svd(J[0],full_matrices=False);O=vh.T[:,[4,3,2,1,0]]
    cp['cover_rotation_proposal']=dict(centre=x.tolist(),orthogonal_columns_weak_first=O.tolist(),singular_values=sv.tolist(),strong_preconditioner=np.linalg.pinv(J[0]@O[:,2:]).tolist())
    return cp['cover_rotation_proposal']

def build(s,props,ci,prec=160):
    ctx.prec=prec;build_rotation(s,props,ci);c=s['columns'][ci];m=s['model'];cp=props['columns'][ci]
    if len(c['v0'])!=6 or len(m['Q0'])!=36 or len(m['U'])!=36 or any(len(row)!=4 for row in m['U']) or len(m['H2'])!=36 or any(len(row)!=16 for row in m['H2']) or len(m['X'])!=36 or not m['X'][0] or any(len(row)!=len(m['X'][0]) for row in m['X']):raise ValueError('invalid model dimensions')
    for row in [c['v0'],m['Q0']]+m['U']+m['H2']+m['X']:
        if any(not A(x).is_finite() for x in row):raise ValueError('nonfinite model coefficient')
    R=A(c['phase_radius']).upper();r=A(m['r']).upper();tau=A(m['tau']).upper()
    if not R>0 or not r>=0 or not tau>=0:raise ValueError('invalid nonnegative radius')
    if len(cp['cover_rotation_proposal']['orthogonal_columns_weak_first'])!=5 or any(len(row)!=5 for row in cp['cover_rotation_proposal']['orthogonal_columns_weak_first']) or len(cp['cover_rotation_proposal']['strong_preconditioner'])!=3 or any(len(row)!=6 for row in cp['cover_rotation_proposal']['strong_preconditioner']):raise ValueError('invalid proposal dimensions')
    if any(len(rr['x'])!=5 or any(not A(z).is_finite() for z in rr['x']) for rr in cp['roots']):raise ValueError('invalid root proposal')
    v=[A(x) for x in c['v0']];B=helmert()
    O=orthogonalize(cp['cover_rotation_proposal']['orthogonal_columns_weak_first']);On=floats(O)
    L=[[A(x) for x in row] for row in cp['cover_rotation_proposal']['strong_preconditioner']]
    pn=copy.deepcopy(props);pn['columns'][ci]['cover_rotation_proposal']['orthogonal_columns_weak_first']=serial(O)
    sr=strong_certify(s,pn,ci,prec)
    coeff=[(A(t)/R**k).upper() for k,t in enumerate(sr['terms'])]
    q0=sum((coeff[k]*R**k for k in range(4)),arb(0)).upper()
    Q=np.array([mid(x) for x in m['Q0']]).reshape(6,6);vn=np.array([mid(x) for x in c['v0']]);xmean=np.mean([x['x'] for x in cp['roots']],axis=0) if cp['roots'] else np.zeros(5)
    _,J=fj(xmean,vn,Q);uj,sv,vh=np.linalg.svd(J[0],full_matrices=False)
    W=[[A(float(x)) for x in row] for row in uj[:,3:].T]
    P=L+W;Pn=floats(P);Ln=floats(L)
    # Aggregated paired-phase coefficient moments preserve shared w at first order.
    terms=[]
    for a,b in itertools.combinations(range(6),2):
        ell=[B[a][k]-B[b][k] for k in range(5)];eo=[sum((ell[k]*O[k][j] for k in range(5)),arb(0)) for j in range(5)]
        CH=[[arb(0),arb(0)] for k in range(3)];C0=[[arb(0),arb(0)] for k in range(5)];Cw=[[[arb(0),arb(0)] for j in range(4)] for k in range(5)];raw=[]
        for j in range(6):
            ai,bi=6*a+j,6*b+j;th=v[a]-v[b]-A(m['Q0'][ai])+A(m['Q0'][bi]);co,si=th.cos(),th.sin()
            du=[A(x)-A(y) for x,y in zip(m['U'][ai],m['U'][bi])]
            dh=[A(x)-A(y) for x,y in zip(m['H2'][ai],m['H2'][bi])]
            dx=[A(x)-A(y) for x,y in zip(m['X'][ai],m['X'][bi])]
            beta=(r*r/2*cnorm(dh)+tau*cnorm(dx)).upper();un=cnorm(du)
            raw.append(dict(j=j,base_re=co,base_im=si,du=du,dh=dh,dx=dx,un=un,beta=beta,weights=[P[k][j].abs_upper() for k in range(5)]))
            thall=th+arb(0,(r*un+beta).upper());call,sall=thall.cos(),thall.sin()
            for k in range(3):CH[k][0]+=L[k][j]*call;CH[k][1]+=L[k][j]*sall
            for k in range(5):
                C0[k][0]+=P[k][j]*co;C0[k][1]+=P[k][j]*si
                for l in range(4):
                    Cw[k][l][0]+=P[k][j]*co*du[l];Cw[k][l][1]+=P[k][j]*si*du[l]
        terms.append(dict(ell=ell,eo=eo,C0=C0,Cw=Cw,CH=CH,raw=raw))
    roots=[]
    for rr in cp['roots']:
        x=[arb(z) if isinstance(z,(int,float)) else A(z) for z in rr['x']];roots.append([sum((O[i][j]*x[i] for i in range(5)),arb(0)) for j in range(5)])
    return dict(R=R,r=r,tau=tau,coeff=coeff,q_source=q0,O=O,On=On,L=L,Ln=Ln,P=P,Q=Q,vn=vn,terms=terms,roots=roots,strong_receipt=sr,ci=ci,snapshot=props['snapshot'])

def solve_y(p,t):
    y=np.zeros(3)
    for it in range(8):
        x=p['On']@np.r_[t,y];f,J=fj(x,p['vn'],p['Q']);g=p['Ln']@f[0];G=p['Ln']@J[0]@p['On'][:,2:]
        try:step=np.linalg.solve(G,g)
        except np.linalg.LinAlgError:break
        ns=np.linalg.norm(step)
        if not math.isfinite(ns):break
        y-=step*min(1,.3/max(ns,1e-100))
        if ns<1e-13:break
    if not np.isfinite(y).all():y=np.zeros(3)
    return y

def residual(p,t,y,h,rho,return_data=False):
    """All five projected residuals on weak box x strong Euclidean ball."""
    coords=[A(x) for x in list(t)+list(y)];xx=[sum((p['O'][i][j]*coords[j] for j in range(5)),arb(0)) for i in range(5)]
    fv=[arb(0) for k in range(5)];gt=[[arb(0),arb(0)] for k in range(5)];gy=[[arb(0) for i in range(3)] for k in range(5)];gw=[[arb(0) for i in range(4)] for k in range(5)];er=[arb(0) for k in range(5)]
    hh=[A(x) for x in h];phase_factors=[]
    for term in p['terms']:
        phase=sum((a*b for a,b in zip(term['ell'],xx)),arb(0));co,si=phase.cos(),phase.sin();phase_factors.append((co,si));eo=term['eo']
        delta=sum((eo[i].abs_upper()*hh[i] for i in range(2)),arb(0))+rho*cnorm(eo[2:])
        for k in range(5):
            re,im=term['C0'][k];rnow=re*co-im*si;inow=re*si+im*co;fv[k]+=rnow/3
            for i in range(2):gt[k][i]-=inow*eo[i]/3
            for i in range(3):gy[k][i]-=inow*eo[i+2]/3
            for l in range(4):
                re,im=term['Cw'][k][l];gw[k][l]+=(re*si+im*co)/3
        for raw in term['raw']:
            alpha=delta+p['r']*raw['un'];be=raw['beta'];err=(be/3+(alpha+be)**2/6).upper()
            for k in range(5):er[k]+=raw['weights'][k]*err
    out=[]
    for k in range(5):
        rad=(sum((gt[k][i].abs_upper()*hh[i] for i in range(2)),arb(0))+rho*cnorm(gy[k])+p['r']*cnorm(gw[k])+er[k]).upper()
        out.append(fv[k]+arb(0,rad))
    if return_data:return dict(intervals=out,F0=fv,gt=gt,gy=gy,gw=gw,error=er,h=hh,rho=rho,phase_factors=phase_factors)
    return out

def parameter_separator(p,data,second_order=False):
    """Verified scalar separation from the same four-dimensional parameter ball.

    All numerical linear algebra only proposes multipliers. The final support
    inequality retains both strong-coordinate and parameter errors, including
    any failure of a proposed multiplier to cancel the strong derivative.
    """
    F0,gt,gy,gw,er=data['F0'],data['gt'],data['gy'],data['gw'],data['error']
    fn=np.array([float(x.mid()) for x in F0]);tn=floats(gt);yn=floats(gy);wn=floats(gw)
    hh=np.array([float(x) for x in data['h']]);rho=float(data['rho']);r=float(p['r']);en=np.array([float(x.upper()) for x in er])
    candidates=[]
    try:
        u,sv,vh=np.linalg.svd(yn,full_matrices=True);Z=u[:,3:]
        aa=Z.T@wn;bb=Z.T@fn;ap=np.linalg.pinv(aa,rcond=1e-12)
        candidates.extend([Z@(ap.T@(ap@bb)),Z@(bb-aa@(ap@bb)),Z[:,0],Z[:,1]])
        uw,sw,vhw=np.linalg.svd(wn,full_matrices=True);wp=np.linalg.pinv(wn,rcond=1e-12)
        candidates.extend([uw[:,4],fn-wn@(wp@fn),wp.T@(wp@fn)])
        # A cheap angular scan in the strong-null two-plane also proposes a
        # near-optimal support direction when the simple least-norm dual is weak.
        angles=np.arange(32)*math.pi/32
        scan=Z@np.stack([np.cos(angles),np.sin(angles)])
        margins=abs(scan.T@fn)-abs(scan.T@tn)@hh-rho*np.linalg.norm(scan.T@yn,axis=1)-r*np.linalg.norm(scan.T@wn,axis=1)-abs(scan.T)@en
        candidates.append(scan[:,int(np.argmax(margins))])
    except np.linalg.LinAlgError:return None
    for candidate in candidates:
        cn=np.linalg.norm(candidate)
        if not math.isfinite(cn) or cn<1e-15:continue
        lam=[A(float(x/cn)) for x in candidate]
        center=sum((lam[k]*F0[k] for k in range(5)),arb(0))
        lt=[sum((lam[k]*gt[k][j] for k in range(5)),arb(0)) for j in range(2)]
        ly=[sum((lam[k]*gy[k][j] for k in range(5)),arb(0)) for j in range(3)]
        lw=[sum((lam[k]*gw[k][j] for k in range(5)),arb(0)) for j in range(4)]
        err=sum((lam[k].abs_upper()*er[k] for k in range(5)),arb(0))
        linear=sum((lt[j].abs_upper()*data['h'][j] for j in range(2)),arb(0))+data['rho']*cnorm(ly)+p['r']*cnorm(lw)
        margin=(center.abs_lower()-linear-err).lower()
        if margin>0:return margin
        if second_order and center.abs_lower()>linear:
            error2=second_order_error(p,data,lam)
            margin=(center.abs_lower()-linear-error2).lower()
            if margin>0:return margin
    return None

def slab_q(p,t,h,y,min_t_squared):
    """Uniform strong derivative bound for t in its rectangle, ||y||<=Y.

    Both every source root and the chosen strong reference point are in this
    convex strong ball. Exact orthogonality gives the source radius bound.
    """
    leftover=(p['R']**2-min_t_squared).upper()
    if not leftover>=0:leftover=arb(0)
    Y=max(leftover.sqrt().upper(),cnorm(y)).upper()
    G=[[arb(0) for i in range(3)] for k in range(3)]
    T=[[arb(0) for j in range(3)] for ki in range(9)]
    Z=[[arb(0) for jm in range(9)] for ki in range(9)]
    M=[[arb(0) for i in range(3)] for k in range(3)]
    for term in p['terms']:
        weak=term['eo'][:2];v=term['eo'][2:]
        th=sum((weak[i]*A(t[i]) for i in range(2)),arb(0))+arb(0,sum((weak[i].abs_upper()*A(h[i]) for i in range(2)),arb(0)).upper())
        co,si=th.cos(),th.sin();vn3=cnorm(v)**3
        for k in range(3):
            cr,ci=term['CH'][k];re=cr*co-ci*si;im=cr*si+ci*co;mag=cnorm([re,im])
            for i in range(3):
                G[k][i]-=im*v[i]/3
                for j in range(3):
                    T[3*k+i][j]-=re*v[i]*v[j]/3
                    for l in range(3):Z[3*k+i][3*j+l]+=im*v[i]*v[j]*v[l]/6
                M[k][i]+=mag*v[i].abs_upper()*vn3/18
    E=[[arb(k==i)-G[k][i] for i in range(3)] for k in range(3)]
    q=(gram_bound(E)+Y*gram_bound(T)+Y*Y*gram_bound(Z)+Y**3*gram_bound(M)).upper()
    return q

def cover(p,cap_radius='0.06',max_nodes=100000,min_width=1e-7):
    start=time.monotonic();R=p['R'];capvec=[A(z) for z in cap_radius] if isinstance(cap_radius,(list,tuple)) else [A(cap_radius) for _ in p['roots']]
    if len(capvec)!=len(p['roots']) or any(not x.is_finite() or not x>0 for x in capvec):raise ValueError('one finite positive cap radius is required per candidate')
    rb=np.nextafter(float(R.upper()),math.inf)
    while not A(rb)>R:rb=np.nextafter(rb,math.inf)
    stack=[([-rb,-rb],[rb,rb],0)];stats=dict(nodes=0,splits=0,radial=0,residual=0,parameter_prunes=0,capture=0,failed_q=0,local_q_calls=0,max_depth=0);caps=[0]*len(p['roots']);min_res=None;max_rho=arb(0);leaves=[]
    while stack and stats['nodes']<max_nodes:
        lo,hi,depth=stack.pop();rd=None;rho=None;stats['nodes']+=1;stats['max_depth']=max(stats['max_depth'],depth)
        t=[(lo[i]+hi[i])/2 for i in range(2)];h=[max((A(lo[i])-A(t[i])).abs_upper(),(A(hi[i])-A(t[i])).abs_upper()).upper() for i in range(2)]
        mins=[0.0 if lo[i]<=0<=hi[i] else min(abs(lo[i]),abs(hi[i])) for i in range(2)]
        min_t_squared=sum((A(x)**2 for x in mins),arb(0))
        if min_t_squared>R**2:
            stats['radial']+=1;continue
        y=solve_y(p,t);yn=[A(float(z)) for z in y]
        top=[max(abs(lo[i]),abs(hi[i])) for i in range(2)];Rref=sum((A(z)**2 for z in top),arb(0))+sum((z*z for z in yn),arb(0));Rstar=max(R,Rref.sqrt().upper()).upper()
        q=sum((p['coeff'][k]*Rstar**k for k in range(4)),arb(0)).upper()
        if depth>=4 or not q<1:
            q=min(q,slab_q(p,t,h,yn,min_t_squared)).upper();stats['local_q_calls']+=1
        if q<1:
            g=residual(p,t,y,h,arb(0))[:3];rho=(cnorm(g)/(1-q)).upper()
            # This necessary envelope includes every full zero with weak coords in box.
            yn_lower=sum((z*z for z in yn),arb(0)).sqrt().lower();candidate_lower=(yn_lower-rho).lower();lower_y=candidate_lower if candidate_lower>0 else arb(0)
            if sum((A(x)**2 for x in mins),arb(0))+lower_y**2>R**2:
                stats['radial']+=1;continue
            rd=residual(p,t,y,h,rho,return_data=True);f=rd['intervals']
            if any(not z.contains(0) for z in f[3:]):
                stats['residual']+=1;continue
            margin=parameter_separator(p,rd,second_order=depth>=10)
            if margin is not None:
                stats['parameter_prunes']+=1;min_res=margin if min_res is None else min(min_res,margin);continue
            found=False
            for ri,root in enumerate(p['roots']):
                dist2=sum(((A(t[i])-root[i]).abs_upper()+A(h[i]))**2 for i in range(2))
                dist2+=(cnorm([yn[i]-root[2+i] for i in range(3)])+rho)**2
                if dist2<capvec[ri]**2:
                    stats['capture']+=1;caps[ri]+=1;found=True;max_rho=max(max_rho,rho).upper();break
            if found:continue
        else:stats['failed_q']+=1
        k=int(np.argmax([float(z) for z in h]))
        if h[k]<min_width:
            p['last_pending_debug']=dict(t=t,y=[float(z) for z in y],h=[z.str(radius=True,more=True) for z in h],q=q.str(radius=True,more=True),rho=None if rho is None else rho.str(radius=True,more=True),F0=None if rd is None else [z.str(radius=True,more=True) for z in rd['F0']],gy=None if rd is None else serial(rd['gy']),gw=None if rd is None else serial(rd['gw']))
            stack.append((lo,hi,depth));break
        cut=t[k];hi0=list(hi);hi0[k]=cut;lo1=list(lo);lo1[k]=cut
        stack.append((lo1,hi,depth+1));stack.append((lo,hi0,depth+1));stats['splits']+=1
    return dict(complete_coverage=not stack,status='PROVED COMPLETE COARSE CAP COVER' if not stack else 'NOT ESTABLISHED',scope='all full unbiasedness zeros in supplied column phase ball and whole supplied H cell',snapshot=p['snapshot'],column=p['ci'],cap_radii=[x.str(radius=True,more=True) for x in capvec],cap_centres_in_rotated_coordinates=[[x.str(radius=True,more=True) for x in root] for root in p['roots']],capture_counts=caps,q_source_upper=p['q_source'].str(radius=True,more=True),last_pending_debug=p.get('last_pending_debug'),stats=stats,minimum_parameter_separation=None if min_res is None else min_res.str(radius=True,more=True),pending=len(stack),max_capture_strong_radius=max_rho.str(radius=True,more=True),wall_seconds=time.monotonic()-start,strong_receipt=p['strong_receipt'])

def main():
    ap=argparse.ArgumentParser();ap.add_argument('snapshot');ap.add_argument('proposals');ap.add_argument('--columns',type=int,nargs='+',default=[1,5]);ap.add_argument('--cap-radius',default='0.06');ap.add_argument('--max-nodes',type=int,default=100000);ap.add_argument('--out',required=True);args=ap.parse_args()
    op=gzip.open if args.snapshot.endswith('.gz') else open;s=json.load(op(args.snapshot,'rt'));props=json.load(open(args.proposals));rows=[]
    for ci in args.columns:
        p=build(s,props,ci);rec=cover(p,args.cap_radius,args.max_nodes);rows.append(rec);print(ci,rec['status'],rec['stats'],rec['pending'],round(rec['wall_seconds'],2),flush=True)
    json.dump(dict(status='COARSE COLUMN COVER ONLY; use separately validated captures and incompatibility to exclude pattern',input_sha256=hashlib.sha256(open(args.snapshot,'rb').read()).hexdigest(),proposal_sha256=hashlib.sha256(open(args.proposals,'rb').read()).hexdigest(),checker_sha256={name:hashlib.sha256(open(os.path.join(os.path.dirname(__file__),name),'rb').read()).hexdigest() for name in ['fiber_cover.py','strong_contraction.py','numerical_scout.py','scalar_second_order.py']},rows=rows),open(args.out,'w'),indent=2)
if __name__=='__main__':main()
