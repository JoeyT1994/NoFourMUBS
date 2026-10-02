"""Exact check: every Zauner triple {I, Z1, Z2} has the nontrivial matching
   (I-2P1)(I-2P2) = diag(V U*, U V*), with P_i the projector onto the first
   three columns of Z_i.  Symbolic in the diagonal phases u,v,x,y."""
import sympy as sp
Z=lambda M: all(sp.simplify(sp.expand(e))==0 for e in M)
w=sp.Rational(-1,2)+sp.sqrt(3)*sp.I/2
F=sp.Matrix(3,3,lambda j,k:w**(j*k))
ph=lambda n:[sp.exp(sp.I*sp.Symbol(f'{n}{k}',real=True)) for k in range(3)]
Ud,Vd,Xd,Yd=[sp.diag(*ph(n)) for n in 'uvxy']
Z1=sp.Matrix(sp.BlockMatrix([[F,Xd*F],[F,-Xd*F]]))/sp.sqrt(6)
Z2=sp.Matrix(sp.BlockMatrix([[Ud*F,Ud*Yd*F],[Vd*F,-Vd*Yd*F]]))/sp.sqrt(6)
assert Z(Z1.H*Z1-sp.eye(6)) and Z(Z2.H*Z2-sp.eye(6))
P1=Z1[:,:3]*Z1[:,:3].H; P2=Z2[:,:3]*Z2[:,:3].H
R=(sp.eye(6)-2*P1)*(sp.eye(6)-2*P2)
target=sp.diag(*(list(Vd*Ud.H)[::4]+list(Ud*Vd.H)[::4]))
assert Z(R-target)
# the factors are diagonal in the Z1 and Z2 bases with binary eigenvalues:
r=sp.diag(-1,-1,-1,1,1,1)
assert Z(Z1*r*Z1.H-(sp.eye(6)-2*P1))
assert Z(Z2*r*Z2.H-(sp.eye(6)-2*P2))
print("PASS: D_I(eta) = D_Z1(r) D_Z2(r) with r=(-1,-1,-1,1,1,1), eta=(v/u, u/v) for every Zauner triple")
