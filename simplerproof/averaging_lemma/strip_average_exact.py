"""Exploratory exact simplification of the general strip sum.

No small-R specialization is made. Outputs are algebra, not a cover proof.
"""
from pathlib import Path
import sys,time,json
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parents[1]/'MinimalConstruction/Proofs'))
from exact_rational import F,CTX,common_sum
from strip_average import Affine,primitive,side_moments,coefficients

class C:
    def __init__(self,x=0,y=0):
        if isinstance(x,C):self.x,self.y=x.x,x.y
        elif isinstance(x,complex):self.x,self.y=F(int(x.real)),F(int(x.imag));assert x==complex(int(x.real),int(x.imag))
        elif isinstance(x,float):assert x==int(x);self.x,self.y=F(int(x)),F(y)
        else:self.x,self.y=F(x),F(y)
    def __add__(self,b):
        if isinstance(b,Affine):return NotImplemented
        b=C(b);return C(self.x+b.x,self.y+b.y)
    __radd__=__add__
    def __neg__(self):return C(-self.x,-self.y)
    def __sub__(self,b):
        if isinstance(b,Affine):return NotImplemented
        return self+-C(b)
    def __rsub__(self,b):return C(b)+-self
    def __mul__(self,b):
        if isinstance(b,Affine):return NotImplemented
        b=C(b);return C(self.x*b.x-self.y*b.y,self.x*b.y+self.y*b.x)
    __rmul__=__mul__
    def __truediv__(self,b):
        b=C(b);den=b.x*b.x+b.y*b.y
        return C((self.x*b.x+self.y*b.y)/den,(self.y*b.x-self.x*b.y)/den)
    def __rtruediv__(self,b):return C(b)/self
    def __pow__(self,n):
        if n<0:return (1/self)**(-n)
        out=C(1)
        for _ in range(n):out=out*self
        return out
    def conjugate(self):return C(self.x.star(),-self.y.star())
    def record(self):return dict(real=self.x.record(),imag=self.y.record())

def run():
    start=time.monotonic();a,b,c,d=[C(v) for v in CTX.gens()]
    Affine.R=primitive(a,b,c,d)[-1]
    print('R numerator terms',len(Affine.R.x.n),flush=True)
    moments=side_moments(a,b,c,d)
    print('side moments ready',time.monotonic()-start,flush=True)
    for i,j in list(moments):
        moments[i,j]=Affine(moments[i,j])+1+a**i*c**j+b**i*d**j
    terms=[]
    for n,(key,(num,den)) in enumerate(coefficients().items()):
        term=Affine(C(num))
        for power in key:term=term*moments[power]
        terms.append(term/den)
        if n%10==0:print('terms',n,time.monotonic()-start,flush=True)
    out=[]
    for ab in ['a','b']:
        z=C(common_sum([C(getattr(t,ab)).x for t in terms]),common_sum([C(getattr(t,ab)).y for t in terms]))
        out.append(z.record());print(ab,[(len(t.n),len(t.d)) for t in [z.x,z.y]],flush=True)
    (HERE/'strip_average_exact.json').write_text(json.dumps(dict(coefficients=out,seconds=time.monotonic()-start),indent=2)+'\n')

if __name__=='__main__':run()
