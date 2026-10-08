#!/usr/bin/env python3
"""Optional exact symbolic check of the explicit strict-corner carrier family.
Not needed for the standard-library all-carrier-neighborhood certificate.
Requires SymPy; see requirements-symbolic.txt. No numerical substitutions.
"""
from pathlib import Path
import json, platform, sys, time
import sympy as s
ROOT=Path(__file__).resolve().parent

def main():
    start=time.time()
    x=s.symbols('x', real=True)
    w=(-1+s.I*s.sqrt(3))/2
    z=(1+s.I*x)**2/(1+x*x)
    def simp(v):
        return s.factor(s.expand_complex(v))
    def zero(v):
        if simp(v)!=0:
            raise ValueError('symbolic identity failed: '+str(simp(v)))
    F=s.Matrix([[w**(r*j) for j in range(3)] for r in range(3)])
    A=s.diag(1,z,1)
    H=F.row_join(A*F).col_join(F.row_join(-A*F))
    for v in H:
        zero(v*s.conjugate(v)-1)
    for v in H*H.adjoint()-6*s.eye(6):
        zero(v)
    E=H.extract([0,5,1],[0,3,2])
    target=s.Matrix([[1,1,1],[1,-1,w],[1,z,w*w]])
    for v in E-target:
        zero(v)
    G=6*s.eye(3)-E*E.adjoint()
    ss,tt,rr=[simp(G[i,j]) for i,j in [(1,0),(2,0),(2,1)]]
    X,Y,Z=[simp(v*s.conjugate(v)) for v in (ss,tt,rr)]
    p=simp(X+Y+Z)
    J=simp(ss*rr*s.conjugate(tt)+s.conjugate(ss*rr)*tt)
    W=simp(X*Y+X*Z+Y*Z-X*Y*Z)
    g=simp(27-3*p+J);eta=simp(9-p+J)
    chi=simp(W-(p-9)*(p-18)+(p-15)*J)
    R=simp(4*g*g*eta-chi*chi)
    expected=[12*(x*x+s.sqrt(3)*x+1)/(1+x*x),
              4*(x*x+s.sqrt(3)*x+1)/(1+x*x),
              -24*(2*x**4+3*s.sqrt(3)*x**3+6*x*x+3*s.sqrt(3)*x+2)/(1+x*x)**2,
              576*x*x*(1-x*x)**2/(1+x*x)**4]
    for a,b in zip([g,eta,chi,R],expected): zero(a-b)
    H0=H.subs(x,0)
    distances=[]
    for j in range(6):
        overlap=(H0[:,j].conjugate().T*H[:,j])[0]/6
        d2=simp(1-overlap*s.conjugate(overlap))
        zero(d2-(0 if j<3 else 8*x*x/(9*(1+x*x))))
        distances.append(str(d2))
    report={'status':'PASS','command':'python3 verify_seed_family.py',
            'python':sys.version,'sympy':s.__version__,'platform':platform.platform(),
            'arithmetic':'exact symbolic Q(i,sqrt(3))(x); x real',
            'all_36_entries_unit_modulus':True,'all_36_HHadjoint_identities':True,
            'corner_rows':[0,5,1],'corner_columns':[0,3,2],
            'seeds':['-1','omega','(1+i*x)^2/(1+x^2)','omega^2'],
            'g_eta_chi_R':[str(s.factor(v)) for v in [g,eta,chi,R]],
            'squared_column_projector_distances':distances,
            'strict_interval':'0<abs(x)<=1/2048',
            'closed_covered_interval':'abs(x)<=1/2048',
            'sheet_caution':'This constructs actual carriers, not both completions at the same seeds. The main theorem covers either sheet when its completed carrier lies in the stated distance domain.',
            'elapsed_seconds':time.time()-start}
    print(json.dumps(report,indent=2))
    print('PASS: exact physical family, selected a=-1 corner, R, and projector distances.')
if __name__=='__main__': main()
