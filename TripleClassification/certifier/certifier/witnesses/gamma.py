"""The gamma witness: a pattern discharged by the ordering bound on the labelled Fourier score Gamma_F.

The witness {'colours', 'columns', 'gamma'} names the pattern's six colours (columns = the pattern, in order), a mode
L or K and an alignment (a, b) (two labellings of 0-5 with a[0] = b[0] = 0). From the six phase balls of the rebuilt
cover (no column proof is used) the check computes, in Arb, an upper bound g_up of Gamma_F over the pattern: of
L = H* K / sqrt 6 (mode L) or of K (mode K). The pattern is ORDERING_DISCHARGED when g_up is strictly below the cell's
certified lower bound g_cell of Gamma_F(H), compared as exact rationals. Then no triple (I, H, K) in the pattern has
its H-transition of least Gamma_F among its three transitions, so the pattern counts through the minimum-transition
lemma (README) and the leaf has minimum-transition scope. No other gamma discharge is accepted (in particular not the
Fourier-neighbourhood bound g_up <= 19/50).

g_cell (`context`): Gamma_F(H) at the binary64 centre phases p of the cell's H, bounded below exactly
(gamma_exact.score_lower), less 2/5 of a bound on the distance from every phase of H over the cell to p (the motion
over the cell, and the whole distance from the Arb centre ball to p). g_up (`bound`): the pinned gamma_test bounds.

Both functions are those of TripleClassification/code/ext_cell_certificate.py (gamma_context, gamma_bound), unchanged.
"""
from fractions import Fraction
from flint import arb, acb
from .. import pinned

GT, GX = pinned.gamma_test, pinned.gamma_exact
P = pinned.column


def check(context, columns, clique, witness, cache):
    """Raises unless the witness's bound is strictly below g_cell; returns (g_up, g_cell) as floats."""
    g_up = bound(context, columns, clique, witness['gamma'], cache)
    P.require(Fraction(g_up) < context['g_h'], 'gamma witness: the ordering bound does not hold')
    return g_up, float(context['g_h'])


def valid(clique, witness):
    """The witness's shape: exactly these keys, columns = the pattern, a mode and two labellings fixing 0."""
    g = witness['gamma']
    return (set(witness) == {'colours', 'columns', 'gamma'} and witness['columns'] == clique and isinstance(g, dict) and
            set(g) == {'mode', 'a', 'b', 'g_up_hex'} and g['mode'] in ('L', 'K') and
            all(isinstance(g[k], list) and all(type(i) is int for i in g[k]) and sorted(g[k]) == [0, 1, 2, 3, 4, 5]
                and g[k][0] == 0 for k in ('a', 'b')))


def context(model):
    """GT.prep(model, 0), with the cell's lower bound g_cell on Gamma_F(H) recomputed: the centre score by exact
    integer arithmetic (gamma_exact.score_lower, in place of gamma_test's float64 minimum and its rounding argument;
    GT.prep's own g_cell is discarded), and an error term covering the whole distance from every phase of H over the
    cell to the binary64 point p at which it is evaluated: GT.prep adds each centre ball's radius but not the rounding
    of its midpoint to binary64. Here each entry's term is |q0_i - p_i| over the whole Arb ball q0_i plus the motion
    over the cell."""
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


def bound(ctx, columns, clique, g, cache):
    """Arb upper bound (exact binary64) of Gamma_F over the pattern, as gamma_test.pattern computes it, for the
    witness's mode and alignment. Column data come from the rebuilt cover's phase balls (v0, phase_radius)."""
    Hc, s, dH = ctx['Hc'], ctx['s'], ctx['dH']
    for c in clique:
        if c in cache: continue
        v0 = [arb(columns[c]['v0'][a]) for a in range(6)]
        pr = (arb(columns[c]['phase_radius']) + sum((arb(v0[a].rad()) for a in range(6)), arb(0))).upper()
        Kc = [acb(0, v0[a]).exp() for a in range(6)]
        Lc = [sum((Hc[a][r].conjugate() * Kc[a] for a in range(6)), acb(0)) / arb(6).sqrt() for r in range(6)]
        cache[c] = dict(v0=v0, prs=arb(GT.up(arb(pr))), m=min(arb(GT.lo(abs(Lc[r]))) for r in range(6)),
                        dk=arb(GT.up(s * pr + dH)), PL=[Lc[r].arg() for r in range(6)])
    cd = [cache[c] for c in clique]
    if g['mode'] == 'L':
        m = min(x['m'] for x in cd); dk = [x['dk'] for x in cd]
        P.require(m > 0, 'gamma L witness: an entry of L_c may vanish')
        xm = arb(GT.up(max(dk) / m))
        P.require(xm < 1, 'gamma L witness: motion not below the modulus')
        kappa = arb(GT.up(xm.asin() / xm)) if xm > 0 else arb(1)            # asin(x)/x increases on [0, 1)
        E = arb(GT.up(kappa * sum((d * d for d in dk), arb(0)).sqrt() / m))
        centre = GT.score_upper([[cd[k]['PL'][r] for k in range(6)] for r in range(6)], g['a'], g['b'], arb)
        return GT.up(arb(centre) + arb(2) / 5 * E)
    centre = GT.score_upper([[cd[k]['v0'][r] for k in range(6)] for r in range(6)], g['a'], g['b'], arb)
    return GT.up(arb(centre) + arb(2) / 5 * sum((x['prs'] * x['prs'] for x in cd), arb(0)).sqrt())
