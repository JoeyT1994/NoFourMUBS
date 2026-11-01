#!/usr/bin/env python3
"""Exact, input-free replay of the improved Fourier geometry certificate."""
from pathlib import Path
from fractions import Fraction as F
import subprocess,sys,json,time,hashlib,importlib.util
if not __debug__:raise SystemExit('Assertions must be enabled; do not use -O.')
if sys.version_info<(3,10):raise SystemExit('Python 3.10 or newer is required.')
ROOT=Path(__file__).resolve().parent

def run(name):
 out=subprocess.run([sys.executable,'-I',str(ROOT/name)],cwd=ROOT,capture_output=True,text=True)
 (ROOT/(name+'.log')).write_text(out.stdout+out.stderr)
 if out.returncode:print(out.stdout+out.stderr);raise SystemExit('FAILED '+name)
 print('PASS',name,flush=True)
def read(name):return json.loads((ROOT/name).read_text())
def main():
 start=time.time()
 for name in ['certify_symmetric_cross.py','certify_normal_normal.py','verify_frame_bridge.py','derive_cubic.py','predictor_residual.py','normal_bounds_symmetric.py','cubic_envelopes.py','certify_local_predictor_ball.py','export_predictor.py']:run(name)
 cross=read('symmetric_cross_receipt.json');bridge=read('frame_bridge_receipt.json');res=read('predictor_residual_receipt.json')
 assert cross['status']==bridge['status']==res['status']=='PASS'
 assert cross['quadratic_symmetric_TN_norm_squared_upper']=='41/768'
 nn=read('normal_normal_receipt.json');assert nn['status']=='PASS' and nn['symmetric_Q_NN_bilinear_norm_squared_upper']=='19/54'
 assert cross['TT_quadratic_unchanged']
 assert bridge['tangent_projector_commutes_with_transpose'] and bridge['normal_projector_commutes_with_transpose']
 assert bridge['max_tangent_pair_squared_norm']=='7/18'
 expected={4:F(1,648),5:F(173,8398080),6:F(4,98415)}
 assert {row['degree']:F(row['operator_squared_upper']) for row in res['tensor_bounds']}==expected
 rows=read('cubic_envelope_receipt.json')['rows']
 local=read('local_predictor_ball_receipt.json');assert local['status']=='PASS' and F(local['rho'])==F(3,5)
 rows=[local['refined_envelope'] if F(row['rho'])==F(3,5) else row for row in rows]
 by={F(row['rho']):row for row in rows}
 half=by[F(1,2)]
 assert F(half['normal'])<F(21,250)
 assert F(half['column'])<F(43,125)
 assert F(half['error_to_Q'])<F(93,5000)
 assert F(half['error_to_Q_plus_P3'])<F(279,25000)
 assert F(half['normal'])<F(81,1000) and F(half['column'])<F(171,500) and F(half['error_to_Q'])<F(31,2000)
 # Supply exact safe pair-difference bounds from the same normal envelope.
 spec=importlib.util.spec_from_file_location('bounds',ROOT/'normal_bounds_symmetric.py');mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
 usable=[]
 for row in rows:
  if row['error_to_Q_plus_P3'] is None:continue
  rho=F(row['rho']);n=F(row['normal']);assert n*n<=F(23,30)*rho*rho
  pair=mod.ceiling(mod.sqrtup(F(7,18)*(rho*rho-n*n))+mod.sqrtup(F(23,18))*n)
  usable.append({k:row[k] for k in ('rho','normal','column','error_to_Q','error_to_Q_plus_P3')}|{'row_or_column_pair_phase_difference':str(pair)})
 out={'status':'PASS','scope':'Necessary phase geometry for every actual Hadamard; no germ, atlas, or classification assumptions.','normal_normal_tensor_norm_squared_upper':'19/54','exact_TT_identity':'||Q(a+b)||²=(1/3)||a||²||b||²','exact_cubic_orthogonality':'<Q(eta),P3(eta)>=0','exact_cubic_norm_identity':'||P3(eta)||²=(1/72)||a||²||b||²||eta||²','residual_tensor_norm_squared_upper':{str(k):str(v) for k,v in expected.items()},'envelopes':usable,'convenient_half_radius_constants':{'rho':'1/2','normal':'21/250','column':'43/125','error_to_Q':'93/5000'},'sharper_half_radius_constants':{'rho':'1/2','normal':'81/1000','column':'171/500','error_to_Q':'31/2000'},'arithmetic':'Python integers and rational fractions; every square root enclosed by integer square roots.','script_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(ROOT.glob('*.py'))},'elapsed_seconds_informational':time.time()-start}
 (ROOT/'geometry_summary.json').write_text(json.dumps(out,indent=2))
 print('ALL PASS: rho=1/2, n<.084, rcol<.344, epsilon_Q<.0186.',flush=True)
if __name__=='__main__':main()
