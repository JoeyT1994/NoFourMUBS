"""One reference of the wide F6 tube: integer ray cover + exact compatibility graph.

THEOREM (per reference).  Let K be a dephased 6x6 matrix whose entries are exact table phases e^{2 pi i psi/L}.
If an order-6 Hadamard H has every column within projector distance delta of the same column of K (after row and
column rephasing) with 6*delta <= tau, then {I, H} is not a quartet edge.

PROOF.  A ray x unbiased to I and H has |<x, h_j>| = 1 for all columns (raw entries, |x| = 1 coordinates 1/sqrt6);
the amplitude transfer of ClusterTube/PracticalTube gives ||sqrt6 <x,k_j>| - sqrt6| < 6 delta <= tau.
refcover.cpp proves that every such ray lies within projector distance < rho of one of the rational centres.
The exact graph on the centres (orth edge if p <= 4rho^2(1-rho^2), UB edge if A <= 0 or A^2 <= 5p(1-p),
A = 3(1-2rho^2)^2 - 5/2 + 2p; ClusterTube) has no orthogonal 6-clique C with a compatible orthogonal 6-clique D,
so no two further orthonormal bases fit.  (Self-pairs are not orth edges, so distinct rays of a basis use distinct
centres; this is asserted.)
"""
import importlib.util, hashlib, json, math, os, re, subprocess, sys, tempfile, itertools
from fractions import Fraction as Fr
from pathlib import Path
import numpy as np
from scipy.optimize import least_squares

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
FN = ROOT / 'ProvenResults/FourierNeighbourhood'
L, Q = 218880, 1 << 26
TRIG_SHA = 'fc771aee6c2cdab092dd0c9cc8b261fc7623b5f76279fdf08d4a854d64b7e35a'


def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path); m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m); return m


def sha(p):
    return hashlib.sha256(Path(p).read_bytes()).hexdigest()


def build_tools(work):
    """trig table (Arb-certified, hash pinned), audited arithmetic prefix, compiled refcover."""
    work = Path(work); work.mkdir(parents=True, exist_ok=True)
    trig = work / 'trig.bin'
    if not trig.exists() or sha(trig) != TRIG_SHA:
        module('tube_table', FN / 'PracticalTube/verify.py').table(trig)
    assert sha(trig) == TRIG_SHA
    src = (FN / 'PracticalTube/tube.cpp').read_text(); assert src.count('bool ort_possible(') == 1
    (work / 'arithmetic.hpp').write_text(src.split('bool ort_possible(')[0])
    binary = work / 'refcover'
    if not binary.exists():
        subprocess.run([os.environ.get('CXX', 'c++'), '-std=c++17', '-O2', '-I', str(work),
                        str(HERE / 'refcover.cpp'), '-o', str(binary)], check=True)
    return trig, binary


def dephase(K):
    K = K / K[0:1, :]; return K / K[:, 0:1]


def table_reference(K):
    """Round a near-Hadamard to table phases.  Returns (psi int 6x6, exact-phase complex matrix)."""
    Kd = dephase(np.asarray(K, complex))
    psi = np.mod(np.rint(np.angle(Kd) * L / (2 * np.pi)).astype(np.int64), L)
    psi[0, :] = 0; psi[:, 0] = 0
    return psi, np.exp(2j * np.pi * psi / L)


F6_CHIRPS = [np.array([(k * k + 2 * j * k) % 12 for k in range(1, 6)], float) * np.pi / 6 for j in range(6)]

def rays(K, starts=3000, seed=0, want=48, tol=1e-4):
    """approximate common rays (least-squares minima); centres need not be exact roots - the cover proves completeness.
    Starts from the 48 common rays of F6 (moved continuously for references near F6), then random starts."""
    rng = np.random.default_rng(seed); found = []
    Fd = np.array([[np.exp(2j * np.pi * j * k / 6) for k in range(6)] for j in range(6)])
    seeds = []
    try:
        for x in _F6_RAYS:
            seeds.append(np.angle(x[1:] / x[0]))
    except NameError:
        pass
    def res(ph):
        x = np.exp(1j * np.r_[0, ph]) / np.sqrt(6); return np.abs(K.conj().T @ x) ** 2 - 1
    for s in range(starts + len(seeds)):
        x0 = seeds[s] if s < len(seeds) else rng.uniform(-np.pi, np.pi, 5)
        r = least_squares(res, x0, xtol=1e-15, ftol=1e-15, gtol=1e-15)
        if np.abs(r.fun).max() < tol:
            x = np.exp(1j * np.r_[0, r.x]) / np.sqrt(6)
            if all(abs(abs(np.vdot(x, y)) - 1) > 1e-4 for y in found):
                found.append(x)
        if len(found) >= want and s >= len(seeds):
            break
    return found
_F6 = np.array([[np.exp(2j * np.pi * j * k / 6) for k in range(6)] for j in range(6)])
_F6_RAYS = rays(_F6, starts=3000)
assert len(_F6_RAYS) == 48


def rational_unit(theta, q=1 << 20):
    """exact rational point of the unit circle near e^{i theta}: sign * ((q^2-p^2) + 2ipq)/(p^2+q^2)."""
    theta = (theta + np.pi) % (2 * np.pi) - np.pi
    sign = 1
    if abs(theta) > np.pi / 2:
        sign = -1; theta = theta - np.pi if theta > 0 else theta + np.pi
    p = int(round(q * math.tan(theta / 2))); den = p * p + q * q
    return (Fr(sign * (q * q - p * p), den), Fr(sign * 2 * p * q, den))


def graph(raw, rho):
    """Exact ClusterTube compatibility graph; True iff no compatible pair of orthogonal 6-cliques."""
    N = len(raw); orth = [0] * N; ub = [0] * N
    four = 4 * rho * rho * (1 - rho * rho); A0 = 3 * (1 - 2 * rho * rho) ** 2 - Fr(5, 2)
    for i in range(N):
        assert sum(x * x + y * y for x, y in raw[i]) == 6
        for j in range(i, N):
            re = sum(x * u + y * v for (x, y), (u, v) in zip(raw[i], raw[j]))
            im = sum(x * v - y * u for (x, y), (u, v) in zip(raw[i], raw[j]))
            p = (re * re + im * im) / 36
            if p <= four:
                orth[i] |= 1 << j; orth[j] |= 1 << i
            A = A0 + 2 * p
            if A <= 0 or A * A <= 5 * p * (1 - p):
                ub[i] |= 1 << j; ub[j] |= 1 << i
    assert all(not (orth[i] >> i) & 1 for i in range(N)) and all(not (ub[i] >> i) & 1 for i in range(N))
    def cliques(pool, need):
        if need == 0:
            yield (); return
        while pool.bit_count() >= need:
            bit = pool & -pool; i = bit.bit_length() - 1; pool ^= bit
            for tail in cliques(pool & orth[i], need - 1):
                yield (i, *tail)
    nC = 0
    for C in cliques((1 << N) - 1, 6):
        nC += 1
        D = (1 << N) - 1
        for i in C:
            D &= ub[i]
        for Dc in cliques(D, 6):
            return False, dict(C=C, D=Dc)
    return True, dict(C_cliques=nC, orth_edges=sum(v.bit_count() for v in orth) // 2,
                      ub_edges=sum(v.bit_count() for v in ub) // 2)


def certify(K, tau, rho, work, centres=None):
    """Run the per-reference certificate.  tau, rho: Fractions.  Returns a report dict."""
    trig, binary = build_tools(os.environ.get('WIDETUBE_TOOLS', work))
    Path(work).mkdir(parents=True, exist_ok=True)
    psi, Kt = table_reference(K)
    X = centres if centres is not None else rays(Kt)
    raw = []
    for x in X:
        ph = np.angle(x / x[0])
        raw.append([(Fr(1), Fr(0))] + [rational_unit(t) for t in ph[1:]])
    ok_graph, ginfo = graph(raw, rho)
    if not ok_graph:
        return dict(ok=False, reason='graph', graph=ginfo, rays=len(X))
    work = Path(work)
    tag = hashlib.sha256(psi.tobytes()).hexdigest()[:16]
    cfile = work / f'centers_{tag}.txt'; rfile = work / f'ref_{tag}.txt'
    lines = []
    for z in raw:
        lines.append(' '.join(f'{round(x * Q)} {round(y * Q)}' for x, y in z[1:]))
    cfile.write_text('\n'.join(lines) + '\n')
    rfile.write_text('\n'.join(' '.join(str(int(psi[i, j])) for j in range(6)) for i in range(1, 6)) + '\n')
    r = subprocess.run([str(binary), str(trig), str(cfile), str(rfile), str(tau.numerator), str(tau.denominator),
                        str(rho.numerator), str(rho.denominator)], text=True, capture_output=True)
    m = re.search(r'PASS nodes (\d+) rejected (\d+) included (\d+)', r.stdout)
    if not m:
        return dict(ok=False, reason='cover', rays=len(X), tail=r.stdout[-300:])
    nodes, rej, inc = map(int, m.groups())
    assert 31 * nodes + 19 ** 5 == 32 * (rej + inc)
    return dict(ok=True, rays=len(X), nodes=nodes, rejected=rej, included=inc, graph=ginfo,
                psi_sha=tag, tau=str(tau), rho=str(rho))


if __name__ == '__main__':
    F6 = np.array([[np.exp(2j * np.pi * j * k / 6) for k in range(6)] for j in range(6)])
    import time
    t0 = time.time()
    print('F6, tau=1/5, rho=5/27:', certify(F6, Fr(1, 5), Fr(5, 27), os.environ.get('WIDETUBE_WORK', str(HERE / 'work'))), '%.0fs' % (time.time() - t0), flush=True)
