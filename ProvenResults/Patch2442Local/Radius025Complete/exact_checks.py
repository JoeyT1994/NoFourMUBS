"""Exact identities, reference completions, cover geometry, and input binding."""
from __future__ import annotations
from fractions import Fraction as Q
from pathlib import Path
from itertools import product, combinations
from math import isqrt
from collections import Counter
import importlib.util, hashlib, json, gzip, sys
import reference_algebra as ca
if not __debug__:
    raise RuntimeError('Python optimization mode is prohibited')
HERE=Path(__file__).resolve().parent
RADIUS=Q(1,40)
RHO_UP=Q.from_float(float.fromhex('0x1.999999999999bp-6'))
DELTA=Q.from_float(float.fromhex('0x1.999999999999bp-5'))
GRID=[(a%6,b,c%6,d) for a in(-1,0,1) for b in range(6) for c in(-1,0,1) for d in range(6)]
def need(v,msg):
    if not v: raise AssertionError(msg)
def load_module(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m

def atan_bounds(q,n=64):
    x=Q(1,q);s=sum(((-1)**k*x**(2*k+1)/Q(2*k+1) for k in range(n)),Q(0))
    t=(-1)**n*x**(2*n+1)/Q(2*n+1)
    return min(s,s+t),max(s,s+t)
def pi_bounds():
    a,b=atan_bounds(5),atan_bounds(239)
    return 16*a[0]-4*b[1],16*a[1]-4*b[0]
PI=pi_bounds()

def transformations(g):
    a,b,c,d=g
    return (c,d,a,b),((-b)%6,(-a)%6,(-c)%6,(-d)%6),((-a)%6,(-b)%6,(-d)%6,(-c)%6)
def orbit(g):
    s={g}
    while True:
        t=s|{y for x in s for y in transformations(x)}
        if t==s:return s
        s=t

def symmetry():
    gs=set(GRID);mapping={};groups={}
    for i,g in enumerate(GRID):
        c=min(GRID.index(x) for x in orbit(g)&gs)
        mapping[i]=c;groups.setdefault(c,[]).append(i)
    need(len(GRID)==324 and len(gs)==324,'324 exact starting cells')
    need(len(groups)==102,'102 symmetry representatives')
    # The generators are signed permutations of phases; their action on the
    # seed perturbations is respectively (u1,u3,u2,u4),
    # (-u3,-u4,-u1,-u2), and (-u2,-u1,-u4,-u3).
    return mapping,groups

def roots63():
    cubic={(0,0),(2,4),(4,2)}
    branch={(a,b) for a,b in product(range(6),repeat=2)
            if (b-2*a)%6==0 or (a-2*b)%6==0 or (a+b)%6==0}
    return sorted({(*a,*b) for a in cubic for b in branch}|{(*a,*b) for a in branch for b in cubic})

def check_preconditioners():
    rows=json.loads((HERE/'data/preconditioners.json').read_text())
    need(len(rows)==63,'63 preconditioners')
    need(sorted(tuple(r['root']) for r in rows)==roots63(),'exact reference set')
    text=iter((HERE/'data/preconditioners.txt').read_text().split())
    need(int(next(text))==63,'native reference count')
    for rec in rows:
        need([int(next(text)) for _ in range(4)]==rec['root'],'native roots')
        need([int(next(text)) for _ in range(8)]==rec['rows'],'native residual selection')
        need(len(set(rec['rows']))==8 and all(type(i)is int and 0<=i<94 for i in rec['rows']),'residual indices')
        need(rec['denominator_exponent']==36,'dyadic exponent')
        need(len(rec['P_dyadic_numerators'])==8,'preconditioner rows')
        for row in rec['P_dyadic_numerators']:
            need(len(row)==8,'preconditioner columns')
            for n in row:
                need(type(n)is int and abs(n)<2**53,'exact dyadic mantissa')
                need(Q.from_float(float(next(text)))==Q(n,2**36),'binary64 preconditioner binding')
    need(next(text,None) is None,'no trailing matrix data')
    return rows

def check_reference_completions(records,words):
    roots=ca.ROOT6;count=0;gram_count=0
    for rec in records:
        g=rec['root'];zz=[0,*g[:2]];ww=[0,*g[2:]];h=[[None]*6 for _ in range(6)]
        for i,j in product(range(3),repeat=2):
            h[i][j]=2*i*j%6;h[i][j+3]=(zz[i]+2*i*j)%6;h[i+3][j]=(ww[j]+2*i*j)%6
            n=(0,0)
            for k,l in product(range(3),repeat=2):n=ca.ca(n,roots[(2*i*k+ww[k]-2*k*l+zz[l]+2*l*j)%6])
            choices=[q for q,v in enumerate(roots) if ca.cm((3,0),v)==(-n[0],-n[1])]
            need(len(choices)==1,'reference lower block is an exact unit sixth root')
            h[i+3][j+3]=choices[0]
        for i,j in product(range(6),repeat=2):
            val=(0,0)
            for k in range(6):val=ca.ca(val,roots[(h[i][k]-h[j][k])%6])
            need(val==((6,0) if i==j else(0,0)),'reference Hadamard Gram');gram_count+=1
        for rr,cc in product(combinations(range(6),3),repeat=2):
            val=(0,0)
            for e,co in words:
                power=sum(e[i][j]*h[rr[i]][cc[j]] for i,j in product(range(3),repeat=2))
                val=ca.ca(val,ca.cm((co,0),roots[power%6]))
            need(val==(0,0),'all signed reference invariants vanish');count+=1
    return {'references':len(records),'Hadamard_Gram_entries':gram_count,'all_400_signed_zero_checks':count}

def check_six_term_extension(mod,D):
    a,b,c,d,e=mod.variables(5)
    def st(p):return mod.Poly(5,{(-i,-j,-k,ee,dd):v for (i,j,k,dd,ee),v in p.d.items()})
    co=[-(a-c)**2*(a+c)*a**-2*c**-2,
        (a-c)*(a+c)*(a*c-1)*a**-2*c**-1,
        (c-1)**2*(c+1)*a**-1*c**-1,
        -(a*a-c)*(c-1)*(c+1)*a**-1*c**-2,
        (a-1)**2*(a+1)*a**-1*c**-1,
        (a-1)*(a+1)*(a-c*c)*a**-2*c**-1]
    p2=co[4]*b**-1;p1=co[0]*b+co[3]-st(co[1]*b+co[2]*b*b);p0=co[5]*b
    z=p2*d*d+p1*d+p0
    raw=mod.Poly(5,{(i,j,k,max(n,0),max(-n,0)):v for (i,j,k,n),v in D.d.items()})
    need(z-st(z)==raw,'six-term extension agrees without assuming |d|=1')
    oldp2=-(a-b)*(a-1)*(b-1)*a**-1*b**-2*c**-1
    need(p2!=oldp2,'rejected incorrect exploratory formula')
    return {'independent_d_and_conjugate_d_identity':True,'incorrect_exploratory_formula_rejected':True}

def check_side_derivative_bound(D):
    totals=[]
    for j in (0,2):
        coeff={}
        for ex,v in D.d.items():
            a,b,c,d=ex;key=(b,d);r=ca.cr(a+2*c)
            coeff[key]=ca.ca(coeff.get(key,(0,0)),ca.cm((int(v)*ex[j],0),r))
        A=B=0
        for x,y in coeff.values():
            n=x*x-x*y+y*y;k=isqrt(n)
            if k*k==n:A+=k
            else:
                need(n%3==0 and isqrt(n//3)**2==n//3,'quadratic norm classification')
                B+=isqrt(n//3)
        need((A,B)==(6,12),'exact derivative coefficient norm')
        totals.append([A,B])
    rem=sum(abs(v)*(abs(e[0])+abs(e[2]))**2 for e,v in D.d.items())/2
    need(rem==112,'side second-order remainder')
    need(12+24*Q(7,4)+rem*RHO_UP<64,'side bound 64 rho')
    return {'two_derivative_L1_norms':totals,'norm_basis':'1,sqrt(3)','quadratic_remainder':str(rem),'side_bound_constant':64}

def check_inverse_identity(mod):
    v=mod.variables(9);A=[v[3*i:3*i+3] for i in range(3)];zero=v[0].lift(0)
    adj=[[A[(j+1)%3][(i+1)%3]*A[(j+2)%3][(i+2)%3]-A[(j+1)%3][(i+2)%3]*A[(j+2)%3][(i+1)%3] for j in range(3)] for i in range(3)]
    det=sum((A[0][j]*adj[j][0] for j in range(3)),zero);n=0
    for i,j in product(range(3),repeat=2):
        target=det if i==j else zero
        need(sum((A[i][k]*adj[k][j] for k in range(3)),zero)==target,'A adj(A) identity')
        need(sum((adj[i][k]*A[k][j] for k in range(3)),zero)==target,'adj(A) A identity');n+=2
    return {'symbolic_cofactor_inverse_entries':n}

def check_domains():
    r=RHO_UP
    native_pi=[Q.from_float(float.fromhex(s)) for s in ('0x1.921fb54442d18p+1','0x1.921fb54442d19p+1')]
    native_sqrt=[Q.from_float(float.fromhex(s)) for s in ('0x1.bb67ae8584caap+0','0x1.bb67ae8584cacp+0')]
    tests={
      'pi_enclosure':native_pi[0]<PI[0]<PI[1]<native_pi[1],
      'sqrt3_enclosure':native_sqrt[0]**2<3<native_sqrt[1]**2,
      'pi_above_3':PI[0]>3,
      'rho_outward':RADIUS<RHO_UP<RADIUS+Q(1,10**16),
      'local_delta':Q(1,20)<DELTA<Q(1,20)+Q(1,10**16),
      'side_a_lower':1-2*r>Q(94,100),
      'side_k_lower':1/(1+2*r)**2-Q(1,4)>Q(16,25),
      'k_derivative':Q(5,4)/(1-2*r)**3<Q(3,2),
      'side_approximation':2/(1-2*r)+3<6<8,
      'opposite_orientations':3-32*r>4*r,
      'right_half_plane_anchor':Q(1,2)-8*r>0,
      'side_inverse':Q(3,2)-16*r>1,
      'cyclic_root_intervals':PI[1]<4,
    }
    need(all(tests.values()),'rational chart guards: '+str(tests))
    return {'radius':str(RADIUS),'native_seed_radius':str(RHO_UP),'local_phase_radius':str(DELTA),'guards':tests}

def run_without_manifest():
    """Regenerate exact mathematical inputs; the caller checks package hashes."""
    mod=load_module('pinned_physical_algebra',HERE/'inputs/physical_algebra.py')
    bound=load_module('local_seed_bound',HERE/'seed_bound.py').check()
    need(bound['q_coefficient']==67 and bound['invariant_bound_domain_radius']=='1/40','radius-1/40 q bound input')
    D,R=mod.corner_algebra();words,word_report=ca.raw_words(D)
    expected=str(len(words))+'\n'+''.join(' '.join(map(str,[co]+[v for row in e for v in row]))+'\n' for e,co in words)
    need((HERE/'data/determinant_words.txt').read_text()==expected,'native determinant word binding')
    matrices=check_preconditioners()
    return {'status':'PASS','arithmetic':'integers, rationals, and exact dyadic bindings',
       'invariant_bound':{k:bound[k] for k in ('invariant_bound_domain_radius','q_coefficient','R_normalized_upper_exact','q_squared_margin','polynomial_majorant','finite_guards','symbolic_identities')},
       'signed_words':word_report,'six_term_extension':check_six_term_extension(mod,D),
       'side_factor':ca.side_factor(D),'side_remainder':check_side_derivative_bound(D),
       'reference_completions':check_reference_completions(matrices,words),
       'matrix_inverse':check_inverse_identity(mod),'chart_domains':check_domains(),
       'physical_controls':mod.physical_controls(D,R),
       'classification_assumption_used':False,'effective_minimum_used':False}

def local_symmetry():
    data=json.loads((HERE/'data/preconditioners.json').read_text());roots=[tuple(x['root']) for x in data]
    selected=json.loads((HERE/'data/local_representatives.json').read_text())
    need(len(selected)==13 and len(set(selected))==13,'local representative set')
    def orbit(v):
        seen={v};todo=[v]
        while todo:
            a,b,c,d=todo.pop()
            for w in ((c,d,a,b),((-b)%6,(-a)%6,(-c)%6,(-d)%6),((-a)%6,(-b)%6,(-d)%6,(-c)%6)):
                if w not in seen:seen.add(w);todo.append(w)
        return seen
    lookup={v:i for i,v in enumerate(roots)};covered=set();records=[]
    for i in selected:
        oo=orbit(roots[i]);need(oo<=set(roots),'reference orbit closure');need(covered.isdisjoint(oo),'duplicate local symmetry orbit')
        covered|=oo;records.append({'representative':i,'root':list(roots[i]),'covers':[lookup[x] for x in sorted(oo)]})
    need(covered==set(roots),'incomplete reference contraction cover')
    return {'local_representatives':13,'covered_references':63,'records':records}

def independent_root_references():
    """Independent integer Eisenstein check of every reference and all 400 corners."""
    from itertools import combinations
    roots=[(1,0),(1,1),(0,1),(-1,0),(-1,-1),(0,-1)];lookup={z:k for k,z in enumerate(roots)}
    tokens=(HERE/'data/determinant_words.txt').read_text().split();n=int(tokens[0]);need(n==48 and len(tokens)==1+10*n,'raw determinant word format')
    words=[]
    for i in range(n):
        row=list(map(int,tokens[1+10*i:1+10*(i+1)]));words.append((row[0],row[1:]))
    allrefs=json.loads((HERE/'data/preconditioners.json').read_text());corners=list(combinations(range(6),3));signed=0
    for rec in allrefs:
        a,b,c,d=rec['root'];Z=[0,a,b];W=[0,c,d];H=[[0]*6 for _ in range(6)]
        for i in range(3):
            for j in range(3):
                H[i][j]=(2*i*j)%6;H[i][j+3]=(Z[i]+2*i*j)%6;H[i+3][j]=(W[j]+2*i*j)%6
                A=B=0
                for k in range(3):
                    for l in range(3):
                        x,y=roots[(2*(i*k-k*l+l*j)+W[k]+Z[l])%6];A-=x;B-=y
                need(A%3==0 and B%3==0,'reference lower entry denominator')
                need((A//3,B//3) in lookup,'reference lower entry sixth root');H[i+3][j+3]=lookup[A//3,B//3]
        for i in range(6):
            for j in range(6):
                A=sum(roots[(H[i][k]-H[j][k])%6][0] for k in range(6));B=sum(roots[(H[i][k]-H[j][k])%6][1] for k in range(6))
                need((A,B)==((6,0) if i==j else (0,0)),'exact reference orthogonality')
        for rr in corners:
            for cc in corners:
                v=[H[i][j] for i in rr for j in cc];A=B=0
                for coeff,e in words:
                    k=sum(x*y for x,y in zip(e,v))%6;x,y=roots[k];A+=coeff*x;B+=coeff*y
                need((A,B)==(0,0),'reference signed invariant');signed+=1
    return {'status':'PASS','physical_references':len(allrefs),'gram_entries':36*len(allrefs),'exact_zero_signed_corners':signed}

# The enlarged cover is validated independently; no old terminal count is assumed.
def cover():
    from cover_geometry import validate
    return validate(HERE/'data/phase_cover.jsonl.gz')


def dense_preconditioners():
    records=json.loads((HERE/'data/dense_preconditioners.json').read_text())
    selected=json.loads((HERE/'data/local_representatives.json').read_text())
    old=json.loads((HERE/'data/preconditioners.json').read_text())
    need(len(records)==13 and {r['reference_id'] for r in records}==set(selected),'dense reference completeness')
    tokens=iter((HERE/'data/dense_preconditioners.txt').read_text().split())
    need(int(next(tokens))==13,'native dense count')
    n=0
    for rec in records:
        ident=rec['reference_id'];need(type(ident)is int and 0<=ident<63,'dense ID')
        need(rec['root']==old[ident]['root'],'dense root binding')
        need(rec['rows']==list(range(94)),'all 94 residuals in fixed order')
        need(rec['denominator_exponent']==38,'dense denominator')
        need(int(next(tokens))==ident,'native dense ID')
        need(len(rec['P_dyadic_numerators'])==8,'dense row count')
        for row in rec['P_dyadic_numerators']:
            need(len(row)==94,'dense column count')
            for v in row:
                need(type(v)is int and abs(v)<2**53,'exact dense mantissa')
                need(Q(float(next(tokens)))==Q(v,2**38),'native dense text binding');n+=1
    need(next(tokens,None)is None,'trailing dense tokens')
    return {'status':'PASS','references':13,'row_count':104,'residuals_per_row':94,'dyadic_entries_checked':n,'inverse_assumption_used':False}
