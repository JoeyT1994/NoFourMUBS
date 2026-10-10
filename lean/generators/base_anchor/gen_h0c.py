import sympy as sp, pickle
exec(open('/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/gen_h0.py').read().split("out=[]")[0])
H,res=pickle.load(open(SC+'h0data.pkl','rb'))
Qs="((1 : ℂ) / 4 + a3 * a5 / 4 * Complex.I)"; QBs="((1 : ℂ) / 4 - a3 * a5 / 4 * Complex.I)"
q=sp.Rational(1,4)+A3*A5*II/4; qb=conj(q)
L=[]
seedv=[q**2,q,qb**2,qb]; seeds=[f"{Qs} ^ 2",Qs,f"{QBs} ^ 2",QBs]
corner=[[1,1,1],[1,seedv[0],seedv[1]],[1,seedv[2],seedv[3]]]
cs=[["1","1","1"],["1",seeds[0],seeds[1]],["1",seeds[2],seeds[3]]]
unf="simp only [ent, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]\n  "
for i in range(3):
  for j in range(3):
    L.append(f"lemma corner_{i}_{j} : ent {i} {j} = {cs[i][j]} := by\n  {unf}{lc(H[i][j],corner[i][j])}")
s=-(1+q**2+q); sb=-(1+qb**2+qb); t=sb; tb=s; rho=-(1+qb**2*qb**2+qb*qb); rhob=-(1+q**2*q**2+q*q)
S=f"(-(1 + {Qs} ^ 2 + {Qs}))"; SB=f"(-(1 + {QBs} ^ 2 + {QBs}))"
RH=f"(-(1 + {QBs} ^ 2 * {QBs} ^ 2 + {QBs} * {QBs}))"; RHB=f"(-(1 + {Qs} ^ 2 * {Qs} ^ 2 + {Qs} * {Qs}))"
L.append(f"lemma X_val : {S} * {SB} = 9 / 4 := by\n  {lc(s*sb,sp.Rational(9,4))}")
L.append(f"lemma Z_val : {RH} * {RHB} = 9 / 16 := by\n  {lc(rho*rhob,sp.Rational(9,16))}")
L.append(f"lemma J_val : {S} * {RH} * {S} + {SB} * {RHB} * {SB} = 27 / 8 := by\n  {lc(s*rho*s+sb*rhob*sb,sp.Rational(27,8))}")
L.append(f"lemma Qmul : {Qs} * {QBs} = 1 := by\n  {lc(q*qb,1)}")
open(SC+'h0_part3.lean','w').write('\n\n'.join(L))
# dispatch lists
names=lambda pre: ", ".join(f"{pre}_{i}_{j}" for i in range(6) for j in range(6))
open(SC+'h0_lists.txt','w').write(names('unit')+"\n"+"\n".join(f"  · exact (Fin.sum_univ_six _).trans (gram_{i}_{j}.trans (by simp))" for i in range(6) for j in range(6)))
print('ok')
