"""Exact controls for rank-two common-ray refinement; no global search."""
import itertools as it
import json
from pathlib import Path
import sympy as s

HERE = Path(__file__).resolve().parent
I = s.I
expand = lambda M: M.applyfunc(s.expand)
tr = lambda M: s.expand(s.trace(M))
pauli = [s.Matrix([[0,1],[1,0]]), s.Matrix([[0,-I],[I,0]]), s.diag(1,-1)]

def compress(V, bases):
    qs, rs = [], []
    d = V.rows
    for U in bases:
        W = expand(V.H*U)
        for j in range(d):
            q = expand(W[:,j]*W[:,j].H)
            assert tr(q) == s.Rational(2,d)
            r = s.Matrix([tr(q*x)/2 for x in pauli])
            assert expand(q-s.eye(2)/d-sum((r[k]*pauli[k] for k in range(3)),s.zeros(2))) == s.zeros(2)
            qs.append(q); rs.append(r)
    B = s.Matrix.hstack(*rs)
    return qs, B, expand(B*B.T)

# Independent symbolic check of the oriented three-point identity.
r = s.symbols('r0:3', real=True)
t = s.symbols('t0:3', real=True)
v = s.symbols('v0:3', real=True)
q = lambda w: s.eye(2)/6+sum((w[k]*pauli[k] for k in range(3)),s.zeros(2))
assert s.expand(s.im(tr(q(r)*q(t)*q(v)))-2*s.det(s.Matrix.hstack(s.Matrix(r),s.Matrix(t),s.Matrix(v)))) == 0

# Exact order-six product triple, with THREE balanced, orthogonal rank-two planes.
w = (-1+I*s.sqrt(3))/2
F2 = s.Matrix([[1,1],[1,-1]])/s.sqrt(2)
Y2 = s.Matrix([[1,1],[I,-I]])/s.sqrt(2)
F3 = s.Matrix(3,3,lambda j,k:s.expand(w**((j*k)%3)))/s.sqrt(3)
G3 = expand(s.diag(1,w,w)*F3)
L3 = expand(s.diag(1,w**2,w**2)*F3)
bases6 = [s.eye(6),expand(s.kronecker_product(F2,F3)),expand(s.kronecker_product(Y2,G3))]
for a,b in it.combinations(bases6,2):
    assert all(s.expand(z*s.conjugate(z)) == s.Rational(1,6) for z in expand(a.H*b))
Qs=[]
for j in range(3):
    V = expand(s.kronecker_product(s.eye(2),L3[:,j]))
    Q = expand(V*V.H); Qs.append(Q)
    assert Q*Q == Q or expand(Q*Q-Q) == s.zeros(6)
    qs,B,S = compress(V,bases6)
    assert S == s.eye(3)/6
    assert S.det() == s.Rational(1,216)
    for a,b in it.combinations(range(3),2):
        sub = B[:,list(range(6*a,6*a+6))+list(range(6*b,6*b+6))]
        assert sub.rank() == 2
    ch = s.expand(s.im(tr(qs[0]*qs[6]*qs[12])))
    assert ch == s.Rational(1,108)
    Gram = expand(2*B.T*B)
    assert Gram.rank() == 3
    e3 = s.expand((tr(Gram)**3-3*tr(Gram)*tr(Gram*Gram)+2*tr(Gram**3))/6)
    assert e3 == 8*S.det() == s.Rational(1,27)
    if j==0:
        # Cauchy--Binet: all unordered oriented correlations, exact arithmetic.
        chi_sum = sum(s.det(B[:,list(T)])**2*4 for T in it.combinations(range(18),3))
        assert chi_sum == 4*S.det() == s.Rational(1,54)
assert expand(sum(Qs,s.zeros(6))) == s.eye(6)
assert all(expand(Qs[i]*Qs[j]) == s.zeros(6) for i,j in it.combinations(range(3),2))
print('PASS d6 balanced planes: every two-base refinement exists, joint three-base refinement fails',flush=True)

# Positive control: existing exact order-twelve quartet, directly rechecked.
roots = [1,(1+I*s.sqrt(3))/2,(-1+I*s.sqrt(3))/2,-1,(-1-I*s.sqrt(3))/2,(1-I*s.sqrt(3))/2]
masks = [[0]*12,[0,2,5,2,2,4,5,0,0,0,5,4],[0,5,5,2,4,3,5,0,0,3,1,0]]
E = [[[(mask[r]+(r//2)*(c//2)+3*(r%2)*(c%2))%6 for c in range(12)] for r in range(12)] for mask in masks]
zroots = [(1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1)]
for a,b in it.combinations_with_replacement(range(3),2):
    for i,j in it.product(range(12),repeat=2):
        aa=sum(zroots[(E[b][r][j]-E[a][r][i])%6][0] for r in range(12))
        bb=sum(zroots[(E[b][r][j]-E[a][r][i])%6][1] for r in range(12))
        assert aa*aa+aa*bb+bb*bb == (12 if a!=b else (144 if i==j else 0))
Us = [s.Matrix(12,12,lambda r,c: roots[e[r][c]]/s.sqrt(12)) for e in E]
U0,U1,L = Us
V = L[:,[0,1]]
qs,B,S = compress(V,[s.eye(12),U0,U1])
assert S.det() == 0
assert B.rank() == 2
G = expand(2*B.T*B)
e3 = s.expand((tr(G)**3-3*tr(G)*tr(G*G)+2*tr(G**3))/6)
assert e3 == 0
# Normal reconstruction, without assuming the selected input column phases.
indices = next((i,j) for i,j in it.combinations(range(36),2) if B[:,i].cross(B[:,j]) != s.zeros(3,1))
a,b = (qs[t]-s.eye(2)/12 for t in indices)
J0 = expand(I*(a*b-b*a))
kappa = tr(J0*J0)/2
assert kappa > 0 and expand(J0*J0) == kappa*s.eye(2)
J = expand(J0/s.sqrt(kappa))
assert all(tr(J*q) == 0 for q in qs)
Rp,Rm = expand((s.eye(2)+J)/2),expand((s.eye(2)-J)/2)
assert {tuple(Rp),tuple(Rm)} == {tuple(s.diag(1,0)),tuple(s.diag(0,1))}
print('PASS d12 actual quartet: zero chirality and exact recovery of the same selected ray pair',flush=True)

out = {
 'status':'Exact controls passed; general theorem in PROOF.md',
 'd6_control_actual_MUB_triple':True,
 'd6_three_orthogonal_balanced_rank_two_planes':True,
 'd6_each_two_basis_compression_rank':2,
 'd6_joint_compression_rank':3,
 'd6_S_determinant':'1/216',
 'd6_mixed_chirality_witness':'1/108',
 'd6_all_unordered_chirality_squares':'1/54',
 'd6_Gram_e3':'1/27',
 'd6_control_retained_nozero3':False,
 'd12_actual_quartet_exact':True,
 'd12_compression_rank':2,
 'd12_selected_pair_recovered_up_to_swap':True,
 'retained_rank_one_exclusion':'general proof; not inferred from these controls',
 'new_retained_domain_exclusion':False,
 'global_no_four_MUB_proof':False,
}
target=HERE/'certificate.json'
if json.loads(target.read_text()) != out:
    raise SystemExit('FAIL: controls differ from certificate.json')
print(json.dumps(out,indent=2))
print('PASS four-basis chirality controls')
