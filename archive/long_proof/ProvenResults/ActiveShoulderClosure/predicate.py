"""Exact-containment application of replayed closed parts of region S.

An incomplete region may have useful certified parts. No unresolved leaf
is accepted, and an exact binary64 input is never rounded inward.
"""
from functools import lru_cache
from pathlib import Path
from fractions import Fraction as F
import gzip,hashlib,json
from geometry import HERE,ROOT,rational,grid_keys,root_box,intersection,path_audit,contains


def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def check_pins():
    data=json.loads((HERE/'INPUTS.json').read_text())
    for item in data['files']:
        p=(HERE if item['base']=='module' else ROOT)/item['path']
        if not p.is_file() or sha(p)!=item['sha256']:raise ValueError(f"input hash mismatch: {item['base']}:{item['path']}")
    return data


def load_forest(check_hashes=True):
    if check_hashes:check_pins()
    index=json.loads((HERE/'data/index.json').read_text())
    rp=HERE/index['region']
    if sha(rp)!=index['region_sha256']:raise ValueError('region hash mismatch')
    region=json.loads(rp.read_text());roots=region['roots'];grid=region['grid']
    if type(grid)!=int or grid<=0 or len(roots)!=len({tuple(k) for k in roots}):raise ValueError('bad root grid')
    if any(len(k)!=4 or any(type(v)!=int for v in k) for k in roots):raise ValueError('bad rational root key')
    forest={};seen=set();accepted=0;leaves=0;closed_roots=0
    for shard in index['shards']:
        p=HERE/shard['path']
        if sha(p)!=shard['sha256']:raise ValueError('certificate shard hash mismatch')
        ids=[]
        for line in gzip.open(p,'rt'):
            r=json.loads(line);rid=r['root'];ids.append(rid)
            if rid in seen or type(rid)!=int or not 0<=rid<len(roots) or r['key']!=roots[rid]:raise ValueError('duplicate or wrong root')
            seen.add(rid);path_audit(x['path'] for x in r['leaves'])
            if any(type(x['ok'])!=bool for x in r['leaves']):raise ValueError('nonboolean acceptance')
            done=all(x['ok'] for x in r['leaves'])
            if r['closed']!=done:raise ValueError('false root summary')
            accepted+=sum(x['ok'] for x in r['leaves']);leaves+=len(r['leaves']);closed_roots+=int(done)
            forest[tuple(r['key'])]={x['path']:x for x in r['leaves']}
        if ids!=shard['roots']:raise ValueError('shard root inventory mismatch')
    if seen!=set(range(len(roots))):raise ValueError('missing region root')
    if (len(roots),leaves,accepted,closed_roots)!=(index['roots'],index['leaves'],index['accepted_leaves'],index['closed_roots']):raise ValueError('index census mismatch')
    return index,region,forest

def load_box_certificates(index,region):
    meta=index['box_certificates'];p=HERE/meta['path']
    if sha(p)!=meta['sha256']:raise ValueError('box certificate hash mismatch')
    boxes=[json.loads(l) for l in gzip.open(p,'rt')]
    if len(boxes)!=meta['count'] or len({b['id'] for b in boxes})!=len(boxes):raise ValueError('box certificate census')
    roots={tuple(k) for k in region['roots']}
    for b in boxes:
        c=list(map(F,b['centers']));r=[F(b['radius'])]*4
        if len(c)!=4 or any(h<0 for h in r) or not b['report']['ok']:raise ValueError('invalid box certificate')
        if not all(k in roots for k in grid_keys(c,r,region['grid'])):raise ValueError('certified box not in S')
    return boxes

@lru_cache(1)
def _assets():
    index,region,forest=load_forest()
    if index.get('accepting_leaf_replay')!='PASS':raise ValueError('accepting leaves not replayed')
    boxes=load_box_certificates(index,region)
    by_root={}
    for b in boxes:
        c=list(map(F,b['centers']));r=[F(b['radius'])]*4
        for key in grid_keys(c,r,region['grid']):by_root.setdefault(key,[]).append((c,r,b['id']))
    return region,forest,by_root


def within_tree(key,grid,tree,c,r,path=''):
    if path in tree:
        w=tree[path]
        return bool(w['ok']),None if w['ok'] else dict(root=list(key),path=path,reason=w['reason'])
    # Every nonterminal path has exactly both children, by the exact
    # prefix/Kraft audit. Clip the query to each nonempty closed child.
    bc,br=root_box(key,grid,path);axis=len(path)%4;mid=bc[axis]
    lo=c[axis]-r[axis];hi=c[axis]+r[axis]
    for bit,left,right in [('0',lo,min(hi,mid)),('1',max(lo,mid),hi)]:
        if left>right:continue
        cc=list(c);rr=list(r);cc[axis]=(left+right)/2;rr[axis]=(right-left)/2
        ok,witness=within_tree(key,grid,tree,cc,rr,path+bit)
        if not ok:return False,witness
    return True,None


def certify_box(centers,radii):
    """Only True is a certificate, for every strict physical maximal carrier.

    Args: four int/Fraction/finite-binary64 centers and nonnegative radii,
    all in radians. The caller supplies every desired guard explicitly.
    Periodic wraps are not implicit; absence of containment is inconclusive.
    """
    try:
        if len(centers)!=4 or len(radii)!=4:raise ValueError('four coordinates required')
        c=[rational(x) for x in centers];r=[rational(x) for x in radii]
        if any(h<0 for h in r):raise ValueError('negative radius')
        region,forest,boxes=_assets();grid=region['grid']
        first_key=tuple(((x-h)*grid).__floor__() for x,h in zip(c,r))
        for bc,br,bid in boxes.get(first_key,[]):
            if contains(bc,br,c,r):return dict(ok=True,reason='exact_containment_in_replayed_box',certificate_id=bid,scope='strict physical maximal carriers')
        # A huge query cannot be contained in these finite grid roots.
        spans=[((x+h)*grid).__floor__()-((x-h)*grid).__floor__()+1 for x,h in zip(c,r)]
        n=1
        for k in spans:n*=k
        if n>len(forest):return dict(ok=False,reason='outside_region')
        for key in grid_keys(c,r,grid):
            if key not in forest:return dict(ok=False,reason='outside_region',root=list(key))
            clipped=intersection(c,r,key,grid)
            if clipped is None:continue
            ok,why=within_tree(key,grid,forest[key],*clipped)
            if not ok:return dict(ok=False,reason='unresolved_region_leaf',witness=why)
        return dict(ok=True,reason='exact_containment_in_replayed_region',scope='strict physical maximal carriers')
    except (ValueError,TypeError,OverflowError,KeyError,OSError) as e:
        return dict(ok=False,reason='invalid_input_or_certificate',detail=str(e))
