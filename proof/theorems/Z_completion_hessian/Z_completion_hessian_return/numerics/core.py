"""NUMERICAL matched completion and analytic first/second derivatives.

Floating point evaluations, NOT interval certificates. No atlas/Stage C is used.
API: completion(theta,o=1,previous=None); jet(theta,o=1,previous=None).
A result is a dict with H, theta, phih, phiv; jet adds Q0,Q1,Q2, side jets.
The output derivatives Q1 (36,4), Q2 (36,4,4) are horizontal phase jets.
"""
import itertools
import numpy as np
from scipy.optimize import root, minimize

PAIRS=((0,1),(0,2),(1,2))
PERMS=list(itertools.permutations(range(3)))
SIDE_A=np.zeros((9,6)); SEED_A=np.zeros((9,4)); TERM_R=np.repeat(np.arange(3),3)
for j in range(3):
    SIDE_A[j,j]=-1
    SIDE_A[3+j,3+j]=-1
    SIDE_A[6+j,j]=1; SIDE_A[6+j,3+j]=-1
SEED_A[1,0]=-1; SEED_A[2,1]=-1
SEED_A[4,2]=-1; SEED_A[5,3]=-1
SEED_A[7,0]=1; SEED_A[7,2]=-1
SEED_A[8,1]=1; SEED_A[8,3]=-1
EMAP=np.zeros((3,3,4))
for k,(i,j) in enumerate([(1,1),(1,2),(2,1),(2,2)]): EMAP[i,j,k]=1


def realify(z): return np.concatenate((z.real,z.imag),axis=0)


def horizontal(q):
    return q-q.mean(axis=0,keepdims=True)-q.mean(axis=1,keepdims=True)+q.mean(axis=(0,1),keepdims=True)


def seed_E(theta):
    return np.exp(1j*np.einsum('abk,k->ab',EMAP,np.asarray(theta)))


def side(phi):
    return np.vstack((np.ones(3),np.exp(1j*np.asarray(phi).reshape(2,3))))


def signature(S):
    perm=sum(np.prod(S[np.arange(3),p]) for p in PERMS)
    return perm*np.linalg.det(S)**2/np.prod(S)


def invariants(theta):
    E=seed_E(theta); G=6*np.eye(3)-E@E.conj().T
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    p=X+Y+Z; J=2*(s*r*t.conjugate()).real
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J; eta=9-p+J; chi=W-(p-9)*(p-18)+(p-15)*J
    return dict(R=4*g*g*eta-chi*chi,g=g,eta=eta,chi=chi)


def res(phi,theta):
    return realify((np.exp(1j*(SIDE_A@phi))+np.exp(1j*(SEED_A@theta))).reshape(3,3).sum(axis=1))


def phase_jac(phi):
    z=np.exp(1j*(SIDE_A@phi))
    return realify((1j*z[:,None]*SIDE_A).reshape(3,3,6).sum(axis=1))


def solve_side(theta,orient,guess=None,seed=0,max_tries=160):
    rng=np.random.default_rng(seed)
    starts=[]
    if guess is not None: starts.append(np.asarray(guess))
    starts.extend(rng.uniform(-np.pi,np.pi,size=(max_tries,6)))
    for initial in starts:
        sol=root(res,initial,args=(np.asarray(theta),),jac=lambda p,t:phase_jac(p),tol=1e-11)
        ph=sol.x
        err=np.linalg.norm(res(ph,theta),np.inf)
        if err<1e-9 and np.sign(signature(side(ph)).imag)==orient:
            for _ in range(3):
                ph-=np.linalg.solve(phase_jac(ph),res(ph,theta))
            if guess is None:
                ph=(ph+np.pi)%(2*np.pi)-np.pi
                p=np.argsort(ph[:3]); ph=np.r_[ph[:3][p],ph[3:][p]]
            else: ph=np.asarray(guess)+(ph-np.asarray(guess)+np.pi)%(2*np.pi)-np.pi
            return ph
    raise RuntimeError('side solve failed for '+repr(theta))


def completion(theta,o=1,previous=None):
    theta=np.asarray(theta,float)
    ph=solve_side(theta,o,None if previous is None else previous['phih'],seed=173)
    tv=theta[[0,2,1,3]]
    pv=solve_side(tv,-o,None if previous is None else previous['phiv'],seed=719)
    E=seed_E(theta); B=side(ph); C=side(pv).T
    D=-C@E.conj().T@np.linalg.inv(B.conj().T)
    H=np.block([[E,B],[C,D]])
    return dict(theta=theta,H=H,phih=ph,phiv=pv,o=o)


def side_jets(theta,phi,perm=None):
    """Return side phase jets and complex side jets, with seed order permutation."""
    if perm is None: perm=np.arange(4)
    A=SEED_A[:,perm]
    z=np.exp(1j*(SIDE_A@phi)); e=np.exp(1j*(SEED_A@theta))
    J=phase_jac(phi)
    Ft=realify((1j*e[:,None]*A).reshape(3,3,4).sum(axis=1))
    p1=-np.linalg.solve(J,Ft)
    v=SIDE_A@p1
    rhs=realify((-z[:,None,None]*v[:,:,None]*v[:,None,:]-e[:,None,None]*A[:,:,None]*A[:,None,:]).reshape(3,3,4,4).sum(axis=1))
    p2=-np.linalg.solve(J,rhs.reshape(6,16)).reshape(6,4,4)
    S=side(phi); S1=np.zeros((3,3,4),complex); S2=np.zeros((3,3,4,4),complex)
    pp1=p1.reshape(2,3,4); pp2=p2.reshape(2,3,4,4)
    S1[1:]=1j*S[1:,:,None]*pp1
    S2[1:]=S[1:,:,None,None]*(1j*pp2-pp1[:,:,:,None]*pp1[:,:,None,:])
    return dict(S=S,S1=S1,S2=S2,p1=p1,p2=p2,J=J)


def jet(theta,o=1,previous=None):
    co=completion(theta,o,previous)
    th=co['theta']; E=seed_E(th); E1=1j*E[:,:,None]*EMAP
    E2=-E[:,:,None,None]*EMAP[:,:,:,None]*EMAP[:,:,None,:]
    jh=side_jets(th,co['phih'])
    jv=side_jets(th[[0,2,1,3]],co['phiv'],perm=np.array([0,2,1,3]))
    B,B1,B2=jh['S'],jh['S1'],jh['S2']
    C,C1,C2=jv['S'].T,jv['S1'].transpose(1,0,2),jv['S2'].transpose(1,0,2,3)
    D=co['H'][3:,3:]; A=np.linalg.inv(B.conj().T)
    D1=np.empty((3,3,4),complex); D2=np.empty((3,3,4,4),complex)
    for k in range(4):
        D1[:,:,k]=-(C1[:,:,k]@E.conj().T+C@E1[:,:,k].conj().T+D@B1[:,:,k].conj().T)@A
    for k in range(4):
        for l in range(4):
            rhs=C2[:,:,k,l]@E.conj().T+C1[:,:,k]@E1[:,:,l].conj().T+C1[:,:,l]@E1[:,:,k].conj().T+C@E2[:,:,k,l].conj().T
            rhs+=D1[:,:,k]@B1[:,:,l].conj().T+D1[:,:,l]@B1[:,:,k].conj().T+D@B2[:,:,k,l].conj().T
            D2[:,:,k,l]=-rhs@A
    H=co['H']; H1=np.empty((6,6,4),complex); H2=np.empty((6,6,4,4),complex)
    H1[:3,:3]=E1; H1[:3,3:]=B1; H1[3:,:3]=C1; H1[3:,3:]=D1
    H2[:3,:3]=E2; H2[:3,3:]=B2; H2[3:,:3]=C2; H2[3:,3:]=D2
    ratio=H1/H[:,:,None]
    Q1=horizontal(ratio.imag).reshape(36,4)
    Q2=horizontal((H2/H[:,:,None,None]-ratio[:,:,:,None]*ratio[:,:,None,:]).imag).reshape(36,4,4)
    co.update(Q0=horizontal(np.angle(H)).reshape(36),Q1=Q1,Q2=Q2,H1=H1,H2=H2,jh=jh,jv=jv)
    return co


def quadratic_norm(T,starts=12,seed=0):
    """NUMERICAL lower estimate sup_{||u||=1} ||T[u,u]||, via multistart."""
    rng=np.random.default_rng(seed)
    dirs=np.r_[np.eye(T.shape[1]),rng.normal(size=(starts,T.shape[1]))]
    best=0.; bestv=None
    def fun(v):
        u=v/np.linalg.norm(v)
        y=np.einsum('aij,i,j->a',T,u,u)
        f=y@y
        gu=4*np.einsum('aij,j,a->i',T,u,y)
        gv=(gu-u*(u@gu))/np.linalg.norm(v)
        return -f,-gv
    for v in dirs:
        sol=minimize(fun,v,jac=True,method='BFGS',options={'gtol':1e-10,'maxiter':100})
        val=(-sol.fun)**.5
        if val>best: best=val; bestv=sol.x/np.linalg.norm(sol.x)
    return best,bestv


def canonical_frame(Q1):
    U,s,Vh=np.linalg.svd(Q1,full_matrices=False)
    return Vh.T/s[None,:]


def flatten_bound(T): return np.linalg.norm(T.reshape(T.shape[0],-1),2)


def third_jet(theta,o=1,previous=None):
    """Add analytic Q3 (36,4,4,4), evaluated in binary64; not a Lipschitz certificate."""
    co=jet(theta,o,previous)
    th=co['theta']
    def add_side3(theta,phi,j,perm):
        A=SEED_A[:,perm];z=np.exp(1j*SIDE_A@phi);e=np.exp(1j*SEED_A@theta)
        p1=j['p1'];p2=j['p2'];v=SIDE_A@p1;w=np.einsum('ab,bij->aij',SIDE_A,p2)
        rhs=-1j*z[:,None,None,None]*v[:,:,None,None]*v[:,None,:,None]*v[:,None,None,:]
        rhs-=z[:,None,None,None]*(w[:,:,:,None]*v[:,None,None,:]+w[:,:,None,:]*v[:,None,:,None]+w[:,None,:,:]*v[:,:,None,None])
        rhs-=1j*e[:,None,None,None]*A[:,:,None,None]*A[:,None,:,None]*A[:,None,None,:]
        p3=-np.linalg.solve(j['J'],realify(rhs.reshape(3,3,4,4,4).sum(axis=1)).reshape(6,64)).reshape(6,4,4,4)
        p1=p1.reshape(2,3,4);p2=p2.reshape(2,3,4,4);p3=p3.reshape(2,3,4,4,4)
        S3=np.zeros((3,3,4,4,4),complex)
        S3[1:]=j['S'][1:,:,None,None,None]*(1j*p3-p2[:,:,:,:,None]*p1[:,:,None,None,:]-p2[:,:,:,None,:]*p1[:,:,None,:,None]-p2[:,:,None,:,:]*p1[:,:,:,None,None]-1j*p1[:,:,:,None,None]*p1[:,:,None,:,None]*p1[:,:,None,None,:])
        return S3
    E=seed_E(th)
    E1=1j*E[:,:,None]*EMAP
    E2=-E[:,:,None,None]*EMAP[:,:,:,None]*EMAP[:,:,None,:]
    E3=-1j*E[:,:,None,None,None]*EMAP[:,:,:,None,None]*EMAP[:,:,None,:,None]*EMAP[:,:,None,None,:]
    B=co['jh']['S'];B1=co['jh']['S1'];B2=co['jh']['S2']
    B3=add_side3(th,co['phih'],co['jh'],np.arange(4))
    C=co['jv']['S'].T;C1=co['jv']['S1'].transpose(1,0,2);C2=co['jv']['S2'].transpose(1,0,2,3)
    C3=add_side3(th[[0,2,1,3]],co['phiv'],co['jv'],np.array([0,2,1,3])).transpose(1,0,2,3,4)
    D=co['H'][3:,3:];D1=co['H1'][3:,3:];D2=co['H2'][3:,3:]
    Ejs=[E,E1,E2,E3];Bjs=[B,B1,B2,B3];Cjs=[C,C1,C2,C3];Djs=[D,D1,D2]
    invB=np.linalg.inv(B.conj().T);D3=np.empty((3,3,4,4,4),complex)
    def take(jets,ind):return jets[len(ind)][(slice(None),slice(None))+tuple(ind)]
    for inds in itertools.product(range(4),repeat=3):
        rhs=np.zeros((3,3),complex)
        for mask in range(8):
            a=[inds[k] for k in range(3) if mask&(1<<k)];b=[inds[k] for k in range(3) if not mask&(1<<k)]
            rhs+=take(Cjs,a)@take(Ejs,b).conj().T
            if len(a)<3:rhs+=take(Djs,a)@take(Bjs,b).conj().T
        D3[(slice(None),slice(None))+inds]=-rhs@invB
    H=co['H'];H1=co['H1'];H2=co['H2'];H3=np.empty((6,6,4,4,4),complex)
    H3[:3,:3]=E3;H3[:3,3:]=B3;H3[3:,:3]=C3;H3[3:,3:]=D3
    L1=H1/H[:,:,None];L2=H2/H[:,:,None,None]
    Q3=(H3/H[:,:,None,None,None]-L2[:,:,:,:,None]*L1[:,:,None,None,:]-L2[:,:,:,None,:]*L1[:,:,None,:,None]-L2[:,:,None,:,:]*L1[:,:,:,None,None]+2*L1[:,:,:,None,None]*L1[:,:,None,:,None]*L1[:,:,None,None,:]).imag
    co.update(Q3=horizontal(Q3).reshape(36,4,4,4),H3=H3)
    return co
