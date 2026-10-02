"""Pinned production cube and exact seed-only binary partition."""
from pathlib import Path
import sys,json,hashlib
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
EXT=HERE.with_name('ActiveShoulderClosure_v2_frontier')
if str(EXT) not in sys.path:sys.path.insert(0,str(EXT))
from bootstrap import BASE
from fractions import Fraction as F
from geometry import initial_box,split_box,path_audit

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def region():return json.loads((BASE/'data/production_region.json').read_text())
def box(path=''):
 if not isinstance(path,str) or len(path)>40 or any(b not in '01' for b in path):raise ValueError('invalid binary path')
 c,r=initial_box(region(),7)
 for d,b in enumerate(path):c,r=split_box(c,r,d%4,int(b))
 return c,r

def audit_geometry():
 from production import build
 actual=region();expected=build()
 if actual!=expected:raise ValueError('production geometry mismatch')
 q=actual['roots'][7]
 if q['seed']!=[1,5,5,1]:raise ValueError('representative')
 c,r=box()
 if c[1]!=c[2] or r[1]!=r[2]:raise ValueError('cube not transpose invariant')
 members=[s for s in actual['seeds'] if s['representative']==q['seed']]
 if sorted(s['seed'] for s in members)!=[[1,5,5,1],[5,1,1,5]]:raise ValueError('two-cube census')
 return dict(status='PASS',cubes=2,seed=q['seed'],half_width=actual['half_width'],transpose_permutation=[0,2,1,3],members=members)
