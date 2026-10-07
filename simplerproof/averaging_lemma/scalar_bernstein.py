"""Exact real Laurent necessary conditions with certified Bernstein bounds."""
import math
import numpy as np
from flint import arb
from seed_bernstein import Bernstein
from reconstruction_polynomials import LP
from exact_algebra import corner_polynomials,determinant_terms

def conditions():
    a,b,c,d=[LP.variable(j) for j in range(4)]
    s=-1-a-b;t=-1-c-d;r=-1-c/a-d/b
    h=[z*z.conjugate() for z in [s,t,r]]
    v=[z*z.conjugate() for z in [-1-a-c,-1-b-d,-1-b/a-d/c]]
    p=sum(h);J=2*(s*r*t.conjugate()).real
    conditions={f'order_{j}':x-y for j,(x,y) in enumerate([(h[0],h[1]),(h[1],h[2]),(v[0],v[1]),(v[1],v[2]),(h[0],v[0])])}
    conditions.update(eta_plus=9-p+J,eta_minus=9-p-J)
    rp,rm=corner_polynomials()
    conditions['R_difference']=LP(terms={k:(c-rm.get(k,0),0) for k,c in rp.items()})-LP(terms={k:(c,0) for k,c in rm.items() if k not in rp})
    conditions['signed_complement']=LP(terms={k:(0,c) for k,c in determinant_terms().items()})
    assert (conditions['signed_complement']**2).d==LP(terms={k:(c,0) for k,c in rm.items()}).d
    for value in conditions.values():assert value.d==value.conjugate().d and value.den==0
    return conditions

class ScalarBernstein(Bernstein):
    def __init__(self,level,polynomial):
        super().__init__(level)
        assert polynomial.den==0 and polynomial.d==polynomial.conjugate().d
        self.polynomial=polynomial
        half=[(k,(r if not any(k) else 2*r,i if not any(k) else 2*i))
              for k,(r,i) in polynomial.d.items() if k>=tuple(-x for x in k)]
        half.sort();self.freq=np.array([k for k,c in half],dtype=np.int64);self.n=len(half)
        weights=[];l1=[]
        for a in self.alpha:
            d=sum(a)%4;rowc=[];rows=[]
            for k,(r,i) in half:
                cr,ci=[(r,i),(-i,r),(-r,-i),(i,-r)][d]
                power=math.prod(x**n for x,n in zip(k,a))
                rowc.append(cr*power);rows.append(-ci*power)
            row=rowc+rows;assert max(map(abs,row),default=0)<2**53
            weights.append(row);l1.append(sum(map(abs,row)))
        self.W=np.array(weights,dtype=np.float64)
        assert all(int(x)==y for row,rr in zip(self.W,weights) for x,y in zip(row,rr))
        den=2**level;err=arb(0)
        for k in range(2*den):
            angle=arb.pi()*k/den
            err=max(err,abs(angle.cos()-arb(float(self.ct[k]))).upper(),abs(angle.sin()-arb(float(self.st[k]))).upper())
        eps=arb(2)**-52;gamma=(4*self.n*eps)/(1-4*self.n*eps)
        self.error=[((gamma+err)*s).upper() for s in l1]
        B=sum((abs(r)+abs(i))*sum(map(abs,k))**6 for k,(r,i) in polynomial.d.items())
        self.remainder=(arb(B)*(arb.pi()/den)**6/720).upper()

    def coefficients(self,paths):
        assert all(len(p)==4*self.level and set(p)<=set('01') for p in paths)
        den=2**self.level
        nums=np.array([[2*int(p[j::4],2)+1-den for j in range(4)] for p in paths],dtype=np.int64)
        index=(nums@self.freq.T)%self.period
        out=np.concatenate([self.ct[index],self.st[index]],axis=1)@self.W.T
        assert np.isfinite(out).all()
        return out

    def audit_coefficients(self,path,co):
        den=2**self.level;nums=[2*int(path[j::4],2)+1-den for j in range(4)]
        angles=[arb.pi()*sum(int(k)*n for k,n in zip(freq,nums))/den for freq in self.freq]
        vals=[t.cos() for t in angles]+[t.sin() for t in angles]
        for j in range(len(self.alpha)):
            value=sum((arb(int(w))*v for w,v in zip(self.W[j],vals)),arb(0))
            bound=arb(float(co[j]),self.error[j]);assert value>=bound.lower() and value<=bound.upper()
        return True

if __name__=='__main__':
    import gzip,json,time
    from pathlib import Path
    p=Path(__file__).resolve().parent
    with gzip.open(p/'global_bernstein24_open.jsonl.gz','rt') as f:paths=[json.loads(line)['path'] for line in f]
    paths=paths[::max(1,len(paths)//1024)][:1024];original=len(paths)
    for name,poly in conditions().items():
        start=time.monotonic();T=ScalarBernstein(6,poly);retained=[]
        for k in range(0,len(paths),128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            if k==0:T.audit_coefficients(batch[0],co[0])
            for path,(lo,hi) in zip(batch,T.enclosures(co,audit=k==0)):
                rejected=(lo>arb(5).sqrt() or hi<-arb(5).sqrt()) if name=='signed_complement' else hi<0
                if not rejected:retained.append(path)
        print(name,len(paths)-len(retained),'retained',len(retained),'remainder',str(T.remainder),'seconds',time.monotonic()-start,flush=True)
        paths=retained
