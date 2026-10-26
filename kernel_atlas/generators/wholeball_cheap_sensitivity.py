#!/usr/bin/env python3
"""Independent NUMERICAL sensitivity experiment for the ZK handoff.

Reads only the supplied ZIP's data, never imports or executes its Python files.
Run with one BLAS thread. Certified replay is in wholeball_cheap_arb.py.
"""
import argparse
from contextlib import contextmanager
import gzip
import hashlib
import io
import itertools as it
import json
import math
from pathlib import Path
import time
import zipfile

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
DEFAULT_ZIP = ROOT / "explorations/handoffs/ZK_cheap_z_constants.zip"
DEFAULT_OUT = ROOT / "kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants"
KEYS = ("t3", "t4", "a2", "c", "d")
PAIRS = list(it.combinations(range(6), 2))
SEEDS = [(1, 1), (1, 2), (2, 1), (2, 2)]
FREE = [(i, j) for i in range(1, 6) for j in range(1, 6) if (i, j) not in SEEDS]
SA = np.zeros((9, 6))
EA = np.zeros((9, 4))
for k in range(3):
    SA[k, k] = SA[3+k, 3+k] = -1
    SA[6+k, k], SA[6+k, 3+k] = 1, -1
EA[1, 0] = EA[2, 1] = EA[4, 2] = EA[5, 3] = -1
EA[7, 0] = EA[8, 1] = 1
EA[7, 2] = EA[8, 3] = -1


def inputs(path):
    with zipfile.ZipFile(path) as z:
        prefix = "ZK_cheap_z_constants/context/"
        files = {n: z.read(prefix+n) for n in (
            "seed_balls.json.gz", "wholeball_basis.json", "wholeball_n.jsonl", "stagec_n_budget.jsonl")}
    data = json.loads(gzip.decompress(files["seed_balls.json.gz"]))["seeds"]
    basis = json.loads(files["wholeball_basis.json"])
    budgets = {v["j"]: v for v in map(json.loads, files["stagec_n_budget.jsonl"].splitlines())}
    reference = {v["j"]: v for v in map(json.loads, files["wholeball_n.jsonl"].splitlines())}
    hashes = {n: hashlib.sha256(b).hexdigest() for n, b in files.items()}
    return data, basis, budgets, reference, hashes


@contextmanager
def jsonl_writer(path):
    """Deterministic gzip, avoiding tens of MB of repeated diagnostic labels."""
    with path.open("wb") as raw:
        with gzip.GzipFile(filename="", mode="wb", fileobj=raw, mtime=0) as packed:
            with io.TextIOWrapper(packed, encoding="utf-8", newline="\n") as stream:
                yield stream


def decode(v):
    if isinstance(v, list):
        return np.array([float.fromhex(x) for x in v])
    return float.fromhex(v)


def horizontal_basis(indices):
    return np.array([[(36*(i == a and j == b)-6*(i == a)-6*(j == b)+1)/36
                      for a, b in indices] for i in range(6) for j in range(6)])


def geometry(basis):
    assert basis["free_indices"] == [list(v) for v in FREE]
    return horizontal_basis(SEEDS), horizontal_basis(FREE) @ np.array(
        [[float.fromhex(v) for v in row] for row in basis["T_hex"]])


def side(theta, guess):
    phi = guess.copy()
    for _ in range(8):
        sp, se = np.exp(1j*(SA@phi)), np.exp(1j*(EA@theta))
        f = (sp+se).reshape(3, 3).sum(axis=1)
        jac = (1j*sp[:, None]*SA).reshape(3, 3, 6).sum(axis=1)
        delta = np.linalg.solve(np.r_[jac.real, jac.imag], np.r_[f.real, f.imag])
        phi -= delta
        if np.linalg.norm(delta) < 1e-14:
            break
    return np.r_[np.ones((1, 3)), np.exp(1j*phi).reshape(2, 3)]


def centre(seed, V, X):
    theta = decode(seed["theta0"])
    P = decode(seed["P"]).reshape(6, 6)
    ref = P-P[:, :1]-P[:1, :]+P[0, 0]
    B = side(theta, ref[1:3, 3:6].ravel())
    C = side(theta[[0, 2, 1, 3]], ref[3:6, 1:3].T.ravel()).T
    E = np.ones((3, 3), complex)
    E[1:, 1:] = np.exp(1j*theta).reshape(2, 2)
    H = np.block([[E, B], [C, -C@E.conj().T@np.linalg.inv(B.conj().T)]])
    z = np.array([H[i, k]*H[j, k].conjugate() for i, j in PAIRS for k in range(6)])
    N = np.zeros((90, 36))
    for p, (i, j) in enumerate(PAIRS):
        for k in range(6):
            N[6*p+k, 6*i+k], N[6*p+k, 6*j+k] = 1, -1
    jc = (1j*z[:, None]*N).reshape(15, 6, 36).sum(axis=1)
    J = np.r_[jc.real, jc.imag]
    A = J@X
    W = np.linalg.solve(A.T@A, A.T)
    U = (V-X@W@J@V)@decode(seed["Mth"]).reshape(4, 4)
    s, d = N@U, N@X
    b2 = -(z[:, None, None]*np.einsum("ai,aj->aij", s, s)).reshape(15, 6, 16).sum(axis=1)
    H2 = -X@W@np.r_[b2.real, b2.imag]
    T = (N@H2).reshape(90, 4, 4)
    lift = ref+np.angle(H*np.exp(-1j*ref))
    lift = lift-lift.mean(axis=0)[None, :]-lift.mean(axis=1)[:, None]+lift.mean()
    ep = np.linalg.norm(lift-P)
    eu = np.linalg.norm(U-decode(seed["U"]).reshape(36, 4), 2)
    return dict(H=H, z=z, W=W, U=U, H2=H2, X=X, s=s, T=T, d=d,
                ep=ep, eu=eu, residual=float(np.linalg.norm(H@H.conj().T-6*np.eye(6))))


def tensor_polynomials(s, T, d):
    """Diagnostic tensors only; the Arb cheap path never constructs these."""
    p3r = np.empty((90, 64)); p3i = np.empty((90, 64))
    p4r = np.empty((90, 256)); p4i = np.empty((90, 256))
    for col, (i, j, k) in enumerate(it.product(range(4), repeat=3)):
        p3r[:, col] = -(T[:, i, j]*s[:, k]+T[:, i, k]*s[:, j]+T[:, j, k]*s[:, i])
        p3i[:, col] = -s[:, i]*s[:, j]*s[:, k]
    for col, (i, j, k, l) in enumerate(it.product(range(4), repeat=4)):
        p4r[:, col] = (s[:, i]*s[:, j]*s[:, k]*s[:, l]
                      -T[:, i, j]*T[:, k, l]-T[:, i, k]*T[:, j, l]-T[:, i, l]*T[:, j, k])
        p4i[:, col] = -(T[:, i, j]*s[:, k]*s[:, l]+T[:, i, k]*s[:, j]*s[:, l]
                       +T[:, i, l]*s[:, j]*s[:, k]+T[:, j, k]*s[:, i]*s[:, l]
                       +T[:, j, l]*s[:, i]*s[:, k]+T[:, k, l]*s[:, i]*s[:, j])
    a2r = -np.einsum("aij,ak->aijk", T, d).reshape(90, -1)
    a2i = -np.einsum("ai,aj,ak->aijk", s, s, d).reshape(90, -1)
    c = -np.einsum("ai,aj->aij", s, d).reshape(90, -1)
    dn = -np.einsum("ai,aj->aij", d, d).reshape(90, -1)
    return dict(t3=p3r+1j*p3i, t4=p4r+1j*p4i, a2=a2r+1j*a2i, c=c, d=dn)


def constants(g, r):
    W, z, s, T, d = (g[k] for k in ("W", "z", "s", "T", "d"))
    u, x, beta, wn = (float(np.linalg.norm(g[k], 2)) for k in ("U", "X", "H2", "W"))
    sn, tn, dn = np.linalg.norm(s, axis=1), np.linalg.norm(T, ord=2, axis=(1, 2)), np.linalg.norm(d, axis=1)
    # A unit phase rotates this two-column matrix, so cn is constant per pair.
    cn = np.repeat([np.linalg.norm(W[:, [p, p+15]], 2) for p in range(15)], 6)
    an = sn+r*tn
    shared = dict(u=u, x=x, beta=beta, L3=2*math.sqrt(6)*wn,
                  L5=float(cn@(an**5+10*tn*an**3+15*tn**2*an)),
                  L3a=float((cn*dn)@(an**3+3*tn*an)), ep=g["ep"], eu=g["eu"])
    triangle = dict(zip(KEYS, map(float, [cn@(sn**3+3*tn*sn), cn@(sn**4+6*tn*sn**2+3*tn**2),
                                         (cn*dn)@(tn+sn**2), cn@(sn*dn), cn@(dn**2)])))
    L2, L3, L4 = 2*math.sqrt(3)*wn, shared["L3"], 4*math.sqrt(3)*wn
    uniform = dict(t3=L3*u**3+3*L2*beta*u, t4=L4*u**4+6*L3*beta*u*u+3*L2*beta**2,
                   a2=(L3*u*u+L2*beta)*x, c=L2*u*x, d=L2*x*x)
    tensors = tensor_polynomials(s, T, d)
    spectral, frobenius, pair = {}, {}, {}
    _, singular, right = np.linalg.svd(W, full_matrices=False)
    rank = {k: {} for k in (1, 2, 4)}
    for key, poly in tensors.items():
        residual = (z[:, None]*poly).reshape(15, 6, -1).sum(axis=1)
        real = np.r_[residual.real, residual.imag]
        output = W@real
        spectral[key] = float(np.linalg.norm(output, 2))
        frobenius[key] = float(np.linalg.norm(output))
        # Two bounds, both using only six-term Gram matrices within each pair.
        global_bound = wn*np.linalg.norm(real)
        pair_bound = sum(np.linalg.norm(W[:, [p, p+15]]@np.array([residual[p].real, residual[p].imag]))
                         for p in range(15))
        pair[key] = float(min(global_bound, pair_bound, triangle[key], uniform[key]))
        for k in rank:
            # Only cubic and mixed tensors need the additional contractions.
            value = pair[key]
            if key in ("t3", "c"):
                lam = singular[k]**2
                L = np.sqrt(singular[:k]**2-lam)[:, None]*right[:k]
                value = min(value, math.sqrt(lam*np.linalg.norm(real)**2+np.linalg.norm(L@real)**2))
            rank[k][key] = float(value)
    return shared, dict(spectral=spectral, triangle=triangle, frobenius=frobenius, uniform=uniform, pair=pair,
                        **{f"rank{k}": v for k, v in rank.items()})


def contraction(shared, constants, r):
    t3, t4, a2, c, d = (constants[k] for k in KEYS)
    u, x, beta, L3, L5, L3a = (shared[k] for k in ("u", "x", "beta", "L3", "L5", "L3a"))
    b0 = t3*r**3/6+t4*r**4/24+L5*r**5/120
    base = u*r+beta*r*r/2
    qb = c*r+a2*r*r/2+L3a*r**3/6
    tau = b0*1.1
    for _ in range(100):
        q = qb+(d+L3*x*x*base)*tau+L3*x**3*tau*tau/2
        if not math.isfinite(q) or q >= 1:
            return None
        if b0+q*tau < tau:
            return dict(n=beta*r*r/2+x*tau+shared["ep"]+r*shared["eu"], tau=tau, q=q)
        tau = b0/(1-q)*1.001
    return None


def measure(seed, basis_geometry):
    r = decode(seed["r"])
    g = centre(seed, *basis_geometry)
    shared, modes = constants(g, r)
    baseline = modes["spectral"]
    cases = {"baseline": contraction(shared, baseline, r)}
    for mode in ("triangle", "frobenius", "uniform", "pair", "rank1", "rank2", "rank4"):
        for key in (*KEYS, "all"):
            c = modes[mode] if key == "all" else baseline | {key: modes[mode][key]}
            cases[f"{mode}.{key}"] = contraction(shared, c, r)
    return dict(shared=shared, constants=modes, cases=cases, centre_residual=g["residual"])


def summarise(rows):
    good_budget = [v for v in rows if v["budget"] is not None]
    out = dict(status="NUMERICAL", balls=len(rows), budget_count=len(good_budget), cases={})
    for case in rows[0]["cases"]:
        good = [v for v in rows if v["cases"][case] is not None]
        fit = [v for v in good if v["budget"] is not None and v["cases"][case]["n"] <= v["budget"]]
        ratios = [v["cases"][case]["n"]/v["cases"]["baseline"]["n"] for v in good if v["cases"]["baseline"]]
        out["cases"][case] = dict(contractions=len(good), budget_fits=len(fit),
                                  ratio_percentiles=dict(zip(["p10", "p50", "p90", "max"],
                                                            map(float, np.percentile(ratios, [10, 50, 90, 100])))) if ratios else {})
    comparisons = [abs(v["cases"]["baseline"]["n"]/v["reference_n"]-1) for v in rows
                   if v["cases"]["baseline"] and v["reference_n"]]
    out["baseline_reference_relative_error_max"] = max(comparisons, default=None)
    return out


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--archive", type=Path, default=DEFAULT_ZIP)
    p.add_argument("--out", type=Path, default=DEFAULT_OUT)
    p.add_argument("--limit", type=int)
    args = p.parse_args()
    seeds, basis, budgets, reference, hashes = inputs(args.archive)
    geom = geometry(basis)
    args.out.mkdir(parents=True, exist_ok=True)
    started = time.perf_counter()
    rows = []
    with jsonl_writer(args.out / "sensitivity.jsonl.gz") as f:
        for j, seed in enumerate(seeds[:args.limit]):
            b = budgets.get(j)
            row = dict(j=j, status="NUMERICAL", budget=b["n"] if b and b["f"] is not None else None,
                       budget_status="missing" if b is None else "no_passing_factor" if b["f"] is None else "provided",
                       reference_n=reference[j].get("n_record"), **measure(seed, geom))
            rows.append(row)
            f.write(json.dumps(row, allow_nan=False, separators=(",", ":"))+"\n")
            if (j+1) % 100 == 0:
                print(f"NUMERICAL {j+1}/{len(seeds)} in {time.perf_counter()-started:.1f}s", flush=True)
    summary = summarise(rows) | dict(input_sha256=hashes, seconds=time.perf_counter()-started,
                                    numpy_version=np.__version__,
                                    source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                                    results_sha256=hashlib.sha256((args.out/"sensitivity.jsonl.gz").read_bytes()).hexdigest())
    (args.out / "sensitivity_summary.json").write_text(json.dumps(summary, indent=2)+"\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
