import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'numerics'))
from core import *
from scipy.linalg import null_space

P=np.eye(6)-np.ones((6,6))/6
HOR=np.kron(P,P)
L=np.zeros((4,36))
for k,(i,j) in enumerate([(1,1),(1,2),(2,1),(2,2)]):
 L[k,6*i+j]=1;L[k,6*i]=-1;L[k,j]=-1;L[k,0]=1
DIF=np.zeros((15,6,36))
for p,(i,j) in enumerate(itertools.combinations(range(6),2)):
 for k in range(6): DIF[p,k,6*i+k]=1;DIF[p,k,6*j+k]=-1
# An orthonormal basis in horizontal kernel of seed restriction
X=null_space(np.r_[np.eye(36)-HOR,L],rcond=1e-12)

def tensors(co,M):
 H=co['H']; U=co['Q1']@M
 H2=np.einsum('aij,ik,jl->akl',co['Q2'],M,M)
 z=np.array([H[i]*H[j].conjugate() for i,j in itertools.combinations(range(6),2)])
 J=realify(np.einsum('pk,pka->pa',1j*z,DIF))
 A=J@X; K=np.linalg.pinv(A)
 du=DIF@U; dx=DIF@X
 def tensor(a,b):return K@realify(np.einsum('pk,pki,pkj->pij',-z,a,b)).reshape(30,-1)
 B=tensor(du,du); C=tensor(du,dx); DD=tensor(dx,dx)
 return dict(U=U,H2=H2,K=K,B=B,C=C,DD=DD,sig=np.linalg.svd(A,compute_uv=False)[-1],mu=np.max(np.linalg.norm(du,axis=2)),mx=np.max(np.linalg.norm(dx,axis=2)),du=du,dx=dx,z=z)

if __name__=='__main__':
 import csv
 rows=list(csv.DictReader(open(Path(__file__).resolve().parents[1]/'Z_completion_hessian/context/ball_table.csv')))
 for row in rows[:10]:
  co=jet([float(row['theta0_'+str(k)]) for k in range(1,5)])
  M=canonical_frame(co['Q1']); a=tensors(co,M)
  print(row['j'], 'R',row['R_centre'],'r',row['r'],'K',np.linalg.norm(a['K'],2),'B,C,D',*[np.linalg.norm(a[s],2) for s in ('B','C','DD')],'mu,mx',a['mu'],a['mx'], 'Hq',quadratic_norm(a['H2'],starts=3)[0], 'Hflat',flatten_bound(a['H2']))
