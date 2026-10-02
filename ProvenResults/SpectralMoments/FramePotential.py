"""Exact orbit algebra and Hadamard controls for FramePotential.md."""
from itertools import combinations
from collections import Counter
from pathlib import Path
import json
import sympy as S

def canon(g):
    return min(tuple(sorted(g)),tuple(sorted(-q for q in g)))

def pad(g):return tuple(g)+(0,)*(6-len(g))

names={
 'x':(2,-2),'y':(2,-1,-1),'z':(1,1,-1,-1),'u':(3,-3),
 'v':(3,-2,-1),'w':(3,-1,-1,-1),'s':(2,1,-1,-1,-1),
 't':(1,1,1,-1,-1,-1),'r':(1,-1)}
symbols={k:S.Symbol(k) for k in names}
lookup={canon(pad(v)):symbols[k] for k,v in names.items()}
parents=[(1,-2),(1,-1,-1),(2,-3),(1,1,-3),(2,-1,-1,-1),(1,1,-1,-1,-1)]
x,y,z,u,v,w,s,t=[symbols[k] for k in ['x','y','z','u','v','w','s','t']]
expected=[x+4*y,y+3*z,u+x+4*v,2*v+y+3*w,w+3*y+2*s,2*s+3*z+t]
equations=[]
for gamma,expected_row in zip(parents,expected):
    terms=[]
    for r in range(6):
        g=list(pad(gamma));g[r]+=1;terms.append(lookup[canon(g)])
    row=sum(terms).subs(symbols['r'],0)
    assert S.expand(row-expected_row)==0
    equations.append(row-1)
solution=S.solve(equations,[y,z,u,v,w,s],dict=True)[0]
assert S.expand(solution[u]-(S.Rational(9,2)*x-S.Rational(1,2)+6*t))==0

def check(H):
    assert S.simplify(H*H.conjugate().T)==6*S.eye(6)
    phi=[]
    for k in [2,3]:
        P=H.applyfunc(lambda a:S.expand_complex(a**k))
        G=S.simplify(P.conjugate().T*P)
        phi.append(S.simplify(S.trace(G*G)))
    balanced=[]
    for subset in combinations(range(6),3):
        value=sum(S.prod(H[r,j] if r in subset else S.conjugate(H[r,j]) for r in range(6)) for j in range(6))
        balanced.append(S.simplify(S.expand_complex(value)))
    B=S.simplify(sum(a*S.conjugate(a) for a in balanced))
    assert S.simplify(phi[1]-S.Rational(9,2)*phi[0]+1296-9*B)==0
    return {'Phi2':str(phi[0]),'Phi3':str(phi[1]),'B':str(B)}

i=S.I
D=S.Matrix([[1,1,1,1,1,1],[1,-1,i,-i,-i,i],[1,i,-1,i,-i,-i],
            [1,-i,i,-1,i,-i],[1,-i,-i,i,-1,i],[1,i,-i,-i,i,-1]])
omega=(-1+i*S.sqrt(3))/2
exponents=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
           [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
T=S.Matrix([[S.expand_complex(omega**q) for q in row] for row in exponents])
report={'status':'PASS','orbit_relations':[str(a)+' = 1' for a in expected],
        'eliminated_identity':str(S.factor(solution[u])),
        'sharpness_example':check(D),'Tao_control':check(T),
        'scope':'Exact universal moment identity and sharpness controls. Non-Tao global lower bound uses the retained balanced theorem and its accepted external inputs. No seven-MUB exclusion.'}
assert report['sharpness_example']=={'Phi2':'336','Phi3':'216','B':'0'}
assert report['Tao_control']=={'Phi2':'216','Phi3':'1296','B':'180'}
Path(__file__).with_suffix('.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
