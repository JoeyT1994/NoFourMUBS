"""Conditional column enclosures using orthogonality to already bounded rays.

All reference-column bounds are conditional on the current color pattern.
Every residual, inverse defect, and carrier mismatch is retained in Arb.
"""
import itertools
import numpy as np
from flint import arb,arb_mat,acb
import native_columns as C


def build(target, references, reference_bounds):
    model=target['model'];r=model['r'];p6=C.project6()
    columns=[target,*references];nr=len(references);n=42+6*nr;neq=6+2*nr
    phase=arb_mat([[model['Q0'][i,0]] for i in range(36)]+
                  [[p['v0'][i,0]] for p in columns for i in range(6)])
    terms=[]
    for c in range(6):
        for a,b in C.PAIRS:
            ell=[0]*n
            for j,s in ((36+a,1),(36+b,-1),(6*a+c,-1),(6*b+c,1)):ell[j]+=s
            terms.append((c,None,3,ell))
    for k in range(nr):
        for a in range(6):
            ell=[0]*n;ell[36+a]=1;ell[42+6*k+a]=-1
            terms.append((6+2*k,7+2*k,1,ell))
    f=arb_mat(neq,1);j=arb_mat(neq,n);zs=[]
    for re,im,den,ell in terms:
        z=acb(0,sum((ell[a]*phase[a,0] for a in range(n)),arb(0))).exp()/den
        zs.append(z);f[re,0]+=z.real
        if im is not None:f[im,0]+=z.imag
        for a in range(n):
            if ell[a]:
                j[re,a]-=ell[a]*z.imag
                if im is not None:j[im,a]+=ell[a]*z.real
    jt=arb_mat([[j[i,36+a] for a in range(6)] for i in range(neq)])
    pre=p6*C.Z.mat(np.linalg.pinv(C.Z.mid_np(jt)))
    # Carrier chosen using all known first-order reference correlations.
    lift=arb_mat([[model['U'][i,k] for k in range(4)] for i in range(36)]+
                 [[0]*4 for _ in range(6)]+
                 [[ref['T'][i,k] for k in range(4)] for ref in references for i in range(6)])
    t=-p6*(pre*j*lift).mid()
    for i in range(6):
        for k in range(4):lift[36+i,k]=t[i,k]
    plain=arb_mat(lift)
    for i in range(6):
        for k in range(4):plain[36+i,k]=0
    blocks=[lift]
    for k in range(nr+1):
        block=arb_mat(n,6)
        for i in range(6):
            for a in range(6):block[36+6*k+i,a]=p6[i,a]
        blocks.append(block)
    coeff=[]
    for ti,(re,im,den,ell) in enumerate(terms):
        z=zs[ti]
        coeff.append([-(pre[o,re]*z.real+(pre[o,im]*z.imag if im is not None else 0)) for o in range(6)])
    frequencies=arb_mat([term[3] for term in terms]);freq=[frequencies*b for b in blocks]
    plainfreq=frequencies*plain
    jh=arb_mat([[j[i,k] for k in range(36)] for i in range(neq)])
    hh=pre*jh*model['H2'];hx=pre*jh*model['X']
    quadratic=[];plain_quadratic=[]
    for out in range(6):
        tables=[]
        for ff in (freq,[plainfreq,*freq[1:]]):
            table={}
            for a in range(len(blocks)):
                for b in range(a,len(blocks)):
                    weighted=arb_mat([[coeff[ti][out]*ff[a][ti,k] for ti in range(len(terms))] for k in range(ff[a].ncols())])
                    mat=weighted*ff[b]
                    if a==b==0:
                        mat+=arb_mat([[hh[out,4*i+k] for k in range(4)] for i in range(4)])
                    table[a,b]=C.Z.spectral(mat)
            tables.append(table)
        quadratic.append(tables[0]);plain_quadratic.append(tables[1])
    jref=[pre*arb_mat([[j[i,42+6*k+a] for a in range(6)] for i in range(neq)])*p6 for k in range(nr)]
    diffh=[];uh=[];nh=[]
    for c in range(6):
        uc=p6*arb_mat([[model['U'][6*a+c,k] for k in range(4)] for a in range(6)])
        hc=p6*arb_mat([[model['H2'][6*a+c,k] for k in range(16)] for a in range(6)])
        xc=p6*arb_mat([[model['X'][6*a+c,k] for k in range(model['X'].ncols())] for a in range(6)])
        diffh.append(C.Z.spectral(t-uc));uh.append(C.Z.spectral(uc))
        nh.append(C.Z.spectral(hc)*r*r/2+C.Z.spectral(xc)*model['tau'])
    return dict(model=model,v0=target['v0'],T=t,Tnorm=C.Z.spectral(t),pre=pre,
        constant=pre*f,linear=pre*j*lift,defect=p6-pre*jt*p6,HX=hx,
        quadratic=quadratic,plain_quadratic=plain_quadratic,jref=jref,
        references=references,reference_bounds=reference_bounds,
        dh=diffh,uh=uh,nh=nh,dk=[C.Z.spectral(t-ref['T']) for ref in references])


def improve(p,epsilon,phase_radius):
    model=p['model'];r=model['r'];rb=p['reference_bounds']
    sizes=[r,epsilon,*[b['epsilon'] for b in rb]]
    plainsizes=[r,phase_radius,*[b['epsilon'] for b in rb]]
    tailh=[]
    for d,u,n in zip(p['dh'],p['uh'],p['nh']):
        a=min((d*r+epsilon).upper(),(u*r+phase_radius).upper())
        tailh.append(2*a*n+n*n+arb(2).sqrt()/3*(a+n)**3)
    tailk=[]
    for d,b in zip(p['dk'],rb):
        a=min((d*r+epsilon+b['epsilon']).upper(),(phase_radius+b['phase_radius']).upper())
        tailk.append(a**3/6)
    out=[]
    for o in range(6):
        total=abs(p['constant'][o,0])+C.rownorm(p['linear'],o)*r
        total+=C.rownorm(p['defect'],o)*epsilon+C.rownorm(p['HX'],o)*model['tau']
        total+=sum((C.rownorm(j,o)*b['epsilon'] for j,b in zip(p['jref'],rb)),arb(0))
        qs=[]
        for table,ss in ((p['quadratic'][o],sizes),(p['plain_quadratic'][o],plainsizes)):
            qs.append(sum((value*ss[a]*ss[b]/(2 if a==b else 1) for (a,b),value in table.items()),arb(0)))
        total+=min(qs[0].upper(),qs[1].upper())
        total+=sum((abs(p['pre'][o,c])*tailh[c] for c in range(6)),arb(0))
        total+=sum(((p['pre'][o,6+2*k]**2+p['pre'][o,7+2*k]**2).sqrt()*tailk[k] for k in range(len(rb))),arb(0))
        out.append(total)
    return C.norm(out)


def contract(p,old,old_bound,iterations=40):
    r=p['model']['r'];phase=old_bound['phase_radius']
    epsilon=min((phase+p['Tnorm']*r).upper(),
                (old_bound['epsilon']+C.Z.spectral(p['T']-old['T'])*r).upper())
    trace=[str(epsilon)]
    for _ in range(iterations):
        proposed=arb(C.Z.upper(improve(p,epsilon,phase)))
        if not proposed<epsilon:break
        epsilon=proposed;phase=min(phase.upper(),(p['Tnorm']*r+epsilon).upper());trace.append(str(epsilon))
    return dict(epsilon=epsilon,phase_radius=phase,initial_radius=old_bound['initial_radius'],trace=trace)


def refine_pattern(prepared,bounds,clique,reference_count=2):
    pp=dict(prepared);bb=dict(bounds)
    best=sorted(clique,key=lambda c:float(bb[c]['epsilon']))[:reference_count]
    for c in clique:
        refs=[v for v in best if v!=c]
        if not refs:continue
        p=build(pp[c],[pp[v] for v in refs],[bb[v] for v in refs])
        b=contract(p,pp[c],bb[c])
        # Different carriers cannot be compared by epsilon alone. Either
        # candidate is a valid enclosure; use the smaller total phase bound.
        if b['phase_radius']<bb[c]['phase_radius'] or b['epsilon']<bb[c]['epsilon']:
            pp[c]=p;bb[c]=b
    for a,b in itertools.combinations(clique,2):
        if not C.orthogonal_possible(pp[a],bb[a]['epsilon'],pp[b],bb[b]['epsilon']):
            return pp,bb,False
    return pp,bb,True
