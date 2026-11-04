"""Pure-Python integer replay of the exported third-moment certificate.

The rational verifier binds these coefficients to the matrix formulas.
This separate checker verifies all exported coefficient-zero identities,
all denominator cofactors, and all cleared-summand identities using only
Python integer sparse polynomials. No FLINT or rational-function algebra.
"""
import argparse
import gzip
import json
import resource
import time
from pathlib import Path


def main(sum_only=False):
    started=time.process_time()
    path=Path(__file__).with_name('third_moment_certificates.json.gz')
    data=json.loads(gzip.decompress(path.read_bytes()))
    assert data['format']=='matched-third-moment-cofactors-v1'
    assert data['variables']==['a','b','c','d']
    assert [v['label'] for v in data['identities']]==[f'W{p}{q} {part}' for q in (1,2) for p in (1,2) for part in ('linear','constant')]
    polys=[];maximum_slice_terms=0
    for expected_id,record in enumerate(data['polynomials']):
        assert record['id']==expected_id
        assert isinstance(record['scale'],int) and record['scale']>0
        terms={}
        seen_powers=set()
        for s in record['a_slices']:
            assert s['a_power'] not in seen_powers
            seen_powers.add(s['a_power'])
            maximum_slice_terms=max(maximum_slice_terms,len(s['terms']))
            for b,c,d,co in s['terms']:
                e=(s['a_power'],b,c,d)
                assert all(isinstance(v,int) and v>=0 for v in e)
                assert isinstance(co,int) and co and e not in terms
                terms[e]=co
        assert len(terms)==record['terms']
        polys.append((terms,record['scale']))
    assert maximum_slice_terms==data['maximum_polynomial_slice_terms']
    del data['polynomials']

    def product(A,B):
        out={}
        for (a,b,c,d),x in A.items():
            for (e,f,g,h),y in B.items():
                exp=(a+e,b+f,c+g,d+h)
                out[exp]=out.get(exp,0)+x*y
        return {e:c for e,c in out.items() if c}
    def scale(A,k):return {e:c*k for e,c in A.items()}
    product_checks=0;coefficient_checks=0
    checked_denominators=set();checked_products=set()
    for identity in data['identities']:
        combined={};powers=set()
        assert isinstance(identity['integer_scale'],int) and identity['integer_scale']>0
        D,Ds=polys[identity['common_denominator']]
        assert D,'zero common denominator'
        for v in identity['summands']:
            C,Cs=polys[v['cleared_integer']]
            assert Cs==1
            powers.update(e[0] for e in C)
            for e,co in C.items():combined[e]=combined.get(e,0)+co
            if sum_only:continue
            N,Ns=polys[v['numerator']]
            d,ds=polys[v['denominator']]
            F,Fs=polys[v['cofactor']]
            assert d and F,'zero summand denominator or cofactor'
            key=(v['denominator'],v['cofactor'],identity['common_denominator'])
            if key not in checked_denominators:
                assert scale(product(d,F),Ds)==scale(D,ds*Fs),'false denominator cofactor'
                checked_denominators.add(key);product_checks+=1
            key=(v['numerator'],v['cofactor'],v['cleared_integer'],identity['integer_scale'])
            if key not in checked_products:
                assert scale(product(N,F),identity['integer_scale'])==scale(C,Ns*Fs),'false cleared-summand identity'
                checked_products.add(key);product_checks+=1
        assert sorted(powers)==identity['coefficient_identity_a_powers']
        assert all(co==0 for co in combined.values()),identity['label']+' has a nonzero coefficient'
        coefficient_checks+=len(powers)
    print(json.dumps(dict(status='PASS_INTEGER_COEFFICIENT_SLICES'+('_SUM_ONLY' if sum_only else '_AND_COFACTORS'),rational_residuals=len(data['identities']),coefficient_slice_identities=coefficient_checks,cofactor_and_product_identities=product_checks,maximum_polynomial_slice_terms=maximum_slice_terms,cpu_seconds=time.process_time()-started,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2))


if __name__=='__main__':
    if not __debug__:raise SystemExit('Refusing optimized Python: exact acceptance assertions must be enabled.')
    parser=argparse.ArgumentParser()
    parser.add_argument('--sum-only',action='store_true',help='Check coefficient sums only; default also independently replays every cofactor multiplication.')
    main(parser.parse_args().sum_only)
