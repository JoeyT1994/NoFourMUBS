"""Exact closed-box targets. Search scheduling never authorizes acceptance."""
import gzip, hashlib, json
from collections import defaultdict
from geometry import exact, grid_keys, initial_box, contains, intersection

def normalized(row):
    c = list(map(exact, row['centers']))
    r = list(map(exact, row.get('radii', [row.get('radius')]*4)))
    if len(c)!=4 or len(r)!=4 or any(h<0 for h in r): raise ValueError('invalid box')
    return dict(centers=list(map(str,c)), radii=list(map(str,r)))

def unpack(row):
    q=normalized(row)
    return list(map(exact,q['centers'])),list(map(exact,q['radii']))

def read_boxes(path):
    with (gzip.open if str(path).endswith('.gz') else open)(path,'rt') as f:
        for line in f:
            if line.strip(): yield normalized(json.loads(line))

def key(row): return tuple(row['centers']+row['radii'])

def validate_region(region):
    roots=region['roots']
    if not isinstance(roots,list):raise ValueError('root list required')
    if 'grid' in region:
        g=region['grid']
        if type(g)!=int or g<=0 or any(len(k)!=4 or any(type(v)!=int for v in k) for k in roots):raise ValueError('invalid grid')
        keys=[tuple(k) for k in roots]
    else:keys=[key(normalized(q)) for q in roots]
    if len(set(keys))!=len(keys):raise ValueError('duplicate roots')
    if region.get('kind') not in (None,'production_cubes'):raise ValueError('unknown theorem scope')
    return True

def build_region(boxes, grid=None):
    """Default: one exact root per distinct input box, with no grid padding."""
    from geometry import build_region as grid_region
    if grid is not None: return grid_region(boxes,grid)
    roots=[]; seen=set(); count=0; digest=hashlib.sha256()
    for row in boxes:
        q=normalized(row); count+=1
        digest.update((json.dumps(q,sort_keys=True,separators=(',',':'))+'\n').encode())
        k=key(q)
        if k not in seen: seen.add(k); roots.append(q)
    return dict(format=2,layout='exact_boxes',roots=roots,source_count=count,
                normalized_boxes_sha256=digest.hexdigest())

def overlaps(c,r,d,s):
    return all(abs(x-y)<=a+b for x,a,y,b in zip(c,r,d,s))

def clip(c,r,d,s):
    lo=[max(x-a,y-b) for x,a,y,b in zip(c,r,d,s)]
    hi=[min(x+a,y+b) for x,a,y,b in zip(c,r,d,s)]
    if any(a>b for a,b in zip(lo,hi)): return None
    return [(a+b)/2 for a,b in zip(lo,hi)],[(b-a)/2 for a,b in zip(lo,hi)]

def assignments(region, rows):
    """Map real targets to intersecting grid roots, or containing exact roots.

    Exact-box mode selects a containing root if possible. A requested box
    spanning several exact roots is conservatively reported unsupported.
    """
    out=defaultdict(list); missing=[]
    if 'grid' in region:
        index={tuple(k):i for i,k in enumerate(region['roots'])}; g=region['grid']
        for n,row in enumerate(rows):
            c,r=unpack(row)
            # Bound enumeration for malformed/huge queries.
            count=1
            for x,h in zip(c,r): count*=((x+h)*g).__floor__()-((x-h)*g).__floor__()+1
            if count>len(index): missing.append(n); continue
            for k in grid_keys(c,r,g):
                if k not in index: missing.append(n); continue
                out[index[k]].append(row)
    else:
        index={key(normalized(q)):i for i,q in enumerate(region['roots'])}
        boxes=None
        for n,row in enumerate(rows):
            q=normalized(row); rid=index.get(key(q)); c,r=unpack(q)
            if rid is None:
                if boxes is None: boxes=[initial_box(region,i) for i in range(len(region['roots']))]
                rid=next((i for i,(d,s) in enumerate(boxes) if contains(d,s,c,r)),None)
            if rid is None: missing.append(n)
            else: out[rid].append(q)
    return dict(out),sorted(set(missing))

def certify(region, records, centers, radii):
    """Only exact containment in freshly replayed accepting leaves accepts."""
    from tree import query_tree
    row=normalized(dict(centers=centers,radii=radii)); c,r=unpack(row)
    assigned,missing=assignments(region,[row])
    if missing or not assigned: return dict(ok=False,reason='outside_region')
    for rid in assigned:
        if rid not in records: return dict(ok=False,reason='missing_root',root=rid)
        box=clip(c,r,*initial_box(region,rid))
        if box is None or not query_tree(region,records[rid],*box):
            return dict(ok=False,reason='open_leaf',root=rid)
    return dict(ok=True,reason='exact_containment_in_freshly_replayed_subset')
