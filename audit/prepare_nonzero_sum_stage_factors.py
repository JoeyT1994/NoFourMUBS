"""Share the first product's small factors instead of repeatedly expanding them.

Preserve its checked data and zero-coefficient receipt. Only the unfinished
coefficient checks change, to use the two newly proved factor expansions.
"""
from pathlib import Path
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('critical_nonzero_raw_clearing')
    diagnostic=json.loads((AUDIT/'CRITICAL_NONZERO_SUM_FACTOR_REUSE_DIAGNOSTIC.json').read_text())
    assert all(not n['old_exact_polynomial_matches'] for n in diagnostic['nodes'].values())
    dag,polys,lengths=values(21)
    old=json.loads((AUDIT/'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').read_text())
    manifest_path=AUDIT/'CRITICAL_NONZERO_SUM_STAGE_PILOT_MANIFEST.json'
    original=json.loads(manifest_path.read_text())
    retired=AUDIT/'retired_attempts';retired.mkdir(exist_ok=True)
    (retired/'SUM_STAGE_PILOT_BEFORE_FACTOR_SHARING_MANIFEST.json').write_text(manifest_path.read_text())
    (retired/'SUM_STAGE_PILOT_BEFORE_FACTOR_SHARING_BUILD_STATUS.json').write_text((AUDIT/'CRITICAL_NONZERO_SUM_STAGE_PILOT_BUILD_STATUS.json').read_text())
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
noncomputable section
namespace {NS}
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
'''
    source=header([BASE+'Expressions00','NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryCertificate'])
    for i in [17,19]:
        scale,rows=integer_coefficients(polys[i]);assert scale==1
        parts=[]
        for start in range(0,len(rows),8):
            part=f'n{i:04d}_part{start//8:02d}';parts.append(part)
            source+=f'def {part} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
        source+=f'def n{i:04d} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
        ours=set();theirs=set()
        def visit_old(j):
            if j in theirs:return
            theirs.add(j)
            for key in ['a','b']:
                if key in old['nodes'][j]:visit_old(old['nodes'][j][key])
        def visit(j):
            if j in ours:return
            ours.add(j);node=dag['nodes'][j]
            if node['kind']=='reuse':visit_old(node['old_index'])
            for key in ['a','b']:
                if key in node:visit(node[key])
        visit(i)
        scalar_defs=[f'{EX}.v{j:04d}' for j in sorted(ours,reverse=True)]
        scalar_defs += ['NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.'+
                       ('P2M4' if j<old['original_count'] else 'P2P2')+f'.v{j:03d}'
                       for j in sorted(theirs,reverse=True)]
        source+=f'''theorem n{i:04d}_eval (X Y k : ℂ) :
    {C}.eval k ({DC}.interpret X Y n{i:04d}) = {EX}.v{i:04d} X Y k := by
  simp only [n{i:04d},'''+','.join(parts)+f''',List.cons_append,List.nil_append,
    {DC}.interpret,{C}.eval,{IR}.evalII,{IR}.evalI,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,
    mul_zero,zero_mul,add_zero,zero_add,mul_one]
  dsimp only ['''+','.join(scalar_defs)+''',h,plusFactor,minusFactor]
  ring
'''
    source+='\nend '+NS+'\n'
    factors=OUT/'Stage0000Factors.lean';assert not factors.exists();factors.write_text(source)
    new_record={'module':BASE+'Stage0000Factors','active_path':str(factors.relative_to(ROOT/'lean')),
                'active_sha256':hashlib.sha256(factors.read_bytes()).hexdigest(),
                'local_model_adapter':True,'review':'CRITICAL_NONZERO_SUM_STAGE_REUSE_REVIEW.json'}
    records=original['records'];records.insert(1,new_record)
    for j in [23,35,69]:
        p=OUT/f'Stage0000Check{j:03d}.lean'
        (retired/(p.stem+'_before_factor_sharing.lean.txt')).write_text(p.read_text())
        source=header([BASE+'Stage0000Data',BASE+'Stage0000Factors'])
        source+=f'''theorem n0020_coefficient_{j:03d} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt n0017 n0019 {j})
      ({C}.neg2 (n0020.getD {j} []))) = true := by rfl
#print axioms n0020_coefficient_{j:03d}
end {NS}
'''
        p.write_text(source)
        next(r for r in records if r['module']==BASE+p.stem)['active_sha256']=hashlib.sha256(p.read_bytes()).hexdigest()
    original['axiom_endpoints'] += [NS+'.n0017_eval',NS+'.n0019_eval']
    original['shared_factor_nodes']=[17,19]
    original['status']='PREPARED_FACTOR_SHARING_NOT_COMPILED'
    manifest_path.write_text(json.dumps(original,indent=2)+'\n')
    p=AUDIT/'CRITICAL_NONZERO_SUM_STAGE_REUSE_REVIEW.json';review=json.loads(p.read_text())
    review['factor_sharing']='The first nested coefficient pilot was stopped after approximately2minutes per middle coefficient. Preserve its target array and passed coefficient0. Nodes17 and19 have308/96nonzero terms; exact comparison against all533old nodes finds no duplicate. Prove these two small polynomial expansions with the existing ring tactic, then use the existing binary checker on their arrays.'
    review['factor_reuse_diagnostic']='CRITICAL_NONZERO_SUM_FACTOR_REUSE_DIAGNOSTIC.json'
    p.write_text(json.dumps(review,indent=2)+'\n')
    print(json.dumps({'modules':len(records),'retained_checked_modules':2,'factor_nodes':[17,19],'changed_unfinished_coefficients':[23,35,69]}))


if __name__=='__main__':main()
