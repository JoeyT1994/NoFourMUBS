"""Independent exact torus-cover validation, without stored predicate trust."""
from pathlib import Path
from itertools import product
import gzip,json

def native_grid(g):
    if type(g)!=int or not 0<=g<324:raise ValueError('native grid index')
    d=g%6;g//=6;c=g%3-1;g//=3;b=g%6;g//=6;a=g-1
    return a,b,c,d

def native_id(root):
    if not isinstance(root,(tuple,list)) or len(root)!=4 or any(type(v)!=int for v in root):raise ValueError('root vector')
    a,b,c,d=(v%6 for v in root);a=-1 if a==5 else a;c=-1 if c==5 else c
    if a not in (-1,0,1) or c not in (-1,0,1):raise ValueError('root outside initial anchor cover')
    return (((a+1)*6+b)*3+c+1)*6+d

def orbit(v):
    v=tuple(x%6 for x in v);seen={v};stack=[v]
    while stack:
        a,b,c,d=stack.pop()
        for w in ((c,d,a,b),((-b)%6,(-a)%6,(-c)%6,(-d)%6),((-a)%6,(-b)%6,(-d)%6,(-c)%6)):
            if w not in seen:seen.add(w);stack.append(w)
    return seen

def validate(path):
    initial={tuple(x%6 for x in native_grid(g)) for g in range(324)};assert len(initial)==324
    byroot={};predicates={};total=0
    opener=gzip.open if str(path).endswith('.gz') else open
    with opener(path,'rt',encoding='utf-8') as f:
        for lineno,line in enumerate(f,1):
            r=json.loads(line);g=native_id(r['root']);p=r['path'];kind=r['kind']
            if not isinstance(p,str) or set(p)-{'0','1'} or len(p)>80:raise ValueError('binary path')
            if type(kind)!=int or kind<=0:raise ValueError('nonaccepting source label')
            byroot.setdefault(g,[]).append(p);predicates[str(kind)]=predicates.get(str(kind),0)+1;total+=1
    if not total:raise ValueError('empty cover')
    covered=set();roots=[];maxdepth=0
    for g,paths in sorted(byroot.items()):
        represented=orbit(native_grid(g))&initial
        if covered&represented:raise ValueError('duplicate symmetry root orbit')
        covered|=represented
        if len(set(paths))!=len(paths):raise ValueError('duplicate terminal path')
        seen=set()
        for p in sorted(paths,key=len):
            if any(p[:j] in seen for j in range(len(p))):raise ValueError('terminal prefix overlap')
            seen.add(p)
        depth=max(map(len,paths));maxdepth=max(maxdepth,depth)
        if sum(1<<(depth-len(p)) for p in paths)!=1<<depth:raise ValueError('incomplete binary root cover')
        roots.append({'grid':g,'root':list(native_grid(g)),'terminals':len(paths),'max_depth':depth,'initial_cells_in_orbit':len(represented)})
    if covered!=initial or len(byroot)!=102:raise ValueError('incomplete initial symmetry coverage')
    return {'status':'PASS_EXACT_CLOSED_COVER','initial_cells':324,'representative_roots':102,'terminals':total,'max_depth':maxdepth,'recorded_predicate_counts':predicates,'roots':roots}
