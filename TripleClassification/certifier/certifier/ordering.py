"""The ordering witness: a pattern discharged by the labelled Fourier score Gamma_F (minimum-transition scope).

Used only where the normal-form witness leaves a pattern open, and only when the search is asked to (`close
--ordering`). The witness {'mode', 'a', 'b'} names a mode, L or K, and an alignment (a, b) (two labellings of 0-5 with
a[0] = b[0] = 0). From the pattern's six column enclosures of the native cover (every completing column of colour c has
mean-zero phases within phase_radius of v0), the check computes in Arb an upper bound g_up of Gamma_F over the pattern:
of L = H* K / sqrt 6 (mode L) or of K (mode K). The pattern is discharged when g_up is strictly below the cell's
certified lower bound g_cell of Gamma_F(H), compared as exact rationals. Then no triple (I, H, K) in the pattern has its
H-transition of least Gamma_F among its three transitions. Every triple has a transition of least Gamma_F, and Gamma_F
is invariant under equivalence, transposition and conjugation, so such a triple is classified through that other
transition (the minimum-transition lemma, ../README.md); the leaf has minimum-transition scope.

g_cell (`context`): Gamma_F(H) at the binary64 centre phases p of the cell's H, bounded below exactly
(gamma_exact.score_lower), less 2/5 of a bound on the distance from every phase of H over the cell to p. g_up (`bound`):
the pinned gamma_test bounds. Both are those of the approved one-tree checker (ext_cell_certificate.py, gamma_context
and gamma_bound), unchanged.
"""
from fractions import Fraction
import numpy as np
from flint import arb, acb
from . import pinned

GT, GX = pinned.gamma_test, pinned.gamma_exact


def columns(prepared, bounds, clique):
    """The pattern's column enclosures from the native cover: {colour: {'v0': six Arb phases, 'phase_radius'}}."""
    return {c: dict(v0=[prepared[c]['v0'][a, 0] for a in range(6)], phase_radius=bounds[c]['phase_radius']) for c in clique}


def valid(w):
    """The witness's shape: a mode and two labellings of 0-5 fixing 0."""
    return (isinstance(w, dict) and set(w) == {'mode', 'a', 'b'} and w['mode'] in ('L', 'K') and
            all(isinstance(w[k], list) and all(type(i) is int for i in w[k]) and sorted(w[k]) == [0, 1, 2, 3, 4, 5]
                and w[k][0] == 0 for k in ('a', 'b')))


def check(ctx, cols, clique, w, cache):
    """Raises unless the witness's bound is strictly below g_cell."""
    pinned.require(valid(w), 'invalid ordering witness')
    pinned.require(Fraction(bound(ctx, cols, clique, w, cache)) < ctx['g_h'], 'ordering witness: the bound does not hold')


def propose(ctx, cols, clique, cache):
    """A witness that checks (mode L, then K, each at the best alignment of its centre phases), or None."""
    for mode in ('L', 'K'):
        if mode == 'L':
            Hc = ctx['Hc']
            K = [[acb(0, cols[c]['v0'][a]).exp() for c in clique] for a in range(6)]
            mid = np.array([[float(sum((Hc[a][r].conjugate() * K[a][k] for a in range(6)), acb(0)).arg().mid())
                             for k in range(6)] for r in range(6)])
        else:
            mid = np.array([[float(cols[c]['v0'][a].mid()) for c in clique] for a in range(6)])
        a, b = GT.best_alignment(mid)
        w = dict(mode=mode, a=list(a), b=list(b))
        try:
            check(ctx, cols, clique, w, cache); return w
        except (ValueError, ArithmeticError): pass
    return None


def context(model):
    """GT.prep(model, 0), with the cell's lower bound g_cell on Gamma_F(H) recomputed: the centre score by exact
    integer arithmetic (gamma_exact.score_lower), and an error term covering the whole distance from every phase of H
    over the cell to the binary64 point p at which it is evaluated (each entry's |q0_i - p_i| over the whole Arb ball
    q0_i plus the motion over the cell)."""
    ctx = GT.prep(model, Fraction(0))
    r, tau = model['r'], model['tau']; q0, u, h2, x = (model[k] for k in ('Q0', 'U', 'H2', 'X'))
    def rownorm(m, i):
        return sum((abs(m[i, j]).upper() * abs(m[i, j]).upper() for j in range(m.ncols())), arb(0)).sqrt()
    pts = [float(q0[i, 0].mid()) for i in range(36)]
    e = [rownorm(u, i) * r + rownorm(h2, i) * r * r / 2 + rownorm(x, i) * tau + arb(abs(q0[i, 0] - arb(pts[i])).upper())
         for i in range(36)]
    d = sum((v * v for v in e), arb(0)).sqrt()
    g_cell = GT.lo(arb(GX.score_lower([[pts[6 * a + c] for c in range(6)] for a in range(6)])) - arb(2) / 5 * d)
    return dict(ctx, g_cell=Fraction(g_cell), g_h=max(Fraction(0), Fraction(g_cell)))


def bound(ctx, cols, clique, w, cache):
    """Arb upper bound (exact binary64) of Gamma_F over the pattern for the witness's mode and alignment."""
    Hc, s, dH = ctx['Hc'], ctx['s'], ctx['dH']
    for c in clique:
        if c in cache: continue
        v0 = [arb(cols[c]['v0'][a]) for a in range(6)]
        pr = (arb(cols[c]['phase_radius']) + sum((arb(v0[a].rad()) for a in range(6)), arb(0))).upper()
        Kc = [acb(0, v0[a]).exp() for a in range(6)]
        Lc = [sum((Hc[a][r].conjugate() * Kc[a] for a in range(6)), acb(0)) / arb(6).sqrt() for r in range(6)]
        cache[c] = dict(v0=v0, prs=arb(GT.up(arb(pr))), m=min(arb(GT.lo(abs(Lc[r]))) for r in range(6)),
                        dk=arb(GT.up(s * pr + dH)), PL=[Lc[r].arg() for r in range(6)])
    cd = [cache[c] for c in clique]
    if w['mode'] == 'L':
        m = min(x['m'] for x in cd); dk = [x['dk'] for x in cd]
        pinned.require(m > 0, 'ordering L witness: an entry of L_c may vanish')
        xm = arb(GT.up(max(dk) / m))
        pinned.require(xm < 1, 'ordering L witness: motion not below the modulus')
        kappa = arb(GT.up(xm.asin() / xm)) if xm > 0 else arb(1)            # asin(x)/x increases on [0, 1)
        E = arb(GT.up(kappa * sum((d * d for d in dk), arb(0)).sqrt() / m))
        centre = GT.score_upper([[cd[k]['PL'][r] for k in range(6)] for r in range(6)], w['a'], w['b'], arb)
        return GT.up(arb(centre) + arb(2) / 5 * E)
    centre = GT.score_upper([[cd[k]['v0'][r] for k in range(6)] for r in range(6)], w['a'], w['b'], arb)
    return GT.up(arb(centre) + arb(2) / 5 * sum((x['prs'] * x['prs'] for x in cd), arb(0)).sqrt())
