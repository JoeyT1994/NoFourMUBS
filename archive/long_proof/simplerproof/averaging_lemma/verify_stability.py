"""Exact finite checks for the explicit strip-stability theorem in LEMMA.tex.

The written routing arguments and the published effective-minimum theorem
are mathematical inputs, not claims of proof-assistant verification.
This proves no c0=5 global bound. Run with python3 -B from the repository.
"""
from concurrent.futures import ThreadPoolExecutor
from fractions import Fraction as Q
from pathlib import Path
import hashlib
import importlib.util
import json
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]


def load(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main():
    start = time.monotonic()
    eps, f3_h = Q(1, 3600), Q(1, 2**46)
    assert Q(56,25)**2 > 5
    z = Q(59,300)
    assert (Q(56,25)+432*eps)/12 == z < Q(1,5)
    bound = eps+(z+z**3/5)/6
    assert bound == Q(26980379,810000000) < Q(1,30)
    assert 5-21*Q(1,25)-9*Q(1,25)**2 > 0
    assert Q(1800,2**23) < eps
    assert f3_h <= Q(1,2**42)
    assert Q(10,2**50) <= f3_h

    # Nearly singular block: D <= h^7/1024, then proportionality error <= h.
    h, determinant_threshold = Q(1,2**52), Q(1,2**374)
    assert determinant_threshold == h**7/1024
    assert determinant_threshold/h <= h/4
    assert 48*determinant_threshold/h**3 <= h**4/16
    assert 4*h == Q(1,2**50)

    # Nearly geometric triple: eta=sqrt(6 delta); F3 error <=52 eta.
    delta = Q(1,2**106)
    assert 6*delta < Q(1,150)**2
    assert delta**2 <= 6*delta
    assert 52**2*6*delta < f3_h**2

    # Independently recover the raw signed-invariant exponent bound.
    old = load('stability_corner_algebra', ROOT/'ProvenResults/CornerBounds/verify.py')
    variables, D, _ = old.generic_polynomials()
    terms = old.laurent_terms(D, variables)
    assert len(terms) == 48
    hist = {}
    for coefficient, (a,b,c,d) in terms:
        assert abs(coefficient) == 1
        raw = (a+b+c+d,-a-c,-b-d,-a-b,a,b,-c-d,c,d)
        assert max(map(abs, raw)) <= 2
        weight = sum(map(abs,raw))
        hist[weight] = hist.get(weight,0)+1
    assert hist == {8:36,12:12}
    assert sum(k*v for k,v in hist.items()) == 432

    # Every coefficient bound below is an l1 bound, hence a height bound.
    signed_height = 2**18*(36*2**8+12*2**12)+2**18
    det_numerator_norm = 6*4**6
    minor_height = 2**748*det_numerator_norm**2+4**6
    geometry_height = 2**212*5*(2*2**20+2*2**40)+2**20
    physical_height = 6*4**10
    assert signed_height < 2**34
    assert minor_height < 2**779
    assert geometry_height < 2**257
    assert physical_height < 2**23
    assert max(signed_height,minor_height,geometry_height,physical_height,48) < 2**800
    n, degree, constraints, height_log2 = 11,40,91,800
    assert constraints == 6+20+40+2+20+3
    assert 2*n+2*constraints < 2**height_log2
    assert degree**n < 2**66
    K = 866*11*80**11
    N = 2*K
    assert N == 16365543384678400000000000

    # Replay the four algebraic inputs to critical-strip classification.
    names = ['verify_critical_reduction.py','verify_critical_square_sums.py',
             'verify_critical_scalar_classification.py','verify_critical_p7.py',
             'verify_critical_equicorrelation.py']
    def replay(name):
        path = ROOT/'MinimalConstruction/Proofs'/name
        result = subprocess.run([sys.executable,'-B',str(path)],capture_output=True,text=True)
        (HERE/(name.removesuffix('.py')+'_stability.log')).write_text(result.stdout+result.stderr)
        if result.returncode:
            raise RuntimeError(f'{name} failed: {result.stderr[-2000:]}')
        return dict(file=str(path.relative_to(ROOT)),status='PASS')
    with ThreadPoolExecutor(max_workers=3) as pool:
        inputs = list(pool.map(replay,names))
    print('PASS: critical-strip algebraic inputs',flush=True)

    lifting = ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'
    sys.path.insert(0,str(lifting))
    near = load('stability_near_F3',lifting/'verify_near_f6.py')
    f3 = dict(factorization=near.factorization_audit(),grid=near.algebra_audit())
    print('PASS: near-F3 factorization and exact endpoint grid',flush=True)
    files = [Path(__file__),HERE/'LEMMA.tex',HERE/'verify.py',
        ROOT/'MinimalConstruction/Proofs/CRITICAL_STRIP_CLASSIFICATION.md',
        ROOT/'MinimalConstruction/Proofs/CRITICAL_CORNER_REDUCTION.md',
        ROOT/'MinimalConstruction/Proofs/CRITICAL_P7_EXCLUSION.md',
        ROOT/'MinimalConstruction/Proofs/CRITICAL_EQUI_CORRELATION_EXCLUSION.md',
        lifting/'NEAR_F6_CLOSURE.md']+[ROOT/'MinimalConstruction/Proofs'/name for name in names]
    report = dict(status='PASS_FINITE_CHECKS_FOR_EXPLICIT_SMALL_CUTOFF',
        global_constant_5_proved=False,
        global_cutoff=dict(mantissa=1,base=2,exponent=-N),
        application=dict(n=n,d=degree,s=constraints,height_log2=height_log2),
        Fourier_family_entry_radius='1/3600',F3_entry_radius='2^-46',
        singular_minor_threshold='2^-374',geometric_triple_threshold='2^-106',
        tube_distance_upper_bound=str(bound),critical_inputs=inputs,F3_inputs=f3,
        written_proofs_not_formalized=['near-singular routing','near-geometric routing',
          'strip-only scope of critical classification','polynomial encoding and height estimates',
          'application of Jeronimo-Perrucci-Tsigaridas Theorem 1'],
        global_MC1_used_as_input=False,
        listed_source_hashes={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files},
        seconds=time.monotonic()-start)
    (HERE/'stability_receipt.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))


if __name__=='__main__':
    main()
