"""A division-free two-polynomial replay of W11, with factored source data."""
import sys,time,json
if sys.flags.optimize:
    raise SystemExit("Run without -O or -OO.")
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'reference'))
from rational_helper import F, CTX, tr, adj, mul
import check_existing_W11 as B

def scaled(G):
    s,t,r=G[1][0],G[2][0],G[2][1]
    S,T,Q=s.star(),t.star(),r.star()
    X,Y,Z=s*S,t*T,r*Q
    p,J=X+Y+Z,s*r*T+S*Q*t
    g,eta=27-3*p+J,9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    P0=r*s*s+Q*t*t+(3-Z)*s*t
    P1=t*S*S+r*r*T+(3-Y)*r*S
    c0,c1=9-Z,9-Y
    d=P0*P1.star()
    H0=[[S*d,S*S*d-2*s*(g*g+c1*chi+c0*c1*eta),S*T*d-(chi+c0*eta)*P1.star()],
        [3*d,S*d,T*d],[r*d,S*r*d-c1*eta*P0,S*d]]
    H1=[[F(0),-2*s*(c0-c1),P1.star()], [F(0),F(0),F(0)],[F(0),-P0,F(0)]]
    return H0,H1,d

t=time.perf_counter()
H0,H1,dh=scaled(B.Gh)
V0,V1,dv=scaled(B.Gv)
U=[[x*B.g for x in row] for row in B.K]
T0,T1=[mul(U,mul(H,adj(U))) for H in [H0,H1]]
f1=B.contraction(V0,T1)-B.contraction(V1,T0)
f0=B.contraction(V0,T0)+B.chi*B.contraction(V1,T0)+B.eta*B.g*B.g*B.contraction(V1,T1)-dh*dv*B.g*B.g*B.Gv[0][1]*B.Gh[0][1]
assert not f1.n and not f0.n
print('PASS two Laurent polynomial zeros',time.perf_counter()-t)
