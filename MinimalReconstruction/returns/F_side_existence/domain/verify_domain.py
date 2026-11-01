#!/usr/bin/env python3
"""Independent exact verifier for the strict-domain and Gram certificates.

The default mode checks the saved integer coefficient arrays without rewriting
them.  ``--write`` regenerates those arrays from the displayed circuits.  No
formula supplied by the JSON is evaluated as Python code.  The certificates
prove algebraic identities, not inequalities or the full side constructor.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import time

import sympy as sp


ROOT = Path(__file__).resolve().parent


def coefficients(expression, variables):
    """Canonical sparse integer polynomial representation."""
    polynomial = sp.Poly(sp.expand(expression), *variables, domain=sp.ZZ)
    return [[int(c), list(m)] for m, c in polynomial.terms() if c]


def decode(terms, variables):
    result = sp.Integer(0)
    seen = set()
    for item in terms:
        if not isinstance(item, list) or len(item) != 2:
            raise ValueError("Malformed polynomial term")
        coefficient, exponents = item
        if type(coefficient) is not int or not coefficient:
            raise ValueError("Coefficients must be nonzero integers")
        if len(exponents) != len(variables):
            raise ValueError("Exponent vector length mismatch")
        if any(type(e) is not int or e < 0 for e in exponents):
            raise ValueError("Exponents must be nonnegative integers")
        key = tuple(exponents)
        if key in seen:
            raise ValueError("Duplicate monomial")
        seen.add(key)
        result += coefficient * sp.prod(v**e for v, e in zip(variables, exponents))
    return result


def cert(name, variables, lhs, rhs, relations=(), cofactors=(), *, description=""):
    if len(relations) != len(cofactors):
        raise ValueError("Each relation requires an explicit cofactor")
    residual = sp.expand(lhs - rhs - sum(q * h for q, h in zip(cofactors, relations)))
    if residual != 0:
        raise AssertionError(f"Circuit is not an identity: {name}: {residual}")
    return dict(
        name=name,
        description=description,
        variables=[str(v) for v in variables],
        lhs=coefficients(lhs, variables),
        rhs=coefficients(rhs, variables),
        relations=[coefficients(h, variables) for h in relations],
        cofactors=[coefficients(q, variables) for q in cofactors],
    )


def laurent_cert(name, variables, lhs, rhs, *, description=""):
    """Clear a recorded monomial, never a nonmonomial or unlisted guard."""
    lhs, rhs = sp.expand(lhs), sp.expand(rhs)
    powers = [0] * len(variables)
    for expression in (lhs, rhs):
        for term in sp.Add.make_args(expression):
            pd = term.as_powers_dict()
            for j, v in enumerate(variables):
                powers[j] = max(powers[j], -int(pd.get(v, 0)))
    monomial = sp.prod(v**e for v, e in zip(variables, powers))
    result = cert(name, variables, sp.expand(monomial * lhs), sp.expand(monomial * rhs),
                  description=description)
    result["clearing_monomial"] = powers
    return result


def invariant_circuits(s, S, t, T, r, Q):
    X, Y, Z = s*S, t*T, r*Q
    p = X + Y + Z
    J = s*r*T + S*Q*t
    W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3*p + J
    eta = 9 - p + J
    chi = W - (p-9)*(p-18) + (p-15)*J
    return dict(X=X, Y=Y, Z=Z, p=p, J=J, W=W, g=g, eta=eta, chi=chi)


def catalog():
    records = []
    s, S, t, T, r, Q = sp.symbols("s S t T r Q")
    gram_variables = (s, S, t, T, r, Q)
    inv = invariant_circuits(*gram_variables)
    X, Y, Z, p, J, g, eta, chi = (inv[k] for k in ("X", "Y", "Z", "p", "J", "g", "eta", "chi"))
    G = sp.Matrix([[3, S, T], [s, 3, Q], [t, r, 3]])
    bar = lambda f: sp.sympify(f).xreplace({s:S, S:s, t:T, T:t, r:Q, Q:r})
    P = (r*s*s + Q*t*t + (3-Z)*s*t,
         t*S*S + r*r*T + (3-Y)*r*S,
         s*T*T + Q*Q*S + (3-X)*Q*T)
    records.append(cert("gram_determinant", gram_variables, G.det(), g,
                        description="det G = g"))
    records.append(cert("complement_determinant", gram_variables,
                        (6*sp.eye(3)-G).det(), 27-3*p-J,
                        description="det(6I-G) = 27-3p-J"))
    records.append(cert("eta_complement", gram_variables,
                        eta+(6*sp.eye(3)-G).det(), 36-4*p,
                        description="eta + det(6I-G) = 36-4p"))
    records.append(cert("g_eta_difference", gram_variables, g, eta+2*(9-p),
                        description="g = eta + 2(9-p)"))
    for j, (Pj, cj) in enumerate(zip(P, (9-Z, 9-Y, 9-X))):
        records.append(cert(f"P{j}_norm", gram_variables,
                            Pj*bar(Pj), g*g+cj*chi+cj*cj*eta,
                            description=f"P{j} conjugate(P{j}) = g²+c{j} chi+c{j}² eta"))

    gg, ee, cc, RR, cj, z, zb = sp.symbols("g eta chi R c z zb")
    scalar_variables = (gg, ee, cc, RR, cj, z, zb)
    sum_relation = gg*(z+zb)-cc
    norm_relation = z*zb-ee
    R_relation = 4*gg*gg*ee-cc*cc-RR
    records.append(cert("lambda_numerator_norm", scalar_variables,
                        (gg+cj*z)*(gg+cj*zb), gg*gg+cj*cc+cj*cj*ee,
                        (sum_relation, norm_relation), (cj, cj*cj),
                        description="Unit-phase numerator norm using trace and norm of z"))
    records.append(cert("z_quadratic", scalar_variables,
                        gg*z*z-cc*z+gg*ee, 0,
                        (sum_relation, norm_relation), (z, -gg),
                        description="The two elementary z relations imply its quadratic"))
    records.append(cert("P_completed_square", scalar_variables,
                        4*ee*(gg*gg+cj*cc+cj*cj*ee), (2*cj*ee+cc)**2+RR,
                        (R_relation,), (1,),
                        description="Integer-cleared completed-square positivity certificate"))

    ii, hh = sp.symbols("i h")
    radical_variables = (gg, ee, cc, RR, ii, hh)
    records.append(cert("radical_sum", radical_variables,
                        (cc+ii*hh)+(cc-ii*hh), 2*cc,
                        description="2g z + 2g conjugate(z) = 2chi"))
    records.append(cert("radical_norm", radical_variables,
                        (cc+ii*hh)*(cc-ii*hh), 4*gg*gg*ee,
                        (ii*ii+1, hh*hh-RR, 4*gg*gg*ee-cc*cc-RR),
                        (-hh*hh, 1, -1),
                        description="Norm of the radical root, with all explicit cofactors"))
    DD = sp.symbols("D")
    records.append(cert("delta_norm_factor", (gg, DD),
                        729*DD*DD-gg*gg, (27*DD-gg)*(27*DD+gg),
                        description="If D=normSq(delta)>=0 and g>0, the second factor is positive"))

    a, b, c, d = sp.symbols("a b c d")
    seed_variables = (a, b, c, d)
    sharp = lambda f: sp.sympify(f).xreplace({a:1/a, b:1/b, c:1/c, d:1/d})
    E = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    Eh = E.applyfunc(sharp).T
    Gh = 6*sp.eye(3)-E*Eh
    Gv = 6*sp.eye(3)-E.T*E.applyfunc(sharp)
    def from_gram(A):
        return invariant_circuits(A[1,0], A[0,1], A[2,0], A[0,2], A[2,1], A[1,2])
    ih, iv = from_gram(Gh), from_gram(Gv)
    for name in ("p", "J", "W", "g", "eta", "chi"):
        records.append(laurent_cert(f"seed_horizontal_vertical_{name}", seed_variables,
                                    ih[name], iv[name],
                                    description=f"Horizontal and transposed-vertical {name} agree for unit seeds"))
    records.append(laurent_cert("seed_complement_norm", seed_variables,
                                (6*sp.eye(3)-Gh).det(), E.det()*sharp(E.det()),
                                description="Complementary determinant is det(E) conjugate(det(E))"))

    # The same dephased matrix E is now an arbitrary 3x3 phase block X.
    from itertools import permutations
    ix = from_gram(E*Eh)
    h = E.det()
    pi = sum(sp.prod(E[i,j] for i,j in enumerate(order)) for order in permutations(range(3)))
    product = sp.prod(E)
    signature = -pi*h*h/product
    records.append(laurent_cert("phase_block_g", seed_variables,
                                ix["g"], h*sharp(h),
                                description="For a phase block, g=normSq(det X)"))
    records.append(laurent_cert("phase_block_eta", seed_variables,
                                ix["eta"], pi*sharp(pi),
                                description="For a phase block, eta=normSq(perm X)"))
    records.append(laurent_cert("phase_block_chi", seed_variables,
                                ix["chi"], signature+sharp(signature),
                                description="For a phase block, chi=T(X)+conjugate(T(X))"))

    ww = sp.symbols("omega")
    X0 = sp.Matrix([[1,1,1], [1,ww,ww], [ww,1,ww]])
    h0 = X0.det()
    pi0 = sum(sp.prod(X0[i,j] for i,j in enumerate(order)) for order in permutations(range(3)))
    # product X0 = omega^4; its conjugate is omega^8 under omega^3=1.
    T0 = -pi0*h0*h0*ww**8
    residual = sp.expand(T0-(9*ww-9))
    quotient, remainder = sp.div(residual, ww*ww+ww+1, domain=sp.ZZ)
    if remainder != 0:
        raise AssertionError("Normalization witness failed")
    records.append(cert("normalization_witness", (ww,), T0, 9*ww-9,
                        (ww*ww+ww+1,), (quotient,),
                        description="At the exact side witness T=9(omega−1), while Theta=omega−1"))
    return records


def verify(saved):
    expected = catalog()
    if saved.get("format") != "strict-domain-polynomial-certificates-v1":
        raise AssertionError("Unknown certificate format")
    if saved.get("certificates") != expected:
        raise AssertionError("Saved arrays differ from the independently rebuilt displayed circuits")
    max_terms = 0
    max_cofactor_terms = 0
    for entry in saved["certificates"]:
        variables = sp.symbols(" ".join(entry["variables"]), seq=True)
        lhs, rhs = (decode(entry[key], variables) for key in ("lhs", "rhs"))
        relations = [decode(x, variables) for x in entry["relations"]]
        cofactors = [decode(x, variables) for x in entry["cofactors"]]
        if len(relations) != len(cofactors):
            raise AssertionError("Cofactor count mismatch")
        if sp.expand(lhs-rhs-sum(q*h for q,h in zip(cofactors, relations))) != 0:
            raise AssertionError("Invalid polynomial certificate: "+entry["name"])
        max_terms = max(max_terms, len(entry["lhs"]), len(entry["rhs"]))
        max_cofactor_terms = max([max_cofactor_terms]+[len(q) for q in entry["cofactors"]])
    return dict(status="PASS_EXACT", certificates=len(expected),
                maximum_expanded_side_terms=max_terms,
                maximum_cofactor_terms=max_cofactor_terms,
                inequalities="Elementary proof in DOMAIN.md; not numerical acceptance",
                scope="Gram invariants, strict divisors, normalization; no side-existence claim by this verifier alone")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--write", action="store_true", help="Explicitly regenerate the JSON coefficient arrays")
    args = parser.parse_args()
    start = time.perf_counter()
    path = ROOT / "domain_certificates.json"
    if args.write:
        payload = dict(format="strict-domain-polynomial-certificates-v1", certificates=catalog())
        path.write_text(json.dumps(payload, indent=2)+"\n")
    saved = json.loads(path.read_text())
    result = verify(saved)
    result["elapsed_seconds"] = round(time.perf_counter()-start, 6)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
