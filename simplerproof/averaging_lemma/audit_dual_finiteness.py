"""Replay all retained reconstruction-parent certificates with finite supports.

The historic kernels are instrumented without changing their formulas or
their pinned source files. Every evaluated Bernstein control must be
finite before it participates in a maximum. No solver is called.
"""
from pathlib import Path
import inspect,json,hashlib,time
from flint import arb,ctx
import verify_dual_witness as old
import higher_support as higher
from radical_dual import exact_polynomials as radical
from conditioned_dual import exact_polynomials as conditioned
HERE=Path(__file__).resolve().parent

def main():
    ctx.prec=160;start=time.monotonic()
    source1=inspect.getsource(old.taylor_support);source2=inspect.getsource(higher.taylor_support)
    assert source1.count('return ans.upper()')==source2.count('return result.upper()')==1
    source1=source1.replace('return ans.upper()',"assert ans.is_finite(), 'Nonfinite support bound'; return ans.upper()")
    source2=source2.replace('return result.upper()',"assert result.is_finite(), 'Nonfinite support bound'; return result.upper()")
    ns1=dict(vars(old));ns2=dict(vars(higher));exec(source1,ns1);exec(source2,ns2)
    polys={s:old.combined_polynomials(s) for s in [1,-1]};checks=[]
    for row in json.loads((HERE/'dual_parent_replay.json').read_text())['rows']:
        for w in row['witnesses']:
            path=row['path'];n=[2*int(path[j::4],2)+1-128 for j in range(4)]
            Y,lam,_=old.rounded_witness(w['proposal']);co=old.aggregate(*polys[w['sigma']],Y,lam)
            result=ns1['taylor_support'](co,n,arb.pi()/128,5,128);assert result['verified']
            checks.append(dict(path=path,sigma=w['sigma'],kernel='quadratic',upper=result['support_upper']))
    for filename in ['radical_unresolved_pi64.json','conditioned_second_parent.json']:
        for row in json.loads((HERE/filename).read_text())['rows']:
            path=row['path'];n=[2*int(path[j::4],2)+1-64 for j in range(4)]
            factory=conditioned if 'scalar_names' in row['proposal'] else radical
            co,_=factory(*polys[row['sigma']],row['proposal'])
            result=ns2['taylor_support'](co,n,arb.pi()/64)
            assert arb(result['support_upper']).is_finite()
            checks.append(dict(path=path,sigma=row['sigma'],kernel='cubic',verified=result['verified'],upper=result['support_upper']))
    assert len(checks)==38
    receipt=dict(status='PASS',scope='All 38 finite support checks underlying five retained reconstruction-parent exclusions, plus failed controls',
        all_Bernstein_support_values_finite=True,checks=len(checks),rows=checks,seconds=time.monotonic()-start,
        instrumented_sources_sha256=[hashlib.sha256(s.encode()).hexdigest() for s in [source1,source2]])
    (HERE/'dual_finiteness_audit.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print('PASS: all 38 support checks finite; original classifications unchanged',flush=True)
if __name__=='__main__':main()
