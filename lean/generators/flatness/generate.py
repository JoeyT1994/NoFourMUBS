#!/usr/bin/env python3
"""Generate NoFourMUBs/L1/FlatData.lean: the reduced entries of K Qh K* and the factor table.

Only the data of the weighted defect W11 is generated (q = 0 for K Qh K*, p = 0 for the vertical moments,
zero-based): the other three defects follow by relabelling (handoff M; `FlatBridge.W_zero`).

Untrusted: every datum is re-checked by the Lean kernel (FlatCheck*.lean).  Uses the exact
rational-function helper of proof/coverage/returns/E_matched_flatness/direct (python-flint).
"""
import sys
sys.set_int_max_str_digits(0)   # the packed numerators are long integers
from fractions import Fraction
from math import lcm
from pathlib import Path
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'proof/coverage/returns/E_matched_flatness/direct'))
from rational_helper import F, CTX, ONE, mul, tr, adj  # noqa: E402

a, b, c, d = [F(x) for x in CTX.gens()]
SEEDS = [a.n, b.n, c.n, d.n]


def gram(s, t, r):
    S, T, Q = s.star(), t.star(), r.star()
    X, Y, Z = s * S, t * T, r * Q
    p = X + Y + Z
    J = s * r * T + S * Q * t
    g = 27 - 3 * p + J
    eta = 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    P0 = r * s * s + Q * t * t + (3 - Z) * s * t
    P1 = t * S * S + r * r * T + (3 - Y) * r * S
    P2 = s * T * T + Q * Q * S + (3 - X) * Q * T
    return dict(s=s, S=S, t=t, T=T, r=r, Q=Q, g=g, eta=eta, chi=chi,
                P=[P0, P1, P2], B=[P0.star(), P1.star(), P2.star()],
                c=[9 - Z, 9 - Y, 9 - X])


H = gram(-(1 + a + b), -(1 + c + d), -(1 + c / a + d / b))
Vg = gram(-(1 + a + c), -(1 + b + d), -(1 + b / a + d / c))

# Factor table after the four seeds: polynomial = Laurent factor * seed monomial.
NAMES = ['g', 'P0h', 'B1h', 'B2h', 'P0v', 'B1v', 'B2v']
LAUR = [H['g'], H['P'][0], H['B'][1], H['B'][2], Vg['P'][0], Vg['B'][1], Vg['B'][2]]


def monomial_part(x):
    """x = n/d with d a monomial: return (polynomial n * lcm-normalisation, exponents of d)."""
    assert len(x.d) == 1
    (ex, co), = x.d.terms()
    return x.n, list(ex), co


TABLE = []
for nm, x in zip(NAMES, LAUR):
    n, ex, co = monomial_part(x)
    TABLE.append((nm, n, ex, co))


def factor_den(den):
    """den = kappa * seed monomial * prod table^e, by exact division."""
    rem = den
    exps = [0] * len(TABLE)
    for k, (nm, n, ex, co) in enumerate(TABLE):
        while True:
            try:
                q = rem / n
            except Exception:
                break
            rem, exps[k] = q, exps[k] + 1
    assert len(rem) == 1, 'denominator has an unknown factor'
    (mex, kappa), = rem.terms()
    return exps, list(mex), Fraction(str(kappa))



CONSTS = [2, 3, 5]


def split_const(q):
    """q = sign * prod CONSTS^e for a positive or negative integer q."""
    sign = -1 if q < 0 else 1
    q = abs(q)
    ex = []
    for pr in CONSTS:
        e = 0
        while q % pr == 0:
            q //= pr
            e += 1
        ex.append(e)
    assert q == 1, 'constant with a prime outside CONSTS'
    return sign, ex


def integer_poly(n):
    """n = N_int / L with integer N_int."""
    L = lcm(*[Fraction(str(co)).denominator for _, co in n.terms()]) if len(n) else 1
    return [(tuple(int(e) for e in ex), int(Fraction(str(co)) * L)) for ex, co in n.terms()], L


def encode(terms):
    """Pack terms (exps, coeff) into one natural number, low term first."""
    if not terms:
        return 0, 0, 25
    cb = max(abs(c).bit_length() for _, c in terms)
    W = 25 + cb
    code = 0
    for i, (ex, co) in enumerate(terms):
        assert all(0 <= e < 64 for e in ex)
        t = ex[0] + 64 * ex[1] + 4096 * ex[2] + 262144 * ex[3]
        t += (1 << 24) * (1 if co < 0 else 0) + (abs(co) << 25)
        code |= t << (W * i)
    return code, len(terms), W


def frac_record(x):
    """x = num / (kappa * mono * prod table^e): integer numerator and denominator exponents
    over [a, b, c, d, table..., 2, 3, 5]."""
    exps, mex, kappa = factor_den(x.d)
    terms, L = integer_poly(x.n)
    # x = (N_int / L) / (kappa * mono * prod) ; kappa = p / q
    p_, q_ = kappa.numerator, kappa.denominator
    terms = [(ex, co * q_) for ex, co in terms]
    sign, cex = split_const(L * p_)
    terms = [(ex, sign * co) for ex, co in terms]
    return terms, list(mex) + exps + cex


# ---- the quantities of verify_third_moments.py
exec_src = (ROOT / 'proof/coverage/returns/E_matched_flatness/direct/verify_third_moments.py').read_text()
exec_src = exec_src.split("    stats=[]")[0].replace(
    "def main(write_certificates=False):", "def main(write_certificates=False):\n    global OUT")
exec_src += "\n    OUT=dict(Qh=Qh,Qv=Qv,K=K,Kstar=Kstar)\n"
g_ = {}
exec(exec_src, g_)
g_['main']()
OUT = g_['OUT']
K, Ks = OUT['K'], OUT['Kstar']

MH, MHF = {}, {}
for q in range(1):
    for i in range(2):
        M = mul(K, mul(OUT['Qh'][q][i], Ks))
        for ia in range(3):
            for ic in range(3):
                MHF[(q, i, ia, ic)] = M[ia][ic]
                MH[(q, i, ia, ic)] = frac_record(M[ia][ic])

# Reduced vertical third moments.
QV = {}
for pp in range(1):
    for i in range(2):
        for ia in range(3):
            for ic in range(3):
                QV[(pp, i, ia, ic)] = frac_record(OUT['Qv'][pp][i][ia][ic])


def lean_code(name, terms, doc):
    code, n, W = encode(terms)
    return f"/-- {doc} -/\ndef {name} : V := ofCode {W} {n}\n  {code}\n"


def main_out(path):
    out = ['import NoFourMUBs.L1.FlatCircuitsBase', '',
           '/-! Generated by `lean/generators/flatness/generate.py`; checked by the kernel in `FlatCheck*`. -/', '',
           'namespace NoFourMUBs.L1.FlatCircuits', '', 'set_option maxRecDepth 100000', '']
    for nm, n, ex, co in TABLE:
        terms, L = integer_poly(n)
        assert L == 1 and co == 1
        out.append(lean_code(f'{nm}P', terms, f'`{nm}` times the seed monomial `{ex}`.'))
        out.append(f'def {nm}Mono : List ℕ := {ex}\n')
    for (q, i, ia, ic), (terms, den) in sorted(MH.items()):
        out.append(lean_code(f'mh_{q}{i}{ia}{ic}', terms, f'Numerator of `(K Q⁽{q+1}⁾_{i} K*)[{ia},{ic}]`.'))
        out.append(f'def mhDen_{q}{i}{ia}{ic} : List ℕ := {den}\n')
    for (pp, i, ia, ic), (terms, den) in sorted(QV.items()):
        out.append(lean_code(f'qv_{pp}{i}{ia}{ic}', terms, f'Numerator of the vertical `Q⁽{pp+1}⁾_{i}[{ia},{ic}]`.'))
        out.append(f'def qvDen_{pp}{i}{ia}{ic} : List ℕ := {den}\n')
    out.append('def qvNum : ℕ → ℕ → ℕ → ℕ → V')
    for (pp, i, ia, ic) in sorted(QV):
        out.append(f'  | {pp}, {i}, {ia}, {ic} => qv_{pp}{i}{ia}{ic}')
    out.append('  | _, _, _, _ => 0\n')
    out.append('def qvDen : ℕ → ℕ → ℕ → ℕ → List ℕ')
    for (pp, i, ia, ic) in sorted(QV):
        out.append(f'  | {pp}, {i}, {ia}, {ic} => qvDen_{pp}{i}{ia}{ic}')
    out.append('  | _, _, _, _ => []\n')
    out.append('/-- The numerators of the reduced entries, indexed by `q, i, a, c`. -/')
    out.append('def mhNum : ℕ → ℕ → ℕ → ℕ → V')
    for (q, i, ia, ic) in sorted(MH):
        out.append(f'  | {q}, {i}, {ia}, {ic} => mh_{q}{i}{ia}{ic}')
    out.append('  | _, _, _, _ => 0\n')
    out.append('/-- Their denominators: exponents over `a, b, c, d, g, P₀ʰ, P̄₁ʰ, P̄₂ʰ, P₀ᵛ, P̄₁ᵛ, P̄₂ᵛ, 2, 3, 5`. -/')
    out.append('def mhDen : ℕ → ℕ → ℕ → ℕ → List ℕ')
    for (q, i, ia, ic) in sorted(MH):
        out.append(f'  | {q}, {i}, {ia}, {ic} => mhDen_{q}{i}{ia}{ic}')
    out.append('  | _, _, _, _ => []\n')
    out.append('end NoFourMUBs.L1.FlatCircuits\n')
    Path(path).write_text('\n'.join(out))


if __name__ == '__main__':
    main_out(ROOT / 'lean/NoFourMUBs/L1/FlatData.lean')
    print('wrote FlatData.lean')
