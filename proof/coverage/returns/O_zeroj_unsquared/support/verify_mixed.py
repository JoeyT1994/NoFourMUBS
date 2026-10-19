#!/usr/bin/env python3
"""Exact source reconstruction and independent integer-DAG replay.

Normal replay needs python-flint, not SymPy. The Laurent checks use only
standard-library integer arithmetic. No floating-point sample is used.
"""
import argparse,copy,json
from itertools import combinations,permutations
from pathlib import Path
import mixed_core as core
HERE=Path(__file__).resolve().parent

class Laurent:
    N=6
    def __init__(self,value=0):
        if isinstance(value,Laurent):self.terms=value.terms
        elif isinstance(value,dict):self.terms={tuple(e):int(c) for e,c in value.items() if c}
        else:self.terms={(0,)*self.N:int(value)} if value else {}
    @classmethod
    def variable(cls,i):return cls({tuple(int(k==i) for k in range(cls.N)):1})
    def __add__(self,other):
        other=Laurent(other);out=dict(self.terms)
        for e,c in other.terms.items():
            out[e]=out.get(e,0)+c
            if not out[e]:del out[e]
        return Laurent(out)
    __radd__=__add__
    def __neg__(self):return Laurent({e:-c for e,c in self.terms.items()})
    def __sub__(self,other):return self+-Laurent(other)
    def __rsub__(self,other):return Laurent(other)+-self
    def __mul__(self,other):
        other=Laurent(other);out={}
        for e,c in self.terms.items():
            for f,d in other.terms.items():
                ef=tuple(a+b for a,b in zip(e,f));out[ef]=out.get(ef,0)+c*d
                if not out[ef]:del out[ef]
        return Laurent(out)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:
            assert len(self.terms)==1
            return self.star()**(-n)
        out=Laurent(1)
        for _ in range(n):out=out*self
        return out
    def star(self):return Laurent({tuple(-a for a in e):c for e,c in self.terms.items()})
    def __eq__(self,other):return self.terms==Laurent(other).terms

def needed_moments():
    return {p for name in ('Tx','Tpair') for (pp,q) in core.coefficients(name) for p in (*pp,q)}

def direct_signature(xs,ys):
    det=Laurent();per=Laurent();mat=[[Laurent(1)]*3,xs,ys]
    for p in permutations(range(3)):
        v=mat[0][p[0]]*mat[1][p[1]]*mat[2][p[2]]
        per+=v;inv=sum(p[i]>p[j] for i in range(3) for j in range(i+1,3));det+=(-1)**inv*v
    U=xs[0]*xs[1]*xs[2];V=ys[0]*ys[1]*ys[2]
    psi=per*det**2*U.star()*V.star()
    return psi-psi.star()

def verify_laurent_sources():
    Laurent.N=6;xs=[Laurent.variable(i) for i in range(3)];ys=[Laurent.variable(i+3) for i in range(3)]
    s,t=sum(xs),sum(ys);S,T=s.star(),t.star();r=sum(x.star()*y for x,y in zip(xs,ys));q=r.star()
    u=xs[0]*xs[1]*xs[2];v=ys[0]*ys[1]*ys[2];U,V=u.star(),v.star();w,W=u*V,U*v
    pi=sum(xs[i]*ys[j] for i in range(3) for j in range(3) if i!=j);PI=pi.star()
    moments=core.newton_moments(s,S,t,T,r,q,u,v,w,U,V,W,pi,PI,u*PI,v*PI,U*pi,V*pi)
    needed=needed_moments()
    for a,b in needed:
        expected=sum((xs[i]**a*ys[i]**b for i in range(3)),Laurent())
        assert Laurent(moments[a,b])==expected,('Newton moment',a,b)
    d=Laurent()
    for (a,b,c,e),co in core.d_polynomial().items():
        d+=co*xs[0]**(-a-b)*ys[0]**(-c-e)*xs[1]**a*ys[1]**c*xs[2]**b*ys[2]**e
    assert d==direct_signature(xs,ys),'48-term signature does not match original perm/det expression'

    # Twelve independent formal phases; no strip orthogonality and no
    # criticality are used in either regrouping identity.
    Laurent.N=12;xx=[Laurent.variable(i) for i in range(6)];yy=[Laurent.variable(i+6) for i in range(6)]
    M={p:sum((xx[j]**p[0]*yy[j]**p[1] for j in range(3)),Laurent()) for p in needed}
    N={p:sum((xx[j]**p[0]*yy[j]**p[1] for j in range(3,6)),Laurent()) for p in needed}
    direct={'Tx':Laurent(),'Tpair':Laurent()}
    for j,k in combinations(range(3),2):
        for c in range(3,6):
            sig=direct_signature([xx[j],xx[k],xx[c]],[yy[j],yy[k],yy[c]])
            direct['Tx']+=2*xx[c]*sig
            direct['Tpair']+=(xx[j]+xx[k])*yy[c]*sig
    for name in ('Tx','Tpair'):
        regrouped=Laurent()
        for (pp,q),co in core.coefficients(name).items():
            assert (2*co).denominator==1
            regrouped+=int(2*co)*M[pp[0]]*M[pp[1]]*N[q]
        assert regrouped==direct[name],('Mixed corner regrouping',name)
    return {'newton_moments':len(needed),'signature_monomials':len(core.d_polynomial()),'regroupings':2,'moment_terms':{name:len(core.coefficients(name)) for name in ('Tx','Tpair')}}

def evaluate_dag(certificate):
    names=certificate['variables'];assert len(names)==len(set(names))
    variables=dict(zip(('z','X','Y','h'),core.CTX.gens()));values=[]
    for i,node in enumerate(certificate['nodes']):
        op=node[0]
        if op=='const':
            assert len(node)==2 and type(node[1]) is int;v=core.CTX.constant(node[1])
        elif op=='var':
            assert len(node)==2 and type(node[1]) is int and 0<=node[1]<len(names);v=variables[names[node[1]]]
        elif op in ('add','mul'):
            assert len(node)==3 and all(type(j) is int and 0<=j<i for j in node[1:])
            a,b=[values[j] for j in node[1:]];v=a+b if op=='add' else a*b
        elif op=='pow':
            assert len(node)==3 and type(node[1]) is int and 0<=node[1]<i and type(node[2]) is int and node[2]>=0
            v=values[node[1]]**node[2]
        else:raise AssertionError(('Unknown DAG operation',op))
        values.append(v)
    assert all(type(j) is int and 0<=j<len(values) for j in (certificate['lhs'],certificate['rhs']))
    lhs=values[certificate['lhs']];rhs=values[certificate['rhs']]
    assert lhs==rhs,('Integer polynomial equality failed',certificate['id'])
    return values

def bind_source(cert,values,sources):
    indices=cert['rational_sources']
    assert len(indices)==4 and all(type(j) is int and 0<=j<len(values) for j in indices)
    ln,ld,rn,rd=[values[i] for i in indices]
    # Polynomial cross multiplication alone would otherwise accept 0/0.
    assert ld and rd,('Zero source denominator',cert['id'])
    left,right=sources[cert['id']]
    assert ln*left.d==left.n*ld,('Original source binding failed',cert['id'])
    assert rn*right.d==right.n*rd,('Ideal cofactor binding failed',cert['id'])
    assert values[cert['lhs']]==ln*rd and values[cert['rhs']]==rn*ld

def verify(path=None,self_test=False):
    assert __debug__,'Run with assertions enabled'
    details=verify_laurent_sources();sources,_,_=core.exact_targets()
    path=Path(path) if path else HERE.parent/'certificates'/'mixed_certificates.json';data=json.loads(path.read_text())
    assert data['format']=='integer_polynomial_dag_v1'
    assert len(data['certificates'])==len(sources)
    assert set(c['id'] for c in data['certificates'])==set(sources)
    for cert in data['certificates']:
        values=evaluate_dag(cert);bind_source(cert,values,sources)
    if self_test:
        bad=copy.deepcopy(data['certificates'][0]);n=len(bad['nodes']);bad['nodes']+=[['const',1],['add',bad['lhs'],n]];bad['lhs']=n+1
        try:evaluate_dag(bad)
        except AssertionError:pass
        else:raise AssertionError('Mutation self-test accepted a false identity')
        bad=copy.deepcopy(data['certificates'][0]);bad['nodes']=[['const',0]];bad['lhs']=bad['rhs']=0;bad['rational_sources']=[0,0,0,0]
        try:bind_source(bad,evaluate_dag(bad),sources)
        except AssertionError:pass
        else:raise AssertionError('Zero-denominator self-test accepted 0/0')
    return {'status':'PASS',**details,'source_bound_integer_identities':len(data['certificates']),'certificate_bytes':path.stat().st_size,'mutation_self_test':self_test,'zero_denominator_self_test':self_test}

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--self-test',action='store_true');args=parser.parse_args()
    print(json.dumps(verify(self_test=args.self_test),sort_keys=True))
