#!/usr/bin/env python3
"""Exact replay for Handoff S. Python 3 standard library only.

The universal algebra is checked independently by verify_universal_algebra.
The analytic implications and upstream classification boundary are in PROOF.md.
All checks use explicit exceptions and remain enabled under python -O.
"""
from collections import Counter
from fractions import Fraction
from hashlib import sha256
from itertools import combinations, product
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

def check(condition, message):
    if not condition:
        raise RuntimeError("Verification failed: " + message)

def rational_root_check():
    candidates = (Fraction(1), Fraction(-1), Fraction(1, 3), Fraction(-1, 3))
    values = [3*k**3 + k**2 + k - 1 for k in candidates]
    check(all(v != 0 for v in values), "exceptional cubic has a rational candidate root")
    return {"polynomial": "3*k^3+k^2+k-1",
            "rational_root_candidates": [str(k) for k in candidates],
            "values_at_candidates": [str(v) for v in values],
            "rational_roots": 0,
            "analytic_step": "Rational p_star makes q=k^2 rational, then k=(1-q)/(1+3q) rational; see PROOF.md."}

def scalar_type_check():
    # At p=5,J=0: g=12, eta=4, chi=W-52.
    g, eta, shift = 27-3*5, 9-5, (5-9)*(5-18)
    check((g, eta, shift) == (12, 4, 52), "five-type scalar substitution")
    check(4*g*g*eta == 48**2, "five-type discriminant constant")
    roots = (shift-48, shift+48)
    check(roots == (4, 100), "five-type W roots")
    check(Fraction(25,3) < 100, "physical upper bound excludes W=100")
    check(25-2*4 == 17, "five-type square bound")
    seven = sum(Fraction(x)**2 for x in (1,1,5))
    equi = 3*Fraction(9,5)**2
    check(seven == 27 and equi == Fraction(243,25), "endpoint square values")
    return {"five_type_R": "2304-(W-52)^2",
            "five_type_W_roots": list(roots),
            "physical_W_upper_bound": "25/3",
            "retained_W": 4,
            "five_type_square_sum": "17-2*X*Y*Z <= 17",
            "corner_square_bounds_n0_n5_n7_ne": ["0","17","27","243/25"]}

def count_check():
    profiles = []
    for counts in product(range(11), repeat=4):
        n0,n5,n7,ne = counts
        if sum(counts) == 10 and 25*n5+35*n7+27*ne == 270:
            profiles.append(counts)
    expected = [(0,0,0,10), (0,4,1,5), (0,8,2,0), (2,1,7,0)]
    check(profiles == expected, "complete count enumeration")
    return profiles

VERTICES = tuple(range(1,6))
EDGES = tuple(combinations(VERTICES,2))

def degree_check(number):
    histogram = Counter()
    witness = None
    minimum = None
    total = 0
    for support in combinations(range(10), number):
        for signs in product((-1,1), repeat=number):
            labels = [0]*10
            for edge, sign in zip(support, signs):
                labels[edge] = 2*sign
            degrees = [sum(labels[k] for k,e in enumerate(EDGES) if v in e)
                       for v in VERTICES]
            D = sum(d*d for d in degrees)
            check(D >= 8, "signed support violates the claimed degree lower bound")
            if minimum is None or D < minimum:
                minimum = D
                witness = {"edge_J_values": labels, "degree_sums": degrees}
            histogram[D] += 1
            total += 1
    expected_total = {2:180, 7:15360}[number]
    check(total == expected_total, "signed support enumeration size")
    check(minimum == 8, "minimum D is not attained at 8")
    if number == 2:
        check(histogram == Counter({8:60,16:60,24:60}), "two-edge histogram")
    return {"nonzero_seven_type_edges": number, "signed_assignments_checked": total,
            "minimum_D": minimum, "attaining_witness": witness,
            "D_histogram": {str(k):histogram[k] for k in sorted(histogram)}}

def quadratic_check(profiles, degree_results):
    corner_bounds = (Fraction(0), Fraction(17), Fraction(27), Fraction(243,25))
    minimums = {r["nonzero_seven_type_edges"]:r["minimum_D"] for r in degree_results}
    rows = []
    for profile in profiles:
        D_lower = minimums[profile[2]] if profile[3] == 0 else 0
        raw = sum(n*b for n,b in zip(profile,corner_bounds))
        upper = raw-6*D_lower
        check(upper < 162, "a count profile survives the universal inequality")
        rows.append({"counts_n0_n5_n7_ne": list(profile),
                     "sum_A_upper_bound": str(raw),
                     "D_lower_bound": D_lower,
                     "Q_upper_bound": str(upper),
                     "universal_Q_lower_bound": 162,
                     "gap": str(162-upper)})
    check([r["Q_upper_bound"] for r in rows] == ["486/5","718/5","142","158"],
          "quadratic bound table")
    gap = min(Fraction(r["gap"]) for r in rows)
    check(gap == 4, "minimum certificate gap")
    # The expansion -6 sum_i degree_i^2 has J_e^2 coefficient -12,
    # and J_e J_f coefficient -12 for adjacent edges, zero otherwise.
    diagonal = [-6*sum(v in e for v in VERTICES) for e in EDGES]
    check(set(diagonal) == {-12}, "diagonal quadratic coefficients")
    adjacent_count = 0
    for e,f in combinations(EDGES,2):
        coefficient = -12*sum(v in e and v in f for v in VERTICES)
        expected = -12 if set(e)&set(f) else 0
        check(coefficient == expected, "off-diagonal quadratic coefficients")
        adjacent_count += bool(set(e)&set(f))
    check(adjacent_count == 30, "adjacent edge-pair count in K5")
    return {"penalty_coefficient": 6, "k5_edges": [list(e) for e in EDGES],
            "J_square_coefficient": -12, "adjacent_J_product_coefficient": -12,
            "number_of_adjacent_edge_pairs": adjacent_count,
            "profiles": rows, "largest_Q_upper_bound": "158",
            "minimum_gap": str(gap), "feasible_profiles": 0}

def source_hashes():
    names = ["PROOF.md","verify.py","verify_universal_algebra.py","INPUTS.json","BRIEF.md"]
    return {name:sha256((ROOT/name).read_bytes()).hexdigest() for name in names}

def main():
    from verify_universal_algebra import verify_all
    universal = verify_all()
    scalar = scalar_type_check()
    irrational = rational_root_check()
    profiles = count_check()
    degrees = [degree_check(2),degree_check(7)]
    quadratic = quadratic_check(profiles,degrees)
    result = {
        "format":"handoff_s_anchored_quadratic_certificate_v1",
        "status":"PASS",
        "arithmetic":"exact integers and fractions; Python standard library",
        "scope":"Universal polynomial algebra and finite feasibility checked here; analytic deductions and classification import boundary stated in PROOF.md.",
        "universal_algebra":universal,
        "scalar_types":scalar,
        "exceptional_scalar":irrational,
        "ten_corner_profiles":[list(p) for p in profiles],
        "signed_degree_enumeration":degrees,
        "quadratic_certificate":quadratic,
        "source_sha256":source_hashes()
    }
    target = ROOT/"VERIFICATION.json"
    target.write_text(json.dumps(result,indent=2,sort_keys=True)+"\n",encoding="utf-8")
    print("PASS: universal polynomial algebra.")
    print("PASS: exactly four ten-corner count profiles.")
    print("PASS: all 180 two-edge and 15,360 seven-edge signed assignments; minimum D=8 in both.")
    print("PASS: Q upper bounds 486/5, 718/5, 142, 158 are all below 162.")
    print("PASS: no feasible profile; minimum exact gap = 4.")
    print("Verification record: " + str(target))

if __name__ == "__main__":
    main()

