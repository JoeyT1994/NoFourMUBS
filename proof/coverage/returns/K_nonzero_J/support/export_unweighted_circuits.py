#!/usr/bin/env python3
"""Export the signed and weighted identities as explicit integer polynomial DAGs.

DAG left sides retain their defining determinant/permanent, lambda-pair,
Gram-cubic, and moment-product expressions. They are compared against
independently regrouped/factored right sides. Laurent identities are
cleared by their explicit monomial denominators before encoding; the
output has no inverse or division nodes.
"""
import argparse
import itertools
import json
from pathlib import Path
import sys
import sympy as sp

# The returned package may put this generator beside its helpers or one
# level above a support/ directory. The final fallback serves the original
# development layout; every candidate is relative to this source file.
_here=Path(__file__).resolve().parent
for _candidate in (_here, _here/'support', _here.parent/'support', _here.parent/'fourier'):
    if (_candidate/'audit_scalar.py').is_file() and (_candidate/'verify_scalar_circuit.py').is_file():
        sys.path.insert(0,str(_candidate))
        break
from audit_scalar import write_integer_certificate
from verify_scalar_circuit import check
from verify_unweighted import verify


def build(output_path):
    data=verify()
    targets=[]
    names=[]
    explanations=[]
    def add(name,left,right,note):
        names.append(name)
        targets.append((left,right))
        explanations.append(note)

    # Original normalized-corner defining expression versus the 48 Laurent terms.
    a,b,c,d=sp.symbols('a b c d')
    E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    per=sum(sp.prod(E[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    det=a*d-b*c-a+b+c-d
    psi=per*det**2/(a*b*c*d)
    source_D=psi-psi.xreplace({v:1/v for v in (a,b,c,d)})
    terms=data['corner_Laurent']['terms']
    expanded_D=sum(co*sp.prod(v**e for v,e in zip((a,b,c,d),ex)) for ex,co in terms)
    add('corner_D_definition',source_D,expanded_D,
        'Laurent identity; both sides are multiplied by explicit monomial denominators. D=perm(E)det(E)^2/prod(E) minus its formal conjugate.')

    # The cleared lambda-pair identity, retaining its factored definitions.
    k,Z,u,v=sp.symbols('k Z u v')
    h=1+k*k
    lp=4*(3*h+2*k)-2*(9-Z)*(1+k)*h
    lm=4*(3*h-2*k)-2*(9-Z)*(1-k)*h
    pp=(3-Z)*u+v
    pm=(3-Z)*u-v
    left=2*u*lp*lm+2*h*((1+k)*pp*lm+(1-k)*pm*lp)
    right=16*k*(3*k*k+1)*(h*v-k*((9-Z)*h-4)*u)
    add('cleared_paired_moment',left,right,
        'Polynomial identity obtained before any lambda denominator division. lp=h^2 Lplus and lm=h^2 Lminus.')

    # Universal cubic boundary factorization, with seven independent variables.
    s,S,t,T,r,R,k=sp.symbols('s S t T r R k')
    X,Y,Z=s*S,t*T,r*R
    p=X+Y+Z
    A=r*s*s+R*t*t-k*(X+Y)*s*t
    B=T*s*s+R*R*t-k*(X+Z)*s*R
    C=S*t*t+r*r*s-k*(Y+Z)*t*r
    star={s:S,S:s,t:T,T:t,r:R,R:r}
    Ab,Bb,Cb=[q.xreplace(star) for q in (A,B,C)]
    add('universal_cubic_boundary',Ab*B*C-A*Bb*Cb,
        (1+k*k*p)*(s*r*T-S*R*t)*(X-Y)*(Y-Z)*(Z-X),
        'Independent formal Gram variables; no quotient relation or criticality hypothesis is used.')

    # Three independent weighted columns certify the cubic moment regrouping.
    # A homogeneous cubic kernel uses at most three distinct column indices.
    # The independent mass variables simultaneously test distinct and repeated
    # index patterns; this gives the universal ordered-triple moment identity.
    xs=sp.symbols('x0 x1 x2')
    ys=sp.symbols('y0 y1 y2')
    ws=sp.symbols('w0 w1 w2')
    def moment(point):
        aa,bb=point
        return sum(ws[j]*xs[j]**aa*ys[j]**bb for j in range(3))
    E6=sp.Matrix([[1,1,1],list(xs),list(ys)])
    per6=sum(xs[i]*ys[j] for i in range(3) for j in range(3) if i!=j)
    det6=xs[0]*(ys[1]-ys[2])+xs[1]*(ys[2]-ys[0])+xs[2]*(ys[0]-ys[1])
    psi6=per6*det6**2/sp.prod(xs+ys)
    D6=psi6-psi6.xreplace({z:1/z for z in xs+ys})
    full=data['full_moment_readout']
    full_rhs=sum(co*sp.prod(moment(q) for q in pts) for pts,co in full)
    add('full_unweighted_moment_regrouping',sp.prod(ws)*D6,full_rhs,
        'Three independent weighted columns test all multiplicity patterns of the symmetric cubic kernel. Repeat-index terms vanish by the determinant. Summing the resulting kernel identity gives the arbitrary-strip moment formula.')
    weighted_rhs=0
    for points,co in full:
        for slot in range(3):
            shifted=[tuple(q) for q in points]
            old=shifted[slot]
            shifted[slot]=(old[0]+1,old[1]+1)
            weighted_rhs+=co*sp.prod(moment(q) for q in shifted)
    add('full_xy_weighted_moment_regrouping',
        sp.prod(ws)*D6*sum(x*y for x,y in zip(xs,ys)),weighted_rhs,
        'The same three-column kernel identity with the sum of column weights x_j*y_j. This is the derivative in the direction delta w_j=w_j*x_j*y_j and produces the six-term identity after orthogonality.')

    # Explicit integer-polynomial reduction under the six zero moments.
    # Retain a generic M00=n: for a six-column strip it is n=6.
    zero_moments={(1,0),(-1,0),(0,1),(0,-1),(1,-1),(-1,1)}
    n=sp.symbols('n')
    mm={}
    def named_moment(point):
        point=tuple(point)
        if point in zero_moments:return sp.Integer(0)
        if point==(0,0):return n
        if point not in mm:
            def label(i):return ('m' if i<0 else 'p')+str(abs(i))
            mm[point]=sp.Symbol('M_'+label(point[0])+'_'+label(point[1]))
        return mm[point]
    reduced=0
    for points,co in full:
        for slot in range(3):
            shifted=[tuple(q) for q in points]
            old=shifted[slot]
            shifted[slot]=(old[0]+1,old[1]+1)
            reduced+=co*sp.prod(named_moment(q) for q in shifted)
    aa=named_moment((1,1));ab=named_moment((-1,-1))
    bb=named_moment((2,-1));bc=named_moment((-2,1))
    cc=named_moment((-1,2));cb=named_moment((1,-2))
    target=n*bb*cc+ab*cc*named_moment((3,0))+ab*bb*named_moment((0,3))
    target-=bc*cb*named_moment((2,2))+aa*(bb*bc+cc*cb)
    add('weighted_orthogonality_reduction',reduced,target,
        'The six first orthogonality moments are replaced by zero. M00=n is retained symbolically; n=6 for the target strip.')

    write_integer_certificate(targets,output_path)
    output=json.loads(Path(output_path).read_text())
    for record,name,note in zip(output['certificates'],names,explanations):
        record['id']=name
        record['meaning']=note
    output['source']='Factored defining expressions and independent Laurent/moment regroupings; no division or negative-power DAG nodes.'
    Path(output_path).write_text(json.dumps(output,separators=(',',':'))+'\n')
    checked=check(output_path)
    return {'identities':checked,'bytes':Path(output_path).stat().st_size,
            'nodes':sum(len(c['nodes']) for c in output['certificates'])}

if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('output',nargs='?',type=Path,default=Path(__file__).with_name('unweighted_circuits.json'))
    args=parser.parse_args()
    print('PASS:',build(args.output))
