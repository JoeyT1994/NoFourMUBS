"""Exact endpoint chart diagnostics over Q(sqrt(-3)); no numerical evidence."""
from itertools import permutations
import sympy as s

def run():
    z=(1+s.sqrt(3)*s.I)/2;x=s.Symbol('x');out=[]
    for seed in [(1,2,2,4),(4,5,0,3),(2,4,4,2)]:
        E=s.Matrix([[1,1,1],[1,z**seed[0],z**seed[1]],[1,z**seed[2],z**seed[3]]]).applyfunc(s.simplify)
        for orientation,A in [('H',E),('V',E.T)]:
            for perm in permutations(range(3)):
                B=s.Matrix(3,3,lambda i,j:s.simplify(A[perm[i],j]*s.conjugate(A[perm[0],j])))
                ss,tt,rr=[s.simplify(-sum(B[i,j]*s.conjugate(B[k,j]) for j in range(3))) for i,k in [(1,0),(2,0),(2,1)]]
                X,Y,Z=[s.simplify(v*s.conjugate(v)) for v in (ss,tt,rr)];p=X+Y+Z;J=s.simplify(2*s.re(ss*rr*s.conjugate(tt)));g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
                if s.simplify(4*g*g*eta-chi*chi)!=0:raise ValueError('not a critical endpoint')
                P0=s.simplify(rr*ss**2+s.conjugate(rr)*tt**2+(3-Z)*ss*tt);P1=s.simplify(tt*s.conjugate(ss)**2+rr**2*s.conjugate(tt)+(3-Y)*rr*s.conjugate(ss))
                entry=dict(seed=list(seed),orientation=orientation,permutation=list(perm))
                if P0*P1==0:entry['reason']='zero_denominator'
                else:
                    u=s.simplify((g*g+(9-Z)*(9-Y)*eta+(18-Y-Z)*chi/2)/(s.conjugate(P0)*P1))
                    poly=s.simplify(x**3-ss*x*x+u*s.conjugate(ss)*x-u);disc=s.simplify(s.discriminant(poly,x))
                    entry.update(reason='collision' if disc==0 else 'separated',discriminant=str(disc))
                out.append(entry)
    for r in out:
        if r['seed']==[2,4,4,2] and r['reason']!='zero_denominator':raise ValueError('F3 endpoint diagnostic changed')
        if r['seed']==[4,5,0,3] and r['orientation']=='V' and r['reason']=='separated':raise ValueError('vertical endpoint diagnostic changed')
    return dict(status='PASS',arithmetic='exact Q(sqrt(-3))',charts=out)
if __name__=='__main__':
    import json
    print(json.dumps(run(),indent=2))
