from fractions import Fraction as Q
from itertools import product
I=(1,0,0,1); generators=[(I,(Q(1,2),0)),(I,(0,Q(1,2))),(I,(Q(1,3),Q(2,3))),((0,1,1,0),(0,0)),((-1,0,-1,1),(0,0)),((-1,0,0,-1),(0,0))]
def apply(g,p):
 a,b,c,d=g[0];x,y=p
 return a*x+b*y+g[1][0],c*x+d*y+g[1][1]
def compose(g,h):
 a,b,c,d=g[0];e,f,j,k=h[0]
 return (a*e+b*j,a*f+b*k,c*e+d*j,c*f+d*k),tuple(v%1 for v in apply(g,h[1]))
G={(I,(Q(0),Q(0)))};todo=list(G)
while todo:
 g=todo.pop()
 for h in generators:
  u=compose(h,g)
  if u not in G:G.add(u);todo.append(u)
assert len(G)==144
print('group',len(G),flush=True)
def cross(a,b,c):return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def area(P):return abs(sum(P[i][0]*P[(i+1)%len(P)][1]-P[i][1]*P[(i+1)%len(P)][0]for i in range(len(P))))/2 if P else Q(0)
def clip(P,a,b):
 out=[]
 for i in range(len(P)):
  s,t=P[i-1],P[i];u,v=cross(a,b,s),cross(a,b,t)
  if (u<0 and v>=0)or(u>=0 and v<0):out.append(tuple(s[j]+u/(u-v)*(t[j]-s[j])for j in range(2)))
  if v>=0:out.append(t)
 return out
square=[(Q(0),Q(0)),(Q(1),Q(0)),(Q(1),Q(1)),(Q(0),Q(1))]
T=[(Q(1,6),Q(1,3)),(Q(1,3),Q(1,3)),(Q(1,3),Q(5,12))]
parts=[]
for g in G:
 P=[apply(g,p)for p in T]
 if cross(*P)<0:P.reverse()
 for x,y in product(range(-2,3),repeat=2):
  C=[(a+x,b+y)for a,b in P]
  for i in range(4):C=clip(C,square[i-1],square[i])
  if area(C):parts.append(C)
assert len(parts)==144 and sum(map(area,parts))==1
print('parts',len(parts),'area',sum(map(area,parts)),flush=True)
for i,P in enumerate(parts):
 for Qp in parts[:i]:
  if any(max(p[j]for p in P)<=min(q[j]for q in Qp)or max(q[j]for q in Qp)<=min(p[j]for p in P)for j in range(2)):continue
  C=P
  for k in range(len(Qp)):C=clip(C,Qp[k-1],Qp[k])
  assert area(C)==0,(i,P,Qp,area(C))
print('PASS exact tiling')
