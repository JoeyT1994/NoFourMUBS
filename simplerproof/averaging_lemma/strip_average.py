"""Root-free strip sum: sum of the twenty R invariants, affine in sqrt(R).

Uses the universal Newton moments and the exactly regenerated 66-term
whole-strip square-sum identity. The side parameters use the current
reconstruction identities with q^2=R reduced after every multiplication.
"""
from pathlib import Path
import sys,json,itertools,time
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'MinimalConstruction/Proofs'))
from critical_moment_core import newton_moments,squared_corner_moment_coefficients

class Affine:
    R=0
    def __init__(self,a=0,b=0):
        if isinstance(a,Affine):self.a,self.b=a.a,a.b
        else:self.a,self.b=a,b
    def __add__(self,v):
        v=Affine(v);return Affine(self.a+v.a,self.b+v.b)
    __radd__=__add__
    def __neg__(self):return Affine(-self.a,-self.b)
    def __sub__(self,v):return self+-Affine(v)
    def __rsub__(self,v):return Affine(v)+-self
    def __mul__(self,v):
        v=Affine(v);return Affine(self.a*v.a+self.R*self.b*v.b,self.a*v.b+self.b*v.a)
    __rmul__=__mul__
    def __truediv__(self,v):
        assert not isinstance(v,Affine)
        return Affine(self.a/v,self.b/v)
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        out=Affine(1)
        for _ in range(n):out=out*self
        return out
    def conjugate(self):return Affine(self.a.conjugate(),self.b.conjugate())

def primitive(a,b,c,d):
    s=-1-a-b;t=-1-c-d;r=-1-c*a.conjugate()-d*b.conjugate()
    X,Y,Z=[x*x.conjugate() for x in [s,t,r]];p=X+Y+Z
    J=s*r*t.conjugate()+s.conjugate()*r.conjugate()*t
    W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J;R=4*g*g*eta-chi*chi
    return s,t,r,X,Y,Z,g,eta,chi,R

def side_moments(a,b,c,d):
    s,t,r,X,Y,Z,g,eta,chi,R=primitive(a,b,c,d)
    P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
       t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
       s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
    k=[9-Z,9-Y,9-X]
    def F(i,j):return Affine(2*g*g+2*k[i]*k[j]*eta+(k[i]+k[j])*chi,1j*(k[j]-k[i]))
    u=F(0,1)/(2*P[0].conjugate()*P[1]);v=F(0,2)/(2*P[0].conjugate()*P[2]);w=F(2,1)/(2*P[2].conjugate()*P[1])
    pi=Affine(chi+2*k[0]*eta,1j)/(2*P[0].conjugate())
    up=Affine(chi+2*k[1]*eta,-1j)/(2*P[1]);vp=Affine(chi+2*k[2]*eta,-1j)/(2*P[2])
    return newton_moments(s,s.conjugate(),t,t.conjugate(),r,r.conjugate(),
        u,v,w,u.conjugate(),v.conjugate(),w.conjugate(),pi,pi.conjugate(),up,vp,up.conjugate(),vp.conjugate())

def coefficients():
    return {key:(int(value.p),int(value.q)) for key,value in squared_corner_moment_coefficients().items()}

def strip(a,b,c,d,co):
    moments=side_moments(a,b,c,d)
    def unit_power(v,n):return v**n if n>=0 else v.conjugate()**(-n)
    for i,j in list(moments):
        known=sum(unit_power(x,i)*unit_power(y,j) for x,y in [(1+0j,1+0j),(a,c),(b,d)])
        moments[i,j]=moments[i,j]+known
    total=Affine()
    for key,(num,den) in co.items():
        term=Affine(num)
        for power in key:term=term*moments[power]
        total+=term/den
    return total

def two_strips(a,b,c,d,co):
    R=primitive(a,b,c,d)[-1];Affine.R=R
    horizontal=strip(a,b,c,d,co);vertical=strip(a,c,b,d,co)
    return horizontal,vertical,R

if __name__=='__main__':
    import numpy as np,mpmath as mp
    sys.path.insert(0,str(ROOT/'MinimalConstruction/Implementation'));from model import Model
    mp.mp.dps=40;co=coefficients();print('Exact whole-strip moment terms',len(co),flush=True)
    out=[];triples=list(itertools.combinations(range(6),3))
    def direct(H):
        C=np.array([H[:,cols] for cols in triples]);G=6*np.eye(3)-C@C.conj().transpose(0,2,1)
        s,t,r=G[:,1,0],G[:,2,0],G[:,2,1];X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real
        W=X*Y+X*Z+Y*Z-X*Y*Z;return sum(4*(27-3*p+J)**2*(9-p+J)-(W-(p-9)*(p-18)+(p-15)*J)**2)
    for row in json.loads((HERE/'unresolved_admissible_probe_seeds.json').read_text())['rows'][:6]:
        path=row['path'];theta=[mp.pi*(2*int(path[j::4],2)+1-64)/64 for j in range(4)]
        seeds=[mp.exp(mp.j*x) for x in theta];hor,ver,R=two_strips(*seeds,co);q=mp.sqrt(mp.re(R));values=[]
        for sign in [1,-1]:
            H=np.array(Model(seeds,sign).hadamard().tolist(),complex)
            calculated=[float(mp.re(hor.a+sign*q*hor.b)),float(mp.re(ver.a-sign*q*ver.b))]
            reference=[direct(H[:3,:]),direct(H.T[:3,:])]
            error=max(abs(x-y) for x,y in zip(calculated,reference));assert error<1e-7
            values.append(dict(sign=sign,strip_sums=calculated,direct_sums=list(map(float,reference)),maximum_error=error))
        out.append(dict(path=path,R=float(mp.re(R)),values=values))
        print(path,values,flush=True)
    (HERE/'strip_average_controls.json').write_text(json.dumps(dict(scope='Independent numerical controls of universal moment formula, not a global certificate',moment_terms=len(co),rows=out),indent=2)+'\n')
