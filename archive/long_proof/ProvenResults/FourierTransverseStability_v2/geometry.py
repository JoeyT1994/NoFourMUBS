"""Seed-only outward applicability; no physical matrix is reconstructed.

Positive R is a hypothesis at each physical seed. A guarded box may cross
R=0: the predicate concerns its entire R>0 subset and does not certify R=0.
Call verify.py before using the retained theorem as a terminal.
"""
from interval import *
from fastmm import lib,endpoints,to_float,round_floor,round_ceiling,from_float
from itertools import permutations,product
from pathlib import Path
import ctypes,json,functools
HERE=Path(__file__).resolve().parent
DOMAIN=(Q(-1,128),Q(3,64),Q(-1,64),Q(3,128));HU=Q(1,10);HW=Q(5,32);TUBE=Q(1,36)
CELLS=[(0,0),(2,0),(3,0),(3,1),(5,0)]
EXPONENTS=[(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3)]

def frames():
 entry=[[[0]*4 for _ in range(3)] for _ in range(3)]
 for k,(i,j) in enumerate(product((1,2),repeat=2)):entry[i][j][k]=1
 for rows,cols,tr,sign in product(permutations(range(3)),permutations(range(3)),(False,True),(1,-1)):
  M=[]
  for i,j in product((1,2),repeat=2):
   ii,jj=(j,i) if tr else (i,j)
   M.append([sign*(entry[rows[ii]][cols[jj]][k]+entry[rows[0]][cols[0]][k]-entry[rows[ii]][cols[0]][k]-entry[rows[0]][cols[jj]][k]) for k in range(4)])
  yield dict(rows=list(rows),columns=list(cols),transpose=tr,conjugate=(sign==-1),matrix=M)
FRAMES=list(frames());MATRICES=np.array([f['matrix'] for f in FRAMES],dtype=float)

@functools.lru_cache(None)
def majorants():return json.loads((HERE/'data'/'majorants.json').read_text())

def exact_number(x):
 if isinstance(x,bool):raise ValueError('boolean coordinate')
 if isinstance(x,np.generic):x=x.item()
 if isinstance(x,(int,Q)):return Q(x)
 if isinstance(x,float) and math.isfinite(x):return Q(x)
 raise ValueError('a finite binary64, integer or Fraction is required')

def standard_guard():
 """Exact dyadic upper enclosure of pi/8192+2^-40, in radians."""
 return as_rational((iv.pi/8192+v(Q(1,2**40))).b)

def native_R(z):
 zr=np.array([[re(x) for x in z]],dtype=object);zi=np.array([[im(x) for x in z]],dtype=object)
 lo=np.empty((1,5));hi=np.empty((1,5));arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS')
 fn=lib().seed_invariants;fn.argtypes=[arr]*6;fn.restype=ctypes.c_int
 st=fn(*endpoints(zr),*endpoints(zi),lo,hi);require(st==0,'seed invariant rejected '+str(st))
 return [span(Q(float(a)),Q(float(b))) for a,b in zip(lo[0],hi[0])]

def r_enclosure(cc,hh):
 """Centered mean value bound with all four phase derivatives enclosed."""
 require(len(cc)==len(hh)==4 and all(h>=0 for h in hh),'seed box shape')
 center=[cis(v(x)) for x in cc];whole=[cis(v(x)+box(h)) for x,h in zip(cc,hh)]
 r0=native_R(center)[0];direct=native_R(whole);rad=sum((v(h)*mag(g) for h,g in zip(hh,direct[1:])),v(0))
 mean=r0+box(rad)
 return span(max(direct[0].a,mean.a),min(direct[0].b,mean.b))

def root_positive(tau,cosq):
 """Enclose the unique t in [0,3/8] solving f(t)=tau.

 f'(t)>19 is separately verified on the full domain. Binary64 Newton
 proposes a point only; the returned interval uses an outward residual.
 """
 require(tau.a>=0 and cosq.a>=v(Q(97,100)).b and cosq.b<=1,'root scalar domain')
 hi=v(Q(3,8));fh=12*iv.sin(hi)*(iv.cos(hi)+cosq)
 require(fh.a>=tau.b,'root not bracketed')
 tf=float(mid(tau))/(12*(1+float(mid(cosq))));cc=float(mid(cosq));tt=float(mid(tau))
 for _ in range(6):
  tf=max(0.,min(3/8,tf));den=12*(math.cos(2*tf)+cc*math.cos(tf));tf-=(12*math.sin(tf)*(math.cos(tf)+cc)-tt)/den
 tf=max(0.,min(3/8,tf));x=v(Q(tf));res=12*iv.sin(x)*(iv.cos(x)+cosq)-tau;err=mag(res)/19
 return span(max(v(0),x.a-err),min(hi,x.b+err))

def root_interval(R,q):
 lo=max(v(0),R.a);hi=R.b;require(hi>0,'no positive R in box')
 tau=span(iv.sqrt(lo).a,iv.sqrt(hi).b);C=iv.cos(3*iv.pi*q)
 tl=root_positive(tau.a,C.b);th=root_positive(tau.b,C.a)
 return span(tl.a,th.b)

def affine_box(cc,hh,weights):
 return sum((v(m)*v(x) for m,x in zip(weights,cc)),v(0))+box(sum((v(abs(m))*v(h) for m,h in zip(weights,hh)),v(0)))

def coordinates(cc,hh,fi):
 M=FRAMES[fi]['matrix'];tc=[sum((m*float(x) for m,x in zip(row,cc)),0.) for row in M]
 # Integer lifts are proposals; any chosen lift is mathematically valid.
 ku=round((tc[0]-2*math.pi/3)/(2*math.pi));kv=round((tc[1]-4*math.pi/3)/(2*math.pi))
 kp=round(1/6+(tc[2]-tc[3])/(2*math.pi));kq=round(1/3-tc[3]/(2*math.pi))
 u=affine_box(cc,hh,M[0])-2*iv.pi*(v(Q(1,3))+ku)
 bphase=affine_box(cc,hh,M[1])-2*iv.pi*(v(Q(2,3))+kv)
 p=v(Q(1,6))+affine_box(cc,hh,[M[2][k]-M[3][k] for k in range(4)])/(2*iv.pi)-kp
 q=v(Q(1,3))-affine_box(cc,hh,M[3])/(2*iv.pi)-kq
 S=affine_box(cc,hh,[Q(M[2][k])-Q(M[3][k],2) for k in range(4)])+iv.pi*(kq-2*kp)
 return u,bphase,p,q,S,[ku,kv,kp,kq]

def poly_interval(coeff,U,W):
 return sum((span(Q(c0),Q(c1))*U**a*W**b for (c0,c1),(a,b) in zip(coeff,EXPONENTS)),v(0))

def family_cost(p,q,cell):
 a,b=cell;pl,ph=v(Q(a,180)),v(Q(a+1,180));ql,qh=v(Q(b,180)),v(Q(b+1,180))
 def residual(x,lo,hi):return span(min(v(0),x.a-lo),max(v(0),x.b-hi))
 dp=residual(p,pl,ph);dq=residual(q,ql,qh)
 maximum=max((x*x-x*y+y*y).b for x in [dp.a,dp.b] for y in [dq.a,dq.b])
 return (v(Q(3,2))*iv.sqrt(max(v(0),maximum))).b

def frame_branch_test(cc,hh,R,fi,sign,coords=None):
 fr=FRAMES[fi];u,vv,p,q,S,shifts=coordinates(cc,hh,fi) if coords is None else coords
 if not(mag(u)<=v(HU) and mag(vv)<=v(Q(1,16)) and q.a>=v(DOMAIN[2]) and q.b<=v(DOMAIN[3])):return None
 try:t=root_interval(R,q)
 except ValueError:return None
 # Q(B) changes sign under conjugation and under matched transposition.
 sign_in_frame=sign*(-1 if fr['conjugate']^fr['transpose'] else 1)
 if sign_in_frame>0:t=-t # Q_F = -f(t)/8
 P=(q+t/iv.pi)/2;w=S-t
 if not(P.a>=v(DOMAIN[0]) and P.b<=v(DOMAIN[1]) and mag(w)<=v(HW)):return None
 data=majorants();U=mag(u);W=mag(w);lam=max((U/v(HU)).b,(W/v(HW)).b)
 d=sum((v(Q(c))*U**a*W**b for c,(a,b) in zip(data['row_coefficients'],EXPONENTS)),v(0))+lam*v(Q(data['error_row']))
 if not(d.b<v(TUBE).a):return None
 # Exact family phase projection, with the dominant correlation preserved.
 alpha=[row[:] for row in data['alpha_coefficients']];alpha[0]=[str(Q(x)+Q(1,4)) for x in alpha[0]];alpha[1]=[str(Q(x)-Q(1,2)) for x in alpha[1]]
 delta=poly_interval(alpha,u,w);beta=poly_interval(data['beta_coefficients'],u,w)
 pt=(P+p)/2-u/(8*iv.pi)+delta/(2*iv.pi);qt=q+beta/(2*iv.pi)
 costs=[family_cost(pt,qt,cell) for cell in CELLS];chosen=min(range(len(CELLS)),key=lambda k:float(costs[k]))
 total=d+costs[chosen]
 if not(total.b<v(TUBE).a):return None
 entry=sum((v(Q(c))*U**a*W**b for c,(a,b) in zip(data['entry_coefficients'],EXPONENTS)),v(0))+lam*v(Q(data['error_entry']))
 return dict(original_side_Q_sign=sign,frame_index=fi,periodic_shifts=shifts,u=bounds_text(u),v=bounds_text(vv),original_p=bounds_text(p),q=bounds_text(q),signed_root_t=bounds_text(t),reference_P=bounds_text(P),normal_w=bounds_text(w),moving_reference_p=bounds_text(pt),moving_reference_q=bounds_text(qt),entry_phase_radians_upper=str(as_rational(entry.b)),row_projector_distance_to_moving_reference_upper=str(as_rational(d.b)),family_projector_distance_upper=str(as_rational(costs[chosen])),total_projector_distance_upper=str(as_rational(total.b)),direct_Fourier_cell=[180,*CELLS[chosen]],projector_tube_radius=str(TUBE))

def proposal_order(cc,hh):
 """Floating ordering/filtering can only lose certificates, never accept."""
 theta=MATRICES@np.array(list(map(float,cc)));rad=np.abs(MATRICES)@np.array(list(map(float,hh)))
 u=(theta[:,0]-2*np.pi/3+np.pi)%(2*np.pi)-np.pi;v0=(theta[:,1]-4*np.pi/3+np.pi)%(2*np.pi)-np.pi
 p=(1/6+(theta[:,2]-theta[:,3])/(2*np.pi)+.5)%1-.5;q=(1/3-theta[:,3]/(2*np.pi)+.5)%1-.5
 # Generous proposal-only filters. All accepted inequalities are redone above.
 ids=np.flatnonzero((abs(u)<.101)&(abs(v0)<.064)&(q>-.017)&(q<.025)&(abs(p)<.09))
 return list(map(int,ids[np.argsort(abs(u[ids])+2*abs(q[ids]))]))

def contains_box(centers,halfwidths,frame_indices=None):
 """Whole guarded-box implication for every physical completion with R>0.

 Rejecting is inconclusive. Accepting covers both matched sheets plus both
 nonmatched pairings (the latter excluded by the Tao invariant R=243).
 No all-400 maximality assumption is needed. The zero-R slice is excluded
 from the theorem, not asserted empty.
 """
 require(len(centers)==len(halfwidths)==4,'four phases/half-widths required')
 cc=list(map(exact_number,centers));hh=list(map(exact_number,halfwidths));require(all(h>=0 for h in hh),'nonnegative widths required')
 ids=proposal_order(cc,hh) if frame_indices is None else list(frame_indices)
 require(all(isinstance(i,int) and 0<=i<len(FRAMES) for i in ids),'valid proposed frames')
 if not ids:return None
 R=r_enclosure(cc,hh)
 if not(R.b>0 and R.b<v(243)):return None
 found={};cache={}
 for fi in ids:
  co=cache.setdefault(fi,coordinates(cc,hh,fi))
  for sign in (-1,1):
   if sign in found:continue
   answer=frame_branch_test(cc,hh,R,fi,sign,co)
   if answer is not None:found[sign]=answer
  if len(found)==2:
   return dict(status='ACCEPT',R_interval=bounds_text(R),hypotheses=['physical raw order-six complex Hadamard','R>0 at the physical seed'],all_four_pairings_covered=True,R_zero_slice_excluded=True,matrix_lifts=0,branches=[found[-1],found[1]])
 return None
