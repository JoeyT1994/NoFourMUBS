#!/usr/bin/env python3
"""Rigorous enclosure of explicit matched Hadamards near the three centres.
The Hadamard property of the matched formula is an UPSTREAM INPUT: the
side/matched-existence and flatness results in reference/PROOF_v2.md §1.
This script certifies evaluation, branch choices, positive radicands, and
containment in the coefficient boxes. It does not infer equalities from
small floating-point residuals and does not independently reprove that input.
Requires numpy and the integer interval classes in certify.py.
"""
import cmath,itertools,json,math,time
from pathlib import Path
import numpy as np
from certify import CI,RI,P,S,box,det_dp
HERE=Path(__file__).resolve().parent

def ri_inv(a):
    a=RI.exact(a);assert a.excludes_zero(),'division by interval containing zero'
    return RI((S*S)//a.hi,-((-S*S)//a.lo))
def ri_div(a,b):return RI.exact(a)*ri_inv(b)
def sq(a):
    a=RI.exact(a)
    lo=0 if a.lo<=0<=a.hi else min(a.lo*a.lo,a.hi*a.hi)
    hi=max(a.lo*a.lo,a.hi*a.hi)
    return RI(lo//S,-((-hi)//S))
def abs2(a):
    a=CI.exact(a);return sq(a.re)+sq(a.im)
def ci_inv(a):
    a=CI.exact(a);d=abs2(a);assert d.lo>0
    return CI(ri_div(a.re,d),ri_div(-a.im,d))
def div(a,b):return CI.exact(a)*ci_inv(b)
def sqrt(a):
    a=RI.exact(a);assert a.lo>=0,'negative square-root enclosure'
    lo=math.isqrt(a.lo*S);hi=math.isqrt(a.hi*S)
    if hi*hi<a.hi*S:hi+=1
    return RI(lo,hi)
def csqrt(a):
    a=CI.exact(a);mod=sqrt(abs2(a))
    if a.re.lo>=0:
        u=sqrt((mod+a.re)*RI.exact(.5));assert u.lo>0
        return CI(u,ri_div(a.im,2*u))
    sign=1 if a.im.lo>0 else -1 if a.im.hi<0 else 0
    assert sign,'square-root branch needs another chart'
    v=sign*sqrt((mod-a.re)*RI.exact(.5));return CI(ri_div(a.im,2*v),v)
def cbrt(a):
    a=CI.exact(a);w0=CI.exact(cmath.exp(cmath.log(a.mid())/3))
    r=1<<(P-45);W=box(w0,r);R=CI.exact(1/(3*w0.mid()**2))
    eta=(R*(w0*w0*w0-a)).bound_max();q=(1-R*3*W*W).bound_l1()
    assert q<S and eta*S+q*r<r*S,'cube-root contraction failed'
    return W

def tr(A):return list(map(list,zip(*A)))
def cj(A):return [[z.conj() for z in row] for row in A]
def adjoint(A):return tr(cj(A))
def mm(A,B):return [[sum((a*b for a,b in zip(row,col)),CI()) for col in zip(*B)] for row in A]
def add(A,B):return [[a+b for a,b in zip(r,s)] for r,s in zip(A,B)]
def scale(A,c):return [[z*c for z in row] for row in A]
def eye(n):return [[CI(int(i==j)) for j in range(n)] for i in range(n)]
def diag(v):return [[v[i] if i==j else CI() for j in range(len(v))] for i in range(len(v))]
def adj3(A):
    return [[((-1)**(i+j))*det_dp([[A[r][c] for c in range(3) if c!=i] for r in range(3) if r!=j]) for j in range(3)] for i in range(3)]

def side(G,z,g):
    s,t,r=G[1][0],G[2][0],G[2][1];X,Y,Z=abs2(s),abs2(t),abs2(r)
    pp=[r*s*s+r.conj()*t*t+(CI(3)-CI(Z))*s*t,
        t*s.conj()*s.conj()+r*r*t.conj()+(CI(3)-CI(Y))*r*s.conj(),
        s*t.conj()*t.conj()+r.conj()*r.conj()*s.conj()+(CI(3)-CI(X))*r.conj()*t.conj()]
    cs=[9-Z,9-Y,9-X]
    lam=[div(pp[j]*(CI(g)+CI(cs[j])*z.conj()),CI(abs2(pp[j]))) for j in range(3)]
    mu=div(s,3);nu=div(t,3);nn=1-abs2(mu);assert nn.lo>0
    u=lam[0]*lam[1].conj();k=div(r,3)-nu*mu.conj();alpha=mu*mu-u*mu.conj()
    gamma=2*mu*nu-div(z*lam[0],3)
    delta=csqrt(CI(g)*div(lam[0]*lam[1].conj()*lam[2].conj(),27))
    dF=div(27,CI(g))*(CI(nn)*gamma-2*alpha*k)*delta.conj()
    assert dF.im.lo<=0<=dF.im.hi,'sanity: dF should be real by the side identity'
    if dF.re.hi<0:delta=-delta;dF=-dF
    assert dF.re.lo>0,'side-sign branch not separated'
    rho=(nn+dF.re)*RI.exact(.5);assert rho.lo>0
    q=div(alpha,CI(rho));cp=div(k-delta*q.conj(),CI(nn));cm=div(k*q+delta,CI(nn))
    sigma=u+mu*q;xi=div(sigma*sigma,CI(rho))
    M=[[CI(1),CI(),CI()],[mu,sigma,q*sigma.conj()],[nu,cp*sigma,cm*sigma.conj()]]
    return M,xi

def model(seeds,sheet):
    a,b,c,d=seeds;E=[[CI(1)]*3,[CI(1),a,b],[CI(1),c,d]]
    G=add(scale(eye(3),6),scale(mm(E,adjoint(E)),-1))
    T=add(scale(eye(3),6),scale(mm(adjoint(E),E),-1))
    s,t,r=G[1][0],G[2][0],G[2][1];X,Y,Z=abs2(s),abs2(t),abs2(r)
    p=X+Y+Z;J=2*(s*r*t.conj()).re;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi;assert R.lo>0 and g.lo>0
    z=div(CI(chi,sheet*sqrt(R)),2*CI(g))
    Mh,xih=side(G,z,g);Mv,xiv=side(tr(T),z.conj(),g)
    omega=CI(RI.exact(-.5),sqrt(3)*RI.exact(.5))
    F=[[CI(1),CI(1),CI(1)],[CI(1),omega,omega*omega],[CI(1),omega*omega,omega]]
    wh,wv=cbrt(xih),cbrt(xiv)
    Ph=diag([CI(1),wh.conj(),wh]);Pv=diag([CI(1),wv.conj(),wv])
    B=mm(mm(Mh,Ph),F);C=mm(mm(F,Pv),tr(Mv))
    D=scale(mm(mm(mm(C,adjoint(E)),adj3(G)),B),div(-1,CI(g)))
    H=[E[i]+B[i] for i in range(3)]+[C[i]+D[i] for i in range(3)]
    return H,{'R_lower':R.lo/S,'g_lower':g.lo/S,'sheet':sheet}

def unit_phase(z):
    # The exact phase is defined by this dyadic Cayley parameter, not by z.
    z=complex(z);z=z/abs(z)
    if z.real == -1. and abs(z.imag)<1e-14:return CI(-1),None
    t=float(z.imag/(1+z.real));w=CI(1,t)
    return div(w,w.conj()),t.hex()

def run(idx):
    t0=time.perf_counter();data=np.load(HERE/f'roots_{idx}.npz');Hn=data['H'];An=data['A']
    cert=json.loads((HERE/f'certificate_{idx}.json').read_text());assert cert['passed']
    d=RI.exact(cert['coefficient_real_imag_halfwidth']).lo
    Hd=Hn*Hn[0,0]/(Hn[:,0,None]*Hn[0,None,:])
    seedcoords=[(1,1),(1,2),(2,1),(2,2)]
    sp=[unit_phase(Hd[i,j]) for i,j in seedcoords];seeds=[z[0] for z in sp]
    candidates=[]
    for sheet in [1,-1]:
        HM,meta=model(seeds,sheet);mid=np.array([[z.mid() for z in row] for row in HM])
        for rp in itertools.permutations(range(3,6)):
            rr=[0,1,2]+list(rp)
            for cp in itertools.permutations(range(3,6)):
                cc=[0,1,2]+list(cp)
                err=np.max(abs(mid[np.ix_(rr,cc)]-Hd))
                candidates.append((err,HM,meta,rr,cc))
    err,HM,meta,rr,cc=min(candidates,key=lambda z:z[0])
    left=[unit_phase(Hn[i,0]) for i in range(6)]
    right=[unit_phase(Hn[0,j]/Hn[0,0]) for j in range(6)]
    exactH=[[left[i][0]*HM[rr[i]][cc[j]]*right[j][0] for j in range(6)] for i in range(6)]
    actualA=scale(adjoint(exactH),CI(ri_inv(sqrt(6))))
    maxdiff=0
    for i in range(6):
        for j in range(6):
            diff=actualA[i][j]-CI.exact(An[i,j]);bd=diff.bound_max();maxdiff=max(maxdiff,bd)
            assert bd<d,f'FAIL physical containment {idx},entry {i},{j},bound={bd/S}'
    out={'centre':idx,'status':'CERTIFIED enclosure/containment; Hadamard property uses supplied matched-formula theorem','upstream_input':'reference/PROOF_v2.md §1 matched side existence and flatness; reference/toolkit/model.py formula','cayley_seed_parameters_float_hex':[z[1] for z in sp],'left_row_cayley_parameters_float_hex':[z[1] for z in left],'right_column_cayley_parameters_float_hex':[z[1] for z in right],'row_order':rr,'column_order':cc,**meta,'matrix_coefficient_distance_upper':maxdiff/S,'containing_box_halfwidth':d/S,'midpoint_matching_error_numerical':float(err),'seconds':time.perf_counter()-t0}
    (HERE/f'physical_witness_{idx}.json').write_text(json.dumps(out,indent=2)+'\n')
    print(f'PASS centre {idx}: rigorously enclosed explicit matched formula is inside coefficient box; distance <= {maxdiff/S:.6g}',flush=True)
    print('  Hadamard-property dependency: supplied matched side and flatness theorems (not re-proved by interval small-residual checks).',flush=True)
    return out

if __name__=='__main__':
    for idx in [100,2471,5305]:run(idx)
