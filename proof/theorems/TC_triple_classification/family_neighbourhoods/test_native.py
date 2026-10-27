import sys,itertools,unittest
from pathlib import Path
import numpy as np
from flint import arb,arb_mat,ctx,fmpq_mat,fmpq
sys.path.insert(0,str(Path(__file__).resolve().parent))
import native_columns as C,moving_symmetry as MS,native_cover as NC
from seed_cover import all_cliques
ctx.prec=160

def direct(q):
 h=np.exp(1j*q[:36].reshape(6,6));k=np.exp(1j*q[36:].reshape(6,6))
 hh=h.conj().T@h;kk=k.conj().T@k
 return np.r_[[hh[a,b].real for a,b in C.PAIRS],[hh[a,b].imag for a,b in C.PAIRS],
 [kk[a,b].real for a,b in C.PAIRS],[kk[a,b].imag for a,b in C.PAIRS],((np.abs(h.conj().T@k)**2-6)/6).ravel()]

class Tests(unittest.TestCase):
 def test_fourier_equations_and_jacobian(self):
  q=np.random.default_rng(20261027).normal(size=72);f=np.zeros(96)
  for re,im,den,ell in MS.TERMS:
   z=np.exp(1j*np.dot(ell,q))/den;f[re]+=z.real
   if im is not None:f[im]+=z.imag
  self.assertLess(np.max(np.abs(f-direct(q))),1e-13)
  j=MS.numeric(MS.jacobian(C.Z.mat(q[:,None])))
  for v in np.random.default_rng(7).normal(size=(5,72)):
   v/=np.linalg.norm(v);step=1e-5
   finite=(direct(q+step*v)-direct(q-step*v))/(2*step)
   self.assertLess(np.max(np.abs(finite-j@v)),1e-8)
 def test_product_symmetry_and_windings(self):
  f2=np.array([[1,1],[1,-1]]);y2=np.array([[1,1],[1j,-1j]])
  rows,cols=np.indices((3,3));f3=np.exp(2j*np.pi*rows*cols/3);k3=np.exp(2j*np.pi*(rows*rows+rows*cols)/3)
  h=np.kron(f2,f3);k=np.kron(y2,k3);q=np.r_[np.angle(h).ravel(),np.angle(k).ravel()]
  self.assertLess(np.max(np.abs(direct(q))),1e-13)
  found=set()
  for a in MS.proposed_actions(q):
   if a['score']>1e-8:continue
   found.add(a['anchor']);(p,w,g,e),base=MS.group(a)
   wind=MS.proposed_windings(q,MS.numeric(base)[:,0],a)
   lifted=C.Z.mat(q[:,None])+arb_mat([[2*arb.pi()*v] for v in wind])
   moving=e*(lifted-base)
   self.assertLess(C.Z.upper(C.Z.frob(moving)),1e-12)
   transformed=base+p*(lifted-base)
   self.assertLess(np.max(np.abs(direct(MS.numeric(transformed)[:,0]))),1e-12)
  self.assertEqual(found,{0,1,2})
 def test_invalid_action_rejected(self):
  a=dict(anchor=0,labels=(0,0,1,1,2,2),R=list(range(6)),S=[1,2,0,4,5,3],T=[1,2,0,4,5,3])
  MS.group(a);a['labels']=(0,0,0,1,1,2)
  with self.assertRaises(ArithmeticError):MS.group(a)
  a['labels']=(0,0,1,1,2,2);a['S']=list(range(6))
  with self.assertRaises(ArithmeticError):MS.group(a)
 def test_graph_exhaustion_and_cap(self):
  adj=[sum(1<<j for j in range(7) if j!=i) for i in range(7)]
  cliques,_=all_cliques(adj);self.assertEqual(len(cliques),7)
  with self.assertRaises(RuntimeError):all_cliques(adj,clique_cap=1)
  with self.assertRaises(ValueError):all_cliques([2,0])
 def test_equation_covariance_and_fixed_residual(self):
  q=np.random.default_rng(72).normal(size=72)
  for anchor in range(3):
   perms=[[1,2,0,4,5,3],[2,0,1,5,3,4],[1,2,0,5,3,4]];perms[anchor]=list(range(6))
   action=dict(anchor=anchor,labels=(0,1,2,0,1,2),R=perms[0],S=perms[1],T=perms[2])
   (p,w,g,e),base=MS.group(action);qy,y=MS.equation_moving_projector(action)
   transformed=base+p*(C.Z.mat(q[:,None])-base)
   self.assertLess(np.max(np.abs(direct(MS.numeric(transformed)[:,0])-MS.numeric(y)@direct(q))),1e-12)
   fixed=base+g*w*(C.Z.mat(q[:,None])-base)
   self.assertLess(np.max(np.abs(MS.numeric(qy)@direct(MS.numeric(fixed)[:,0]))),1e-12)
 def test_label_search_cap_does_not_exclude(self):
  cover=dict(valid_labels=np.ones(6,bool),label_colors=np.arange(6),label_graph=~np.eye(6,dtype=bool),label_centres=np.zeros((6,5)))
  self.assertEqual(NC.label_pattern(cover,list(range(6)),step_cap=1)['status'],'UNRESOLVED')
  self.assertEqual(NC.label_pattern(cover,list(range(6)))['status'],'PROPOSAL')
  cover['label_graph'][0,1]=cover['label_graph'][1,0]=False
  self.assertEqual(NC.label_pattern(cover,list(range(6)))['status'],'EXCLUDED')
 def test_input_selection_and_binding_fail_closed(self):
  import argparse
  import run
  self.assertEqual(run.read_indices(argparse.Namespace(indices=[1500,1881],index_file=None)),[1500,1881])
  for values in ([],[True],[2775],[1500,1500]):
   with self.assertRaises(ValueError):run.read_indices(argparse.Namespace(indices=values,index_file=None))
  result=run.run_ball(str(run.DEFAULT_ATLAS),1500,'wrong binding')
  self.assertEqual(result['status'],'NOT ESTABLISHED');self.assertNotIn('claim',result)
 def test_nonfinite_norm_rejected(self):
  with self.assertRaises(ArithmeticError):C.Z.upper(arb('nan'))

if __name__=='__main__':unittest.main()
