"""The ordering witness (minimum-transition scope), from the independent review (proofs/REVIEW_ORDERING.md).

1. The pinned bounds against an independent float evaluation of Gamma_F over all 14,400 alignments: the exact lower
   bound (gamma_exact.score_lower) is below it and the one-alignment upper bound (gamma_test.score_upper) above it,
   also over a ball; outward rounding (up, lo); invariance (Gamma1), the Lipschitz bound (Gamma2), and the transpose
   transfer of a MUB triple (basis exchange, then conjugation) keeping the three scores.
2. The comparison is strict (a bound equal to g_h is refused) and the witness's shape is checked.
3. On ball 1622's level-9 cell (188, 128, 252, 200), refused: the ordering witness removed, given under an alias key
   (the pattern then falls to the normal-form witness, which cannot resolve it), or for a pattern that does not exist.
"""
import itertools, json, os
from fractions import Fraction
import numpy as np
import pytest
from flint import arb
from conftest import cli, gz_json, leaves, to_gz, write
from certifier import ordering, pinned
from certifier.verify import verify

GT, GX = pinned.gamma_test, pinned.gamma_exact
LAB = [(0,) + p for p in itertools.permutations(range(1, 6))]
PAIRS = [(i, k) for i in range(6) for k in range(i + 1, 6)]
DA = np.array([[a[i] - a[k] for i, k in PAIRS] for a in LAB], float)


def costs(P):
    """The 120 x 120 squared costs of exp(iP) in float (independent of the pinned code)."""
    R = np.array([[P[i, j] + P[k, l] - P[i, l] - P[k, j] for j, l in PAIRS] for i, k in PAIRS])
    d = R[None, None] - (np.pi / 3) * DA[:, None, :, None] * DA[None, :, None, :]
    d = np.abs((d + np.pi) % (2 * np.pi) - np.pi)
    return (d * d).sum(axis=(2, 3))


def gamma(P): return float(np.sqrt(costs(P).min()) / 15)


def arrays():
    rng = np.random.default_rng(1)
    F6 = np.array([[2 * np.pi * i * j / 6 for j in range(6)] for i in range(6)])
    near = F6 + 1e-9 * rng.normal(size=(6, 6))                               # Gamma_F about 0
    wound = F6 + 2 * np.pi * rng.integers(-40, 40, size=(6, 6)) + 0.01 * rng.normal(size=(6, 6))
    return [F6, near, wound, np.pi * np.ones((6, 6)), *[rng.uniform(-np.pi, np.pi, (6, 6)) for _ in range(4)]]


@pytest.mark.parametrize('P', arrays())
def test_exact_lower_and_one_alignment_upper(P):
    g, c = gamma(P), costs(P)
    lo = GX.score_lower(P.tolist())
    assert 0 <= lo <= g + 1e-12                                              # each term floored to 2^-48: at most 225 2^-48 lost
    assert lo >= np.sqrt(max(0.0, c.min() - 225 * 2.0 ** -48)) / 15 - 1e-12
    a, b = np.unravel_index(int(np.argmin(c)), c.shape)
    up = GT.score_upper([[arb(float(P[i, j])) for j in range(6)] for i in range(6)], LAB[a], LAB[b], arb)
    assert up >= g - 1e-12 and up <= g + 1e-9
    # over a ball of radius 1e-3: every point's score with that alignment is below the bound
    rng = np.random.default_rng(2)
    ball = [[arb(float(P[i, j]), 1e-3) for j in range(6)] for i in range(6)]
    up = GT.score_upper(ball, LAB[a], LAB[b], arb)
    for _ in range(20):
        Q = P + rng.uniform(-1e-3, 1e-3, (6, 6))
        assert np.sqrt(costs(Q)[a, b]) / 15 <= up


def test_outward_rounding():
    rng = np.random.default_rng(3)
    for _ in range(200):
        x = arb(rng.normal()) / 3 + arb(0, abs(rng.normal()) * 10.0 ** rng.integers(-30, 0))
        assert arb(GT.up(x)) >= x.upper() and arb(GT.lo(x)) <= x.lower() and arb(GX.lo(x)) <= x.lower()


def test_invariance_and_lipschitz():
    rng = np.random.default_rng(4)
    for _ in range(5):
        Q = rng.uniform(-np.pi, np.pi, (6, 6)); g = gamma(Q)
        p, q = rng.permutation(6), rng.permutation(6)
        for R in (Q + rng.normal(size=(6, 1)) + rng.normal(size=(1, 6)), Q[p][:, q], -Q, Q.T, -Q.T):
            assert abs(gamma(R) - g) < 1e-12
        D = 0.05 * rng.normal(size=(6, 6)); h = D - D.mean(0) - D.mean(1)[:, None] + D.mean()
        assert abs(gamma(Q + D) - g) <= 0.4 * np.linalg.norm(h) + 1e-12


def test_transpose_transfer_keeps_the_three_scores():
    """(I, H, K) MUB with L = H*K/sqrt6 gives the MUB triple (I, H^T, conj L), whose transitions are H^T, conj L and
    conj K: the three scores are kept, with K and L interchanged (the minimum-transition condition is symmetric)."""
    w = np.exp(2j * np.pi / 3)
    F2, F3 = np.array([[1, 1], [1, -1]]), np.array([[w ** (i * j) for j in range(3)] for i in range(3)])
    H = np.kron(F2, F3); K = np.kron(np.diag([1, 1j]) @ F2, np.diag([1, w, w]) @ F3)
    rng = np.random.default_rng(5)
    Dr = np.diag(np.exp(1j * rng.uniform(0, 7, 6))); H, K = Dr @ H, Dr @ K[:, rng.permutation(6)]   # a generic representative
    L = H.conj().T @ K / np.sqrt(6)
    H2, K2 = H.T, L.conj(); L2 = H2.conj().T @ K2 / np.sqrt(6)
    for M in (H, K, L, H2, K2, L2): assert np.allclose(abs(M), 1)
    assert np.allclose(L2, K.conj())
    s = lambda M: gamma(np.angle(M))
    assert abs(s(H2) - s(H)) < 1e-12 and abs(s(K2) - s(L)) < 1e-12 and abs(s(L2) - s(K)) < 1e-12


def test_strict_comparison_and_shape(monkeypatch):
    w = dict(mode='L', a=[0, 2, 4, 1, 3, 5], b=[0, 4, 3, 5, 1, 2]); g = 0.3125
    monkeypatch.setattr(ordering, 'bound', lambda *a: g)
    with pytest.raises(ValueError): ordering.check(dict(g_h=Fraction(g)), {}, [], w, {})                # a tie stays in
    ordering.check(dict(g_h=Fraction(g) + Fraction(1, 2 ** 60)), {}, [], w, {})
    for bad in (dict(w, mode='H'), dict(w, a=[1, 0, 2, 3, 4, 5]), dict(w, a=[0, 1, 1, 3, 4, 5]), dict(w, b=[0, True, 2, 3, 4, 5]),
                dict(w, a=tuple(w['a'])), dict(w, extra=1), {k: w[k] for k in ('a', 'b')}):
        with pytest.raises(ValueError): ordering.check(dict(g_h=Fraction(1)), {}, [], bad, {})


@pytest.fixture(scope='module')
def ordered(tmp_path_factory):
    out = tmp_path_factory.mktemp('ord')
    code, log = cli('close', 1622, out, '--cell', '9:188,128,252,200', '--max-level', 9, '--workers', 1, '--ordering')
    assert code == 0, log
    return str(out / 'b1622')


NAME = '9_188_128_252_200.json.gz'


def refused(src, tmp_path, edit):
    f = leaves(src); x = gz_json(f[NAME]); edit(x); f[NAME] = to_gz(x)
    d = write(str(tmp_path / 'bad'), json.load(open(os.path.join(src, 'tree.json'))), f)
    return verify(d, 1622, workers=1)['verdict'] == 'OPEN'


def alias(x): k = next(iter(x['ordering'])); x['ordering']['0' + k] = x['ordering'].pop(k)
def removed(x): x['ordering'].pop(next(iter(x['ordering'])))
def missing(x): x['ordering']['100000'] = next(iter(x['ordering'].values()))
def signed(x): k = next(iter(x['ordering'])); x['ordering']['+' + k] = x['ordering'].pop(k)


@pytest.mark.parametrize('edit', [alias, removed, missing, signed])
def test_refused_ordering_witnesses(ordered, tmp_path, edit):
    assert verify(ordered, 1622, workers=1)['scope'] == 'minimum-transition'
    assert refused(ordered, tmp_path, edit)
