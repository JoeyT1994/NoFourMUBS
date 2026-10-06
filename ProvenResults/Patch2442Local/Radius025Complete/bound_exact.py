"""Independent exact checks of the radius-1/40 Gram majorant and model guards."""
from fractions import Fraction as Q

def add(a,b):
 c=dict(a)
 for e,v in b.items():c[e]=c.get(e,0)+v
 return {e:v for e,v in c.items() if v}
def scale(a,b):return {e:v*b for e,v in a.items() if v*b}
def mul(a,b):
 c={}
 for e,v in a.items():
  for f,w in b.items():
   g=tuple(x+y for x,y in zip(e,f));c[g]=c.get(g,0)+v*w
 return {e:v for e,v in c.items() if v}
def var(i,n=4):return {tuple(int(i==j) for j in range(n)):1}
def quad(x,y):return add(add(mul(x,x),scale(mul(x,y),-1)),mul(y,y))
def check(rho=None):
 r=Q(1,40) if rho is None else rho
 u=[var(i) for i in range(4)];X=quad(u[0],u[1]);Y=quad(u[2],u[3]);Z=quad(add(u[2],scale(u[0],-1)),add(u[3],scale(u[1],-1)))
 p=add(add(X,Y),Z);cross=add(add(mul(X,Y),mul(X,Z)),mul(Y,Z));L=scale(add(scale(cross,4),scale(mul(p,p),-1)),81)
 k=add(mul(u[0],u[3]),scale(mul(u[1],u[2]),-1));assert L==scale(mul(k,k),243)
 constants={4:972,5:162*19*35+23*54*19,6:162*19*18+23**2*27+18*19**3,7:23*(24*19**2+30*121),8:23**2*2*19+2*19**2*121,9:4*23**3+23*(2*19**3+2*19*121)}
 assert constants=={4:972,5:131328,6:193149,7:282762,8:107464,9:469936}
 guards={'p_coefficient':18+35*r+18*r*r<19,'J_coefficient':2*(Q(26,15)+r)**2*(Q(52,15)+4*r)<23,'positive_W':19*r*r<1,'W_coefficient':Q(19**2,3)<121,'side_sum':2*r<Q(1,8),'side_norm_lower':1-2*r>Q(94,100),'root_lower':1/(1+2*r)**2-Q(1,4)>Q(16,25),'root_derivative':Q(5,4)/(1-2*r)**3<Q(3,2),'inverse_domain':Q(3,2)-16*r>1,'opposite_orientation':3-32*r>4*r,'positive_anchor':Q(1,2)-8*r>0,'side_factor_discrepancy':12+24*Q(7,4)+112*r<64}
 assert all(guards.values()),guards
 C=sum(Q(v)*r**(degree-4) for degree,v in constants.items());assert C<67**2
 if r==Q(1,40):assert C==Q(28034450231,6400000)
 return {'status':'PASS','rho':str(r),'R_normalized_upper':str(C),'margin_below_4489':str(4489-C),'majorant_coefficients':constants,'guards':guards}
