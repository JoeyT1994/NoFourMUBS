"""Replayed forest plus exact containment; stored PASS flags never suffice."""
from bootstrap import HERE, ROOT, load_base
from pathlib import Path
import hashlib, json, tempfile
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor
from frontier_boxes import normalized, unpack, clip, assignments,validate_region
from geometry import initial_box
from tree import query_tree, audit_root
from assemble import load_shard

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()

def check_pins():
    if not __debug__: raise ValueError('Python -O is forbidden')
    pins=json.loads((HERE/'INPUTS.json').read_text())
    for q in pins['files']:
        p=(HERE if q['base']=='module' else ROOT)/q['path']
        if not p.is_file() or sha(p)!=q['sha256']: raise ValueError('dependency hash mismatch: '+str(p))
    load_base('predicate').check_pins()
    return pins

_AUDIT_REGION=None
def _fresh_cache_initializer(cache,region):
    # Only passed from this invocation's fresh parallel cover computations.
    from campaign_terminals import retain_fresh_cover
    global _AUDIT_REGION
    _AUDIT_REGION=region
    for key,result in cache.items(): retain_fresh_cover(key,result)

def _audit_task(task):
    region,row,precision=task
    if region is None:region=_AUDIT_REGION
    return audit_root(region,row,replay=True,precision=precision)

class VerifiedRegion:
    """Missing roots are inconclusive. Full closure of padding is unnecessary."""
    def __init__(self,region_path,forest_paths,precision=160,jobs=1,cover_progress=None):
        check_pins()
        self.region=json.loads(Path(region_path).read_text()); self.records={}; self.audits=[]
        validate_region(self.region)
        if isinstance(forest_paths,(str,Path)): forest_paths=[forest_paths]
        for path in forest_paths:
            for row in load_shard(path,self.region,sha(region_path)):
                if row['root'] in self.records: raise ValueError('duplicate authoritative root')
                self.records[row['root']]=row
        if type(jobs)!=int or jobs<1: raise ValueError('positive jobs required')
        if jobs==1:
            self.audits=[_audit_task((self.region,r,precision)) for r in self.records.values()]
            self.parallel_covers=None
        else:
            from parallel_replay import collect,prepare
            from campaign_terminals import _replay_cover_cache
            requests,_=collect(self.region,list(self.records.values()))
            self.parallel_covers=None
            if requests:
                with tempfile.TemporaryDirectory(prefix='shoulder_fresh_cover_') as tmp:
                    directory=cover_progress if cover_progress is not None else Path(tmp)/'progress'
                    self.parallel_covers=prepare(self.region,list(self.records.values()),jobs,directory)
            # Keys are exact outward geometries; no stored receipt enters here.
            cache={k:_replay_cover_cache[k] for k in requests}
            with ProcessPoolExecutor(max_workers=jobs,mp_context=get_context('spawn'),
                    initializer=_fresh_cache_initializer,initargs=(cache,self.region)) as pool:
                self.audits=list(pool.map(_audit_task,((None,r,precision) for r in self.records.values()),chunksize=16))
        self.input_hashes=dict(region_sha256=sha(region_path),forests={str(p):sha(p) for p in forest_paths})

    def certify_boxes(self,rows):
        """Batch index construction makes an exact-box full frontier linear."""
        rows=list(map(normalized,rows)); assigned,missing=assignments(self.region,rows)
        # Preserve duplicate queries and input order without reindexing roots.
        lookup={tuple(q['centers']+q['radii']):[] for q in rows}
        for rid,targets in assigned.items():
            for q in targets: lookup[tuple(q['centers']+q['radii'])].append(rid)
        bad=set(missing); results=[]
        for i,q in enumerate(rows):
            ids=set(lookup[tuple(q['centers']+q['radii'])]); c,r=unpack(q)
            ok=i not in bad and bool(ids)
            for rid in ids:
                if rid not in self.records: ok=False; break
                bc,br=initial_box(self.region,rid); piece=clip(c,r,bc,br)
                if piece is None or not query_tree(self.region,self.records[rid],*piece): ok=False; break
            results.append(dict(ok=ok,reason='exact_containment_in_freshly_replayed_subset' if ok else 'outside_certified_subset'))
        return results

    def certify_box(self,centers,radii):
        try: return self.certify_boxes([dict(centers=centers,radii=radii)])[0]
        except Exception as ex: return dict(ok=False,reason='invalid_input',detail=str(ex))

def certify_box(centers,radii,*,verified_region):
    if not isinstance(verified_region,VerifiedRegion): return dict(ok=False,reason='fresh_replay_required')
    return verified_region.certify_box(centers,radii)
