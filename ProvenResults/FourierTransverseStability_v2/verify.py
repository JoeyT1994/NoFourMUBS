#!/usr/bin/env python3
"""Replay the complete regional theorem, exact algebra and directed controls.

No retained PASS flag, numerical inverse or floating residual is trusted.
The five previously proved matrix tubes are hash-pinned imports; their
separate common-ray graphs are not rerun by this module.
"""
import os
for k in ['OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS']:os.environ[k]='1'
import argparse,concurrent.futures,hashlib,json,platform,time
from pathlib import Path
from affine_signed import *
from geometry import DOMAIN,HU,HW,contains_box,standard_guard,root_positive,FRAMES
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]

def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()

def bindings(root=ROOT):
 dep=json.loads((HERE/'data'/'dependencies.json').read_text());require(isinstance(dep,dict) and len(dep)>20,'nonempty proved inputs')
 for rel,sha in dep.items():require((root/rel).is_file() and digest(root/rel)==sha,'proved input changed or missing: '+rel)
 t=json.loads((root/'ProvenResults/ActiveShoulderClosure/data/extra_tubes.json').read_text());require(t['direct_radius']=='1/36','direct projector tube radius')
 cells={(c['grid'],c['a'],c['b'],c['tolerance_denominator'],c['rho_denominator']) for c in t['cells']}
 require(all((180,a,b,6,6) in cells for a,b in [(0,0),(2,0),(3,0),(3,1),(5,0)]),'all imported cells present')
 return dep

def expected_rect(i,j):
 require(isinstance(i,int) and isinstance(j,int) and 0<=i<14 and 0<=j<10,'tile index')
 return [Q(-1,128)+Q(i,256),Q(-1,128)+Q(i+1,256),Q(-1,64)+Q(j,256),Q(-1,64)+Q(j+1,256)]

def load_tile(i,j):
 stem=HERE/'data'/('tile_%02d_%02d'%(i,j));data=json.loads(Path(str(stem)+'.json').read_text())
 require(list(map(Q,data['rect']))==expected_rect(i,j),'tile rectangle mismatch')
 require(Q(data['hu'])==HU and Q(data['hw'])==HW and data['n']==2,'normal domain mismatch')
 with np.load(str(stem)+'.npz',allow_pickle=False) as f:
  require(set(f.files)=={'C0','Cp','Cq','A'},'retained arrays missing/extra');arrays={k:f[k] for k in f.files}
 for name,shape in [('C0',(6,6,9)),('Cp',(6,6,9)),('Cq',(6,6,9)),('A',(4,22,31))]:
  X=arrays[name];require(X.dtype==np.dtype('float64') and X.shape==shape and np.isfinite(X).all(),'retained array shape/finiteness')
  if name!='A':arrays[name]=np.array([Q(float(x)) for x in X.flat],dtype=object).reshape(shape)
 radii=list(map(Q,data['radii']));require(len(radii)==22,'22 correction radii')
 return data,arrays,radii

def majorant_dominates(fresh,stored):
 for key in ['row_coefficients','both_coefficients','entry_coefficients']:
  require(len(stored[key])==9 and all(Q(x)<=Q(y) for x,y in zip(fresh[key],stored[key])),'understated '+key)
 for key in ['alpha_coefficients','beta_coefficients']:
  require(len(stored[key])==9 and all(Q(y[0])<=Q(x[0])<=Q(x[1])<=Q(y[1]) for x,y in zip(fresh[key],stored[key])),'understated '+key)
 for key in ['error_row','error_both','error_entry','seed_b_phase_cap','raw_entry_phase_cap']:require(Q(fresh[key])<=Q(stored[key]),'understated '+key)

def one(task):
 i,j,precision=task;iv.prec=precision;start=time.process_time();data,arrays,radii=load_tile(i,j);chart=SignedChart(expected_rect(i,j));C0,Cp,Cq=[arrays[k] for k in ['C0','Cp','Cq']]
 eta,K,W,_=affine_envelopes(chart,C0,Cp,Cq,HU,HW,2,inverses=arrays['A']);ok,co,ct,_=signed_correction(chart,eta,K,W,radii)
 require(ok and ct<1,'strict weighted contraction failed')
 fresh=affine_majorants(chart,C0,Cp,Cq,radii,HU,HW);majorant_dominates(fresh,data['majorants'])
 require(Q(fresh['seed_b_phase_cap'])<Q(1,16),'implicit seed outside uniqueness strip')
 require(Q(fresh['raw_entry_phase_cap'])<1,'phase continuation chart too large')
 return dict(i=i,j=j,status='PASS',selfmap_ratio_upper=str(as_rational(co)),contraction_ratio_upper=str(as_rational(ct)),cpu_s=time.process_time()-start,majorants=fresh)

def partition():
 names={p.name for p in (HERE/'data').glob('tile_*.json')};expected={'tile_%02d_%02d.json'%(i,j) for i in range(14) for j in range(10)}
 require(names==expected,'complete 14 by 10 tile cover required')
 area=sum(((expected_rect(i,j)[1]-expected_rect(i,j)[0])*(expected_rect(i,j)[3]-expected_rect(i,j)[2]) for i in range(14) for j in range(10)),Q(0))
 require(area==(DOMAIN[1]-DOMAIN[0])*(DOMAIN[3]-DOMAIN[2]),'exact family area')
 return dict(tiles=140,shape=[14,10],domain=list(map(str,DOMAIN)),area=str(area),normal_boxes_per_tile=4,normal_domain_radians=[str(HU),str(HW)],closed_boundaries=True,unresolved=0)

def check_global(results):
 g=json.loads((HERE/'data'/'majorants.json').read_text())
 for result in results:majorant_dominates(result['majorants'],g)
 return g

def controls():
 checks=[]
 def rejection(name,fn,returns_false=False):
  try:result=fn()
  except (ValueError,TypeError,OverflowError):checks.append(name);return
  require(returns_false and (result is None or result is False),'negative control unexpectedly accepted: '+name)
  checks.append(name)
 data,arrays,radii=load_tile(0,0);f=SignedChart(expected_rect(0,0));C0,Cp,Cq=[arrays[k] for k in ['C0','Cp','Cq']]
 bad=C0.copy();bad[1,1,0]=Q(0);rejection('fixed seed coefficient',lambda:validate_coefficients(bad,Cp,Cq))
 badA=arrays['A'].copy();badA[0,0,8]=2**-20
 rejection('top equation mixing',lambda:affine_envelopes(f,C0,Cp,Cq,HU,HW,2,inverses=badA))
 badA=arrays['A'].copy();badA[0,0,0]=np.nan
 rejection('nonfinite preconditioner',lambda:affine_envelopes(f,C0,Cp,Cq,HU,HW,2,inverses=badA))
 rejection('non-dyadic normal cover',lambda:affine_envelopes(f,C0,Cp,Cq,HU,HW,3,inverses=arrays['A']))
 eta,K,W,_=affine_envelopes(f,C0,Cp,Cq,HU,HW,2,inverses=arrays['A'])
 rejection('zero correction radius',lambda:signed_correction(f,eta,K,W,[Q(0)]*22))
 rejection('undersized correction box',lambda:signed_correction(f,eta,K,W,[Q(1,2**80)]*22)[0],True)
 rejection('singular zero preconditioner',lambda:signed_correction(f,*affine_envelopes(f,C0,Cp,Cq,HU,HW,2,inverses=np.zeros_like(arrays['A']))[:3],radii)[0],True)
 rejection('wrong tile coordinate',lambda:expected_rect(14,0))
 rejection('negative seed half-width',lambda:contains_box([0.]*4,[Q(-1),Q(0),Q(0),Q(0)]))
 rejection('nonfinite seed',lambda:contains_box([float('nan')]*4,[Q(0)]*4))
 rejection('invalid frame',lambda:contains_box([0.]*4,[Q(0)]*4,frame_indices=[144]))
 rejection('unbracketed scalar root',lambda:root_positive(v(100),v(1)))
 rejection('invalid scalar derivative domain',lambda:root_positive(v(Q(1,10)),v(Q(1,2))))
 rejection('negative scalar radicand coordinate',lambda:root_positive(v(-1),v(1)))
 from monotonicity import audit as ma
 rejection('incomplete monotonicity cover',lambda:ma(limit=1))
 # Real positive controls are retained exact binary64 boxes, not reconstructed
 # centre matrices. The two signed branches must both have accepting witnesses.
 cases=json.loads((HERE/'data'/'positive_controls.json').read_text());positive=[]
 for case in cases:
  cc=[float.fromhex(x) for x in case['centres_hex']];hh=[standard_guard()]*4 if case['halfwidth']=='standard' else [Q(case['halfwidth'])]*4
  answer=contains_box(cc,hh);require(answer is not None and len(answer['branches'])==2,'positive whole-box control failed: '+case['name'])
  if case.get('R_strictly_between_0_and_1'):require(Q(answer['R_interval'][0])>0 and Q(answer['R_interval'][1])<1,'low R positive control failed')
  positive.append(dict(name=case['name'],R_interval=answer['R_interval'],branches=[b['frame_index'] for b in answer['branches']]))
  rejection('oversized guard '+case['name'],lambda cc=cc:contains_box(cc,[Q(1)]*4),True)
 return dict(rejection_controls=checks,positive_controls=positive)

def manifest():
 return {str(p.relative_to(HERE)):digest(p) for p in sorted(HERE.rglob('*')) if p.is_file() and (p.suffix in ['.py','.cpp','.npz','.md'] or p.parent.name=='data' and p.suffix=='.json') and 'receipts' not in p.parts and '__pycache__' not in p.parts and p.name!='RECEIPT.md'}

def main():
 p=argparse.ArgumentParser();p.add_argument('--workers',type=int,default=4);p.add_argument('--precision',type=int,default=160);p.add_argument('--receipt',type=Path,default=HERE/'receipts'/'REPLAY.json');a=p.parse_args();require(a.workers>0 and a.precision>=120,'replay arguments');iv.prec=a.precision
 wall=time.time();cpu=time.process_time();dep=bindings();cover=partition()
 from algebra import audit as algebra_audit
 algebra=algebra_audit();negative=controls()
 with concurrent.futures.ProcessPoolExecutor(max_workers=a.workers) as pool:results=list(pool.map(one,[(i,j,a.precision) for i in range(14) for j in range(10)]))
 global_bounds=check_global(results)
 from monotonicity import audit as mono_audit
 monotonicity=mono_audit()
 receipt=dict(status='PASS',precision_bits=a.precision,accepted_tiles=len(results),unresolved_tiles=0,partition=cover,algebra=algebra,controls=negative,monotonicity=monotonicity,global_majorants=global_bounds,maximum_selfmap_ratio_upper=str(max(Q(r['selfmap_ratio_upper']) for r in results)),maximum_contraction_ratio_upper=str(max(Q(r['contraction_ratio_upper']) for r in results)),cpu_s=time.process_time()-cpu+sum(r['cpu_s'] for r in results),wall_s=time.time()-wall,workers=a.workers,python=platform.python_version(),numpy=np.__version__,mpmath=__import__('mpmath').__version__,dependencies=dep,manifest=manifest(),results=[{k:v for k,v in r.items() if k!='majorants'} for r in results],scope='signed-R>0 transverse chart on complete family rectangle; all four physical pairings; no R=0 claim; not whole-shoulder closure',imported_tubes_replayed=False)
 a.receipt.parent.mkdir(exist_ok=True,parents=True);a.receipt.write_text(json.dumps(receipt,indent=2)+'\n')
 print(json.dumps({k:v for k,v in receipt.items() if k not in ['results','manifest','dependencies','global_majorants']},indent=2),flush=True)
if __name__=='__main__':main()
