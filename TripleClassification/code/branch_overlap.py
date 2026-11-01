"""Parent-child branch identification for a cell record: the overlap witness.

A cell record (a sub-ball built by plane_frontier_certificate.build_record) is checked to contain the dyadic cell in
seed coordinates (cell_geometry). That alone does not show that the record's analytic Hadamard branch is the original
ball's branch (finding F1 of the native review, handoffs/ret_TC_native_review_20261101). This module checks the
sufficient condition of that return's lemma (subcell_overlap_lemma.md), or its centre forms below:

  with normal forms Q_i(w) = p_i(w) + X_i z_i(w), p_i(w) = Q0_i + U_i w + H2_i[w,w]/2, ||w|| <= r_i, ||z_i|| <= tau_i
  (patches.normal_form, horizontal gauge; seeds L Q = theta0_i + Mth w), a peripheral row/column permutation Pi
  (rows and columns 3-5 only, so L Pi = L) and an integer phase matrix N, at one seed theta* strictly inside both
  balls,
      eta = || X_p^+ (Pi p_c(w_c) + 2 pi h(N) - p_p(w_p)) || + ||X_p^+ Pi X_c|| tau_c  <  tau_p
  implies Q_p(w_p(theta)) = Pi Q_c(w_c(theta)) + 2 pi h(N) on the whole common seed domain, so the child's all-K
  classification or emptiness holds for every parent matrix there.

Centre forms. At a record's own centre its actual point is its certified centre Hadamard matrix, whose phases Q0
enclose it (normal_form; the point lies in the record's tube, so by uniqueness it is the branch's value there). So
with theta* = the cell record's centre, || X_p^+ (Pi Q0_c + 2 pi h(N) - p_p(w_p)) || < tau_p suffices (no tau_c term).
The lemma's conclusion is an equality, so the roles may be exchanged: theta* = the original ball's centre and
|| X_c^+ (Pi Q0_p + 2 pi h(N) - p_c(w_c)) || < tau_c. These are tried when the general form fails, as it does for
cells of levels 1-2, whose records are as large as the original ball (tau_c close to tau_p).

Corner cells. A cell meeting the ball only at its boundary has a record ball almost tangent to the original ball, with
no common interior point. The original ball's normal form is then certified on a radius 1% or 5% larger: its centre
data (Q0, U, H2, X) do not depend on the radius, and on the original ball its branch is the original branch (the
original branch lies in the larger tube, where the zero is unique). The witness is tried against that normal form.

Exact seed equality, L d = 0 for the difference d, is algebraic: L Q0 = theta0 (normal_form forces the seed entries),
L U = Mth, L H2 = L X = 0, L Pi = L and L h(N) = L N = n. The code checks L N = n in integers and that the enclosure
of L d contains 0. Every acceptance inequality is an Arb comparison; floats only propose theta*, Pi and N.
"""
import itertools, math, sys
from pathlib import Path
import numpy as np
from flint import arb, arb_mat, ctx

M = {}


def setup(root):
    d = str(Path(root) / 'proof/seed_atlas/cert')
    if d not in sys.path: sys.path.insert(0, d)
    import patches as NF, seedcert as SC, wholeball as Z
    M.update(NF=NF, SC=SC, Z=Z)


def model(record):
    """The certified whole-ball normal form of a record (raises if it is not certified)."""
    ctx.prec = 224
    return M['NF'].normal_form(M['SC'].Ball(record), prec=224)


def seeds(q):
    """L q: the four seed entries of the dephased phase vector (index 6 row + column)."""
    return [q[6 * i + j, 0] - q[6 * i, 0] - q[j, 0] + q[0, 0] for i, j in M['Z'].SEEDS]


def predictor(m, w):
    ww = arb_mat([[w[a] * w[b]] for a in range(4) for b in range(4)])
    return m['Q0'] + m['U'] * arb_mat([[x] for x in w]) + m['H2'] * ww / 2


def permutation(rows, cols):
    """(Pi q)_(6i+j) = q_(6 rows[i] + cols[j]); rows and columns 0-2 fixed."""
    P = arb_mat(36, 36)
    for i in range(6):
        for j in range(6): P[6 * i + j, 6 * rows[i] + cols[j]] = 1
    return P


def horizontal(N):
    """h(N) as an exact rational 36-vector of an integer 6x6 matrix (row/column/grand means removed)."""
    from fractions import Fraction as Fr
    rm = [Fr(sum(N[i]), 6) for i in range(6)]; cm = [Fr(sum(N[i][j] for i in range(6)), 6) for j in range(6)]
    g = Fr(sum(map(sum, N)), 36)
    return [N[i][j] - rm[i] - cm[j] + g for i in range(6) for j in range(6)]


def integer_lift(D):
    """An integer 6x6 N with h(N) close to the horizontal real array D (6x6), or None."""
    b = [round(D[0][s]) - D[0][s] for s in range(6)]
    a = [round(D[r][0] + b[0]) - D[r][0] - b[0] for r in range(6)]
    N = [[int(round(D[r][s] + a[r] + b[s])) for s in range(6)] for r in range(6)]
    h = horizontal(N)
    if max(abs(float(h[6 * r + s]) - D[r][s]) for r in range(6) for s in range(6)) > 1e-3: return None
    return N


PERMS = [((0, 1, 2, 3, 4, 5), (0, 1, 2, 3, 4, 5))] + [((0, 1, 2) + a, (0, 1, 2) + b) for a in itertools.permutations((3, 4, 5))
                                                      for b in itertools.permutations((3, 4, 5))]


def attempt(A, B, wA, wB):
    """One witness: A's tube is the one whose uniqueness is used, at theta* with coordinates wA (A's chart) and wB
    (B's chart). With wB None, theta* is B's own centre and B's actual point there is its certified centre Hadamard
    matrix, enclosed by Q0_B (so no tau_B term); otherwise B's point is p_B(wB) + X_B z, ||z|| <= tau_B. Returns
    (rows, cols, eta) for the first peripheral permutation that passes, or None."""
    Z = M['Z']; tp = 2 * arb.pi()
    pA = predictor(A, wA); qB = B['Q0'] if wB is None else predictor(B, wB)
    XA = A['X']; XAplus = (XA.transpose() * XA).inv() * XA.transpose()
    for rows, cols in PERMS:
        Pi = permutation(rows, cols); q = Pi * qB
        N = integer_lift([[float(((pA[6 * r + c, 0] - q[6 * r + c, 0]) / tp).mid()) for c in range(6)] for r in range(6)])
        if N is None: continue
        off = q + arb_mat([[tp * arb(x.numerator) / x.denominator] for x in horizontal(N)]) - pA
        if not all(abs(x) < arb(2) ** -40 for x in seeds(off)): continue       # exact seed equality (algebraic)
        eta = Z.frob(XAplus * off) + (arb(0) if wB is None else Z.spectral(XAplus * Pi * B['X']) * B['tau'])
        if eta < A['tau']: return list(rows), list(cols), eta
    return None


ENLARGE = (1.01, 1.05)          # radii of the original ball's normal form tried when the record barely meets the ball


def witness(original, record, level, cell, parent=None, enlarged=None):
    """Prove the overlap inequality for the cell record against the original ball; returns its data, or raises.

    A cell meeting the ball only near its boundary (a corner cell) has a record ball that is almost tangent to the
    original ball, with no room for a common interior point. Then the original ball's normal form is certified on a
    slightly larger radius (enlarged: a dict factor -> model, filled on demand): its centre data Q0, U, H2, X do not
    depend on the radius, so on the original ball its branch is the original branch (uniqueness in the larger tube),
    and the witness is tried against it."""
    try: return witness_with(original, record, level, cell, parent or model(original))
    except ArithmeticError: pass
    for k in ENLARGE:
        if enlarged is None or k not in enlarged:
            big = dict(original, r=math.nextafter(float.fromhex(original['r']) * k, math.inf).hex())
            try: m = model(big)
            except ArithmeticError: m = None
            if enlarged is not None: enlarged[k] = m
        else: m = enlarged[k]
        if m is None: continue
        try: return dict(witness_with(original, record, level, cell, m), enlarged=k)
        except ArithmeticError: pass
    raise ArithmeticError('no overlap witness identifies the cell record with the original branch')


def witness_with(original, record, level, cell, pm):
    ctx.prec = 224
    cm = model(record)
    th_p = [arb(float.fromhex(x)) for x in original['theta0']]; th_c = [arb(float.fromhex(x)) for x in record['theta0']]
    Mth = arb_mat([[arb(float.fromhex(original['Mth'][4 * i + j])) for j in range(4)] for i in range(4)]); Mi = Mth.inv()
    rp, rc, taup = pm['r'], cm['r'], pm['tau']
    r0 = arb(float.fromhex(original['r']))           # the cell's position is in units of the original radius
    u = [arb(2 * c + 1 - 2 ** level) / 2 ** level for c in cell]
    tp = 2 * arb.pi()
    norm = lambda v: sum((x * x for x in v), arb(0)).sqrt()
    # theta* on the segment from the cell centre towards the parent's centre: w_p = s r_p u. The point of the parent
    # ball nearest the cell centre is on it, within the cell's half-diagonal of the centre, so inside the child ball.
    # Propose s in the interval where both strict interior tests can hold (child: |w_c(s)| <= |w_c(1)| + (1-s) r_p |u|).
    f = lambda x: float(x.mid())
    nu = f(norm(u)); th1 = [th_p[i] + sum((Mth[i, j] * r0 * u[j] for j in range(4)), arb(0)) for i in range(4)]
    n1 = [int(round(f((th1[i] - th_c[i]) / tp))) for i in range(4)]
    wc1 = f(norm((Mi * arb_mat([[th1[i] - th_c[i] - n1[i] * tp] for i in range(4)])).entries()))
    lo, hi = 1 - (f(rc) - wc1) / (f(r0) * nu), min(1.0, f(rp) / (f(r0) * nu))
    for s in [(lo + hi) / 2, 1, 0.875, 0.75, 0.5, 0.25, 0]:
        wp = [arb(s) * r0 * x for x in u]
        theta = [th_p[i] + sum((Mth[i, j] * wp[j] for j in range(4)), arb(0)) for i in range(4)]
        n = [int(round(float(((theta[i] - th_c[i]) / tp).mid()))) for i in range(4)]
        dc = arb_mat([[theta[i] - th_c[i] - n[i] * tp] for i in range(4)]); wc = (Mi * dc).entries()
        if not (norm(wp) < rp and norm(wc) < rc): continue
        r = attempt(pm, cm, wp, wc)
        if r: return dict(form='general', s=s, rows=r[0], cols=r[1], eta_upper=float(r[2].upper()), tau=float(taup.lower()))
    # The centre forms (a sharpening of the same lemma): theta* is one record's centre, where its actual point is its
    # certified centre matrix; the equality the lemma proves is symmetric, so either tube may carry the uniqueness.
    for A, B, thA, thB, rA, name in ((pm, cm, th_p, th_c, rp, 'centre of the cell record'),
                                     (cm, pm, th_c, th_p, rc, 'centre of the original ball')):
        n = [int(round(f((thB[i] - thA[i]) / tp))) for i in range(4)]
        wA = (Mi * arb_mat([[thB[i] - n[i] * tp - thA[i]] for i in range(4)])).entries()
        if not norm(wA) < rA: continue
        r = attempt(A, B, wA, None)
        if r: return dict(form=name, rows=r[0], cols=r[1], eta_upper=float(r[2].upper()), tau=float(A['tau'].lower()))
    raise ArithmeticError('no overlap witness identifies the cell record with the original branch')
