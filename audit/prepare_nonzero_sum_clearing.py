"""Export a field-algebra adapter for the unchanged 66-term program.

No moment, raw numerator, or atlas data is generated. The exporter constructs
untrusted factored expressions; Lean field_simp/ring must prove each against
the existing rational table. Subsequent polynomial checks use the old checker.
"""
from pathlib import Path
import hashlib
import json
import math
import re

from prepare_nonzero_moment_clearing import CTX, FACTORS, integer_coefficients, fmpq_mpoly
from prepare_nonzero_rational_table import opposite
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT/'audit'
OUT = ROOT/'lean/NoFourMUBs/Step2/CriticalZero/SumClearing'
BASE = 'NoFourMUBs.Step2.CriticalZero.SumClearing.'
NS = 'NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing'
FACTOR_KEYS = ['two','X','Y','H','FXp','FXm','FYp','FYm','FZp','FZm']
FACTOR_VALUES = ['(2 : ℂ)','X','Y','h k','plusFactor X k','minusFactor X k',
                 'plusFactor Y k','minusFactor Y k','thirdPlusFactor X Y k','thirdMinusFactor X Y k']
DEN_ZERO = (0,)*len(FACTOR_KEYS)


def lit(n): return ('int',n)
def leaf(n): return ('leaf',n)
def mul(a,b):
    if a==lit(0) or b==lit(0):return lit(0)
    if a==lit(1):return b
    if b==lit(1):return a
    return ('mul',a,b)
def add(a,b):
    if a==lit(0):return b
    if b==lit(0):return a
    return ('add',a,b)
def neg(a):
    if a==lit(0):return a
    return ('neg',a)
def power(a,n):
    return lit(1) if n==0 else a if n==1 else ('pow',a,n)
def monomial(d):
    out=lit(1)
    for key,n in zip(FACTOR_KEYS,d):
        if n:out=mul(out,power(lit(2) if key=='two' else leaf(key),n))
    return out
def frac(a,d=DEN_ZERO): return (a,DEN_ZERO if a==lit(0) else tuple(d))
def fmul(a,b):return frac(mul(a[0],b[0]),tuple(x+y for x,y in zip(a[1],b[1])))
def fneg(a):return frac(neg(a[0]),a[1])
def fadd(a,b):
    if a[0]==lit(0):return b
    if b[0]==lit(0):return a
    d=tuple(max(x,y) for x,y in zip(a[1],b[1]))
    return frac(add(mul(a[0],monomial(tuple(x-y for x,y in zip(d,a[1])))),
                    mul(b[0],monomial(tuple(x-y for x,y in zip(d,b[1]))))),d)


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_ASSEMBLY_REUSE_REVIEW.json').read_text())
    for path,digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest
    table=json.loads((AUDIT/'KERNEL_AUDIT_CRITICAL_NONZERO_TABLE_STATUS.json').read_text())
    assert table['status']=='PASS'
    for path,digest in (table['source_hashes']|table['dependency_source_hashes']).items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    program_path=ROOT/'lean/NoFourMUBs/Reuse/Archive/CriticalNonzeroCoefficientProgram.lean'
    body=program_path.read_text().split('def program66 : Program MomentTag :=',1)[1].split('theorem program66_value',1)[0]
    tokens=re.findall(r'\(|\)|\.[A-Za-z_][A-Za-z_0-9]*|-?\d+',body)
    assert re.sub(r'\s+','',body)==''.join(tokens)
    pos=0
    def parse_program():
        nonlocal pos
        assert tokens[pos]=='('
        op=tokens[pos+1];pos+=2
        if op=='.lit':
            if tokens[pos]=='(':
                n=int(tokens[pos+1]);assert tokens[pos+2]==')';pos+=3
            else:n=int(tokens[pos]);pos+=1
            node=('lit',n)
        elif op=='.input':
            node=('input',tokens[pos][1:]);pos+=1
        else:
            assert op in ['.add','.mul']
            a,b=parse_program(),parse_program();node=(op[1:],a,b)
        assert tokens[pos]==')';pos+=1
        return node
    program=parse_program();assert pos==len(tokens)
    def terms(t):return terms(t[1])+terms(t[2]) if t[0]=='add' else [t]
    original_terms=terms(program);assert len(original_terms)==66 and original_terms[0]==('lit',1728)
    def program_text(t):
        if t[0]=='lit':return f'(.lit ({t[1]}))'
        if t[0]=='input':return '(.input .'+t[1]+')'
        return f'(.{t[0]} {program_text(t[1])} {program_text(t[2])})'
    candidates=json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']
    scales={};representatives={}
    factor_alias=dict(zip(FACTOR_VALUES[1:],FACTOR_KEYS[1:]))
    for tag,record in candidates.items():
        coeff=[]
        for component in ['a','b']:
            value=record[component]
            scale,_=integer_coefficients(fmpq_mpoly(value['numerator'],CTX))
            assert scale>0 and scale&(scale-1)==0
            scales[tag+'_'+component]=scale
            den=fmpq_mpoly(value['denominator'],CTX)
            unit,fs=den.factor();assert unit==1
            exps=[0]*len(FACTOR_KEYS);exps[0]=scale.bit_length()-1
            for f,e in fs:
                name,=[name for name,p in FACTORS.items() if p==f]
                exps[FACTOR_KEYS.index(factor_alias[name])]=e
            coeff.append(frac(leaf('N_'+tag+'_'+component),exps))
        representatives[tag]=tuple(coeff)
    X,Y,H,k=map(leaf,['X','Y','H','k'])
    def den(**kwargs):return tuple(kwargs.get(name,0) for name in FACTOR_KEYS)
    r1=frac(mul(lit(8),k),den(Y=1,H=2))
    remaining=add(mul(add(add(lit(9),neg(X)),neg(Y)),H),lit(-4))
    r2=frac(neg(mul(X,remaining)),den(Y=1,H=1))
    inputs=dict(representatives)
    for tag,(a,b) in representatives.items():
        i,j=[int(s[1:])*(1 if s[0]=='p' else -1) for s in tag.split('_')]
        weight=frac(mul(power(X,max(i,0)),power(Y,max(j,0))),den(X=max(-i,0),Y=max(-j,0)))
        inputs[opposite(tag)]=(fmul(weight,fadd(a,fmul(r1,b))),fneg(fmul(weight,b)))
    assert len(inputs)==36
    def qmul(u,v):
        a,b=u;c,d=v
        return (fadd(fmul(a,c),fmul(r2,fmul(b,d))),
                fadd(fadd(fmul(a,d),fmul(b,c)),fmul(r1,fmul(b,d))))
    def coefficient(t):
        if t[0]=='lit':return (frac(lit(t[1])),frac(lit(0)))
        if t[0]=='input':return inputs[t[1]]
        assert t[0]=='mul'
        return qmul(coefficient(t[1]),coefficient(t[2]))
    values=[coefficient(t)[0] for t in original_terms]
    raw_den=den(two=5,H=4,FXp=5,FXm=5,FYp=5,FYm=5,FZp=5,FZm=5)
    common=tuple(max([raw_den[j]]+[v[1][j] for v in values]) for j in range(len(FACTOR_KEYS)))
    scaled=[mul(v[0],monomial(tuple(a-b for a,b in zip(common,v[1])))) for v in values]
    integer_multiplier=tuple(a-b for a,b in zip(common,raw_den))
    factor_values=dict(zip(FACTOR_KEYS,FACTOR_VALUES))
    def expr(e):
        kind=e[0]
        if kind=='int':return f'({e[1]} : ℂ)'
        if kind=='leaf':
            return f'(integerNumerator_{e[1][2:]} X Y k)' if e[1].startswith('N_') else '('+factor_values.get(e[1],e[1])+')'
        if kind=='neg':return f'(-{expr(e[1])})'
        if kind=='pow':return f'({expr(e[1])}^{e[2]})'
        return '('+expr(e[1])+(' + ' if kind=='add' else ' * ')+expr(e[2])+')'
    def header(imports):
        return '\n'.join('import '+i for i in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
noncomputable section
namespace {NS}
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003 CriticalQuadProgram20261003
'''
    records=[];endpoints=[]
    OUT.mkdir(exist_ok=True)
    def save(name,source):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n');rel=str(p.relative_to(ROOT/'lean'))
        records.append({'module':BASE+name,'active_path':rel,'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_ASSEMBLY_REUSE_REVIEW.json'})
    source=header(['NoFourMUBs.Step2.CriticalZero.NonzeroRationalTable'])
    for key,scale in scales.items():
        source+=f'def integerNumerator_{key} (X Y k : ℂ) : ℂ := {scale}*numerator_{key} X Y k\n'
    source+=f'''def expandedDenominator (X Y k : ℂ) : ℂ := {expr(monomial(common))}
def integerMultiplier (X Y k : ℂ) : ℂ := {expr(monomial(integer_multiplier))}
theorem expandedDenominator_factor (X Y k : ℂ) :
    expandedDenominator X Y k = 32*integerMultiplier X Y k*commonDenominator X Y k := by
  dsimp only [expandedDenominator,integerMultiplier,commonDenominator]
  ring
'''
    endpoints.append(NS+'.expandedDenominator_factor')
    for i,t in enumerate(original_terms):
        source+=f'''def programTerm{i:02d} : Program MomentTag := {program_text(t)}
def rawTerm{i:02d} (X Y k : ℂ) : ℂ :=
  (coefficients (fun m => rationalCoefficients m X Y k) programTerm{i:02d}).a
'''
    save('Base',source)
    guards='''(X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hFXp : plusFactor X k ≠ 0) (hFXm : minusFactor X k ≠ 0)
    (hFYp : plusFactor Y k ≠ 0) (hFYm : minusFactor Y k ≠ 0)
    (hFZp : thirdPlusFactor X Y k ≠ 0) (hFZm : thirdMinusFactor X Y k ≠ 0)'''
    term_tags=[]
    def tags(t):
        if t[0]=='input':return {t[1]}
        if t[0]=='lit':return set()
        return tags(t[1])|tags(t[2])
    for i,(t,e) in enumerate(zip(original_terms,scaled)):
        selected=sorted({tag if tag in representatives else opposite(tag) for tag in tags(t)})
        keys=[tag+'_'+c for tag in selected for c in ['a','b']]
        source=header([BASE+'Base'])
        source+=f'''def scaledTerm{i:02d} (X Y k : ℂ) : ℂ := {expr(e)}
theorem term{i:02d}_scaled {guards} :
    rawTerm{i:02d} X Y k * expandedDenominator X Y k = scaledTerm{i:02d} X Y k := by
  dsimp only [rawTerm{i:02d},programTerm{i:02d},scaledTerm{i:02d},expandedDenominator,
    coefficients,rationalCoefficients,reflectedCoefficients,representativeCoefficients,
    scalar,R2,R1,p,q,J,degrees,
    '''+',\n    '.join(['denominator_'+key for key in keys]+['integerNumerator_'+key for key in keys])+''']
'''
        if not keys:
            source=source.replace('degrees,\n    ]','degrees]')
        if i:
            conversion=f"""  change (toQuadratic (coefficients (fun m => rationalCoefficients m X Y k) programTerm{i:02d})).re *
    expandedDenominator X Y k = scaledTerm{i:02d} X Y k
  simp only [programTerm{i:02d},coefficients,toQuadratic_mul,toQuadratic_scalar,
    QuadraticAlgebra.re_mul,QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re,QuadraticAlgebra.algebraMap_im,
    toQuadratic_re,toQuadratic_im,mul_zero,zero_mul,add_zero,zero_add]
"""
            source=source.replace(' := by\n  dsimp only',' := by\n'+conversion+'  dsimp only')
        for key in keys:
            source+=f'  generalize numerator_{key} X Y k = n_{key}\n'
        source+=('  <;>' if not keys else ' ')+''' norm_num only [zpow_neg,zpow_ofNat,zpow_zero]
  <;> field_simp [hX,hY,hh,hFXp,hFXm,hFYp,hFYm,hFZp,hFZm]
  <;> ring
'''
        source+=f'#print axioms term{i:02d}_scaled\n'
        endpoints.append(NS+f'.term{i:02d}_scaled')
        save(f'Term{i:02d}',source)
        term_tags.append(selected)
    source=header([BASE+f'Term{i:02d}' for i in range(66)])
    scaled_sum=' + '.join(f'scaledTerm{i:02d} X Y k' for i in range(66))
    raw_sum=' + '.join(f'rawTerm{i:02d} X Y k' for i in range(66))
    source+=f'''def computedNumerator (X Y k : ℂ) : ℂ := {scaled_sum}
theorem program_a_eq_terms (X Y k : ℂ) :
    (coefficients (fun m => rationalCoefficients m X Y k) program66).a =
      {raw_sum} := by rfl

theorem rational_program_scaled {guards} :
    (coefficients (fun m => rationalCoefficients m X Y k) program66).a *
      expandedDenominator X Y k = computedNumerator X Y k := by
  rw [program_a_eq_terms]
  dsimp only [computedNumerator]
  simp only [add_mul,'''+',\n    '.join(f'term{i:02d}_scaled X Y k hX hY hh hFXp hFXm hFYp hFYm hFZp hFZm' for i in range(66))+''']
#print axioms program_a_eq_terms
#print axioms rational_program_scaled
'''
    endpoints += [NS+'.program_a_eq_terms',NS+'.rational_program_scaled']
    source += 'theorem sumCoefficients_scaled (X Y k : ℂ)\n    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)\n    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)\n    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)\n    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :\n    (sumCoefficients X Y k).a * expandedDenominator X Y k = computedNumerator X Y k := by\n  rw [sumCoefficients_via_rationalTable X Y k hX hY hh hXp hXm hYp hYm hZp hZm]\n  have hs : (h k)^2/(2 : ℂ) ≠ 0 :=\n    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)\n  apply rational_program_scaled X Y k hX hY hh\n  · rw [plusFactor_pole X k hh]\n    exact mul_ne_zero hs hXp\n  · rw [minusFactor_pole X k hh]\n    exact mul_ne_zero (neg_ne_zero.mpr hs) hXm\n  · rw [plusFactor_pole Y k hh]\n    exact mul_ne_zero hs hYp\n  · rw [minusFactor_pole Y k hh]\n    exact mul_ne_zero (neg_ne_zero.mpr hs) hYm\n  · rw [thirdPlusFactor_pole X Y k hh]\n    exact mul_ne_zero (neg_ne_zero.mpr hs) hZp\n  · rw [thirdMinusFactor_pole X Y k hh]\n    exact mul_ne_zero hs hZm\n#print axioms sumCoefficients_scaled\n\n'
    endpoints.append(NS+'.sumCoefficients_scaled')
    save('Assembly',source)
    manifest={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED','records':records,'axiom_endpoints':endpoints,'dependency_pins':json.loads((AUDIT/'CRITICAL_NONZERO_TABLE_MANIFEST.json').read_text())['records'],'atlas_certification':False,'raw_numerator_identity_claimed':False,'common_denominator_exponents':dict(zip(FACTOR_KEYS,common)),'integer_multiplier_exponents':dict(zip(FACTOR_KEYS,integer_multiplier))}
    (AUDIT/'CRITICAL_NONZERO_SUM_CLEARING_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    pilot=dict(manifest,records=[r for r in records if r['module'] in [BASE+'Base',BASE+'Term00',BASE+'Term01']])
    (AUDIT/'CRITICAL_NONZERO_SUM_CLEARING_PILOT_MANIFEST.json').write_text(json.dumps(pilot,indent=2)+'\n')
    expression={'program_source_sha256':hashlib.sha256(program_path.read_bytes()).hexdigest(),'terms':original_terms,'scaled_terms':scaled,'scales':scales,'factor_keys':FACTOR_KEYS,'common_denominator':common,'integer_multiplier':integer_multiplier,'term_representatives':term_tags,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_CLEARING_EXPRESSIONS.json').write_text(json.dumps(expression,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'common_denominator':manifest['common_denominator_exponents'],'integer_multiplier':manifest['integer_multiplier_exponents'],'polynomial_data_generated':False}))


if __name__=='__main__':main()
