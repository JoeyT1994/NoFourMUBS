"""Optional source-preserving DAG generator (SymPy only for generation)."""
import json,time
from pathlib import Path
import sympy as sp
import mixed_core as core
HERE=Path(__file__).resolve().parent

def dag(left,right,name):
    ln,ld=sp.fraction(sp.together(left));rn,rd=sp.fraction(sp.together(right))
    variables=sorted(set().union(*(v.free_symbols for v in (ln,ld,rn,rd))),key=str)
    positions={v:i for i,v in enumerate(variables)};nodes=[];memo={}
    def node(spec):
        key=tuple(spec)
        if key not in memo:memo[key]=len(nodes);nodes.append(spec)
        return memo[key]
    def encode(e):
        e=sp.sympify(e)
        if e.is_Integer:return node(['const',int(e)])
        if e.is_Symbol:return node(['var',positions[e]])
        if e.is_Add or e.is_Mul:
            op='add' if e.is_Add else 'mul';aa=[encode(a) for a in e.args];r=aa[0]
            for a in aa[1:]:r=node([op,r,a])
            return r
        if e.is_Pow and e.exp.is_Integer and e.exp>=0:return node(['pow',encode(e.base),int(e.exp)])
        raise ValueError(e)
    sources=[encode(v) for v in (ln,ld,rn,rd)]
    lhs=node(['mul',sources[0],sources[3]]);rhs=node(['mul',sources[2],sources[1]])
    return {'id':name,'variables':list(map(str,variables)),'nodes':nodes,'lhs':lhs,'rhs':rhs,'rational_sources':sources}

def rational(f):
    n=sp.sympify(str(f.n).replace('^','**'));d=sp.sympify(str(f.d).replace('^','**'))
    n=sp.horner(n,*sorted(n.free_symbols,key=str))
    return n/sp.factor(d)
def generate():
    t0=time.time();exact,cof,repcof=core.exact_targets();z,X,Y,h=sp.symbols('z X Y h')
    raw=core.mixed_values(sp.sympify,z,X,Y,('Tx',))['Tx'];W,mult,target=core.generic_definitions(z,X,Y)
    left=mult*(raw.c[0]+h*raw.c[1]);right=target[0]+h*target[1]+W*(rational(cof[0])+h*rational(cof[1]))
    certs=[dag(left,right,'generic')];print('generic nodes',len(certs[-1]['nodes']),time.time()-t0,flush=True)
    raw=core.mixed_values(sp.sympify,z,X,X,('Tpair',));C2,target,_=core.repeated_definitions(z,X)
    for name in ('Tpair',):
        certs.append(dag(raw[name].c[0],target[name]+C2*rational(repcof[name]),'repeated_'+name))
        print(name,'nodes',len(certs[-1]['nodes']),time.time()-t0,flush=True)
    out={'format':'integer_polynomial_dag_v1','certificates':certs}
    (HERE.parent/'certificates'/'mixed_certificates.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
    print('mixed bytes',(HERE.parent/'certificates'/'mixed_certificates.json').stat().st_size,flush=True)
    return out
if __name__=='__main__':generate()
