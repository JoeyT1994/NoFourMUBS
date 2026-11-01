"""Conditional contraction of all six K columns at once, at fixed native H.

The numerical inverse is a proposal. Every residual, inverse defect and
Taylor remainder is retained in Arb; each iterate encloses already-covered
zeros. This supplies only v0/T/epsilon/phase-radius data to final tests.
"""
import numpy as np
from flint import arb,arb_mat,acb
import native_columns as C
import moving_symmetry as MS

def sub(m,rows,cols):return arb_mat([[m[i,j] for j in cols] for i in rows])

def build(model,prepared,clique):
 p6=C.project6();pk=arb_mat([[p6[a,b] if c==d else 0 for b in range(6) for d in range(6)] for a in range(6) for c in range(6)])
 q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+[[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
 j=MS.jacobian(q);jh=sub(j,range(96),range(36));jk=sub(j,range(96),range(36,72))
 pre=pk*C.Z.mat(np.linalg.pinv(MS.numeric(jk*pk)))
 t=pk*(-pre*jh*model['U']).mid()
 lift=arb_mat([[model['U'][i,k] for k in range(4)] for i in range(36)]+[[t[i,k] for k in range(4)] for i in range(36)])
 angles=MS.LMAT*q;f=arb_mat(96,1);coeff=arb_mat(36,len(MS.TERMS))
 for zt,(re,im,den,ell) in enumerate(MS.TERMS):
  z=acb(0,angles[zt,0]).exp()/den;f[re,0]+=z.real
  if im is not None:f[im,0]+=z.imag
  for o in range(36):coeff[o,zt]=-(pre[o,re]*z.real+(pre[o,im]*z.imag if im is not None else 0))
 constant=pre*f;lin=pre*j*lift;defect=pk-pre*jk*pk;hh=pre*jh*model['H2'];hx=pre*jh*model['X']
 norms=[]
 for o in range(36):
  hes=MS.LMAT.transpose()*arb_mat([[coeff[o,zt]*MS.LMAT[zt,k] for k in range(72)] for zt in range(len(MS.TERMS))])
  hk=sub(hes,range(72),range(36,72))*pk;hH=sub(hes,range(72),range(36))
  ww=lift.transpose()*hes*lift+arb_mat([[hh[o,4*a+b] for b in range(4)] for a in range(4)])
  norms.append([C.Z.spectral(x) for x in (ww,lift.transpose()*hk,pk*sub(hes,range(36,72),range(36,72))*pk,lift.transpose()*hH,pk*sub(hes,range(36,72),range(36)),sub(hes,range(36),range(36)))])
 uc=[p6*sub(model['U'],range(c,36,6),range(4)) for c in range(6)]
 tc=[sub(t,range(c,36,6),range(4)) for c in range(6)]
 nc=[C.Z.spectral(p6*sub(model['H2'],range(c,36,6),range(16)))*model['r']**2/2+C.Z.spectral(p6*sub(model['X'],range(c,36,6),range(21)))*model['tau'] for c in range(6)]
 return dict(pre=pre,t=t,tc=tc,uc=uc,nc=nc,constant=constant,lin=lin,defect=defect,hx=hx,norms=norms,model=model,nh=C.Z.spectral(model['H2'])*model['r']**2/2+C.Z.spectral(model['X'])*model['tau'])

def refine(model,prepared,bounds,clique):
 data=build(model,prepared,clique);r=model['r'];tau=model['tau'];nh=data['nh'];pre=data['pre']
 es=[min((bounds[c]['epsilon']+C.Z.spectral(data['tc'][col]-prepared[c]['T'])*r).upper(),(bounds[c]['phase_radius']+C.Z.spectral(data['tc'][col])*r).upper()) for col,c in enumerate(clique)]
 hd=[C.Z.spectral(data['uc'][b]-data['uc'][a])*r+data['nc'][a]+data['nc'][b] for a,b in C.PAIRS]
 kd0=[C.Z.spectral(data['tc'][b]-data['tc'][a])*r for a,b in C.PAIRS]
 md0=[[C.Z.spectral(data['tc'][b]-data['uc'][a])*r+data['nc'][a] for b in range(6)] for a in range(6)]
 trace=[]
 for step in range(40):
  ne=C.norm(es);kd=[min((kd0[z]+es[a]+es[b]).upper(),(bounds[clique[a]]['phase_radius']+bounds[clique[b]]['phase_radius']).upper()) for z,(a,b) in enumerate(C.PAIRS)]
  md=[[min((md0[a][b]+es[b]).upper(),(C.Z.spectral(data['uc'][a])*r+data['nc'][a]+bounds[clique[b]]['phase_radius']).upper()) for b in range(6)] for a in range(6)]
  rows=[]
  for o in range(36):
   ww,we,ee,lh,kh,hh=data['norms'][o]
   v=abs(data['constant'][o,0])+C.rownorm(data['lin'],o)*r+C.rownorm(data['defect'],o)*ne+C.rownorm(data['hx'],o)*tau
   v+=ww*r*r/2+we*r*ne+ee*ne*ne/2+lh*r*nh+kh*ne*nh+hh*nh*nh/2
   for z in range(15):
    v+=(pre[o,z]**2+pre[o,15+z]**2).sqrt()*hd[z]**3/6
    v+=(pre[o,30+z]**2+pre[o,45+z]**2).sqrt()*kd[z]**3/6
   v+=sum((abs(pre[o,60+6*a+b])*arb(2).sqrt()/3*md[a][b]**3 for a in range(6) for b in range(6)),arb(0))
   rows.append(v)
  proposed=[arb(C.Z.upper(C.norm(rows[c::6]))) for c in range(6)]
  trace.append([str(v) for v in es])
  if all(not proposed[c]<es[c] for c in range(6)):break
  es=[min(es[c],proposed[c]) for c in range(6)]
 pp=dict(prepared);bb=dict(bounds)
 for col,c in enumerate(clique):
  pp[c]=dict(model=model,v0=prepared[c]['v0'],T=data['tc'][col],Tnorm=C.Z.spectral(data['tc'][col]))
  bb[c]=dict(bounds[c]);bb[c]['epsilon']=es[col];bb[c]['phase_radius']=min(bounds[c]['phase_radius'].upper(),(es[col]+pp[c]['Tnorm']*r).upper())
 return pp,bb,dict(iterations=len(trace),initial_errors=trace[0],final_errors=[str(v) for v in es],inverse_defect=str(C.Z.spectral(data['defect'])))
