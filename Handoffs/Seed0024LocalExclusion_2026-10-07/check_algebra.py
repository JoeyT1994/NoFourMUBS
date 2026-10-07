"""Exact algebra/constant checks for the proposed local seed0024 route.
This is research evidence, NOT a Lean kernel proof or sector closure.
Run with /opt/anaconda3/bin/python check_local_route.py.
"""
from fractions import Fraction as F
import itertools, json
from pathlib import Path
import sympy as sp

out = {}
a,b,c,d = V = sp.symbols('a b c d', nonzero=True)
B=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
P=sum(sp.prod(B[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
q=sp.expand(P*B.det()**2/(a*b*c*d))
# q coefficients real; on the unit torus conjugation inverts all variables.
# (q - qbar)/2 = i Im q has the same coefficient-norm bounds as Im q.
D=sp.expand((q-q.xreplace({x:1/x for x in V}))/2)
terms=[]
for term in sp.Add.make_args(D):
    powers=term.as_powers_dict()
    exponents=tuple(int(powers.get(x,0)) for x in V)
    coef=sp.simplify(term/sp.prod(x**e for x,e in zip(V,exponents)))
    assert coef.is_Rational
    terms.append((coef,exponents))
assert len(terms)==48
l1=sum(abs(k) for k,e in terms)
grad=[sum(abs(k*e[j]) for k,e in terms) for j in range(4)]
assert l1==24 and grad==[24]*4
out['imag_q_laurent']={'terms':len(terms),'coefficient_l1':int(l1),'phase_partial_l1':list(map(int,grad))}

# Fourier mixed block: first left column, second left column, first right column.
x,y,w=sp.symbols('x y w', nonzero=True)
Q=sp.expand(q.subs({a:w,b:x,c:w**2,d:y}))
def reduce_w(expr):
    num,den=sp.fraction(sp.cancel(expr))
    nr=sp.rem(num,w*w+w+1,w)
    dr=sp.rem(den,w*w+w+1,w)
    # In this calculation denominator is a Laurent monomial independent of w.
    assert not dr.has(w)
    return sp.expand(nr/dr)
Q=reduce_w(Q)
# Exact conjugation also maps omega -> omega^2.
Qbar=reduce_w(Q.xreplace({x:1/x,y:1/y,w:w**2}))
# Claimed imaginary part is 3(sin(2alpha-beta)+sin(2beta-alpha)-sin(alpha+beta)).
expected=3*((x*x/y-y/(x*x))+(y*y/x-x/(y*y))-(x*y-1/(x*y)))
assert reduce_w(Q-Qbar-expected)==0
# Check every sign parity and the linear transform explicitly.
for j,k in itertools.product((0,1), repeat=2):
    signed=reduce_w((Q-Qbar).subs({x:(-1)**j*x,y:(-1)**k*y}))
    ex=3*((-1)**k*(x*x/y-y/(x*x))+(-1)**j*(y*y/x-x/(y*y))-(-1)**(j+k)*(x*y-1/(x*y)))
    assert reduce_w(signed-ex)==0
out['fourier_witness_imaginary_identity']='3*((-1)^k*sin(2alpha-beta)+(-1)^j*sin(2beta-alpha)-(-1)^(j+k)*sin(alpha+beta))'
# Four signs, together with taking absolute value, realize all eight choices.
signs={(s*(-1)**k,s*(-1)**j,-s*(-1)**(j+k)) for j,k in itertools.product((0,1),repeat=2) for s in (-1,1)}
assert signs==set(itertools.product((-1,1),repeat=3))
out['sign_coverage']=len(signs)

# Rational constants; no floating arithmetic in assertions.
delta=F(77,100000)
s=F(53,20000)
h=F(2,625)
# Half row sum <= (3 + sqrt(15))*delta/2.
# Bound sqrt(15) by 31/8.
assert F(15)<F(31,8)**2
assert (3+F(31,8))*delta/2<s
# Near-equilateral arccos bound.
t=s+s*s/2
assert t<F(1,100)
assert 1-F(51,100)**2>F(43,50)**2
assert F(50,43)*t<h
# Same-orientation pairing, incompatible orientations, triple occupancy.
assert 8*h<2 and 8*h<3
assert 4*h/3<F(1,2)
# arcsin(u) <= 3u/2 on [0,1/2] by derivative bound.
assert F(1,1)/(1-F(1,2)**2)<F(3,2)**2
# H -> exact Fourier family K, normalized Frobenius distance.
h_to_k_squared=(10*delta*delta+96*h*h)/6
assert h_to_k_squared<F(1,75)**2
# Elementary determinant/permanent bound -> every |Im q| < 1/1000.
qcap=360*delta*delta
assert qcap<F(1,1000)
Rcap=4*qcap*qcap
witness_eps=F(1,1000)+144*h
assert witness_eps<F(1,2)
# Fourier angle rounding, arcsin derivative <= 51/50 on [0,1/6].
assert F(1,1)/(1-F(1,6)**2)<F(51,50)**2
rounding_l1=F(51,50)*F(1,6)
assert rounding_l1==F(17,100)
assert rounding_l1<1 # in particular < pi, for the integer consistency step.
k_to_f_squared=rounding_l1**2/108
assert k_to_f_squared<F(1,60)**2
assert F(1,75)+F(1,60)==F(3,100)<F(1,30)
out['constants']={k:str(v) for k,v in locals().copy().items() if k in ['delta','s','h','t','h_to_k_squared','qcap','Rcap','witness_eps','rounding_l1','k_to_f_squared']}

# The quadratic formula connecting the three rounded phase arguments to
# the normalized-column projector distance bound.
al,be=sp.symbols('alpha beta',real=True)
A=2*al-be; BB=2*be-al; C=al+be
assert sp.expand(A*A+BB*BB+C*C-6*(al*al+be*be-al*be))==0

# Every zero of the three sine expressions gives Fourier equivalent phases.
# Only n,m mod 6 affect the roots involved.
for n,m in itertools.product(range(6),repeat=2):
    k1=(2*n+m)%6; k2=(n+2*m)%6
    shift=k2%3
    assert (k1-2*shift)%3==0 and (k2-4*shift)%3==0
# CRT row/column permutations show F2 tensor F3 equals an F6 permutation.
assert len({(2*s0+3*b0)%6 for s0 in range(3) for b0 in range(2)})==6
assert len({(4*n0+3*c0)%6 for n0 in range(3) for c0 in range(2)})==6
for s0,b0,n0,c0 in itertools.product(range(3),range(2),range(3),range(2)):
    assert ((2*s0+3*b0)*(4*n0+3*c0)-(2*s0*n0+3*b0*c0))%6==0
out['zero_lattice_mod6_cases']=36
out['tensor_fourier_entry_checks']=36
out['status']='PASS_EXACT_RESEARCH_CHECKS_NOT_LEAN'
print(json.dumps(out,indent=2,sort_keys=True))
