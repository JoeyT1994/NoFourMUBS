"""Outward joint B,C completion cover near an F3 corner.

No branch reconstruction and no independent side-label Cartesian product.
The four torus parameters describe the approximate complete carrier K.
An exhausted budget leaves an explicit open list, never an acceptance.
"""
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations, permutations, product
from pathlib import Path
import argparse, cmath, json, math, sys, time
from flint import arb, acb, ctx

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT/'ProvenResults/CornerBounds/SideColumnPrune'))
from prune import TERMS
sys.path.insert(0, str(ROOT/'ProvenResults/FourierBlocks'))
from FourierBlockClassification import mul, star

SIX = ((1,0),(1,1),(0,1),(-1,0),(-1,-1),(0,-1))
CORNERS = [(r,c) for r in combinations(range(1,6),2)
           for c in combinations(range(6),3)]


class Jet:
    """Four exact first-derivative identities with outward complex values."""
    def __init__(self,value,derivatives=None):
        self.v=acb(value)
        self.d=derivatives if derivatives is not None else [acb(0)]*4

    def __add__(self,other):
        other=other if isinstance(other,Jet) else Jet(other)
        return Jet(self.v+other.v,[a+b for a,b in zip(self.d,other.d)])

    __radd__=__add__

    def __neg__(self):
        return Jet(-self.v,[-a for a in self.d])

    def __sub__(self,other):
        return self+(-other)

    def __mul__(self,other):
        other=other if isinstance(other,Jet) else Jet(other)
        return Jet(self.v*other.v,[a*other.v+self.v*b
                                 for a,b in zip(self.d,other.d)])

    __rmul__=__mul__

    def __truediv__(self,other):
        if not isinstance(other,int) or other == 0:
            raise ValueError('Only exact nonzero integer division is needed')
        return Jet(self.v/other,[a/other for a in self.d])

    def conjugate(self):
        return Jet(self.v.conjugate(),[a.conjugate() for a in self.d])

    @property
    def imag(self):
        return Jet(self.v.imag,[acb(a.imag) for a in self.d])


def exact_references():
    """All 63 selected references carry exact F6 permutation witnesses."""
    records = []
    for a,b,c,d in product(range(6), repeat=4):
        pure_v = a%2 == 0 and b == 2*a%6
        pure_w = c%2 == 0 and d == 2*c%6
        if not ((pure_v and (c+d)%3 == 0) or
                (pure_w and (a+b)%3 == 0)):
            continue
        vv,ww = (0,a,b),(0,c,d)
        H = [[SIX[2*i*j%6] for j in range(3)] +
             [SIX[(vv[i]+2*i*j)%6] for j in range(3)] for i in range(3)]
        for i in range(3):
            row = [SIX[(2*i*j+ww[j])%6] for j in range(3)]
            for j in range(3):
                terms = [SIX[(2*i*m+ww[m]-2*m*n+vv[n]+2*n*j)%6]
                         for m,n in product(range(3),repeat=2)]
                z = tuple(-sum(t[k] for t in terms) for k in range(2))
                assert all(v%3 == 0 for v in z)
                row.append(tuple(v//3 for v in z))
            H.append(row)
        exponents = [[SIX.index(z) for z in row] for row in H]
        witness = None
        for tail in permutations(range(1,6)):
            columns = (0,)+tail
            rows = []
            for row in exponents:
                candidates = [r for r in range(6)
                              if all(r*c%6 == e for c,e in zip(columns,row))]
                if len(candidates) != 1:
                    break
                rows.append(candidates[0])
            if sorted(rows) == list(range(6)):
                witness = dict(rows=rows,columns=columns)
                break
        assert witness is not None
        records.append(dict(parameters=[a,b,c,d], exponents=exponents,
                            witness=witness))
    assert len(records) == 63
    return records


def carrier(phases, roots):
    one=Jet(1) if isinstance(phases[0],Jet) else acb(1)
    v,w = [one,*phases[:2]],[one,*phases[2:]]
    H = [[roots[i*j%3] for j in range(3)] +
         [v[i]*roots[i*j%3] for j in range(3)] for i in range(3)]
    # Factorized multiplication keeps repeated-parameter interval loss modest.
    vf = [sum(v[n]*roots[(k*n)%3] for n in range(3)) for k in range(3)]
    for i in range(3):
        H.append([roots[i*j%3]*w[j] for j in range(3)] +
                 [-sum(roots[i*m%3]*w[m]*vf[(j-m)%3]
                       for m in range(3))/3 for j in range(3)])
    return H


def q_polynomial(H, rows, columns):
    """Real polynomial equal to the sine expression on unit entries.

    Row zero is globally dephased to ones, so no corner division occurs.
    Nonflat interval inputs are permitted: only physical points are tested.
    """
    x,y = ([H[r][j] for j in columns] for r in rows)
    z = [b*a.conjugate() for a,b in zip(x,y)]
    return sum(sign*(x[b]*x[a].conjugate()).imag
               *(y[d]*y[c].conjugate()).imag
               *(z[i]*z[j].conjugate()).imag
               for i,j,a,b,c,d,sign in TERMS)


def path_box(path):
    center = [Q(1,2)]*4
    radii = [Q(1,2)]*4
    for depth,bit in enumerate(path):
        if bit not in '01':
            raise ValueError('Invalid binary path')
        axis = depth%4
        radii[axis] /= 2
        center[axis] += (1 if bit == '1' else -1)*radii[axis]
    # Cyclic permutations among last-three columns/rows reduce p,r modulo 1/3.
    for axis in (0,2):
        center[axis] /= 3
        radii[axis] /= 3
    return center,radii


def ball(q):
    return arb(q.numerator)/q.denominator


class Verifier:
    def __init__(self,h,m):
        self.h,self.m = ball(Q(h)),ball(Q(m))
        if not (self.h >= 0 and self.h <= arb(1)/20 and self.m >= 0):
            raise ValueError('Require 0 <= h <= 1/20 and M >= 0')
        self.roots = [acb(0,2*arb.pi()*k/3).exp() for k in range(3)]
        self.references = exact_references()
        for r in self.references:
            r['matrix'] = [[acb(0,arb.pi()*e/3).exp() for e in row]
                           for row in r['exponents']]

    def evaluate(self,path):
        cc,hh = path_box(path)
        angles = [2*arb.pi()*(ball(c)+arb(0,ball(h))) for c,h in zip(cc,hh)]
        # After cyclic normalization the original exact anchors can move.
        # Use the full side-entry error 16h, not the original anchor error.
        side_error=6*((1+16*self.h)**8-1)
        for side,(a,b) in enumerate((angles[:2],angles[2:])):
            value=3*((a-2*b)/2).sin()*((a+b)/2).sin()*((2*a-b)/2).sin()
            if abs(value) > self.m.sqrt()/8+side_error:
                return dict(reason='side_lines',side=side)
        phases = [acb(0,a).exp() for a in angles]
        p,q,r,s=phases
        w,w2=self.roots[1:]
        factors=[3*(q+w*p.conjugate()+w2*p*q.conjugate())
                   *(r.conjugate()+w*r*s.conjugate()+w2*s),
                 3*(p+w*q*p.conjugate()+w2*q.conjugate())
                   *(r.conjugate()+w2*r*s.conjugate()+w*s)]
        if any(abs(z) > 27*42*self.h*(2+42*self.h) for z in factors):
            return dict(reason='flatness_factor')
        K = carrier(phases,self.roots)
        # Every physical D entry is unit modulus and within 42h of K.
        if any(abs(abs(K[i][j])-1) > 42*self.h
               for i,j in product(range(3,6),repeat=2)):
            return dict(reason='nonflat_completion')
        # Floating selection chooses a witness only; the acceptance is Arb.
        def param_cost(r):
            return sum(abs(math.remainder(float(c)-a/6,1))**2
                       for c,a in zip(cc,r['parameters']))
        ref = min(self.references,key=param_cost)
        R = ref['matrix']
        norms = [sum(abs(K[i][j]-R[i][j]).upper()**2 for i in range(6))
                 for j in range(6)]
        norms += [sum(abs(K[i][j]-R[i][j]).upper()**2 for j in range(6))
                  for i in range(6)]
        # ||H-K||_F <= sqrt(2280)h < 48h, divided by sqrt(6) < 20h.
        norm_bounds = [(x.upper()/6).sqrt().upper() for x in norms]
        distance = max(norm_bounds)+20*self.h
        if all(x.is_finite() for x in norm_bounds) and distance < arb(1)/30:
            return dict(reason='F6_tube',reference=ref['parameters'],
                        distance_upper=str(distance.upper()))
        # Centred polynomial evaluations suggest the strongest corners first.
        mid = [[complex(float(z.real.mid()),float(z.imag.mid())) for z in row]
               for row in K]
        def score(corner):
            rr,cols = corner
            return abs(q_polynomial(mid,rr,cols))
        chosen = sorted(CORNERS,key=score,reverse=True)[:4]
        point_phases = [acb(0,2*arb.pi()*ball(c)).exp() for c in cc]
        point_K = carrier(point_phases,self.roots)
        jets=[]
        for axis,z in enumerate(phases):
            d=[acb(0)]*4
            d[axis]=acb(0,1)*z
            jets.append(Jet(z,d))
        jet_K=carrier(jets,[Jet(z) for z in self.roots])
        widths=[2*arb.pi()*ball(r) for r in hh]
        # At physical points |K_ij| <= 1+42h. Each q term has degree 8.
        perturbation=6*((1+42*self.h)**8-1)
        for rows,columns in chosen:
            center_value=q_polynomial(point_K,rows,columns)
            derivative=q_polynomial(jet_K,rows,columns)
            value=center_value+sum(arb(0,w)*d.real
                                   for w,d in zip(widths,derivative.d))
            if abs(value) > self.m.sqrt()/8+perturbation:
                return dict(reason='maximality',rows=[0,*rows],columns=columns)
        return None


def search(h,m,budget,maxdepth,output,precision=96):
    if output.exists():
        raise FileExistsError(output)
    output.mkdir(parents=True)
    ctx.prec = precision
    verifier = Verifier(h,m)
    pending = ['']
    counts = Counter()
    open_paths = []
    nodes = 0
    start = time.process_time()
    with (output/'leaves.jsonl').open('x') as stream:
        while pending and nodes < budget:
            path = pending.pop()
            nodes += 1
            result = verifier.evaluate(path)
            if result is not None:
                counts[result['reason']] += 1
                stream.write(json.dumps(dict(path=path,**result))+'\n')
            elif len(path) >= maxdepth:
                open_paths.append(path)
            else:
                pending.extend((path+'1',path+'0'))
            if nodes%10000 == 0:
                print(json.dumps(dict(nodes=nodes,accepted=sum(counts.values()),
                      pending=len(pending),open=len(open_paths),
                      cpu_seconds=time.process_time()-start)),flush=True)
        open_paths += pending
        for path in open_paths:
            stream.write(json.dumps(dict(path=path,reason='open'))+'\n')
    result = dict(status='COVER_COMPLETE_REPLAY_REQUIRED' if not open_paths else 'OPEN',
                  domain='cyclic_fundamental_domain',h=str(h),M_cap=str(m),
                  precision=precision,nodes=nodes,accepted=dict(counts),
                  open=len(open_paths),cpu_seconds=time.process_time()-start)
    (output/'summary.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result),flush=True)
    return result


if __name__ == '__main__':
    p=argparse.ArgumentParser()
    p.add_argument('--h',default='1/1048576')
    p.add_argument('--M',default='1/1048576')
    p.add_argument('--budget',type=int,default=10000)
    p.add_argument('--maxdepth',type=int,default=48)
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args()
    search(a.h,a.M,a.budget,a.maxdepth,a.output)
