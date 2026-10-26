#!/usr/bin/env python3
"""CERTIFIED interval replay of the linear-cost bounds in CheapConstants/REPORT.md.

No attached Python implementation is executed. The centre is reconstructed by
two independent six-dimensional interval Newton/Krawczyk tests, then all bounds
are evaluated in Arb. SVD only proposes bounds checked by interval LDL^T.
No MUB atlas or Stage C computation is used.
"""
import argparse
import hashlib
import itertools as it
import json
import math
from pathlib import Path
import platform
import time

import flint
from flint import arb, acb, arb_mat, acb_mat, ctx
import numpy as np

from wholeball_cheap_sensitivity import (
    DEFAULT_ZIP, DEFAULT_OUT, EA, SA, FREE, KEYS, PAIRS, SEEDS, decode, inputs, jsonl_writer)
from wholeball_signature import signature_data


def upper(v):
    f = math.nextafter(float(v.upper()), math.inf)
    if not math.isfinite(f):
        raise ArithmeticError("nonfinite interval upper endpoint")
    while not arb(f) > v:
        f = math.nextafter(f, math.inf)
    return f


def lower(v):
    f = math.nextafter(float(v.lower()), -math.inf)
    if not math.isfinite(f):
        raise ArithmeticError("nonfinite interval lower endpoint")
    while not arb(f) < v:
        f = math.nextafter(f, -math.inf)
    return f


def up(v):
    return arb(upper(v))


def dot(v, w):
    return sum((a*b for a, b in zip(v, w)), arb(0))


def mv(A, v):
    return [dot(row, v) for row in A]


def entries(A):
    return [[A[i, j] for j in range(A.ncols())] for i in range(A.nrows())]


def eye(n):
    return arb_mat([[int(i == j) for j in range(n)] for i in range(n)])


def array(v):
    return arb_mat([[arb(float(x)) for x in row] for row in np.asarray(v)])


def frob(A):
    return up(sum((v*v for v in A.entries()), arb(0)).sqrt())


def nonnegative_sqrt(v):
    """v encloses a mathematically nonnegative squared norm; round upwards first."""
    b = up(v)
    if not b >= 0:
        raise ArithmeticError("negative squared-norm upper bound")
    return up(b.sqrt())


def positive_definite(B):
    """Strict interval LDL^T certificate for a symmetric real matrix."""
    n = B.nrows()
    L = [[arb(0) for _ in range(n)] for _ in range(n)]
    ds = []
    for i in range(n):
        di = B[i, i]-sum((L[i][k]**2*ds[k] for k in range(i)), arb(0))
        if not di > 0:
            return False
        ds.append(di)
        for j in range(i+1, n):
            L[j][i] = (B[j, i]-sum((L[j][k]*L[i][k]*ds[k] for k in range(i)), arb(0)))/di
    return True


def spectral(A):
    if A.nrows() > A.ncols():
        A = A.transpose()
    if A.nrows() == 1:
        return frob(A)
    gram = A*A.transpose()
    midpoint = np.array([[float(v.mid()) for v in row] for row in entries(A)])
    lam = float(np.linalg.norm(midpoint, 2))**2*(1+1e-9)+1e-30
    n = A.nrows()
    for _ in range(12):
        B = eye(n)*arb(lam)-gram
        if positive_definite(B):
            return up(arb(lam).sqrt())
        lam = lam*1.01+1e-25
    raise ArithmeticError("LDL spectral bound did not certify")


def horizontal_basis(indices):
    return arb_mat([[arb(36*(i == a and j == b)-6*(i == a)-6*(j == b)+1)/36
                     for a, b in indices] for i in range(6) for j in range(6)])


def geometry(basis):
    if basis["free_indices"] != [list(v) for v in FREE]:
        raise ValueError("unexpected frozen basis ordering")
    T = arb_mat([[arb(float.fromhex(v)) for v in row] for row in basis["T_hex"]])
    T.inv()  # Certifies nonsingularity, not just successful floating inversion.
    return horizontal_basis(SEEDS), horizontal_basis(FREE)*T


def side_equations(phi, theta):
    a = [acb(0, dot([arb(int(x)) for x in row], phi)).exp() for row in SA]
    e = [acb(0, dot([arb(int(x)) for x in row], theta)).exp() for row in EA]
    f = [sum((a[3*p+k]+e[3*p+k] for k in range(3)), acb(0)) for p in range(3)]
    j = [[sum((acb(0, int(SA[3*p+k, i]))*a[3*p+k] for k in range(3)), acb(0))
          for i in range(6)] for p in range(3)]
    return (arb_mat([[v.real] for v in f]+[[v.imag] for v in f]),
            arb_mat([[v.real for v in row] for row in j]+[[v.imag for v in row] for row in j]))


def certified_side(theta, guess):
    point = arb_mat([[arb(float(v))] for v in guess])
    for _ in range(8):
        f, j = side_equations([point[i, 0] for i in range(6)], theta)
        point = (point-j.solve(f)).mid()
    rad = arb(2)**-100
    tube = [arb(point[i, 0], rad) for i in range(6)]
    f, j = side_equations([point[i, 0] for i in range(6)], theta)
    Y = j.inv().mid()
    _, jt = side_equations(tube, theta)
    err = eye(6)-Y*jt
    q = arb(max(upper(sum((abs(err[i, k]) for k in range(6)), arb(0))) for i in range(6)))
    yf = Y*f
    b = arb(max(upper(abs(yf[i, 0])) for i in range(6)))
    if not (q < 1 and b+q*rad < rad):
        raise ArithmeticError("centre side Krawczyk failed")
    values = [acb(0, v).exp() for v in tube]
    return acb_mat([[1, 1, 1], values[:3], values[3:]]), dict(q=upper(q), b=upper(b), radius=upper(rad))


def differences(A):
    return arb_mat([[A[6*i+k, c]-A[6*j+k, c] for c in range(A.ncols())]
                    for i, j in PAIRS for k in range(6)])


def centre(seed, geom):
    V, X = geom
    P = decode(seed["P"]).reshape(6, 6)
    ref = P-P[:, :1]-P[:1, :]+P[0, 0]  # A floating branch-lift reference only.
    theta = [arb(v) for v in decode(seed["theta0"])]
    # Certify the seed lift, not merely equality after exponentiation. A lift
    # near theta+2*pi could otherwise refer to a different seed-space centre.
    for k, (i, j) in enumerate(SEEDS):
        if not abs(arb(float(ref[i, j]))-theta[k]) < arb.pi():
            raise ArithmeticError("stored centre selects a different seed phase lift")
    for i, j in [(0, k) for k in range(6)]+[(k, 0) for k in range(1, 6)]:
        if not abs(arb(float(ref[i, j]))) < arb.pi():
            raise ArithmeticError("stored centre selects a different dephasing lift")
    B, bh = certified_side(theta, ref[1:3, 3:6].ravel())
    Bs, bv = certified_side([theta[i] for i in [0, 2, 1, 3]], ref[3:6, 1:3].T.ravel())
    C = Bs.transpose()
    E = acb_mat([[1, 1, 1], [1, acb(0, theta[0]).exp(), acb(0, theta[1]).exp()],
                 [1, acb(0, theta[2]).exp(), acb(0, theta[3]).exp()]])
    D = -C*E.conjugate().transpose()*B.conjugate().transpose().inv()
    C.inv()
    H = acb_mat(6, 6)
    for i, j in it.product(range(3), repeat=2):
        H[i, j], H[i, j+3], H[i+3, j], H[i+3, j+3] = E[i, j], B[i, j], C[i, j], D[i, j]
    z = [H[i, k]*H[j, k].conjugate() for i, j in PAIRS for k in range(6)]
    J = arb_mat(30, 36)
    for p, (i, j) in enumerate(PAIRS):
        for k in range(6):
            q = acb(0, 1)*z[6*p+k]
            J[p, 6*i+k], J[p, 6*j+k] = q.real, -q.real
            J[p+15, 6*i+k], J[p+15, 6*j+k] = q.imag, -q.imag
    A = J*X
    W = (A.transpose()*A).solve(A.transpose())
    M = array(decode(seed["Mth"]).reshape(4, 4))
    M.inv()
    U = (V-X*W*J*V)*M
    s, dx = differences(U), differences(X)
    R2 = arb_mat(30, 16)
    for p in range(15):
        for i, j in it.product(range(4), repeat=2):
            v = -sum((z[6*p+k]*s[6*p+k, i]*s[6*p+k, j] for k in range(6)), acb(0))
            R2[p, 4*i+j], R2[p+15, 4*i+j] = v.real, v.imag
    H2 = -X*W*R2
    raw = [[arb(float(ref[i, j]))+(H[i, j]*acb(0, -arb(float(ref[i, j]))).exp()).arg()
            for j in range(6)] for i in range(6)]
    row_means = [sum(row, arb(0))/6 for row in raw]
    col_means = [sum((row[j] for row in raw), arb(0))/6 for j in range(6)]
    mean = sum(row_means, arb(0))/6
    phase = arb_mat([[raw[i][j]-row_means[i]-col_means[j]+mean] for i, j in it.product(range(6), repeat=2)])
    return dict(H=H, z=z, W=W, U=U, H2=H2, X=X, s=entries(s), d=entries(dx),
                T=[[[v[4*i+j] for j in range(4)] for i in range(4)] for v in entries(differences(H2))],
                ep=frob(phase-array(P.reshape(36, 1))),
                eu=spectral(U-array(decode(seed["U"]).reshape(36, 4))), side_tests=[bh, bv])


def polynomial_grams(v, A, d, w, B, e):
    """(RR, II, RI, IR) for five exponential derivative polynomials.

    See the exact contraction identities in REPORT.md; no rank-3/4 tensors.
    """
    alpha, delta = dot(v, w), dot(d, e)
    Aw, Bv = mv(A, w), mv(B, v)
    a, b = dot(w, Aw), dot(v, Bv)
    f = sum((dot(x, y) for x, y in zip(A, B)), arb(0))
    cross = dot(Aw, Bv)
    AB = [[sum((A[i][k]*B[k][j] for k in range(4)), arb(0)) for j in range(4)] for i in range(4)]
    trace_abab = sum((AB[i][j]*AB[j][i] for i, j in it.product(range(4), repeat=2)), arb(0))
    zero = arb(0)
    return {
        "t3": (3*f*alpha+6*cross, alpha**3, 3*a*alpha, 3*b*alpha),
        "t4": (alpha**4-3*a*a-3*b*b+3*f*f+6*trace_abab,
               6*f*alpha*alpha+24*alpha*cross+6*a*b,
               -6*b*alpha*alpha+6*f*a+12*dot(Aw, mv(B, Aw)),
               -6*a*alpha*alpha+6*f*b+12*dot(Bv, mv(A, Bv))),
        "a2": (f*delta, alpha*alpha*delta, a*delta, b*delta),
        "c": (alpha*delta, zero, zero, zero),
        "d": (delta*delta, zero, zero, zero),
    }


def low_rank_bounds(g, squared_residuals, rank):
    """Certify W^T W <= lambda I + L^T L, then contract only t3 and c.

    Cubic symmetry leaves 20 scalars per retained direction. Mixed contraction
    uses sparse frequencies followed by one 4-by-36 times 36-by-21 product.
    """
    W = g["W"]
    midpoint = np.array([[float(v.mid()) for v in row] for row in entries(W)])
    _, sig, right = np.linalg.svd(midpoint, full_matrices=False)
    tail = float(sig[rank]**2)
    L = array(np.sqrt(np.maximum(sig[:rank]**2-tail, 0))[:, None]*right[:rank])
    lam = tail+float(sig[0]**2)*1e-9+1e-25
    gram = W.transpose()*W
    for _ in range(12):
        if positive_definite(eye(30)*arb(lam)+L.transpose()*L-gram):
            break
        lam = lam*1.01+1e-25
    else:
        raise ArithmeticError("low-rank Gram majorant did not certify")
    triples = list(it.combinations_with_replacement(range(4), 3))
    multiplicities = [math.factorial(3)//math.prod(math.factorial(t.count(i)) for i in range(4)) for t in triples]
    cubic = arb_mat(rank, 20)
    sparse_mixed = [arb_mat(4, 36) for _ in range(rank)]
    for a in range(90):
        p, col = divmod(a, 6)
        irow, jrow = PAIRS[p]
        s, T, z = g["s"][a], g["T"][a], g["z"][a]
        for ell in range(rank):
            kr = L[ell, p]*z.real+L[ell, p+15]*z.imag
            ki = L[ell, p]*z.imag-L[ell, p+15]*z.real
            for m, (i, j, k) in enumerate(triples):
                cubic[ell, m] += -kr*(T[i][j]*s[k]+T[i][k]*s[j]+T[j][k]*s[i])+ki*s[i]*s[j]*s[k]
            for i in range(4):
                v = -kr*s[i]
                sparse_mixed[ell][i, 6*irow+col] += v
                sparse_mixed[ell][i, 6*jrow+col] -= v
    cubic_sq = sum((multiplicities[m]*cubic[ell, m]**2 for ell in range(rank) for m in range(20)), arb(0))
    mixed_sq = arb(0)
    for B in sparse_mixed:
        mixed_sq += sum((v*v for v in (B*g["X"]).entries()), arb(0))
    out = {k: nonnegative_sqrt(arb(lam)*squared_residuals[k]+v)
           for k, v in [("t3", cubic_sq), ("c", mixed_sq)]}
    # Hexadecimal coefficients are exact dyadics and make the small majorant
    # independently inspectable; their acceptability came from LDL, not SVD.
    witness = dict(rank=rank, lambda_hex=lam.hex(),
                   L_hex=[[float(v).hex() for v in row] for row in entries(L)])
    return out, witness


def cheap_constants(g, r, rank=4):
    W, s, T, d, z = (g[k] for k in ("W", "s", "T", "d", "z"))
    u, x, beta, wn = (spectral(g[k]) for k in ("U", "X", "H2", "W"))
    cn = [spectral(arb_mat([[W[i, p], W[i, p+15]] for i in range(21)])) for p in range(15)]
    triangle = {k: arb(0) for k in KEYS}
    L5, L3a = arb(0), arb(0)
    for a in range(90):
        sn, tn, dn = nonnegative_sqrt(dot(s[a], s[a])), spectral(arb_mat(T[a])), nonnegative_sqrt(dot(d[a], d[a]))
        c, an = cn[a//6], sn+r*tn
        L5 += c*(an**5+10*tn*an**3+15*tn*tn*an)
        L3a += c*dn*(an**3+3*tn*an)
        for k, val in zip(KEYS, [sn**3+3*tn*sn, sn**4+6*tn*sn*sn+3*tn*tn,
                                 dn*(tn+sn*sn), sn*dn, dn*dn]):
            triangle[k] += c*val
    L2, L3, L4 = 2*arb(3).sqrt()*wn, 2*arb(6).sqrt()*wn, 4*arb(3).sqrt()*wn
    uniform = dict(t3=L3*u**3+3*L2*beta*u, t4=L4*u**4+6*L3*beta*u*u+3*L2*beta*beta,
                   a2=(L3*u*u+L2*beta)*x, c=L2*u*x, d=L2*x*x)
    total_sq, local_sum = ({k: arb(0) for k in KEYS} for _ in range(2))
    for p in range(15):
        Q = {k: [arb(0), arb(0), arb(0)] for k in KEYS}
        for a, b in it.product(range(6*p, 6*p+6), repeat=2):
            grams = polynomial_grams(s[a], T[a], d[a], s[b], T[b], d[b])
            ar, ai, br, bi = z[a].real, z[a].imag, z[b].real, z[b].imag
            for key, (rr, ii, ri, ir) in grams.items():
                Q[key][0] += ar*br*rr+ai*bi*ii-ar*bi*ri-ai*br*ir
                Q[key][1] += ar*bi*rr-ai*br*ii+ar*br*ri-ai*bi*ir
                Q[key][2] += ai*bi*rr+ar*br*ii+ai*br*ri+ar*bi*ir
        w00 = sum((W[i, p]**2 for i in range(21)), arb(0))
        w01 = sum((W[i, p]*W[i, p+15] for i in range(21)), arb(0))
        w11 = sum((W[i, p+15]**2 for i in range(21)), arb(0))
        for key, (q00, q01, q11) in Q.items():
            total_sq[key] += q00+q11
            local_sum[key] += nonnegative_sqrt(w00*q00+2*w01*q01+w11*q11)
    modes = dict(triangle={k: up(v) for k, v in triangle.items()}, uniform={k: up(v) for k, v in uniform.items()},
                 row_pair_global={k: up(wn*nonnegative_sqrt(v)) for k, v in total_sq.items()},
                 row_pair_triangle={k: up(v) for k, v in local_sum.items()})
    best = {k: arb(min(upper(m[k]) for m in modes.values())) for k in KEYS}
    witness = None
    if rank:
        bounds, witness = low_rank_bounds(g, total_sq, rank)
        modes["low_rank"] = bounds
        best = {k: arb(min(upper(best[k]), upper(bounds[k]))) if k in bounds else best[k] for k in KEYS}
    shared = dict(u=u, x=x, beta=beta, L3=up(L3), L5=up(L5), L3a=up(L3a), ep=g["ep"], eu=g["eu"])
    return shared, best, modes, witness


def contraction(h, c, r):
    b0 = c["t3"]*r**3/6+c["t4"]*r**4/24+h["L5"]*r**5/120
    base = h["u"]*r+h["beta"]*r*r/2
    qb = c["c"]*r+c["a2"]*r*r/2+h["L3a"]*r**3/6
    tau = up(b0*arb(1.1))
    for _ in range(100):
        q = qb+(c["d"]+h["L3"]*h["x"]**2*base)*tau+h["L3"]*h["x"]**3*tau*tau/2
        if not q < 1:
            return None
        margin = tau-b0-q*tau
        if margin > 0:
            n = h["beta"]*r*r/2+h["x"]*tau+h["ep"]+r*h["eu"]
            return dict(n_record=upper(n), tau=float(tau), tau_hex=float(tau).hex(), q=upper(q),
                        contraction_margin=lower(margin), tau_exact=tau)
        tau = up(b0/(1-q)*arb(1.001))
    return None


def orientation(g, r, tau, which, intended):
    inds = [(i, j+3) for i in range(3) for j in range(3)] if which == "h" else [
        (j+3, i) for i in range(3) for j in range(3)]
    projection = [[arb(int(i == j))-arb(1)/3 for j in range(3)] for i in range(3)]
    A = arb_mat(9, 36)
    for i in range(9):
        for j, (a, b) in enumerate(inds):
            A[i, 6*a+b] = projection[i//3][j//3]*projection[i%3][j%3]
    grad, f = [arb(0) for _ in range(9)], arb(0)
    for sign, nu in signature_data()[2]:
        term = acb(sign)
        for power, (i, j) in zip(nu, inds):
            if power:
                term *= g["H"][i, j]**power
        f += term.imag
        for i in range(9):
            grad[i] += nu[i]*term.real
    AU, AH, AX = A*g["U"], A*g["H2"], A*g["X"]
    grad = arb_mat([grad])
    gh = grad*AH
    eps = spectral(AU)*r+spectral(AH)*r*r/2+spectral(AX)*tau
    variation = spectral(grad*AU)*r+spectral(arb_mat([[gh[0, 4*i+j] for j in range(4)]
                                                                  for i in range(4)]))*r*r/2+spectral(grad*AX)*tau+36*eps*eps
    margin = intended*f-variation
    return dict(ok=bool(margin > 0), centre_signed_lower=lower(intended*f),
                variation_upper=upper(variation), margin_lower=lower(margin))


def certify(seed, geom, rank=4):
    started = time.perf_counter()
    r = arb(decode(seed["r"]))
    if not r > 0 or seed["o"] not in [-1, 1]:
        raise ArithmeticError("positive radius and orientation +/-1 required")
    g = centre(seed, geom)
    centre_done = time.perf_counter()
    h, constants, modes, witness = cheap_constants(g, r, rank)
    constants_done = time.perf_counter()
    result = dict(status="NOT ESTABLISHED", side_tests=g["side_tests"],
                  constants={k: float(v) for k, v in constants.items()},
                  modes={k: {a: float(b) for a, b in v.items()} for k, v in modes.items()},
                  shared={k: float(v) for k, v in h.items()})
    if witness:
        result["majorant_witness"] = witness
    c = contraction(h, constants, r)
    if c is None:
        result["reason"] = "cheap contraction inequalities did not certify"
    else:
        tau = c.pop("tau_exact")
        orient = {s: orientation(g, r, tau, s, seed["o"]*(1 if s == "h" else -1)) for s in ["h", "v"]}
        result.update(c, orientation=orient)
        if all(v["ok"] for v in orient.values()):
            result["status"] = "CERTIFIED"
            result["strict_R_lower"] = lower(4*arb(min(v["margin_lower"] for v in orient.values()))**2)
        else:
            result["reason"] = "whole-ball orientation inequalities did not certify"
    result["seconds"] = dict(centre=centre_done-started, constants=constants_done-centre_done,
                             total=time.perf_counter()-started)
    return result


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--out", type=Path, default=DEFAULT_OUT)
    p.add_argument("--j", type=int, nargs="+", default=[2299])
    p.add_argument("--all", action="store_true")
    p.add_argument("--prec", type=int, default=224)
    p.add_argument("--rank", type=int, choices=[0, 1, 2, 4], default=4)
    args = p.parse_args()
    ctx.prec = args.prec
    seeds, basis, budgets, reference, hashes = inputs(args.archive)
    geom = geometry(basis)
    args.out.mkdir(parents=True, exist_ok=True)
    indices = range(len(seeds)) if args.all else args.j
    started = time.perf_counter()
    stem = f"certified_rank{args.rank}" if args.all else "replay_"+"_".join(map(str, indices))+f"_rank{args.rank}"
    filename = stem+".jsonl.gz"
    counts = {"balls": 0, "certified": 0, "budget_fits": 0}
    with jsonl_writer(args.out/filename) as f:
        for j in indices:
            try:
                row = certify(seeds[j], geom, args.rank)
            except ArithmeticError as e:
                row = dict(status="NOT ESTABLISHED", reason=str(e))
            b = budgets.get(j)
            budget = b["n"] if b and b["f"] is not None else None
            row.update(j=j, budget=budget,
                       budget_status="missing" if b is None else "no_passing_factor" if b["f"] is None else "provided",
                       budget_fit=bool(row["status"] == "CERTIFIED" and budget is not None and arb(row["n_record"]) <= arb(budget)),
                       reference_n=reference[j].get("n_record"))
            counts["balls"] += 1
            counts["certified"] += row["status"] == "CERTIFIED"
            counts["budget_fits"] += row["budget_fit"]
            f.write(json.dumps(row, allow_nan=False, separators=(",", ":"))+"\n")
            f.flush()
            if counts["balls"] % 50 == 0 or not args.all:
                print(json.dumps(dict(j=j, status=row["status"], n_record=row.get("n_record"),
                                      budget_fit=row["budget_fit"], counts=counts,
                                      seconds=time.perf_counter()-started)), flush=True)
    manifest = dict(status="CERTIFIED interval replay; failures explicitly NOT ESTABLISHED", counts=counts,
                    precision_bits=args.prec, rank=args.rank, python=platform.python_version(), numpy=np.__version__, flint=flint.__version__,
                    input_sha256=hashes, source_sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                        for p in [Path(__file__), Path(__file__).with_name("wholeball_cheap_sensitivity.py"),
                                  Path(__file__).with_name("wholeball_signature.py")]},
                    results_sha256=hashlib.sha256((args.out/filename).read_bytes()).hexdigest(),
                    seconds=time.perf_counter()-started)
    (args.out/(stem+"_manifest.json")).write_text(json.dumps(manifest, indent=2)+"\n")


if __name__ == "__main__":
    main()
