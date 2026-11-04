"""Generic PR-M bridge identities, over Z[s,S,t,T,r,Q,x,x^-1].

The companion polynomial below is the explicit polynomial in the supplied
supplement. Its coefficients are DATA, not a necessity/classification theorem.
All identities are checked by sparse integer coefficient arithmetic.
"""
from __future__ import annotations
from collections import Counter
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parent
N=7

class P:
    def __init__(self,v=0):
        if isinstance(v,P):self.d=v.d.copy()
        elif isinstance(v,dict):self.d={k:int(c) for k,c in v.items() if c}
        else:self.d={(0,)*N:int(v)} if v else {}
    def __add__(self,o):
        ans=self.d.copy()
        for k,c in P(o).d.items():
            ans[k]=ans.get(k,0)+c
            if not ans[k]:del ans[k]
        return P(ans)
    __radd__=__add__
    def __neg__(self):return P({k:-c for k,c in self.d.items()})
    def __sub__(self,o):return self+-P(o)
    def __rsub__(self,o):return P(o)+-self
    def __mul__(self,o):
        ans={}
        for a,c in self.d.items():
            for b,e in P(o).d.items():
                k=tuple(x+y for x,y in zip(a,b));ans[k]=ans.get(k,0)+c*e
        return P(ans)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:raise ValueError('negative power unsupported')
        a=P(1);b=self
        while n:
            if n&1:a=a*b
            b=b*b;n//=2
        return a
    def star(self):
        return P({(k[1],k[0],k[3],k[2],k[5],k[4],-k[6]):c for k,c in self.d.items()})
    def coeff_x(self,n):return P({k[:6]+(0,):c for k,c in self.d.items() if k[6]==n})
    def __eq__(self,o):return self.d==P(o).d
    def __bool__(self):return bool(self.d)
    def data(self):return [[*k,c] for k,c in sorted(self.d.items())]

def variable(i):return P({tuple(int(i==j) for j in range(N)):1})

def run(write=False):
    s,S,t,T,r,Q,x=[variable(i) for i in range(N)]
    X,Y,Z=s*S,t*T,r*Q;p=X+Y+Z;J=s*r*T+S*Q*t
    g=27-3*p+J;eta=9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    P0=r*s*s+Q*t*t+(3-Z)*s*t
    P1=t*S*S+r*r*T+(3-Y)*r*S
    c0,c1=9-Z,9-Y;delta=Z-Y
    A=x*delta*(-X*x+2*s+2*S*x*x-3*x)
    B=(-Q**2*t+Q*s*t*T-3*Q*s-s*s*T
       +(r*Q**2-r*Q*s*T+Q**2*S*t-Q*s*S*t*T+3*Q*s*S-Q*t*T+s*s*S*T+s*t*T*T)*x
       +(-r*Q**2*S+r*Q*s*S*T+r*Q*T-r*s*T*T-Q*s*S*S+Q*S*t*T-3*s*S*T-t*T*T)*x*x
       +(-r*Q*S*T+r*T*T+Q*S*S+3*S*T)*x**3)
    Phi=x**3*(A*A.star()-B*B.star())
    assert min(k[6] for k in Phi.d)==0 and max(k[6] for k in Phi.d)==6
    f6,f3,f0=[Phi.coeff_x(j) for j in (6,3,0)]
    L=g*g+c0*c1*eta+c0*chi;slope=g*delta;num=2*L+delta*chi
    identities={
        'sextic_leading':f6-P1*P0.star(),
        'sextic_constant':f0-f6.star(),
        'root_sum':(1+X)*num+f3,
        'quadratic_constant_remainder':(1+X)*(L*L-slope*slope*eta)+f3*L+(1+X)*f0*f6,
        'quadratic_linear_remainder':(1+X)*(2*L*slope+g*delta**2*chi)+f3*slope,
        'real_discriminant_bridge':num*num-4*f6*f6.star()+delta*delta*R,
        'P0_norm':P0*P0.star()-(g*g+c0*chi+c0*c0*eta),
        'P1_norm':P1*P1.star()-(g*g+c1*chi+c1*c1*eta),
    }
    for name,value in identities.items():assert not value,('failed exact identity',name,value.data())
    assert L.star()==L and num.star()==num and delta.star()==delta
    cert=dict(format='PRM-product-bridge-v1',variables=['s','S','t','T','r','Q','x'],
              ring='integer Laurent polynomials, conjugation swaps lower/upper case and x -> x^-1',
              identities=list(identities),polynomials={name:v.data() for name,v in [('A',A),('B',B),('f6',f6),('f3',f3),('f0',f0),('L',L),('root_sum_numerator',num)]})
    path=ROOT/'certificates'/'product_bridge.json'
    if write:path.write_text(json.dumps(cert,indent=2)+'\n')
    else:assert json.loads(path.read_text())==cert,'product bridge certificate mismatch'
    out=dict(identities=len(identities),all_residuals_zero=True,sextic_terms=len(Phi.d),f6_terms=len(f6.d),f3_terms=len(f3.d),normalized_discriminant='omega_n = -delta^2 R / |f6|^2')
    print(json.dumps(out,indent=2));return out

if __name__=='__main__':
    if not __debug__:raise SystemExit('Run without -O: assertions are proof checks.')
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--write',action='store_true')
    run(p.parse_args().write)
