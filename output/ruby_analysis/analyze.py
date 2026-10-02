"""Analytical benchmarks for the isotropic ruby Heisenberg model.

Run with Python and NumPy. No author simulation code or raw data are used.
J=1, h=0. Results are for the stated local/product-state constructions,
not a solution of the full two-dimensional quantum Hamiltonian.

GEOMETRY
A simplex consists of triangles (0,1,2) and (3,4,5), with all four
intertriangle bonds between {0,1} and {3,4}. The absent vertices 2,5
are the tips opposite their shared edge. This reproduces the published
isolated-simplex energy -(3+2 sqrt(2))/2.

ANALYTICAL REDUCTION
In the sector where each triangle's two shared-edge spins have spin 1,
the total singlet sector has trimer spins j=1/2 or 3/2. Choosing phases,
the Hamiltonian in this two-state basis is
[ -3 Jt/2 - 4 Jp/3,   -sqrt(2) Jp/3 ]
[ -sqrt(2) Jp/3,       3 Jt/2 - 5 Jp/3 ].
Its lower eigenvalue is
E6 = -3 Jp/2 - sqrt(9 Jt^2 - 2 Jt Jp + Jp^2)/2.
At Jt=Jp=1, its j=1/2 weight is w=1/2+sqrt(2)/3.
The trimer marginal has eigenvalues w/2 twice, (1-w)/4 four times,
and zero twice. For a trimer paired along a different edge, the
spin-1/2 orbital overlap squared is 1/4, while the spin-3/2 sector is
permutation symmetric. Consequently, the projector onto this six-spin
simplex singlet has expectation 1 on an occupied covering edge and
p0=w^3/64+(1-w)^3/16 on an unoccupied edge, independent of the choices
of external pairing directions. In any mixture of these product
coverings, sufficiently separated projector supports therefore obey
C_nn=(1-p0)^2 C_DD exactly. This is not an assertion about dressed
many-body eigenstates or the actual RDM eigenvector from the paper.

BETHE BENCHMARK
For the symmetric close-packed dimer BP fixed point on a degree-three
graph, each edge has occupation 1/3. Along a nonbacktracking edge path,
the conditional transition matrix in states (0,1) is
P=[[1/2,1/2],[1,0]]. Its nontrivial eigenvalue is -1/2, so
C_DD(r)=(2/9)(-1/2)^r and xi=1/ln(2). The Bethe entropy per vertex is
ln(3)-(3/2)H_binary(1/3)=ln(2)-(1/2)ln(3), and per physical ruby spin
it is one third of that value. This is a bulk Bethe approximation,
not the boundary-dominated entropy of a finite Cayley tree.
The exact uniform honeycomb counting entropy per ruby spin is
[1/(3*pi)] integral_0^(pi/3) ln(2 cos(theta)) dtheta.

HEXAGON RESONANCE
Six trimers lie around a honeycomb hexagon. At each trimer label the
left-edge tip 0, right-edge tip 1, and unused-edge tip 2. Consecutive
vertices are connected by four bonds between left vertex spins {0,2}
and right vertex spins {1,2}. Covering A pairs (01),(23),(45), while
B pairs (12),(34),(50). Both are products of the exact six-spin ground
state. Use H_ring containing all 18 intra-triangle bonds and all 24
inter-triangle bonds on the ring. In an embedding with identical
outside singlet factors, boundary bonds have vanishing matrix elements
in this two-state subspace. The nonorthogonal projected matrices have
S_AA=S_BB=1, S_AB=s; H_AA=H_BB=E0, H_AB=v. Their eigenvalues are
(E0+v)/(1+s) and (E0-v)/(1-s). The offdiagonal element after symmetric
orthogonalization is (v-E0*s)/(1-s^2), up to a basis sign.
Exact arithmetic below verifies
s = -187/6144 + (175/9216)sqrt(2),
E0 = -9/2 - 3sqrt(2),
v = 2051/12288 - (523/6144)sqrt(2),
v-E0*s = 221/1536 - (559/6144)sqrt(2).
This is an exact projection onto two bare trial states, NOT a controlled
effective Hamiltonian at the isotropic point. Other coverings, local
dressing and virtual states are omitted. The computed residual norm
quantifies leakage out of the trial states. Neither the splitting nor
its half should be identified with a thermodynamic ordering temperature.

SOURCES
Geometry and isolated simplex benchmark: Ghosh and Mila,
https://arxiv.org/html/2512.14173v1
Honeycomb dimer counting/correlations: Loh, Yao and Carlson, Table I,
https://arxiv.org/pdf/0803.0742
Bethe framework: Harris and Cohen,
https://arxiv.org/abs/cond-mat/0408618
All projector, ring matrix-element and benchmark calculations here are
independent calculations, not taken from author data.
"""
from pathlib import Path
from fractions import Fraction
import json
import math
import numpy as np

OUT=Path(__file__).resolve().parent

def spin_hamiltonian(n, edges):
    ids=np.arange(2**n,dtype=np.int64)
    H=np.zeros((2**n,2**n))
    for i,j in edges:
        mi=1<<(n-1-i); mj=1<<(n-1-j)
        different=((ids&mi)!=0)!=((ids&mj)!=0)
        H[ids,ids]+=np.where(different,-.25,.25)
        H[ids[different],(ids^mi^mj)[different]]+=.5
    return H

def matrix_for_tips(g,a,b):
    p=list(range(3)); p[a],p[2]=p[2],p[a]
    q=list(range(3)); q[b],q[2]=q[2],q[b]
    return g.reshape([2]*6).transpose(p+[i+3 for i in q]).reshape(8,8)

def ring_h4(x):
    """Exactly apply 4 H_ring; preserve integer input dtype."""
    ids=np.arange(2**18,dtype=np.int64)
    edges=[(3*v+a,3*v+b) for v in range(6)
           for a,b in ((0,1),(1,2),(0,2))]
    edges += [(3*v+a,3*((v+1)%6)+b) for v in range(6)
              for a in (0,2) for b in (1,2)]
    y=np.zeros_like(x)
    for i,j in edges:
        mi=1<<(17-i); mj=1<<(17-j)
        different=((ids&mi)!=0)!=((ids&mj)!=0)
        y+=np.where(different,-1,1)*x
        y[different]+=2*x[(ids^mi^mj)[different]]
    return y

def field_product(X,Y):
    return (X[0]*Y[0]+2*X[1]*Y[1],X[0]*Y[1]+X[1]*Y[0])

def exact_inner(X,Y,den):
    return (Fraction(int(X[0]@Y[0]+2*(X[1]@Y[1])),den),
            Fraction(int(X[0]@Y[1]+X[1]@Y[0]),den))

def main():
    tri=[(0,1),(1,2),(0,2),(3,4),(4,5),(3,5)]
    cross=[(i,j) for i in (0,1) for j in (3,4)]
    H=spin_hamiltonian(6,tri+cross)
    eig,vec=np.linalg.eigh(H); g=vec[:,0]
    E6=-1.5-math.sqrt(2)
    assert abs(eig[0]-E6)<1e-12
    assert np.linalg.norm(H@g-E6*g)<1e-12
    total_spin_squared=4.5*np.eye(64)+2*spin_hamiltonian(6,[(i,j) for i in range(6) for j in range(i+1,6)])
    singlet_levels=[]
    triplet_levels=[]
    for level in np.unique(np.round(eig,10)):
        basis=vec[:,np.abs(eig-level)<1e-8]
        sectors=np.linalg.eigvalsh(basis.T@total_spin_squared@basis)
        if np.any(np.abs(sectors)<1e-8):singlet_levels.append(level)
        if np.any(np.abs(sectors-2)<1e-8):triplet_levels.append(level)
    assert abs(singlet_levels[1]-E6-math.sqrt(2))<1e-9
    assert abs(triplet_levels[0]-eig[1])<1e-9
    w=.5+math.sqrt(2)/3
    p0=w**3/64+(1-w)**3/16
    r=g.reshape(8,8)@g.reshape(8,8).T
    assert np.allclose(np.linalg.eigvalsh(r),sorted([0,0]+[w/2]*2+[(1-w)/4]*4))
    rhos=[]
    for tip in (0,1):
        perm=list(range(3));perm[tip],perm[2]=perm[2],perm[tip]
        rhos.append(r.reshape([2]*6).transpose(perm+[a+3 for a in perm]).reshape(8,8))
    projector_checks=[float(g@np.kron(a,b)@g) for a in rhos for b in rhos]
    assert np.allclose(projector_checks,p0,atol=1e-13)

    # Integer representation g=(a+b sqrt(2))/sqrt(48).
    a=np.zeros(64,dtype=np.int64);b=a.copy()
    for i,x in enumerate(g*math.sqrt(48)):
        aa,bb=min(((j,k) for j in range(-3,4) for k in range(-3,4)),
                  key=lambda q:abs(x-q[0]-q[1]*math.sqrt(2)))
        assert abs(x-aa-bb*math.sqrt(2))<1e-12
        a[i],b[i]=aa,bb
    G0=matrix_for_tips(a,1,0);G1=matrix_for_tips(b,1,0)
    def triple(expr):
        out=[np.zeros([8]*6,dtype=np.int64) for _ in range(2)]
        for i in range(2):
            for j in range(2):
                for k in range(2):
                    power=i+j+k
                    out[power%2]+=2**(power//2)*np.einsum(expr,[G0,G1][i],[G0,G1][j],[G0,G1][k])
        return [x.reshape(-1) for x in out]
    Ai=triple('ab,cd,ef->abcdef');Bi=triple('bc,de,fa->abcdef')
    assert exact_inner(Ai,Ai,48**3)==(Fraction(1),Fraction(0))
    se=exact_inner(Ai,Bi,48**3)
    ve=exact_inner(Ai,[ring_h4(x) for x in Bi],4*48**3)
    ee=exact_inner(Ai,[ring_h4(x) for x in Ai],4*48**3)
    conn=tuple(x-y for x,y in zip(ve,field_product(ee,se)))
    assert se==(Fraction(-187,6144),Fraction(175,9216))
    assert ve==(Fraction(2051,12288),Fraction(-523,6144))
    assert ee==(Fraction(-9,2),Fraction(-3))
    assert conn==(Fraction(221,1536),Fraction(-559,6144))
    val=lambda x:float(x[0])+float(x[1])*math.sqrt(2)
    s,v,e0=map(val,(se,ve,ee))
    ep=(e0+v)/(1+s);em=(e0-v)/(1-s)
    G=matrix_for_tips(g,1,0)
    A=np.einsum('ab,cd,ef->abcdef',G,G,G).reshape(-1)
    B=np.einsum('bc,de,fa->abcdef',G,G,G).reshape(-1)
    HA=ring_h4(A)/4;HB=ring_h4(B)/4
    assert abs(A@B-s)<1e-12
    assert abs(A@HB-v)<1e-12
    assert abs(A@HA-e0)<1e-12
    vp=(A+B)/math.sqrt(2*(1+s)); vm=(A-B)/math.sqrt(2*(1-s))
    assert abs(vp@vm)<1e-12
    assert abs(vm@((HA+HB)/math.sqrt(2*(1+s))))<1e-12
    # General simplex formula check at four positive ratios.
    general=[]
    for jp in (.05,.2,.6,1.):
        hh=spin_hamiltonian(6,tri)+jp*spin_hamiltonian(6,cross)
        prediction=-1.5*jp-.5*math.sqrt(9-2*jp+jp*jp)
        numerical=float(np.linalg.eigvalsh(hh)[0])
        assert abs(prediction-numerical)<1e-12
        general.append({'Jprime_over_Jt':jp,'ground_energy':numerical})
    # Simpson integration of the exact honeycomb entropy.
    n=10000;x=np.linspace(0,math.pi/3,n+1);y=np.log(2*np.cos(x))
    integ=(math.pi/3/n)/3*(y[0]+y[-1]+4*y[1:-1:2].sum()+2*y[2:-1:2].sum())
    bethe=(math.log(2)-.5*math.log(3))/3
    P=np.array([[.5,.5],[1.,0.]])
    stationary=np.array([2/3,1/3])
    assert np.allclose(stationary@P,stationary)
    corr=[]
    for distance in range(8):
        cov=(np.linalg.matrix_power(P,distance)[1,1]/3)-1/9
        assert abs(cov-(2/9)*(-.5)**distance)<1e-14
        corr.append(cov)
    data={
      'scope':'Independent local and trial-subspace calculations; not full lattice solution',
      'simplex':{'energy':E6,'energy_per_spin':E6/6,
        'lowest_excitation_gap':float(eig[1]-eig[0]),
        'lowest_excited_singlet_gap':math.sqrt(2),
        'trimer_spin_half_weight':w,'unoccupied_projector':p0,
        'projector_correlation_prefactor':(1-p0)**2,
        'projector_four_direction_checks':projector_checks,
        'formula_checks':general},
      'classical_dimer_benchmark':{'bethe_entropy_per_ruby_spin':bethe,
        'honeycomb_entropy_per_ruby_spin':float(integ/(3*math.pi)),
        'bethe_correlation_length':1/math.log(2),'bethe_covariance_r_0_to_7':corr},
      'hexagon_projection':{'overlap':s,'diagonal_energy':e0,'offdiagonal_H':v,
        'offdiagonal_after_subtracting_energy_times_overlap':val(conn),
        'orthogonalized_hopping_magnitude':abs(val(conn)/(1-s*s)),
        'symmetric_energy':ep,'antisymmetric_energy':em,
        'two_state_splitting':abs(ep-em),
        'residual_norm_product_state':float(np.linalg.norm(HA-e0*A)),
        'residual_norm_symmetric_state':float(np.linalg.norm(HA+HB-ep*(A+B))/np.linalg.norm(A+B)),
        'exact_Qsqrt2':{k:[str(t) for t in v] for k,v in
                         [('overlap',se),('diagonal_energy',ee),('offdiagonal_H',ve),('connected_H',conn)]}},
      'all_checks_passed':True}
    (OUT/'results.json').write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps(data,indent=2))

if __name__=='__main__':main()
