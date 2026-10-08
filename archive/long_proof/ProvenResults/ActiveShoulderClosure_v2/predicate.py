"""Exact containment only. Open geometry or missing replay is inconclusive."""
from pathlib import Path
from functools import lru_cache
from fractions import Fraction as F
import json,hashlib
from geometry import HERE,ROOT,exact,grid_keys,intersection
from tree import query_tree
from assemble import load_shard

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def check_pins():
    if not __debug__:raise ValueError('Python -O is forbidden by adopted proof assertions')
    pins=json.loads((HERE/'INPUTS.json').read_text())
    for q in pins['files']:
        p=(HERE if q['base']=='module' else ROOT)/q['path']
        if not p.is_file() or sha(p)!=q['sha256']:raise ValueError('dependency hash mismatch: '+str(p))
    return pins
@lru_cache(1)
def assets():
    check_pins();index=json.loads((HERE/'data/index.json').read_text())
    if index.get('replay')!='PASS':raise ValueError('forest not replayed')
    region=json.loads((HERE/index['region']).read_text());forest=load_shard(HERE/index['forest'],region,sha(HERE/index['region']))
    if sha(HERE/index['forest'])!=index['forest_sha256']:raise ValueError('forest hash')
    return region,{tuple(region['roots'][r['root']]):r for r in forest}

def certify_box(centers,radii):
    try:
        c=list(map(exact,centers));r=list(map(exact,radii))
        if len(c)!=4 or len(r)!=4 or any(h<0 for h in r):raise ValueError('invalid exact box')
        region,forest=assets();g=region['grid'];count=1
        for x,h in zip(c,r):count*=((x+h)*g).__floor__()-((x-h)*g).__floor__()+1
        if count>len(forest):return dict(ok=False,reason='outside_region')
        for k in grid_keys(c,r,g):
            if k not in forest:return dict(ok=False,reason='outside_region')
            box=intersection(c,r,k,g)
            if box is not None and not query_tree(region,forest[k],*box):return dict(ok=False,reason='open_leaf',root=list(k))
        return dict(ok=True,reason='exact_containment_in_replayed_subset',scope='campaign Q: Hplus not a quartet edge on strict D0; R=0 maximal corners use A1/F6')
    except Exception as ex:return dict(ok=False,reason='invalid_input_or_certificate',detail=f'{type(ex).__name__}: {ex}')


class VerifiedRegion:
    """For a new full-run region: replay once, then use exact containment only.

    This constructor does not trust a caller-supplied PASS bit. It checks
    fixed dependency hashes and freshly replays every accepting witness.
    """
    def __init__(self,region_path,forest_path,precision=160):
        from tree import audit_root
        check_pins();self.region=json.loads(Path(region_path).read_text())
        if 'grid' not in self.region:raise ValueError('generic predicate requires grid region')
        records=load_shard(forest_path,self.region,sha(region_path))
        if {r['root'] for r in records}!=set(range(len(self.region['roots']))):raise ValueError('missing region roots')
        for r in records:audit_root(self.region,r,replay=True,precision=precision)
        self.forest={tuple(self.region['roots'][r['root']]):r for r in records}
        self.input_hashes=dict(region_sha256=sha(region_path),forest_sha256=sha(forest_path))
    def certify_box(self,centers,radii):
        try:
            c=list(map(exact,centers));r=list(map(exact,radii))
            if len(c)!=4 or len(r)!=4 or any(x<0 for x in r):raise ValueError('invalid exact box')
            g=self.region['grid'];count=1
            for x,h in zip(c,r):count*=((x+h)*g).__floor__()-((x-h)*g).__floor__()+1
            if count>len(self.forest):return dict(ok=False,reason='outside_region')
            for k in grid_keys(c,r,g):
                if k not in self.forest:return dict(ok=False,reason='outside_region')
                clipped=intersection(c,r,k,g)
                if clipped is not None and not query_tree(self.region,self.forest[k],*clipped):return dict(ok=False,reason='open_leaf')
            return dict(ok=True,reason='exact_containment_in_freshly_replayed_subset')
        except Exception as ex:return dict(ok=False,reason='invalid_input',detail=str(ex))
