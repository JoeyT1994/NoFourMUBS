import sympy as sp, pickle
import os
exec(open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'gen_h0.py')).read().split("out=[]")[0])
H,res=pickle.load(open(SC+'h0data.pkl','rb'))
L=[]
def lemma(name,lhs_lean,rhs_sym,lhs_sym,pre=""):
    L.append(f"lemma {name} : {lhs_lean} = {lean(rhs_sym)} := by\n  {pre}{lc(lhs_sym,rhs_sym)}")
E=lambda i,j: f"ent {i} {j}"
EC=lambda i,j: f"entc {i} {j}"
unf="simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]\n  "
for name,(xi,yi) in {'B':(((1,3),(1,4),(1,5)),((2,3),(2,4),(2,5))),'C':(((3,1),(4,1),(5,1)),((3,2),(4,2),(5,2)))}.items():
    x=[H[a][b] for a,b in xi]; y=[H[a][b] for a,b in yi]
    X=[E(*t) for t in xi]; Y=[E(*t) for t in yi]
    st,twoT=res[name]
    piL=f"{X[0]} * {Y[1]} + {X[0]} * {Y[2]} + {X[1]} * {Y[0]} + {X[1]} * {Y[2]} + {X[2]} * {Y[0]} + {X[2]} * {Y[1]}"
    hL=f"{X[1]} * {Y[2]} - {X[2]} * {Y[1]} - {X[0]} * {Y[2]} + {X[2]} * {Y[0]} + {X[0]} * {Y[1]} - {X[1]} * {Y[0]}"
    lemma(f"pi_{name}",piL,st['pi'][1],st['pi'][0],unf)
    lemma(f"h_{name}",hL,st['h'][1],st['h'][0],unf)
    lemma(f"h2_{name}",f"({lean(st['h'][1])}) ^ 2",st['h2'][1],st['h2'][0])
    lemma(f"uc_{name}",f"starRingEnd ℂ ({X[0]} * {X[1]} * {X[2]})",st['uc'][1],st['uc'][0],f"rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]\n  "+unf)
    lemma(f"vc_{name}",f"starRingEnd ℂ ({Y[0]} * {Y[1]} * {Y[2]})",st['vc'][1],st['vc'][0],f"rw [map_mul, map_mul, conj_ent, conj_ent, conj_ent]\n  "+unf)
    piN,h2N,ucN,vcN=st['pi'][1],st['h2'][1],st['uc'][1],st['vc'][1]
    s1,s2,s3=st['s1'][1],st['s2'][1],st['s3'][1]
    L.append(f"lemma s1_{name} : -({lean(piN)}) * ({lean(h2N)}) = -({lean(s1)}) := by\n  {lc(-piN*h2N,-s1)}")
    L.append(f"lemma s2_{name} : -({lean(s1)}) * ({lean(ucN)}) = -({lean(s2)}) := by\n  {lc(-s1*ucN,-s2)}")
    L.append(f"lemma s3_{name} : -({lean(s2)}) * ({lean(vcN)}) = -({lean(s3)}) := by\n  {lc(-s2*vcN,-s3)}")
    L.append(f"lemma two_{name} : 2 * -({lean(s3)}) = {lean(twoT)} := by\n  {lc(-2*s3,twoT)}")
# corner: q = 1/4 + A3 A5/4 II ; seed (q^2, q, q^-2 = conj^2, q^-1 = conj)
q=sp.Rational(1,4)+A3*A5*II/4; qb=conj(q)
seedv=[q**2,q,qb**2,qb]
corner=[[1,1,1],[1,seedv[0],seedv[1]],[1,seedv[2],seedv[3]]]
for i in range(3):
  for j in range(3):
    L.append(f"lemma corner_{i}_{j} : ent {i} {j} = {lean(sp.expand(corner[i][j]))} := by\n  {unf}{lc(H[i][j],corner[i][j])}")
# chi: X=|s|^2 etc
s=-(1+seedv[0]+seedv[1]); t=-(1+seedv[2]+seedv[3]); r=-(1+seedv[2]*conj(seedv[0])+seedv[3]*conj(seedv[1]))
vals={}
for nm,e in [('X',s*conj(s)),('Y',t*conj(t)),('Z',r*conj(r)),('J',s*r*conj(t)+conj(s*r*conj(t)))]:
    q_,rr=nf(e); vals[nm]=rr; print(nm,rr)
pickle.dump(vals,open(SC+'chivals.pkl','wb'))
open(SC+'h0_part2.lean','w').write('\n\n'.join(L))
print(len(L))
