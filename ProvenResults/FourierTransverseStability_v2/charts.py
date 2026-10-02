"""Explicit Fourier reference phases and exact row/column gauge removal."""
from interval import *

def double_center(C):
 require(C.shape==(6,6),'phase matrix shape')
 rows=[sum(C[i,:],Q(0))/6 for i in range(6)];cols=[sum(C[:,j],Q(0))/6 for j in range(6)];total=sum(rows,Q(0))/6
 return np.array([[C[i,j]-rows[i]-cols[j]+total for j in range(6)] for i in range(6)],dtype=object)

class PhaseBase:
 def __init__(self,p,q,kind='N'):
  require(kind=='N','only the explicit Fourier reference is used')
  self.p,self.q=p,q;self.kind=kind;self.coef=np.full((6,6,5),Q(0),dtype=object)
  rows=[(0,False),(1,False),(0,True),(2,False),(1,True),(2,True)]
  for i,(r,bottom) in enumerate(rows):
   for j in range(6):
    k=j%3;vec=self.coef[i,j];vec[0]=Q(2*r*k,3)
    if bottom:
     if j>=3:vec[0]+=1
     if k==1:vec[0]+=Q(1,3);vec[1]+=1;vec[2]-=1
     if k==2:vec[0]+=Q(2,3);vec[2]-=1
  self.H=np.array([[self.monomial([(i,j,1)]) for j in range(6)] for i in range(6)],dtype=object)
 def monomial(self,terms):
  vec=[sum((power*self.coef[i,j,k] for i,j,power in terms),Q(0)) for k in range(3)];vec[0]%=2
  return cis(iv.pi*v(vec[0])+2*iv.pi*(self.p*v(vec[1])+self.q*v(vec[2])))
