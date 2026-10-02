"""Quadratic normal predictors and rigorously enclosed Gram equations.

All reference matrices vary with the two family parameters. The retained
predictor/preconditioner coefficients are exact binary64 dyadics. Acceptance
uses only outward intervals and rational inequalities.
"""
from interval import *
from itertools import combinations

class Chart:
 def __init__(self,H0,unknown,seed=((1,1),(1,2))):
  self.H0=H0;self.nr,self.nc=H0.shape;self.pairs=list(combinations(range(self.nr),2));self.unk=list(unknown);self.pd={p:k for k,p in enumerate(self.unk)};self.seed=list(seed);self.n=len(self.unk);self.m=2*len(self.pairs)
 def product(self,P,Q2,hu,hv):
  out={}
  for i,k in self.pairs:
   for j in range(self.nc):
    w=[P[i,j,l]-P[k,j,l] for l in range(2)];q=[Q2[i,j,l]-Q2[k,j,l] for l in range(3)]
    rad=abs(w[0])*hu+abs(w[1])*hv+abs(q[0])*hu**2/2+abs(q[1])*hu*hv+abs(q[2])*hv**2/2
    z=self.H0[i,j]*cj(self.H0[k,j])*cis(box(rad))
    du=v(w[0])+box(abs(q[0])*hu+abs(q[1])*hv);dv=v(w[1])+box(abs(q[1])*hu+abs(q[2])*hv)
    out[i,k,j]=(z,du,dv,*[v(x) for x in q])
  return out
 def jac(self,pr,positions=None,daxis=None):
  if positions is None:positions=self.unk
  pd={p:k for k,p in enumerate(positions)};O=zeros(self.m,len(positions))
  for r,(i,k) in enumerate(self.pairs):
   for j in range(1,self.nc):
    dat=pr[i,k,j];z=dat[0]*c(0,1) if daxis is None else -dat[0]*dat[1+daxis]
    if (i,j) in pd:O[2*r,pd[i,j]]=re(z);O[2*r+1,pd[i,j]]=im(z)
    if (k,j) in pd:O[2*r,pd[k,j]]=-re(z);O[2*r+1,pd[k,j]]=-im(z)
  return O
 def fder(self,pr):
  L=zeros(self.m,2);H=zeros(self.m,3);T=zeros(self.m,4);I=c(0,1)
  for r,(i,k) in enumerate(self.pairs):
   ll=[c(0)]*2;hh=[c(0)]*3;tt=[c(0)]*4
   for j in range(self.nc):
    z,u,w,uu,uw,ww=pr[i,k,j]
    ll[0]+=I*z*u;ll[1]+=I*z*w
    hh[0]+=z*(I*uu-u*u);hh[1]+=z*(I*uw-u*w);hh[2]+=z*(I*ww-w*w)
    tt[0]+=z*(-3*uu*u-I*u*u*u)
    tt[1]+=z*(-uu*w-2*uw*u-I*u*u*w)
    tt[2]+=z*(-ww*u-2*uw*w-I*u*w*w)
    tt[3]+=z*(-3*ww*w-I*w*w*w)
   for j in range(2):L[2*r,j]=re(ll[j]);L[2*r+1,j]=im(ll[j])
   for j in range(3):H[2*r,j]=re(hh[j]);H[2*r+1,j]=im(hh[j])
   for j in range(4):T[2*r,j]=re(tt[j]);T[2*r+1,j]=im(tt[j])
  return L,H,T
 def proposal(self):
  P=np.zeros((self.nr,self.nc,2),dtype=object);P[:]=Q(0)
  Q2=np.zeros((self.nr,self.nc,3),dtype=object);Q2[:]=Q(0)
  for k,(i,j) in enumerate(self.seed):P[i,j,k]=Q(1)
  pr=self.product(P,Q2,Q(0),Q(0));J0=self.jac(pr);L,H,T=self.fder(pr)
  Af=np.linalg.pinv(fm(J0));A=mat(Af);W=-fm(A@L)
  for n,(i,j) in enumerate(self.unk):
   for k in range(2):P[i,j,k]=Q(float(W[n,k]))
  pr=self.product(P,Q2,Q(0),Q(0));L,H,T=self.fder(pr);W2=-fm(A@H)
  for n,(i,j) in enumerate(self.unk):
   for k in range(3):Q2[i,j,k]=Q(float(W2[n,k]))
  return P,Q2,A
 def error_jac(self,rhos):
  radi=zeros(self.nr,self.nc)
  for n,(i,j) in enumerate(self.unk):radi[i,j]=v(rhos[n])
  dJ=zeros(self.m,self.n)
  for r,(i,k) in enumerate(self.pairs):
   for j in range(1,self.nc):
    er=radi[i,j]+radi[k,j]
    if (i,j) in self.pd:dJ[2*r,self.pd[i,j]]=er;dJ[2*r+1,self.pd[i,j]]=er
    if (k,j) in self.pd:dJ[2*r,self.pd[k,j]]=er;dJ[2*r+1,self.pd[k,j]]=er
  return dJ

class PhaseBase:
 def __init__(self,p,q,kind='N'):
  self.p=p;self.q=q;self.kind=kind
  self.om=2*iv.pi/3;self.x=2*iv.pi*(v(Q(1,6))+p-q);self.y=2*iv.pi*(v(Q(1,3))-q)
  z,w=cis(self.x),cis(self.y);S=1+z+w;T=1+cis(-self.om)*z+cis(self.om)*w
  if not (S.real.a>0 and T.real.a>0):raise ValueError('phase chart Arg needs positive real parts')
  self.sa=2*iv.atan2(S.imag,S.real);self.ta=2*iv.atan2(T.imag,T.real)
  nrows=6 if kind=='N' else 3
  self.coef=np.empty((nrows,6,5),dtype=object);self.coef[:]=Q(0)
  if kind=='N':
   rowinfo=[(0,False),(1,False),(0,True),(2,False),(1,True),(2,True)]
   for i,(r,bottom) in enumerate(rowinfo):
    for j in range(6):
     k=j%3;vec=self.coef[i,j];vec[0]=Q(2*r*k,3)
     if bottom:
      if j>=3:vec[0]+=1
      if k==1:vec[0]+=Q(1,3);vec[1]+=1;vec[2]-=1
      if k==2:vec[0]+=Q(2,3);vec[2]-=1
  elif kind=='A':
   self.coef[1,1,0]=Q(2,3);self.coef[1,2,0]=Q(4,3)
   self.coef[2,1,:]=[Q(1,3),Q(1),Q(-1),Q(0),Q(0)]
   self.coef[2,2,:]=[Q(2,3),Q(0),Q(-1),Q(0),Q(0)]
   for j in range(3,6):self.coef[1,j,:]=[Q(2*(j-3),3),Q(0),Q(0),Q(1),Q(-1)]
   self.coef[2,3,:]=[Q(1),Q(0),Q(0),Q(1),Q(0)]
   self.coef[2,4,:]=[Q(1,3),Q(0),Q(1),Q(1),Q(0)]
   self.coef[2,5,:]=[Q(2,3),Q(-1),Q(1),Q(1),Q(0)]
  else:raise ValueError('kind')
  self.H=np.array([[self.monomial([(i,j,1)]) for j in range(6)] for i in range(nrows)],dtype=object)
 def monomial(self,terms):
  vec=[sum((power*self.coef[i,j,k] for i,j,power in terms),Q(0)) for k in range(5)]
  # Reduction modulo 2pi before evaluation is an exact integer operation.
  vec[0]%=2
  theta=iv.pi*v(vec[0])+2*iv.pi*(self.p*v(vec[1])+self.q*v(vec[2]))+self.sa*v(vec[3])+self.ta*v(vec[4])
  return cis(theta)

class TightChart(Chart):
 def __init__(self,base,unknown):
  self.base=base
  super().__init__(base.H,unknown)
 def product(self,P,Q2,hu,hv):
  out={}
  for i,k in self.pairs:
   for j in range(self.nc):
    w=[P[i,j,l]-P[k,j,l] for l in range(2)];q=[Q2[i,j,l]-Q2[k,j,l] for l in range(3)]
    rad=abs(w[0])*hu+abs(w[1])*hv+abs(q[0])*hu**2/2+abs(q[1])*hu*hv+abs(q[2])*hv**2/2
    z=self.base.monomial([(i,j,1),(k,j,-1)])*cis(box(rad))
    du=v(w[0])+box(abs(q[0])*hu+abs(q[1])*hv);dv=v(w[1])+box(abs(q[1])*hu+abs(q[2])*hv)
    out[i,k,j]=(z,du,dv,*[v(x) for x in q])
  return out

def chart_enclosures(chart, hu, hv, P, Q2, A):
    """Outward preconditioned Taylor residual and predictor-Jacobian bound."""
    pr0 = chart.product(P, Q2, Q(0), Q(0))
    pr = chart.product(P, Q2, hu, hv)
    J0 = chart.jac(pr0)
    L, H, _ = chart.fder(pr0)
    _, _, T = chart.fder(pr)
    L, H, T = A @ L, A @ H, A @ T
    eta = zeros(chart.n, 1)
    monomials = [
        (L, [hu, hv]),
        (H, [hu**2/2, hu*hv, hv**2/2]),
        (T, [hu**3/6, hu**2*hv/2, hu*hv**2/2, hv**3/6]),
    ]
    for M, coefficients in monomials:
        Mabs = am(M)
        for k, coefficient in enumerate(coefficients):
            eta[:, 0] += Mabs[:, k] * v(coefficient)
    Kt = (am(eye(chart.n) - A @ J0)
          + am(A @ chart.jac(pr, daxis=0)) * v(hu)
          + am(A @ chart.jac(pr, daxis=1)) * v(hv))
    Kdirect = am(eye(chart.n) - A @ chart.jac(pr))
    Kpred = zeros(chart.n, chart.n)
    for i, j in np.ndindex(Kpred.shape):
        Kpred[i, j] = min(Kt[i, j].b, Kdirect[i, j].b)
    return upper_points(eta), Kpred


def correction_test(chart, eta, Kpred, A, radii):
    """Weighted-box contraction. Each accepted comparison is outward."""
    require(len(radii) == chart.n and all(r > 0 for r in radii),
            'strictly positive correction radii required')
    K = upper_points(Kpred + am(A) @ chart.error_jac(radii))
    Kr = upper_points(K @ mat(np.array(radii, dtype=object)[:, None]))
    S = upper_points(eta + Kr)
    combined = max((S[i, 0] / v(radii[i])).b for i in range(chart.n))
    contraction = max((Kr[i, 0] / v(radii[i])).b for i in range(chart.n))
    ok = all(S[i, 0].b < v(radii[i]) for i in range(chart.n))
    return ok, K, combined, contraction, S


def phase_majorant(chart, P, Q2, radii, hu, hv):
    """Exact rational phase bounds. Family-parameter widths do not appear."""
    M = np.empty((chart.nr, chart.nc), dtype=object)
    M[:] = Q(0)
    M[1, 1], M[1, 2] = hu, hv
    for n, (i, j) in enumerate(chart.unk):
        M[i, j] = (abs(P[i, j, 0])*hu + abs(P[i, j, 1])*hv
                   + abs(Q2[i, j, 0])*hu**2/2
                   + abs(Q2[i, j, 1])*hu*hv
                   + abs(Q2[i, j, 2])*hv**2/2 + radii[n])
    return M


def phase_matrix_tests(M, phase_cap, vector_cap):
    """Exact comparisons; the vector cap applies to rows AND columns."""
    require(all(x <= phase_cap for x in M.flat), 'matrix-phase cap exceeded')
    row_squares = [sum((x*x for x in row), Q(0))/6 for row in M]
    col_squares = [sum((x*x for x in row), Q(0))/6 for row in M.T]
    squared = max(row_squares + col_squares)
    require(squared <= vector_cap**2, 'row/column vector cap exceeded')
    return max(M.flat), squared


def make_charts(p_lo, p_hi, q_lo, q_hi):
    p, q = span(p_lo, p_hi), span(q_lo, q_hi)
    bf = PhaseBase(p, q, 'N')
    ba = PhaseBase(p, q, 'A')
    unknown_f = [(i, j) for i in range(1, 6) for j in range(1, 6)
                 if (i, j) not in [(1, 1), (1, 2), (2, 1), (2, 2)]]
    unknown_a = [(i, j) for j in range(3, 6) for i in (1, 2)]
    return TightChart(bf, unknown_f), TightChart(ba, unknown_a)


def decode_proposal(chart, arrays):
    """Decode retained IEEE-754 data as exact dyadics, never as error bars."""
    required = {'inverse': (chart.n, chart.m), 'linear': (chart.n, 2),
                'quadratic': (chart.n, 3), 'radii': (chart.n,)}
    for name, shape in required.items():
        require(name in arrays, 'missing proposal array: '+name)
        x = np.asarray(arrays[name])
        require(x.shape == shape and x.dtype == np.dtype('float64'),
                'invalid proposal shape or dtype: '+name)
        require(np.isfinite(x).all(), 'nonfinite proposal coefficient')
    P = np.empty((chart.nr, chart.nc, 2), dtype=object); P[:] = Q(0)
    Q2 = np.empty((chart.nr, chart.nc, 3), dtype=object); Q2[:] = Q(0)
    for k, (i, j) in enumerate(chart.seed):
        P[i, j, k] = Q(1)
    for n, (i, j) in enumerate(chart.unk):
        for k in range(2): P[i, j, k] = Q(float(arrays['linear'][n, k]))
        for k in range(3): Q2[i, j, k] = Q(float(arrays['quadratic'][n, k]))
    A = mat(arrays['inverse'])
    radii = [Q(float(x)) for x in arrays['radii']]
    return P, Q2, A, radii


def encode_proposal(chart, P, Q2, A, radii):
    out = dict(inverse=fm(A).astype('float64'),
               linear=np.array([[float(P[i,j,k]) for k in range(2)]
                                for i,j in chart.unk], dtype='float64'),
               quadratic=np.array([[float(Q2[i,j,k]) for k in range(3)]
                                   for i,j in chart.unk], dtype='float64'),
               radii=np.array([float(x) for x in radii], dtype='float64'))
    # Encoding must not alter the accepted rational coefficients.
    PP, QQ, AA, rr = decode_proposal(chart, out)
    require(all(PP[i,j,k] == P[i,j,k] for i,j in chart.unk for k in range(2)),
            'linear coefficient changed during encoding')
    require(all(QQ[i,j,k] == Q2[i,j,k] for i,j in chart.unk for k in range(3)),
            'quadratic coefficient changed during encoding')
    require(rr == list(radii), 'correction radius changed during encoding')
    require(all(AA[i,j] == A[i,j] for i,j in np.ndindex(A.shape)),
            'preconditioner changed during encoding')
    return out
