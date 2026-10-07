"""Generate exact cutpoint candidates and Lean obligations, never proof credit."""
from pathlib import Path
from fractions import Fraction as F
import json
P=Path(__file__).resolve().parent
scale=10**12
class E:
 def __init__(self,op,*args):self.op,self.args=op,args
 def __add__(self,o):return E('add',self,toE(o))
 def __radd__(self,o):return toE(o)+self
 def __neg__(self):return E('neg',self)
 def __sub__(self,o):return self+-toE(o)
 def __rsub__(self,o):return toE(o)+-self
 def __mul__(self,o):return E('mul',self,toE(o))
 def __rmul__(self,o):return toE(o)*self
 def __pow__(self,n):return E('pow',self,n)
 def cj(self):return E('star',self)
def toE(x):return x if isinstance(x,E) else E('const',F(x),F(0))
I=E('const',F(0),F(1));half=toE(F(1,2))
def ref(s):return E('ref',s)
def adds(a,b):return a[0]+b[0],a[1]+b[1]
def negs(a):return -a[1],-a[0]
def muls(a,b):v=[x*y for x in a for y in b];return min(v),max(v)
def cadd(a,b):return adds(a[0],b[0]),adds(a[1],b[1])
def cneg(a):return negs(a[0]),negs(a[1])
def cmul(a,b):return adds(muls(a[0],b[0]),negs(muls(a[1],b[1]))),adds(muls(a[0],b[1]),muls(a[1],b[0]))
def ceval(e):
 op,a=e.op,e.args
 if op=='ref':return boxes[a[0]]
 if op=='const':return (a[0],a[0]),(a[1],a[1])
 if op=='add':return cadd(ceval(a[0]),ceval(a[1]))
 if op=='neg':return cneg(ceval(a[0]))
 if op=='star':x=ceval(a[0]);return x[0],negs(x[1])
 if op=='mul':return cmul(ceval(a[0]),ceval(a[1]))
 if op=='pow':
  out=((F(1),F(1)),(F(0),F(0)))
  for _ in range(a[1]):out=cmul(out,ceval(a[0]))
  return out
def rounded(x):
 def rd(a):return F((a[0]*scale).__floor__(),scale),F((a[1]*scale).__ceil__(),scale)
 return rd(x[0]),rd(x[1])
width=F(1,10**6)
centers=[(F(1),F(0)),(F(0),F(1)),(F(-3,5),F(4,5)),(F(0),F(-1))]
boxes={f'q{i}':((r-width,r+width),(im-width,im+width)) for i,(r,im) in enumerate(centers)}
values={f'q{i}':f'q {i}' for i in range(4)}
stages=[]
def stage(name,e,meaning,extras='',proof=None):
 e=toE(e); deps=[]
 def walk(x):
  if x.op=='ref':
   if x.args[0] not in deps:deps.append(x.args[0])
  else:
   for a in x.args:
    if isinstance(a,E):walk(a)
 walk(e)
 boxes[name]=rounded(ceval(e));values[name]=f'v{name} q'
 stages.append(dict(name=name,e=e,deps=deps,meaning=meaning,extras=extras,proof=proof))
 return ref(name)
a,b,c,d=[ref(f'q{i}') for i in range(4)]
s=stage('S',-1-a-b,'seedS q','seedS')
t=stage('T',-1-c-d,'seedT q','seedT')
r=stage('Rho',-1-c*a.cj()-d*b.cj(),'seedR q','seedR')
def p0(s,t,r):return r*s**2+r.cj()*t**2+(3-r*r.cj())*s*t
def p1(s,t,r):return t*s.cj()**2+r**2*t.cj()+(3-t*t.cj())*r*s.cj()
def p2(s,t,r):return s*t.cj()**2+r.cj()**2*s.cj()+(3-s*s.cj())*r.cj()*t.cj()
ps=[stage(f'P{i}',f(s,t,r),f'symmetricP{i} (vS q) (vT q) (vRho q)',f'symmetricP{i}') for i,f in enumerate([p0,p1,p2])]
ns=[stage(f'N{i}',x*x.cj(),f'(Complex.normSq (vP{i} q):ℂ)','Complex.mul_conj') for i,x in enumerate(ps)]
delta=stage('Delta',ns[0]*ns[1]*ns[2],'(sideDelta (vS q) (vT q) (vRho q):ℂ)','sideDelta,vN0,vN1,vN2,vP0,vP1,vP2')
x=stage('X',s*s.cj(),'(Complex.normSq (vS q):ℂ)','Complex.mul_conj')
y=stage('Y',t*t.cj(),'(Complex.normSq (vT q):ℂ)','Complex.mul_conj')
z=stage('Z',r*r.cj(),'(Complex.normSq (vRho q):ℂ)','Complex.mul_conj')
p=stage('P',x+y+z,'pComplex (vS q) (vT q) (vRho q)','pComplex,vX,vY,vZ,Complex.mul_conj')
j=stage('J',s*r*t.cj()+s.cj()*r.cj()*t,'jComplex (vS q) (vT q) (vRho q)','jComplex')
w=stage('W',x*y+x*z+y*z-x*y*z,'wComplex (vS q) (vT q) (vRho q)','wComplex,vX,vY,vZ,Complex.mul_conj')
def stableA(p,j,w,z):return w-p**2+9*p-18*z+2*z*p+(p+3-2*z)*j
As=[]
for i,zv in enumerate([z,y,x]):
 nm=['Z','Y','X'][i]
 As.append(stage(f'StableA{i}',stableA(p,j,w,zv),f'meanStableA (vS q) (vT q) (vRho q) (v{nm} q)','meanStableA,vP,vJ,vW'))
Us=[]
for i,e in enumerate([ps[0]*ns[1]*ns[2]*half,ps[1].cj()*ns[0]*ns[2]*half,ps[2].cj()*ns[0]*ns[1]*half]):
 Us.append(stage(f'U{i}',e,f'sideU{i} (vS q) (vT q) (vRho q)',f'sideU{i},vP0,vP1,vP2,vN0,vN1,vN2,div_eq_mul_inv'))
Mexpr=[delta*s*t-As[0]*Us[0],delta*r.cj(),delta*s*r.cj()-As[1]*Us[1],delta*t,delta*t*r-As[2]*Us[2],delta*s]
Ms=[stage(f'M{i}',e,f'sideMomentConstants (vS q) (vT q) (vRho q) {i}',f'sideMomentConstants,vDelta,vStableA0,vStableA1,vStableA2,vU0,vU1,vU2,vX,vY,vZ,Complex.mul_conj') for i,e in enumerate(Mexpr)]
Bs={i:stage(f'B{i}',e,f'sideMomentLinear (vS q) (vT q) (vRho q) {i}','sideMomentLinear,vU0,vU1,vU2') for i,e in [(0,-I*Us[0]),(2,I*Us[1]),(4,I*Us[2])]}
A=stage('AA',b*a.cj(),'q 1*conj (q 0)')
C=stage('CC',d*c.cj(),'q 3*conj (q 2)')
coeffExpr=[-(A-C)**2*(A+C)*A.cj()**2*C.cj()**2,(A-C)*(A+C)*(A*C-1)*A.cj()**2*C.cj(),(C-1)**2*(C+1)*A.cj()*C.cj(),-(A**2-C)*(C-1)*(C+1)*A.cj()*C.cj()**2,(A-1)**2*(A+1)*A.cj()*C.cj(),(A-1)*(A+1)*(A-C**2)*A.cj()**2*C.cj()]
cs=[stage(f'C{i}',e,f'coeff{i} (vAA q) (vCC q)',f'coeff{i},neg_mul') for i,e in enumerate(coeffExpr)]
weightExpr=[cs[0]*a.cj()*c.cj(),cs[1]*a.cj()*c,cs[2]*a.cj()**2*c,cs[3]*c.cj(),cs[4]*a*c.cj()**2,cs[5]*a.cj()]
weightValues=[f'coeff0 (vAA q) (vCC q)*conj (q 0)*conj (q 2)',f'coeff1 (vAA q) (vCC q)*conj (q 0)*(q 2)',f'coeff2 (vAA q) (vCC q)*(conj (q 0))^2*(q 2)',f'coeff3 (vAA q) (vCC q)*conj (q 2)',f'coeff4 (vAA q) (vCC q)*(q 0)*(conj (q 2))^2',f'coeff5 (vAA q) (vCC q)*conj (q 0)']
weights=[stage(f'Weight{i}',e,weightValues[i],f'vC{i}') for i,e in enumerate(weightExpr)]
extra='exactPairForm,knownX,knownY,pairFirst,pairSecond,nativePairForm,vAA,vCC,vS,vT,vRho,'+','.join(f'vWeight{i}' for i in range(6))
sa=stage('SA',sum((weights[i]*Ms[i] for i in range(6)),toE(0)), 'exactPairForm q 2 (sideMomentConstants (seedS q) (seedT q) (seedR q))',extra+','+','.join(f'vM{i}' for i in range(6)))
sb=stage('SB',sum((weights[i]*Bs[i] for i in [0,2,4]),toE(0)),'exactPairForm q 2 (sideMomentLinear (seedS q) (seedT q) (seedR q))',extra+',sideMomentLinear,vB0,vB2,vB4')
av=stage('A', (sa-sa.cj())*I,'(exactMeanA q 2:ℂ)','exactMeanA,vSA,signedComplexValue')
bv=stage('Beta',(sb-sb.cj())*I,'(exactMeanBeta q 2:ℂ)','exactMeanBeta,vSB,signedComplexValue')
dv=stage('D',3*delta,'(exactD q:ℂ)','exactD,exactDelta,vDelta,vS,vT,vRho')
pp=p**2;jj=j**2
re=jj*j*4+jj*(-pp+p*2+27)+j*(pp*p*2-pp*24-p*w*2+p*54+w*30)-pp**2+pp*p*18+pp*w*2-pp*81-p*w*54-w**2+w*324
rv=stage('R',re,'(exactSeedR q:ℂ)','vP,vJ,vW,vS,vT,vRho',proof='  simp only [eR,CExpr.eval_add,CExpr.eval_sub,CExpr.eval_mul,CExpr.eval_neg,CExpr.eval_pow,CExpr.eval_ofNat,MeanExprParts.eval_var,Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two]\n  change stableRFormula (vP q) (vJ q) (vW q)=(exactSeedR q:ℂ)\n  rw [vP,vJ,vW,stableRFormula_gram]\n  exact congrArg (fun x : ℝ => (x:ℂ)) (exactSeedR_eq_gramInvariant q).symm')
km=stage('Km',bv-dv,'(exactKMinus q 2:ℂ)','exactKMinus,vBeta,vD')
kp=stage('Kp',bv+dv,'(exactKPlus q 2:ℂ)','exactKPlus,vBeta,vD')
hm=stage('Hm',av**2-km**2*rv,'(exactHMinus q 2:ℂ)','exactHMinus,vA,vKm,vR')
hp=stage('Hp',av**2-kp**2*rv,'(exactHPlus q 2:ℂ)','exactHPlus,vA,vKp,vR')
def pos(a,y,h):return (a[0]>=0 and y[0]>=0 and (a[0]>0 or y[0]>0)) or (a[0]>0 and h[0]>0) or (y[0]>0 and h[1]<0)
ba,bkm,bkp,bhm,bhp=[boxes[n][0] for n in ['A','Km','Kp','Hm','Hp']]
plus=pos(ba,bkm,bhm) or pos(negs(ba),negs(bkp),bhp)
minus=pos(ba,negs(bkp),bhp) or pos(negs(ba),bkm,bhm)
print('stages',len(stages),'plus',plus,'minus',minus)
for n in ['A','Beta','D','R','Km','Kp','Hm','Hp']:print(n,[float(x) for x in boxes[n][0]])
assert plus and minus
# Lean generation
rat=lambda x: str(x.numerator) if x.denominator==1 else f'({x.numerator}/{x.denominator})'
def boxlean(box):return '⟨⟨'+rat(box[0][0])+','+rat(box[0][1])+'⟩,⟨'+rat(box[1][0])+','+rat(box[1][1])+'⟩⟩'
def render(e,deps):
 op,a=e.op,e.args
 if op=='ref':return f'(.var {deps.index(a[0])})'
 if op=='const':
  if a==(F(0),F(1)):return 'MeanExprParts.imagE'
  if a==(F(1,2),F(0)):return 'MeanExprParts.halfE'
  if a[1]==0 and a[0].denominator==1:return str(a[0]) if a[0]>=0 else f'(-{abs(a[0])})'
  return f'(.point {rat(a[0])} {rat(a[1])})'
 if op=='add':return '('+render(a[0],deps)+' + '+render(a[1],deps)+')'
 if op=='mul':return '('+render(a[0],deps)+' * '+render(a[1],deps)+')'
 if op=='neg':return '(-'+render(a[0],deps)+')'
 if op=='star':return '(CExpr.star '+render(a[0],deps)+')'
 if op=='pow':return '('+render(a[0],deps)+f'^{a[1]})'
header='''import ExactCutpoint
import MeanExprSeed

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace ExactMeanDirect20261006.Control
open ExactMeanChecker20261006 SignedMeanIntake20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
noncomputable section

theorem signedComplexValue (z : ℂ) : (z-conj z)*Complex.I=(signedValue z:ℂ) := by
  have h := MeanExprParts.eval_signedE_cast (fun _ : Fin 1 => z) (.var 0)
  simpa only [MeanExprParts.signedE,CExpr.eval_mul,CExpr.eval_sub,CExpr.eval_star,MeanExprParts.eval_var,MeanExprParts.eval_imagE] using h
'''
for i in range(4):header+=f'\ndef bq{i} : CBox := {boxlean(boxes[f"q{i}"])}\n'
header+='\ndef controlBox : Fin 4 → CBox := ![bq0,bq1,bq2,bq3]\n'
chunks=[]
for k,st in enumerate(stages):
 n=st['name'];deps=st['deps'];N=len(deps)
 inputs='!['+','.join('b'+x for x in deps)+']'
 vals='!['+','.join(values[x] for x in deps)+']'
 code=f'\ndef e{n} : CExpr {N} := {render(st["e"],deps)}\n'
 code+=f'noncomputable def v{n} (q : Fin 4 → ℂ) : ℂ := {st["meaning"]}\n'
 code+=f'def b{n} : CBox := {boxlean(boxes[n])}\n'
 code+=f'theorem eval_{n} (q : Fin 4 → ℂ) : CExpr.eval {vals} e{n}=v{n} q := by\n'
 if n=='R':
  code+=f'  calc\n    CExpr.eval {vals} eR = stableRFormula (vP q) (vJ q) (vW q) := by\n      simp [eR,stableRFormula,sub_eq_add_neg]\n    _ = (gramInvariant (vS q) (vT q) (vRho q):ℂ) := stableRFormula_gram _ _ _\n    _ = vR q := congrArg (fun x : ℝ => (x:ℂ)) (exactSeedR_eq_gramInvariant q).symm\n'
 elif n in ['A','Beta']:
  src='SA' if n=='A' else 'SB'
  fn='exactMeanA' if n=='A' else 'exactMeanBeta'
  code+=f'  have h := signedComplexValue (v{src} q)\n  simpa [e{n},v{n},{fn},v{src},sub_eq_add_neg] using h\n'
 elif st['proof']:code+=st['proof']+'\n'
 else:code+=f'  simp [e{n},v{n}'+(','+st['extras'] if st['extras'] else '')+',sub_eq_add_neg]'+(' <;> ring' if n=='C3' else '')+'\n'
 code+=f'theorem check_{n} : cutCheck {inputs} e{n} b{n}=true := by decide +kernel\n'
 code+=f'theorem bound_{n} (q : Fin 4 → ℂ) (hq : ∀ i, (controlBox i).Contains (q i)) : b{n}.Contains (v{n} q) := by\n'
 code+=f'  have hz : ∀ i : Fin {N}, (({inputs} : Fin {N} → CBox) i).Contains (({vals} : Fin {N} → ℂ) i) := by\n'
 code+='    intro i\n    fin_cases i\n'
 for dep in deps:
  pr=f'hq {dep[1:]}' if dep.startswith('q') else f'bound_{dep} q hq'
  code+=f'    · simpa [controlBox] using ({pr})\n'
 code+=f'  have h := cutCheck_sound {inputs} e{n} b{n} {vals} hz check_{n}\n  rwa [eval_{n}] at h\n'
 chunks.append(code)
# split compilation at natural boundaries to preserve bounded per-file memory
cuts=[20,40,len(chunks)]
start=0
for fileidx,stop in enumerate(cuts):
 name=f'ControlStages{fileidx+1}'
 src=(header if fileidx==0 else f'import ControlStages{fileidx}\n\nset_option autoImplicit false\nset_option maxHeartbeats 2000000\nset_option maxRecDepth 10000\nnamespace ExactMeanDirect20261006.Control\nopen ExactMeanChecker20261006 SignedMeanIntake20261006\nopen Centiradian20261006 Centiradian20261006.SignedDeterminant\nopen Centiradian20261006.NativeMean20261006 Centiradian20261006.NativeEvaluation20261006\nopen scoped ComplexConjugate\nnoncomputable section\n')
 src+=''.join(chunks[start:stop])+'\nend\nend ExactMeanDirect20261006.Control\n'
 if fileidx==0:src+='\n#print axioms ExactMeanDirect20261006.Control.signedComplexValue\n'
 for st in stages[start:stop]:
  for prefix in ['eval','check','bound']:src+=f'#print axioms ExactMeanDirect20261006.Control.{prefix}_{st["name"]}\n'
 (P/(name+'.lean')).write_text(src)
 start=stop
(P/'CONTROL_CANDIDATE.json').write_text(json.dumps({'status':'untrusted_candidate_pending_kernel_checks','center':[[str(r),str(i)] for r,i in centers],'coordinate_half_width':str(width),'cutpoint_rounding_grid':f'1/{scale}','pair':2,'plus':plus,'minus':minus,'stages':[{'name':x['name'],'dependencies':x['deps'],'box':[[str(a),str(b)] for a,b in boxes[x['name']]]} for x in stages]},indent=2)+'\n')
