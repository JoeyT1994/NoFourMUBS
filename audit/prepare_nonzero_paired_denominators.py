"""Share paired denominator powers in the original sum expression.

Only two previously unchecked intermediate arrays are produced.  Their exact
expansions and the reassociation back to the existing DAG are Lean obligations.
"""
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    review=json.loads((AUDIT/'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json').read_text())
    for path,digest in review['source_pins'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest
    dag,polys,lengths=values(30)
    old=json.loads((AUDIT/'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').read_text())
    records=[];endpoints=[]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
'''
    def save(name,text):
        p=OUT/(name+'.lean');assert not p.exists(),p
        p.write_text(text+'\nend '+NS+'\n')
        records.append({'module':BASE+name,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':'CRITICAL_NONZERO_PAIRED_DENOMINATOR_REUSE_REVIEW.json'})
    data=header([BASE+'Expressions00','NoFourMUBs.Reuse.Archive.CriticalZeroSumRowCertificate'])
    part_names={}
    pairs=[('denPairY5',19,22),('denPairZ5',25,28)]
    for name,a,b in pairs:
        scale,rows=integer_coefficients(polys[a]*polys[b]);assert scale==1
        parts=[]
        for start in range(0,len(rows),8):
            part=f'{name}_part{start//8:02d}';parts.append(part)
            data+=f'def {part} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
        data+=f'def {name} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
        data+=f'theorem {name}_length : {name}.length={len(rows)} := by rfl\n'
        part_names[name]=parts;endpoints.append(NS+'.'+name+'_length')
    save('DenominatorPairsData',data)
    for name,a,b in pairs:
        ours=set();theirs=set()
        def old_visit(i):
            if i in theirs:return
            theirs.add(i)
            for key in ['a','b']:
                if key in old['nodes'][i]:old_visit(old['nodes'][i][key])
        def visit(i):
            if i in ours:return
            ours.add(i);n=dag['nodes'][i]
            if n['kind']=='reuse':old_visit(n['old_index'])
            for key in ['a','b']:
                if key in n:visit(n[key])
        visit(a);visit(b)
        scalar_defs=[f'{EX}.v{i:04d}' for i in sorted(ours,reverse=True)]
        scalar_defs += ['NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.'+
                       ('P2M4' if i<old['original_count'] else 'P2P2')+f'.v{i:03d}'
                       for i in sorted(theirs,reverse=True)]
        text=header([BASE+'DenominatorPairsData'])
        text+=f'''theorem {name}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y {name}) = {EX}.v{a:04d} X Y k * {EX}.v{b:04d} X Y k := by
  simp only [{name},{','.join(part_names[name])},List.cons_append,List.nil_append,
    {DC}.interpret,{C}.eval,{IR}.evalII,{IR}.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  dsimp only [{','.join(scalar_defs)},h,plusFactor,minusFactor,thirdPlusFactor,thirdMinusFactor]
  ring
#print axioms {name}_eval
'''
        save('DenominatorPair'+('Y' if 'Y' in name else 'Z'),text)
        endpoints.append(NS+'.'+name+'_eval')
    save('DenominatorPairs',header([BASE+'DenominatorPairY',BASE+'DenominatorPairZ']))
    manifest={'scope':'critical_nonzero_raw_clearing','status':'PREPARED_NOT_COMPILED',
              'records':records,'axiom_endpoints':endpoints,'atlas_certification':False,
              'dependency_pins':[],'scope_note':'Two shared paired denominator powers in the unchanged sum DAG; not a full numerator identity.'}
    (AUDIT/'CRITICAL_NONZERO_PAIRED_DENOMINATOR_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'endpoints':len(endpoints),'atlas_certification':False}))


if __name__=='__main__':main()
