"""Pilot an existing expression product with the existing binary checker.

This exports only a missing intermediate table, not the original numerator.
It checks for equal earlier expression values before exporting any new table.
"""
import argparse
import hashlib
import json

from diagnose_nonzero_sum_dag import values
from prepare_nonzero_moment_clearing import integer_coefficients
from prepare_nonzero_polynomial_checks import DC,C,IR
from prepare_nonzero_sum_stage_pilot import ROOT,AUDIT,OUT,BASE,NS,EX,CA
from reuse_preflight import require_reuse_review


def main():
    parser=argparse.ArgumentParser();parser.add_argument('node',type=int)
    args=parser.parse_args();i=args.node;stem=f'PRODUCT{i:04d}'
    require_reuse_review('critical_nonzero_raw_clearing')
    dag,polys,lengths,old=values(i+1,include_old=True)
    node=dag['nodes'][i];assert node['kind']=='mul'
    matches={'old':[j for j,p in enumerate(old) if p==polys[i]],
             'earlier_sum_nodes':[j for j,p in enumerate(polys[:i]) if p==polys[i]]}
    assert not any(matches.values()),'Reuse an existing value and binding instead.'
    audit_name='KERNEL_AUDIT_CRITICAL_NONZERO_SUM_DAG_STATUS.json'
    audit=json.loads((AUDIT/audit_name).read_text());assert audit['status']=='PASS'
    for path,digest in audit['source_hashes'].items():
        assert hashlib.sha256((ROOT/'lean'/path).read_bytes()).hexdigest()==digest
    review_name=f'CRITICAL_NONZERO_SUM_{stem}_REUSE_REVIEW.json'
    pins=['audit/CRITICAL_NONZERO_SUM_DAG_REUSE_REVIEW.json','audit/CRITICAL_NONZERO_SUM_DAG.json',
          'audit/CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json',
          'lean/NoFourMUBs/Reuse/Archive/CriticalZeroSumBinaryCertificate.lean']
    review={'status':'REVIEWED_NECESSARY_INTERMEDIATE_PRODUCT','node':i,
            'prior_full_corpus_review':'CRITICAL_NONZERO_SUM_DAG_REUSE_REVIEW.json',
            'existing_checker':'BinaryCertificate.binary_eval_eq and CoefficientAt.mulAt',
            'equal_polynomial_matches':matches,'old_nodes_compared':len(old),'earlier_sum_nodes_compared':i,
            'source_pins':{p:hashlib.sha256((ROOT/p).read_bytes()).hexdigest() for p in pins},
            'atlas_certification':False}
    (AUDIT/review_name).write_text(json.dumps(review,indent=2)+'\n')
    scale,rows=integer_coefficients(polys[i]);assert scale==1
    rows += [[] for _ in range(lengths[i]-len(rows))]
    left,right=f'{EX}.e{node["a"]:04d}',f'{EX}.e{node["b"]:04d}'
    data=f'Product{i:04d}Data';checked=f'Product{i:04d}Check{lengths[i]//2:03d}'
    name=f'n{i:04d}';records=[];endpoints=[]
    def header(imports):
        return '\n'.join('import '+x for x in imports)+f'''
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace {NS}
'''
    def save(module,source):
        p=OUT/(module+'.lean');assert not p.exists(),p
        p.write_text(source+'\nend '+NS+'\n')
        records.append({'module':BASE+module,'active_path':str(p.relative_to(ROOT/'lean')),
                        'active_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                        'local_model_adapter':True,'review':review_name})
    source=header([BASE+f'Expressions{max(node["a"],node["b"])//48:02d}',
                   'NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryCertificate'])
    parts=[]
    for start in range(0,len(rows),8):
        part=name+f'_part{start//8:02d}';parts.append(part)
        source+=f'def {part} : List {DC}.XY := '+json.dumps(rows[start:start+8],separators=(',',':'))+'\n'
    source+=f'def {name} : List {DC}.XY := '+' ++ '.join(parts)+'\n'
    source+=f'''theorem {name}_length : {name}.length = {len(rows)} := by rfl
theorem {name}_product_length : ({DC}.mul {left} {right}).length = {name}.length := by rfl
'''
    endpoints += [NS+'.'+name+'_length',NS+'.'+name+'_product_length']
    save(data,source)
    j=lengths[i]//2;endpoint=name+f'_coefficient_{j:03d}'
    source=header([BASE+data])
    source+=f'''theorem {endpoint} :
    {IR}.zeroII ({C}.add2 ({CA}.mulAt {left} {right} {j})
      ({C}.neg2 ({name}.getD {j} []))) = true := by rfl
#print axioms {endpoint}
'''
    endpoints.append(NS+'.'+endpoint);save(checked,source)
    manifest={'scope':'critical_nonzero_raw_clearing','records':records,'axiom_endpoints':endpoints,
              'status':'PREPARED_NOT_COMPILED','node':i,'expected_coefficients':len(rows),
              'selected_coefficients':[j],'nonzero_terms':len(polys[i]),'left_expression':left,'right_expression':right,
              'dependency_audits':[audit_name],'raw_numerator_identity_claimed':False,'atlas_certification':False}
    (AUDIT/f'CRITICAL_NONZERO_SUM_{stem}_PILOT_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
    print(json.dumps({'node':i,'modules':len(records),'selected_coefficient':j,'total_coefficients':len(rows),'nonzero_terms':len(polys[i])}))


if __name__=='__main__':main()
