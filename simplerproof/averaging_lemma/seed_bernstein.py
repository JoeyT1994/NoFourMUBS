"""Rigorous Bernstein enclosure of the complete degree-five seed Taylor jet.

This preserves correlations between phase coordinates. The only floating
operations are two explicit matrix products with forward error bounds;
coefficient input errors, scaling and final comparisons are handled by Arb.
"""
from fractions import Fraction as Q
from itertools import product
import math
import numpy as np
from flint import arb
from seed_taylor import Taylor

class Bernstein(Taylor):
    def __init__(self,level):
        super().__init__(level)
        self.denominator=10000
        univariate={}
        for k in range(6):
            for m in range(6):
                univariate[k,m]=sum((Q(math.comb(m,j)*2**j*(-1)**(m-j)*math.comb(k,j),math.comb(5,j))
                                    for j in range(min(k,m)+1)),Q())
        # The univariate coefficients also equal an average of products of
        # m signs drawn without replacement from k pluses and 5-k minuses.
        # This independently checks the formula and the bound by one.
        for (k,m),value in univariate.items():
            alternative=sum((Q((-1)**(m-j)*math.comb(k,j)*math.comb(5-k,m-j),math.comb(5,m))
                             for j in range(m+1) if j<=k and m-j<=5-k),Q())
            assert value==alternative and abs(value)<=1
        rows=[]
        for vertex in product(range(6),repeat=4):
            row=[]
            for a in self.alpha:
                v=self.denominator*math.prod(univariate[k,m] for k,m in zip(vertex,a))
                assert v.denominator==1 and abs(v)<=self.denominator
                row.append(v.numerator)
            rows.append(row)
        self.B=np.array(rows,dtype=np.float64)
        assert all(int(v)==w for row,rr in zip(self.B,rows) for v,w in zip(row,rr))
        self.scale_mid=np.array([float(x.mid()) for x in self.scale])
        eps=arb(2)**-52;n=len(self.alpha)
        self.bernstein_gamma=(2*n*eps)/(1-2*n*eps)

    def enclosures(self,co,audit=False):
        scaled=co*self.scale_mid
        assert np.isfinite(scaled).all()
        assert np.all((scaled==0)|(abs(scaled)>=1e-200))
        dots=scaled@self.B.T
        assert np.isfinite(dots).all()
        bounds=[]
        for i,(raw,q,dot) in enumerate(zip(co,scaled,dots)):
            exact=[arb(float(c),e)*s for c,e,s in zip(raw,self.error,self.scale)]
            input_error=sum((abs(c-arb(float(mid))).upper() for c,mid in zip(exact,q)),arb(0))
            dot_error=self.bernstein_gamma*sum((abs(arb(float(v))) for v in q),arb(0))
            err=input_error+dot_error
            lower=arb(float(np.min(dot)))/self.denominator-err-self.remainder
            upper=arb(float(np.max(dot)))/self.denominator+err+self.remainder
            if audit and i==0:
                # Independent outward dot products for all 1296 controls.
                controls=[sum((c*int(b) for c,b in zip(exact,row)),arb(0))/self.denominator for row in self.B]
                assert all(c.lower()>=lower+self.remainder and c.upper()<=upper-self.remainder for c in controls)
            bounds.append((lower.lower(),upper.upper()))
        return bounds

if __name__=='__main__':
    import gzip,json,time
    from pathlib import Path
    p=Path(__file__).resolve().parent
    with gzip.open(p/'global_taylor24_open.jsonl.gz','rt') as f:
        paths=[json.loads(line)['path'] for line in f]
    sample=paths[::max(1,len(paths)//2048)][:2048]
    t=time.monotonic();T=Bernstein(6);closed=0
    for k in range(0,len(sample),128):
        batch=sample[k:k+128];co=T.coefficients(batch)
        for lo,hi in T.enclosures(co,audit=k==0):closed+=int(hi<0 or lo>=5)
    print(dict(sample=len(sample),new_closed=closed,seconds=time.monotonic()-t))
