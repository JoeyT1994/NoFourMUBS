"""Focused exact checks of the written universal incidence proof.
No sampled result is used to prove global carrier coverage.
"""
from pathlib import Path
import itertools as it,json,hashlib,time,sys
import sympy as s
from sympy.polys.matrices import DomainMatrix as DM
start=time.time();root=Path(__file__).resolve().parent
checks=0
def need(ok,label):
 global checks
 checks+=1
 if not ok:raise ValueError(label)
sets=list(it.combinations(range(6),3));V=s.Matrix([[1 if i in E else -1 for E in sets] for i in range(6)]);T=V.T*V/2
need(T.rank()==5,'fixed positive certificate rank5')
need(T.eigenvals()=={s.Integer(12):5,s.Integer(0):15},'fixed certificate exact spectrum')
classes={}
for e,E in enumerate(sets):
 for f,F in enumerate(sets):
  n=len(set(E)&set(F));classes[n]=classes.get(n,0)+1
  need(T[e,f]==2*n-3,'all400 incidence coefficients')
  if n in (1,3):need(T[e,f]==(3 if e==f else -1),'all surviving Schur coefficients')
pasches=[ids for ids in it.combinations(range(20),4) if all(len(set(sets[i])&set(sets[j]))==1 for i,j in it.combinations(ids,2))]
need(len(pasches)==30,'complete30 Pasch inventory')
for ids in pasches:
 for i,j in it.combinations(ids,2):
  exponent=[int(k in sets[i])+int(k in sets[j])-1 for k in range(6)]
  need(sorted(exponent)==[-1,0,0,0,0,1],'Pasch contraction ordinary row quotient')
# Newton and squared elementary-symmetric identities, as symbolic polynomials.
z=s.symbols('z0:6')
def ep(t,k):return sum(s.prod(t[i] for i in E) for E in it.combinations(range(6),k))
p=[None]+[sum(t**k for t in z) for k in range(1,4)]
need(s.expand(6*ep(z,3)-p[1]**3+3*p[1]*p[2]-2*p[3])==0,'Newton cubic identity')
need(s.expand(ep([t*t for t in z],3)-ep(z,3)**2+2*ep(z,2)*ep(z,4)-2*ep(z,1)*ep(z,5)+2*ep(z,6))==0,'balanced norm polynomial identity')

# Exhaustive small integer table theorem; no physical phase grid.
ternary_tables=[]
for ns in it.product(range(3),repeat=9):
 if sum(ns)!=6:continue
 if any(sum(ns[3*a+b] for b in range(3))!=2 for a in range(3)):continue
 if any(sum(ns[3*a+b] for a in range(3))!=2 for b in range(3)):continue
 if any(sum(ns[3*a+b] for a in range(3) for b in range(3) if (b-a)%3==c)!=2 for c in range(3)):continue
 ternary_tables.append(ns)
 need(all(ns[3*a+b]==ns[(a+b)%3] for a in range(3) for b in range(3)), 'cyclic anti-diagonal form of every ternary table')
 need(any(all(ns[3*a+(c-a)%3]>0 for a in range(3)) for c in range(3)), 'every ternary table contains a full Fourier triad')
need(len(ternary_tables)==6,'complete six-table ternary classification')

def control(name,H,K,balanced):
 zero,one=K.zero,K.one
 def matrix(rows):return DM(rows,(len(rows),len(rows[0])),K)
 def cv(x):return K.from_sympy(s.sympify(x))
 def gram(rows):return matrix(rows)*matrix([[one/x for x in row] for row in rows]).transpose()
 need((gram(H)-DM.eye((6,6),K).to_dense()*cv(6)).is_zero_matrix,name+' physical orthogonality')
 # Explicit conjugate reciprocal holds for these declared exact phase fields.
 for row in H:
  for x in row:need(K.from_sympy(s.conjugate(K.to_sympy(x)))==one/x,name+' modulus one')
 Y=[[s.prod(H[i][j] for i in E) for j in range(6)] for E in sets]
 YY=matrix(Y);YS=matrix([[one/x for x in row] for row in Y]).transpose();G=YY*YS;S=YS*YY
 C=[[x**3 for x in row] for row in H];CC=matrix(C);CS=matrix([[x**(-3) for x in row] for row in H]).transpose();M=CS*CC
 need((S-DM.eye((6,6),K).to_dense()*cv(18)-M*cv(s.Rational(1,3))).is_zero_matrix,name+' Newton compression')
 GL=G.to_list();tg=matrix([[cv(T[i,j])*GL[i][j] for j in range(20)] for i in range(20)])
 defect=tg+G-DM.eye((20,20),K).to_dense()*cv(24)
 need(defect.is_zero_matrix==balanced,name+' correct exceptional Schur scope')
 if balanced:
  for i,E in enumerate(sets):
   for j,F in enumerate(sets):
    if len(set(E)&set(F)) in (0,2):need(GL[i][j]==zero,name+' required zero')
  for ids in pasches:
   Q=YY.extract(ids,range(6));D=DM.diag([one/s.prod(H[i][j] for i in range(6)) for j in range(6)],K)
   need((Q*D*Q.transpose()).is_zero_matrix,name+' Pasch isotropy')
  # Exact all-six B_i identities and sum-of-squares compression.
  sumsq=DM.zeros((6,6),K).to_dense();A=matrix([[x*x for x in row] for row in H]);AS=matrix([[x**(-2) for x in row] for row in H]).transpose();Agram=AS*A;I=DM.eye((6,6),K).to_dense()
  for i in range(6):
   Di=DM.diag([cv(V[i,e]) for e in range(20)],K);Bi=YS*Di*YY;sumsq+=Bi*Bi
   Ui=DM.diag(H[i],K);UiS=DM.diag([one/x for x in H[i]],K);r=matrix([C[i]]);rs=matrix([[x**(-3)] for x in H[i]])
   rhs=I*cv(6)+rs*r*cv(2)-UiS*Agram*Ui-M*cv(s.Rational(1,3))
   need((Bi-rhs).is_zero_matrix,name+' equality B_i formula')
  need((sumsq-(S*(I*cv(24)-S))*cv(2)).is_zero_matrix,name+' full compressed SOS')
 # Direct original-pinching evaluation of equation7. No unknown J is sampled.
 rowgram=CC*CS;RL=rowgram.to_list()
 for i,j in it.permutations(range(6),2):
  E=matrix([[sum((H[i][a]/H[j][a]*H[k][a]/H[l][a] for a in range(6)),zero)/cv(36) for l in range(6)] for k in range(6)])
  R=E*cv(4);Kij=(R*R)[i,j].element*cv(s.Rational(27,2))
  need(Kij==RL[i][j],name+' all30 original-pinching matrix entries')
 return {'balanced':balanced,'cube_Gram_charpoly':[str(K.to_sympy(x)) for x in M.charpoly()]}

K=s.QQ.algebraic_field(s.I*s.sqrt(3));cv=lambda x:K.from_sympy(s.sympify(x));w=cv((-1+s.I*s.sqrt(3))/2);xi=-w*w
F6=[[xi**(i*j) for j in range(6)] for i in range(6)]
TaoExps=[[0]*6,[0,0,1,1,2,2],[0,1,0,2,2,1],[0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
out={'fourier6':control('Fourier6',F6,K,True),'tao':control('Tao',[[w**j for j in row] for row in TaoExps],K,False)}
K=s.QQ.algebraic_field(s.I,s.sqrt(33));cv=lambda x:K.from_sympy(s.sympify(x));one=K.one
A=cv(s.I);B=cv((3-4*s.I)/5);C=cv((-57-176*s.I)/185);D=cv((2-12*s.I+(6+s.I)*s.sqrt(33))/37)
H=[[one]*6,[one,A,B,A/C,A/D,A*D/(B*C)],[one,C,D,A,B*C/D,A/B],[one,A/B,-one,A/D,-A/D,-A/B],[one,D,-D,A*D/(B*C),-one,-A*D/(B*C)],[one,B*C/D,-B,B,-B*C/D,-one]]
out['qsqrt33']=control('Qsqrt33',H,K,True)
result={'status':'PASS focused exact cubic incidence, compression, equality and covariance-map checks','scope':'Written universal carrier bound; no paired-spectrum theorem or new retained exclusion','checks':checks,'incidence_intersection_counts':classes,'pasch_configurations':30,'ternary_count_tables':ternary_tables,'controls':out}
if __name__=='__main__':print(json.dumps(result,indent=2))
