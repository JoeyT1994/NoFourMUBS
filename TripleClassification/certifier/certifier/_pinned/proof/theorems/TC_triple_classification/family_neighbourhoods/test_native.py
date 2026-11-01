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
 def test_joint_contraction_preserves_a_known_zero(self):
  import joint_basis as JB
  rng=np.random.default_rng(1864)
  f2=np.array([[1,1],[1,-1]]);y2=np.array([[1,1],[1j,-1j]])
  rows,cols=np.indices((3,3));f3=np.exp(2j*np.pi*rows*cols/3);k3=np.exp(2j*np.pi*(rows*rows+rows*cols)/3)
  hphase=np.angle(np.kron(f2,f3)).ravel();kphase=np.angle(np.kron(y2,k3))
  kphase-=kphase.mean(axis=0)
  u=rng.normal(size=(36,4))*.1;h2=rng.normal(size=(36,16))*.02;x=rng.normal(size=(36,21))*.01
  actual_w=np.array([.003,-.004,.002,.001]);actual_z=np.ones(21)*.0001
  q0=hphase-u@actual_w-h2@np.outer(actual_w,actual_w).ravel()/2-x@actual_z
  model=dict(Q0=C.Z.mat(q0[:,None]),U=C.Z.mat(u),H2=C.Z.mat(h2),X=C.Z.mat(x),r=arb('.01'),tau=arb('.001'))
  prepared={};bounds={}
  for c in range(6):
   displacement=rng.normal(size=6)*.002;displacement-=displacement.mean()
   prepared[c]=dict(v0=C.Z.mat((kphase[:,c]-displacement)[:,None]),T=arb_mat(6,4),model=model)
   radius=arb(float(np.linalg.norm(displacement)+.015))
   bounds[c]=dict(epsilon=radius,phase_radius=radius,initial_radius=radius)
  pp,bb,receipt=JB.refine(model,prepared,bounds,list(range(6)))
  self.assertGreater(receipt['iterations'],1)
  for c in range(6):
   actual_error=kphase[:,c]-MS.numeric(pp[c]['v0'])[:,0]-MS.numeric(pp[c]['T'])@actual_w
   self.assertLess(np.linalg.norm(actual_error),C.Z.upper(bb[c]['epsilon'])+1e-12)
   self.assertLess(C.Z.upper(bb[c]['epsilon']),C.Z.upper(bounds[c]['epsilon']))
 def test_quadratic_cover_encloses_original_domain(self):
  from types import SimpleNamespace
  rng=np.random.default_rng(2200)
  model=dict(Q0=C.Z.mat(rng.normal(size=(36,1))),U=C.Z.mat(rng.normal(size=(36,4))),
      H2=C.Z.mat(rng.normal(size=(36,16))),X=C.Z.mat(rng.normal(size=(36,21))),r=arb('.125'),tau=arb('.001'))
  args,receipt=NC.model_stage_c_args(SimpleNamespace(label_radius=.02),model)
  self.assertEqual(receipt['native_radius'],str(model['r']))
  for _ in range(20):
   w=rng.normal(size=4);w*=.125/np.linalg.norm(w)
   z=rng.normal(size=21);z*=.001/np.linalg.norm(z)
   value=MS.numeric(model['Q0'])[:,0]+MS.numeric(model['U'])@w+MS.numeric(model['H2'])@np.outer(w,w).ravel()/2+MS.numeric(model['X'])@z
   residual=value-2*np.pi*args['P'].ravel()-args['T']@w
   self.assertLess(np.linalg.norm(residual),2*np.pi*args['nN'])
 def test_fine_arc_pruning_and_cap(self):
  import fine_patterns as FP
  colors=np.array([0,1,2,3,4,5,0]);graph=~np.eye(7,dtype=bool)
  graph[0,6]=graph[6,0]=False
  graph[1,6]=graph[6,1]=False
  valid,rounds=FP.arc_consistent(graph,colors,list(range(6)))
  self.assertEqual(valid.tolist(),[True]*6+[False]);self.assertGreater(rounds,0)
  cover=dict(bin_indices=[[[1,1,1,1,1]] for _ in range(6)])
  refined,result=FP.refine(None,None,cover,list(range(6)),bin_cap=5)
  self.assertIsNone(refined);self.assertEqual(result['status'],'UNRESOLVED')

if __name__=='__main__':unittest.main()
