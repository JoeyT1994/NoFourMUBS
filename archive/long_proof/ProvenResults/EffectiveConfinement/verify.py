#!/usr/bin/env python3
"""Exact replay for EffectiveConfinement. Python 3.10+, standard library only.

This checks finite algebra and all constants. The analytic implications are
proved in PROOF.md. Strict-corner coverage, the published effective-minimum
THEOREM, and the identified upstream theorems remain explicit dependencies;
this script does not pretend to prove or replay their entire proof packets.
"""
import argparse
from collections import Counter
from fractions import Fraction as F
from hashlib import sha256
from itertools import combinations, product
import json
from math import comb
from pathlib import Path
import platform
import time

from exact_algebra import (det_terms, corner_R, conj, scale, mul, undephased_exponents,
                           at_sixth_seed, seed_orbit)
from predicate import (K, N, CUTOFF, ScaledRational, endpoint, certify_box, verify_certificate)

HERE = Path(__file__).resolve().parent
REPS = ((4,5,0,3), (1,2,2,4), (0,2,3,0), (0,2,3,2), (2,4,4,2), (0,0,2,4))


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def cayley_factor_controls():
    """Exact Gaussian-integer polynomial checks behind denominator clearing."""
    def cmul(z, w):
        a, b = z
        c, d = w
        return a*c-b*d, a*d+b*c

    def pmul(p, q):
        out = {}
        for e, z in p.items():
            for f, w in q.items():
                x, y = cmul(z, w)
                a, b = out.get(e+f, (0,0))
                out[e+f] = (a+x,b+y)
        return {e:z for e,z in out.items() if z != (0,0)}

    def ppow(p, n):
        out = {0:(1,0)}
        for _ in range(n):
            out = pmul(out,p)
        return out

    q = {0:(1,0),2:(1,0)}
    num = {0:(1,0),1:(0,2),2:(-1,0)}
    bar = {e:(a,-b) for e,(a,b) in num.items()}
    require(pmul(num,bar) == ppow(q,2), 'Cayley unit-circle identity')
    factors = []
    for e in range(-2,3):
        factor = pmul(ppow(num if e >= 0 else bar,abs(e)), ppow(q,2-abs(e)))
        if e >= 0:
            require(pmul(factor,ppow(q,e)) == pmul(ppow(num,e),ppow(q,2)),
                    'positive Laurent denominator clearing')
        else:
            require(pmul(factor,ppow(num,-e)) == ppow(q,2-e),
                    'negative Laurent denominator clearing')
        norm = sum(abs(a)+abs(b) for a,b in factor.values())
        require(max(factor) <= 4 and norm <= 2**(2+abs(e)), 'Cayley factor degree/norm')
        factors.append({'exponent':e, 'coefficients':{str(k):list(z) for k,z in sorted(factor.items())},
                        'Gaussian_l1':norm})
    return factors


def certificate_payload():
    D = det_terms()
    R, Rvee = corner_R()
    require(len(D) == 48 and set(D.values()) == {-1, 1}, 'determinant term count/coefficient')
    require(conj(D) == scale(D, -1), 'D is anti-self-conjugate')
    require(Rvee == scale(mul(D, D), -1), 'complementary square normalization')
    require(conj(R) == R, 'R is real')
    raw = [(undephased_exponents(e), c) for e, c in D.items()]
    lengths = Counter(sum(map(abs, e)) for e, c in raw)
    require(lengths == {8: 36, 12: 12}, 'raw frequency histogram')
    for e, _ in raw:
        require(max(map(abs, e)) <= 2, 'individual exponents')
        require(all(sum(e[3*i+j] for j in range(3)) == 0 for i in range(3)), 'row gauge')
        require(all(sum(e[3*i+j] for i in range(3)) == 0 for j in range(3)), 'column gauge')
    phase_L = sum(abs(c)*sum(map(abs, e)) for e, c in raw)
    require(phase_L == 432, 'signed invariant phase Lipschitz constant')
    weighted = sum(abs(c)*2**sum(map(abs, e)) for e, c in raw)
    require(weighted == 58368, 'weighted frequency bound')
    denominator_norm = 2**18
    numerator_norm = denominator_norm*weighted
    signed_constraint_norm = numerator_norm + denominator_norm
    require(signed_constraint_norm < 2**34, 'signed polynomial height')

    # Detector after multiplication by (1+t^2)^6. Only even powers survive.
    detector = {}
    for j in range(7):
        value = 2**20*(2*comb(6,j)-2*((-1)**j)*comb(12,2*j))-comb(6,j)
        if value:
            detector[2*j] = value
    detector_l1 = sum(map(abs, detector.values()))
    detector_bound = 2**20*(2*2**6+2*2**12)+2**6
    require(detector_l1 <= detector_bound < 2**34, 'detector coefficient height')

    # Dephased row constraints have <=10 free entries in their common denominator.
    row_norm = 6*2**12
    require(row_norm < 2**34, 'row orthogonality height')
    require(2*10 <= 38 and 4*9+1 <= 38 and 12 <= 38, 'all degree bounds')
    constraints = 30 + 50 + 800 + 2 + 1
    require(constraints == 883, 'constraint count')
    n, d, height = 26, 38, 2**34
    require(2*n+2*constraints < height, 'tilde height')
    base = 2**(4-n//2)*height*d**n if 4-n//2 >= 0 else (height*d**n)//2**(n//2-4)
    require(base == 2**25*38**26 and base < 2**181, 'JPT base upper bound')
    exponent = n*2**n*d**n
    require(exponent == 26*76**26 and K == 181*exponent and N == 2*K, 'JPT exponent')

    # Elementary rounding estimates use only 3 < pi < 4.
    rho1 = F(1,3072)
    require(F(4,12*1024) == rho1, 'sixth-root phase conversion')
    require(12*rho1 < 1, 'rounded inner product lattice separation')
    require(F(1,2)+432*rho1 == F(41,64) < 1, 'signed sixth-root lattice separation')
    require(rho1 < F(1,1250) < F(1,40) < F(1,30), 'matrix radii')
    require(K >= 10, 'coarse exponent floor')

    orbits = [seed_orbit(s) for s in REPS]
    require(sum(map(len,orbits)) == len(set().union(*orbits)), 'disjoint six seed classes')
    census = Counter()
    for rr in combinations(range(6),3):
        for cc in combinations(range(6),3):
            s = tuple((r-rr[0])*(c-cc[0]) % 6 for r in rr[1:] for c in cc[1:])
            owners = [k for k,o in enumerate(orbits) if s in o]
            require(len(owners) == 1, 'F6 corner-class coverage')
            require(at_sixth_seed(R,s) == (0,0), 'R vanishes on F6 seed')
            census[owners[0]] += 1
    require([census[i] for i in range(6)] == [144,36,72,72,28,48], 'R owner census')
    # An exhaustive finite cross-check of the Eisenstein lattice conclusion.
    # The universal lattice proof itself is in PROOF.md, Section 6.
    for s in product(range(6),repeat=4):
        aa, bb = at_sixth_seed(D,s)
        require(2*aa+bb == 0 and bb % 2 == 0, 'signed determinant at sixth roots')
    R_L = sum(abs(c)*sum(map(abs,e)) for e,c in R.items())
    require(len(R) == 2083 and R_L == 19537920, 'seed polynomial Lipschitz bound')
    require(R_L < 2**25, 'tau=m/2^26 implies R<m/2')
    for s in set().union(*orbits):
        require(at_sixth_seed(R,s) == (0,0), 'R at every framed F6 seed')

    return {
        'format': 'EffectiveConfinement-arithmetic-v1',
        'D_terms': [[list(e),c] for e,c in sorted(D.items())],
        'Cayley_factor_controls': cayley_factor_controls(),
        'raw_frequency_l1_histogram': {str(k):v for k,v in sorted(lengths.items())},
        'individual_raw_exponent_bound': 2,
        'signed_phase_Lipschitz': phase_L,
        'weighted_frequency_sum': weighted,
        'Cayley_denominator_l1_bound': denominator_norm,
        'Cayley_numerator_l1_bound': numerator_norm,
        'signed_constraint_l1_bound': signed_constraint_norm,
        'detector_coefficients': {str(k):v for k,v in detector.items()},
        'detector_l1': detector_l1,
        'detector_l1_upper_bound': detector_bound,
        'orthogonality_l1_upper_bound': row_norm,
        'number_of_Cayley_sign_charts': 2**25,
        'n': n, 'd': d, 'height': height, 'constraints': constraints,
        'JPT_base': str(base), 'JPT_base_power_of_two_upper_exponent': 181,
        'JPT_exponent': str(exponent), 'K': str(K), 'N': str(N),
        'm': {'mantissa':'1','exponent2':str(-N)},
        'rho1_full_matrix_radians': '1/3072',
        'c_global_quadratic': {'mantissa':'1','exponent2':str(-N-4)},
        'eta_seed_radians': {'mantissa':'1','exponent2':str(1-K)},
        'tau_stationary_seed_radians': {'mantissa':'1','exponent2':str(-N-26)},
        'safe_tau_stationary_seed_turns': {'mantissa':'1','exponent2':str(-N-29)},
        'R_Laurent_terms': len(R), 'R_seed_phase_Lipschitz': R_L,
        'sixth_root_signed_determinant_cases': 6**4,
        'seed_classes': [
            {'representative_pi_over_3':list(s), 'active':i<2,
             'positional_corner_count':census[i], 'frame_count_with_multiplicity':72,
             'distinct_seed_orbit': [list(t) for t in sorted(orbits[i])]}
            for i,s in enumerate(REPS)
        ]
    }


def predicate_controls():
    # Exact F6 seed point: R=0, so [0,m/2] is a genuine outward enclosure.
    # This is an API boundary test, not a positive-width production-cell result.
    box = [[F(k,6),F(k,6)] for k in (4,5,0,3)]
    below = ScaledRational(F(1),-N-1)
    accepted = certify_box(box, [0,below])
    require(accepted is not None and verify_certificate(accepted), 'compact positive cutoff control')
    require(certify_box(box,[0,CUTOFF]) is None, 'strict cutoff boundary')
    require(certify_box(box,[0,ScaledRational(F(1),-N+1)]) is None, 'above-cutoff control')
    require(certify_box(box,[0,F(1,1000)]) is None, 'practical threshold must not certify')
    require(CUTOFF.compare(F(1,500)) < 0, 'consistent with small-R obstruction')
    require(verify_certificate(certify_box(box,[-2,0])), 'nonpositive enclosure control')
    changed = dict(accepted, full_matrix_phase_radius='1/30')
    require(not verify_certificate(changed), 'tampered certificate control')
    require(not verify_certificate({'module':'unrelated'}), 'unknown module control')
    rejected = 0
    for b,r in [(box,[0,0.1]), ([[0,0.1]]*4,[0,below]),
                ([[1,0]]*4,[0,below]), (box,[1,0]),
                ([[0,1]]*3,[0,below]), (box,[True,below]),
                (box,[0,{'mantissa':'1','exponent2':-1.0}])]:
        try:
            certify_box(b,r)
        except (TypeError,ValueError):
            rejected += 1
        else:
            raise AssertionError('invalid input accepted')
    # Cross-check the compressed arithmetic against expanded Fractions at manageable exponents.
    tested = 0
    for p,q,r,s,e,f in product((-3,-1,0,1,3),(1,3),(-2,0,2),(1,5),(-8,0,9),(-7,0,8)):
        a, b = ScaledRational(F(p,q),e), ScaledRational(F(r,s),f)
        x, y = F(p,q)*F(2)**e, F(r,s)*F(2)**f
        require(a.compare(b) == (x>y)-(x<y), 'scaled arithmetic comparison')
        tested += 1
    require(ScaledRational(F(2),-N-1).compare(CUTOFF) == 0, 'normalization')
    return {'exact_comparison_cases':tested, 'invalid_inputs_rejected':rejected,
            'below_equal_above_cutoff':'PASS', 'tampering':'PASS',
            'exact_F6_point_API_control':accepted,
            'API_control_scope':'Degenerate R=0 seed point; not a positive-width campaign cell',
            'R_enclosure_outwardness':'CALLER PREMISE, NOT VERIFIED HERE'}


def source_audit(repository):
    data = json.loads((HERE/'SOURCE_SHA256.json').read_text())
    if repository is None:
        return {'status':'NOT_REPLAYED', 'reason':'No --repository supplied.',
                'recorded_files':len(data['files'])}
    root = Path(repository).resolve()
    count = 0
    for entry in data['files']:
        path = root/entry['path']
        require(path.is_file(), 'missing repository source '+entry['path'])
        require(sha256(path.read_bytes()).hexdigest() == entry['sha256'],
                'repository source hash mismatch '+entry['path'])
        count += 1
    return {'status':'PASS','matched_files':count}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repository',type=Path)
    parser.add_argument('--output',type=Path)
    args = parser.parse_args()
    start = time.monotonic()
    rebuilt = certificate_payload()
    stored = json.loads((HERE/'certificates/arithmetic.json').read_text())
    require(rebuilt == stored, 'frozen arithmetic certificate differs from independent regeneration')
    controls = predicate_controls()
    report = {
        'status':'PASS', 'python':platform.python_version(),
        'finite_algebra_and_constants':'PASS',
        'arithmetic':'arbitrary-precision integers and exact Fractions only',
        'certificate_sha256':sha256((HERE/'certificates/arithmetic.json').read_bytes()).hexdigest(),
        'predicate_controls':controls, 'repository_source_audit':source_audit(args.repository),
        'accepted_input_NOT_proved_here':'strict-corner coverage',
        'published_dependency_NOT_reproved_here':'Jeronimo-Perrucci-Tsigaridas, arXiv:1112.0544v1, Theorem 1',
        'upstream_proof_packets_NOT_replayed_here':['ChartConditioning: local inverse and inactive classes',
                                                  'ClusterTube: 1/30 F6 quartet exclusion'],
        'new_global_numerical_cover_run':False,
        'production_width_class_1224_proved':False,
        'seconds':time.monotonic()-start
    }
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k!='predicate_controls'},indent=2))


if __name__ == '__main__':
    main()
