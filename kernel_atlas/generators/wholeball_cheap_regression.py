#!/usr/bin/env python3
"""Exact polynomial checks and independent small interval replays for ZK."""
import itertools as it
import random

from flint import arb, arb_mat, ctx

import wholeball_cheap_arb as A
import wholeball_cheap_sensitivity as N


def explicit_polynomials(v, T, d):
    """Enumerate all slots independently of the Gram-contraction shortcuts."""
    r3, i3, r4, i4 = [], [], [], []
    for i, j, k in it.product(range(4), repeat=3):
        r3.append(-sum([T[i][j]*v[k], T[i][k]*v[j], T[j][k]*v[i]]))
        i3.append(-v[i]*v[j]*v[k])
    for i, j, k, l in it.product(range(4), repeat=4):
        r4.append(v[i]*v[j]*v[k]*v[l]-T[i][j]*T[k][l]-T[i][k]*T[j][l]-T[i][l]*T[j][k])
        i4.append(-sum([T[i][j]*v[k]*v[l], T[i][k]*v[j]*v[l], T[i][l]*v[j]*v[k],
                       T[j][k]*v[i]*v[l], T[j][l]*v[i]*v[k], T[k][l]*v[i]*v[j]]))
    r2 = [-T[i][j]*d[k] for i, j, k in it.product(range(4), range(4), range(21))]
    i2 = [-v[i]*v[j]*d[k] for i, j, k in it.product(range(4), range(4), range(21))]
    c = [-x*y for x in v for y in d]
    dn = [-x*y for x in d for y in d]
    return dict(t3=(r3, i3), t4=(r4, i4), a2=(r2, i2),
                c=(c, [arb(0)]*len(c)), d=(dn, [arb(0)]*len(dn)))


def exact_grams():
    rng = random.Random(314159)
    def vec(n):
        return [arb(rng.randrange(-4, 5)) for _ in range(n)]
    def sym():
        M = [vec(4) for _ in range(4)]
        return [[M[min(i, j)][max(i, j)] for j in range(4)] for i in range(4)]
    for trial in range(20):
        v, w, T, S, d, e = vec(4), vec(4), sym(), sym(), vec(21), vec(21)
        first, second = explicit_polynomials(v, T, d), explicit_polynomials(w, S, e)
        for key, got in A.polynomial_grams(v, T, d, w, S, e).items():
            R, I = first[key]
            Q, J = second[key]
            expected = (A.dot(R, Q), A.dot(I, J), A.dot(R, J), A.dot(I, Q))
            assert all(a == b for a, b in zip(got, expected)), (trial, key)
    assert A.positive_definite(arb_mat([[2, 1], [1, 2]]))
    assert not A.positive_definite(arb_mat([[1, 2], [2, 1]]))
    assert not A.positive_definite(arb_mat([[1, 1], [1, 1]]))
    assert not A.positive_definite(arb_mat([[arb(1, 2), 0], [0, 1]]))
    print("CERTIFIED: 100 exact integer Gram identities; LDL rejects indefinite, singular and unresolved inputs")


def centre_replays():
    seeds, basis, _, _, _ = N.inputs(N.DEFAULT_ZIP)
    geom = A.geometry(basis)
    numeric_geom = N.geometry(basis)
    for j in [0, 2299, 2349]:
        numerical = N.measure(seeds[j], numeric_geom)
        actual = A.certify(seeds[j], geom, rank=4)
        assert actual["status"] == "CERTIFIED", (j, actual)
        estimated = numerical["cases"]["rank4.all"]["n"]
        assert actual["n_record"] >= estimated
        assert actual["n_record"]/estimated-1 < 1e-6
        for key, bound in actual["constants"].items():
            wanted = numerical["constants"]["rank4"][key]
            assert abs(bound/wanted-1) < 1e-6, (j, key, bound, wanted)
        witness = actual["majorant_witness"]
        L = arb_mat([[arb(float.fromhex(v)) for v in row] for row in witness["L_hex"]])
        W = A.centre(seeds[j], geom)["W"]
        # Removing the positive tail from the saved rank-four majorant must
        # fail: W has rank 21, whereas L has only four rows.
        assert not A.positive_definite(L.transpose()*L-W.transpose()*W)
    # The opposite requested orientation must never produce a certificate.
    bad = dict(seeds[0], o=-seeds[0]["o"])
    assert A.certify(bad, geom)["status"] == "NOT ESTABLISHED"
    bad_lift = dict(seeds[0], theta0=list(seeds[0]["theta0"]))
    bad_lift["theta0"][0] = (float.fromhex(bad_lift["theta0"][0])+7).hex()
    for bad in [bad_lift, dict(seeds[0], r=(-1.).hex()), dict(seeds[0], o=2)]:
        try:
            A.certify(bad, geom)
        except ArithmeticError:
            pass
        else:
            raise AssertionError("invalid branch/radius/orientation was accepted")
    saved = A.certify(seeds[2299], geom)
    ctx.prec = 320
    refined = A.certify(seeds[2299], A.geometry(basis))
    assert refined["status"] == "CERTIFIED"
    assert abs(saved["n_record"]/refined["n_record"]-1) < 1e-12
    print("CERTIFIED: three centre/branch replays, invalid-input rejection, 320-bit replay of ball 2299")
    print("NUMERICAL: compact/Gram bounds agree with independently formed full tensors to 1e-6 relative")


if __name__ == "__main__":
    ctx.prec = 224
    exact_grams()
    centre_replays()
