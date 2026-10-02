"""Exact certificate assembly and fresh, independent leaf replay."""
from cube import HERE,ROOT,EXT,box,path_audit,sha,F
from pathlib import Path
import gzip,json,importlib.util

def check_pins():
 if not __debug__:raise ValueError('Python -O forbidden')
 pins=json.loads((HERE/'INPUTS.json').read_text())
 for q in pins['files']:
  p=(HERE if q['base']=='module' else ROOT)/q['path']
  if not p.is_file() or sha(p)!=q['sha256']:raise ValueError('SHA-256 mismatch: '+str(p))
 spec=importlib.util.spec_from_file_location('_1551_frontier_pins',EXT/'predicate.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);m.check_pins()
 return pins

def rows(path):
 with gzip.open(path,'rt') as f:return [json.loads(s) for s in f]

def assemble(paths):
 leaves={}
 for stage,path in enumerate(paths):
  rr=rows(path);h=rr[0];records=[q for q in rr if 'prefix'in q]
  if h['geometry_sha256']!=sha(HERE.with_name('ActiveShoulderClosure_v2')/'data/production_region.json'):raise ValueError('input root geometry mismatch')
  if sorted(q['prefix'] for q in records)!=sorted(h['prefixes']) or len(records)!=len({q['prefix'] for q in records}):raise ValueError('missing/duplicate prefix record')
  if not stage:path_audit(h['prefixes'])
  for q in records:
   prefix=q['prefix'];part=q['leaves']
   if any(not n['path'].startswith(prefix) or type(n.get('ok'))!=bool for n in part):raise ValueError('wrong subtree')
   path_audit(n['path'][len(prefix):] for n in part)
   if q['closed']!=all(n['ok'] for n in part):raise ValueError('wrong subtree status')
   if stage:
    if prefix not in leaves or leaves[prefix]['ok']:raise ValueError('replacement is not an open leaf')
    del leaves[prefix]
   for n in part:
    if n['path'] in leaves:raise ValueError('overlapping leaf')
    leaves[n['path']]=n
 path_audit(leaves)
 return [leaves[p] for p in sorted(leaves)]

def audit_leaf(n):
 import time
 from campaign_terminals import external_cpu_total
 from terminals import replay
 start=time.process_time();ex=external_cpu_total()
 if n.get('ok') is not True:raise ValueError('unclosed cube leaf: '+n['path'])
 replay(*box(n['path']),n['terminal'])
 return dict(path=n['path'],status='PASS',method=n['terminal']['method'],cpu_seconds=time.process_time()-start+external_cpu_total()-ex)
