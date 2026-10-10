import json, sympy as sp, itertools
SC='/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/'
A3,A5,A7,II=sp.symbols('A3 A5 A7 II')
gens=(A3,A5,A7,II)
rels=[A3**2-3,A5**2-5,A7**2-7,II**2+1]
relname=['h3','h5','h7','hI']
raw=json.load(open(SC+'h0.json'))
def tosym(s):
    e=sp.sympify(s)
    return sp.expand(e.subs({sp.sqrt(105):A3*A5*A7,sp.sqrt(35):A5*A7,sp.sqrt(21):A3*A7,sp.sqrt(15):A3*A5}).subs({sp.sqrt(3):A3,sp.sqrt(5):A5,sp.sqrt(7):A7,sp.I:II}))
H=[[tosym(raw[i][j]) for j in range(6)] for i in range(6)]
def conj(e): return sp.expand(e.subs(II,-II))
def nf(e):
    q,r=sp.reduced(sp.expand(e),rels,*gens)
    return q,sp.expand(r)
def lean(e):
    e=sp.expand(e)
    if e==0: return '0'
    terms=[]
    for mon,c in sp.Poly(e,*gens).terms():
        c=sp.Rational(c)
        parts=[]
        for g,k,nm in zip(gens,mon,['a3','a5','a7','Complex.I']):
            if k==1: parts.append(nm)
            elif k>1: parts.append(f'{nm} ^ {k}')
        cs=f'({c.p} : ℂ)' if c.q==1 else f'(({c.p} : ℂ) / {c.q})'
        terms.append(' * '.join([cs]+parts))
    return ' + '.join(terms)
def lc(lhs,rhs):
    q,r=nf(lhs-rhs)
    assert r==0,(lhs,rhs,r)
    s=' + '.join(f'({lean(qi)}) * {nm}' for qi,nm in zip(q,relname) if sp.expand(qi)!=0)
    return 'linear_combination '+(s if s else '(0 : ℂ) * h3')
out=[]
out.append("def ent : Fin 6 → Fin 6 → ℂ := ![" + ",\n  ".join("![" + ", ".join(lean(H[i][j]) for j in range(6)) + "]" for i in range(6)) + "]")
out.append("def entc : Fin 6 → Fin 6 → ℂ := ![" + ",\n  ".join("![" + ", ".join(lean(conj(H[i][j])) for j in range(6)) + "]" for i in range(6)) + "]")
# unit entries
for i in range(6):
  for j in range(6):
    out.append(f"lemma unit_{i}_{j} : ent {i} {j} * entc {i} {j} = 1 := by\n  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]\n  {lc(H[i][j]*conj(H[i][j]),1)}")
# gram
for i in range(6):
  for j in range(6):
    lhs=sum(H[i][k]*conj(H[j][k]) for k in range(6))
    out.append(f"lemma gram_{i}_{j} : ent {i} 0 * entc {j} 0 + ent {i} 1 * entc {j} 1 + ent {i} 2 * entc {j} 2 + ent {i} 3 * entc {j} 3 + ent {i} 4 * entc {j} 4 + ent {i} 5 * entc {j} 5 = {6 if i==j else 0} := by\n  simp only [ent, entc, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]\n  {lc(lhs,6 if i==j else 0)}")
# signatures: B rows x=H[1][3..5], y=H[2][3..5]; C columns x=H[3..5][1], y=H[3..5][2]
def sigsteps(name,x,y,xc,yc):
    pi=x[0]*y[1]+x[0]*y[2]+x[1]*y[0]+x[1]*y[2]+x[2]*y[0]+x[2]*y[1]
    h=x[1]*y[2]-x[2]*y[1]-x[0]*y[2]+x[2]*y[0]+x[0]*y[1]-x[1]*y[0]
    u=x[0]*x[1]*x[2]; v=y[0]*y[1]*y[2]; uc=conj(u); vc=conj(v)
    _,piN=nf(pi); _,hN=nf(h); _,h2N=nf(hN**2); _,ucN=nf(uc); _,vcN=nf(vc)
    _,s1=nf(piN*h2N); _,s2=nf(s1*ucN); _,s3=nf(s2*vcN)
    T=-s3
    return dict(pi=(pi,piN),h=(h,hN),h2=(hN**2,h2N),uc=(uc,ucN),vc=(vc,vcN),s1=(piN*h2N,s1),s2=(s1*ucN,s2),s3=(s2*vcN,s3)),sp.expand(2*T)
import pickle
res={}
for name,(x,y) in {'B':([H[1][3],H[1][4],H[1][5]],[H[2][3],H[2][4],H[2][5]]),'C':([H[3][1],H[4][1],H[5][1]],[H[3][2],H[4][2],H[5][2]])}.items():
    st,twoT=sigsteps(name,x,y,None,None)
    res[name]=(st,twoT)
    print(name,'2T =',twoT)
pickle.dump((H,res),open(SC+'h0data.pkl','wb'))
open(SC+'h0_part1.lean','w').write('\n\n'.join(out))
print('ok', len(out))
