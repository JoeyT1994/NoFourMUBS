#!/usr/bin/env python3
"""Exact acceptance tests for the retained anchor inequalities.
Run python verify.py; no optimizer or archived source packet is required.
Only Python's standard library is used.
"""
import argparse,hashlib,itertools,json,platform,sys,time
from pathlib import Path
from fractions import Fraction as F
from exact_algebra import (Q3i,ZERO,ONE,ROOTS12,certificate_polynomial,
    dagger,matmul,invariant_data,det3,perm3,root3_interval,real_interval,abs_upper)
from template_restriction import coefficients,certified_margin,quadratic_margin

ROOT=Path(__file__).resolve().parent
CASES=[('certificate.json',(0,1,2,3),20,10),
       ('certificate_0124.json',(0,1,2,4),24,22),
       ('certificate_0134.json',(0,1,3,4),16,3)]

def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()

def test_reference(C,H,K,tests):
    for name,A in [('H',H),('K',K)]:
        assert all(v*v.conj()==ONE for row in A for v in row)
        G=matmul(dagger(A),A)
        assert G==[[Q3i(6)if i==j else ZERO for j in range(6)]for i in range(6)]
        tests.append(f'{name}: all 36 unit moduli and all 36 raw Gram entries checked exactly.')
    cross=matmul(dagger(H),K)
    assert all(x*x.conj()==Q3i(6)for row in cross for x in row)
    tests.append('All 36 carrier/third-basis squared overlaps equal 6 exactly. Every selected quartet satisfies both flatness tests and all six orthogonality pairs.')
    E=[row[:3]for row in H[:3]];inv=invariant_data(E)
    assert E[1][1]==Q3i(-1)
    assert inv['g']==Q3i(3) and inv['chi']==Q3i(-3) and inv['R']==Q3i(27)
    side=[row[3:]for row in H[:3]];product=ONE
    for row in side:
        for v in row:product=product*v
    z=-perm3(side)*det3(side)**2/(inv['g']*product)
    assert z==ROOTS12[4]
    invbar=invariant_data([[x.conj()for x in row]for row in E]);assert invbar==inv
    assert z.conj()==ROOTS12[8]
    tests.append('Current strict a=-1 corner: g=3, chi=-3, R=27; actual positive sheet z=omega. Its conjugate reference has the negative sheet. The universal theorem does not select either sign at any other fixed seed.')
    return inv

def test_symmetries(C,tests):
    data=json.loads((ROOT/'data'/'reference_symmetries.json').read_text())
    H=[[2*x%12 for x in row]for row in C['reference_H_exponents_mod6']]
    K=C['reference_K_exponents_mod12'];syms=data['symmetries']
    assert len(syms)==36
    for g in syms:
        p=g['row_permutation'];d=g['row_phase_exponents_mod12']
        assert sorted(p)==list(range(6)) and len(d)==6
        for A,key in [(H,'H_columns'),(K,'K_columns')]:
            perm=g[key];assert sorted(perm)==list(range(6))
            for j in range(6):
                phase=(A[p[0]][j]+d[0]-A[0][perm[j]])%12
                assert all((A[p[r]][j]+d[r]-A[r][perm[j]])%12==phase for r in range(6))
    # Only coverage by these explicitly checked symmetries is needed, not an
    # assertion that they exhaust every symmetry of the reference.
    orbits=[];covered=set()
    for _,selected,_,_ in CASES:
        orbit={tuple(sorted(g['K_columns'][j]for j in selected))for g in syms}
        orbits.append({'representative':list(selected),'subsets':[list(x)for x in sorted(orbit)]})
        covered.update(orbit)
    assert [len(x['subsets'])for x in orbits]==[6,6,3]
    assert covered==set(itertools.combinations(range(6),4))
    assert orbits==data['orbits']
    tests.append('36 reference monomial transformations checked by exact exponent arithmetic; the three certified quartet orbits cover all 15 four-column subsets. No symmetry is assumed for a variable configuration.')
    return orbits

def test_certificate(filename,selected,nf,gap,C,H,K,tests):
    assert C['dimension']==6 and C['scale']>0
    assert len(C['sos_monomials'])==61
    assert len(C['sos_factor_real_integers'])==nf
    assert [(a['basis'],a['column'])for a in C['multipliers']]==[('H',j)for j in range(5)]+[('K',j)for j in selected]
    assert all(sum(map(abs,m))<=2 for m in C['sos_monomials'])
    H1,K1,forms,hs,sos,P=certificate_polynomial(C)
    assert H1==H and K1==K
    bounds=root3_interval(60);zero=(0,)*5
    p0=P.get(zero,ZERO);assert p0.c==p0.d==0
    lo,hi=real_interval(p0.a,p0.b,bounds)
    off=sum((abs_upper(v,bounds)for k,v in P.items()if k!=zero),F(0))
    lower=lo-off;assert lower>gap
    assert all(sum(map(abs,e))<=4 for e in P)
    # Check the global affine-in-projectors implementation against the
    # independently expanded reference residuals.
    projectors=[]
    for obs in C['multipliers']:
        A=H if obs['basis']=='H'else K;j=obs['column']
        projectors.append([[A[r][j]*A[s][j].conj()/6 for s in range(6)]for r in range(6)])
    assert coefficients(C,projectors)==P
    assert certified_margin(P)==lower
    Czero,Qmargin=quadratic_margin(P)
    assert Czero==p0 and Qmargin.c==Qmargin.d==0
    qlo,_=real_interval(Qmargin.a,Qmargin.b,bounds)
    assert lo>0 and qlo>0
    assert sum(1 for e in itertools.product(range(-4,5),repeat=5)if sum(map(abs,e))<=4)==681
    L=[F(sum(abs(t['cos'])+abs(t['sin'])for t in a['terms']),C['scale'])for a in C['multipliers']]
    B2=sum((x*x for x in L),F(0));energy=F(gap*gap,36)/B2
    assert energy>F(1,1200**2)
    assert all(h for h in hs[5:])
    # Independent exact pointwise checks against raw matrix inner products,
    # not the Fourier coefficient implementation used to build the forms.
    for phase_indices in [(0,0,0,0,0),(1,2,3,4,5),(11,3,8,2,7)]:
        w=[ONE]+[ROOTS12[j] for j in phase_indices]
        def monomial(e):return ROOTS12[sum(a*b for a,b in zip(e,phase_indices))%12]
        def value(poly):return sum((v*monomial(e)for e,v in poly.items()),ZERO)
        direct_residuals=[]
        for obs in C['multipliers']:
            A=H if obs['basis']=='H'else K;j=obs['column']
            inner=sum((A[r][j].conj()*w[r]for r in range(6)),ZERO)
            direct_residuals.append(inner*inner.conj()/6-1)
        for f,f_direct in zip(forms,direct_residuals):assert value(f)==f_direct
        sigma_direct=ZERO
        for ar,ai in zip(C['sos_factor_real_integers'],C['sos_factor_imag_integers']):
            f=sum((Q3i(F(a,C['scale']),c=F(b,C['scale']))*monomial(e)
                   for a,b,e in zip(ar,ai,C['sos_monomials'])),ZERO)
            sigma_direct=sigma_direct+f*f.conj()
        assert value(sos)==sigma_direct
        assert value(P)==sum((value(h)*f for h,f in zip(hs,direct_residuals)),ZERO)-sigma_direct
    tests.append(f'{filename}: exact expansion plus direct raw-inner-product checks at three exact phase fixtures, P>{gap} on T^5, all four anchor-overlap multipliers nonzero, squared probability-error bound >1/1,440,000.')
    coeff_export={'field':'a+b*sqrt(3)+i*(c+d*sqrt(3))','coefficients':[
        {'exponent':list(k),'value':v.as_strings()}for k,v in sorted(P.items())]}
    suffix=''if filename=='certificate.json'else '_'+''.join(map(str,selected))
    expected=ROOT/'data'/f'expanded_P{suffix}.json'
    if expected.exists():assert json.loads(expected.read_text())==coeff_export,'expanded certificate data mismatch'
    else:expected.write_text(json.dumps(coeff_export,indent=2)+'\n')
    return {'certificate':filename,'sha256':digest(ROOT/'data'/filename),'selected_K_columns':list(selected),
        'sos_factors':nf,'sos_monomials':61,'nonzero_P_coefficients':len(P),
        'P_constant_exact':p0.as_strings(),'P_constant_lower_bound':str(lo),
        'quadratic_exclusion_margin_exact':Qmargin.as_strings(),'quadratic_exclusion_margin_lower_bound':str(qlo),
        'nonconstant_coefficient_abs_upper_bound':str(off),'P_global_lower_bound':str(lower),
        'simplified_P_lower_bound':str(gap)+' (strict)',
        'multiplier_sup_bounds':[str(x)for x in L],'sum_squared_multiplier_sup_bounds':str(B2),
        'normalized_probability_error_squared_lower_bound':str(energy),
        'simplified_squared_distance_lower_bound':'1/1440000 (strict)',
        'display_only_decimals':{'quadratic_exclusion_margin':float(qlo),'P_lower_bound':float(lower),'off_constant_bound':float(off),'probability_error_squared_bound':float(energy)}}

def main():
    parser=argparse.ArgumentParser()
    args=parser.parse_args();start=time.monotonic();tests=[]
    C0=json.loads((ROOT/'data'/'certificate.json').read_text())
    print('Checking reference matrices and current reconstruction invariants...',flush=True)
    H,K,*_=certificate_polynomial(C0)
    inv=test_reference(C0,H,K,tests);orbits=test_symmetries(C0,tests)
    cases=[]
    for filename,selected,nf,gap in CASES:
        print('Expanding and verifying '+filename+'...',flush=True)
        C=json.loads((ROOT/'data'/filename).read_text())
        cases.append(test_certificate(filename,selected,nf,gap,C,H,K,tests))
    outputs={'status':'PASS','command':'python verify.py',
        'python_version':sys.version,'platform':platform.platform(),
        'exact_arithmetic_field':'Q(sqrt(3),i), represented by rational quadruples',
        'square_root_interval':[str(x)for x in root3_interval(60)],
        'exact_acceptance_tests':tests,'reference_invariants':{k:v.as_strings()for k,v in inv.items()},
        'quartet_orbits':orbits,'certificates':cases,
        'exact_vs_floating_point':'All mathematical acceptance tests above are exact. Decimal summaries are display only. Historical source-packet regressions are in the recovery archive.',
        'scope':'PARTIAL: global necessary intrinsic configuration restriction and certified actual-4+1 exclusions. NOT emptiness over all strict seeds, all quartets, or all Karlsson frames.'}
    outputs['elapsed_seconds']=round(time.monotonic()-start,3)
    (ROOT/'VERIFICATION.json').write_text(json.dumps(outputs,indent=2)+'\n')
    print('PASS: all three exact coefficient/SOS certificates, all 15 quartet subsets, and strict-domain reference checks.')
    for case in cases:print(case['selected_K_columns'],case['display_only_decimals'])
    print('Certified global necessary restriction: intrinsic reference distance >1/1200.')
    print('Result is PARTIAL; whole-domain 4+1 emptiness remains unresolved.')
    print('Receipt:',ROOT/'VERIFICATION.json')

if __name__=='__main__':main()
