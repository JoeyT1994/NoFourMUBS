"""Shared helpers for the strip-identity generators (untrusted: Lean re-checks every datum)."""
import sys
from fractions import Fraction
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/MinimalConstruction/Proofs')
from flint import fmpq_mpoly_ctx, fmpz_mpoly_ctx, fmpq, fmpz  # noqa: E402

# polynomials in (a, b, c, d) = (X, Y, z|k, unused), as in exact_rational.CTX
QCTX = fmpq_mpoly_ctx.get(['a', 'b', 'c', 'd'])


def to_dict(P):
    """{(eX, eY, ez): Fraction}"""
    out = {}
    for ex, co in P.terms():
        assert ex[3] == 0
        out[(ex[0], ex[1], ex[2])] = Fraction(int(co.p), int(co.q))
    return out


def factor_den(d, table):
    """d = const * prod table[i]^e_i (table: list of fmpq_mpoly; constant entries are skipped here).
    Returns (exps, const)."""
    rem = d
    exps = [0] * len(table)
    for i, f in enumerate(table):
        if f.is_constant():
            continue
        while True:
            q, r = divmod(rem, f)
            if r != 0 or q == 0:
                break
            rem = q
            exps[i] += 1
    assert rem.is_constant(), ('unknown denominator factor', rem)
    return exps, rem.leading_coefficient()


def frac_data(x, table):
    """An exact rational function x = n/d (exact_rational.F) as (integer numerator dict, exps) with
    x = num / prod table^exps."""
    if not x.n:
        return {}, [0] * len(table)
    exps, const = factor_den(x.d, table)
    dv = QCTX.constant(1)
    for f, e in zip(table, exps):
        dv = dv * f ** e
    num = x.n * dv / x.d
    D = to_dict(num)
    # constant table entries (primes): clear the remaining rational denominators
    from math import lcm
    den = 1
    for v in D.values():
        den = lcm(den, v.denominator)
    for i, f in enumerate(table):
        if f.is_constant():
            pr = int(f.leading_coefficient())
            while den % pr == 0:
                den //= pr
                exps[i] += 1
                D = {k: v * pr for k, v in D.items()}
    for v in D.values():
        assert v.denominator == 1, 'non-integral numerator'
    return {k: int(v) for k, v in D.items()}, exps


def poly_dict(P):
    D = to_dict(P)
    for v in D.values():
        assert v.denominator == 1
    return {k: int(v) for k, v in D.items()}


def lean_horner(D, name='horner'):
    """Lean `horner W L` for {(eX, eY, ez): int} (variables: 0 = z, 1 = X, 2 = Y)."""
    if not D:
        return '(0 : Circ 3)'
    W = max(abs(c) for c in D.values()).bit_length() + 2
    mx = max(k[0] for k in D)
    my = max(k[1] for k in D)
    rows = []
    for a in range(mx + 1):
        row = []
        bmax = max([k[1] for k in D if k[0] == a], default=-1)
        for b in range(bmax + 1):
            zs = {k[2]: c for k, c in D.items() if k[0] == a and k[1] == b}
            if not zs:
                row.append('(0, 0)')
                continue
            ln = max(zs) + 1
            code = 0
            for e in range(ln - 1, -1, -1):
                c = zs.get(e, 0)
                f = (abs(c) << 1) | (1 if c < 0 else 0)
                code = (code << W) | f
            row.append(f'({ln}, {code})')
        rows.append('[' + ', '.join(row) + ']')
    return f'({name} {W} [' + ',\n    '.join(rows) + '])'


def lean_horner_salted(D, name='hornerS', seed=12345):
    """As lean_horner, each field = (2|c| + sign) * 2^64 + random 64-bit filler."""
    import random
    rng = random.Random(seed)
    if not D:
        return '(0 : Circ 3)'
    W = max(abs(c) for c in D.values()).bit_length() + 2 + 64
    mx = max(k[0] for k in D)
    rows = []
    for a in range(mx + 1):
        row = []
        bmax = max([k[1] for k in D if k[0] == a], default=-1)
        for b in range(bmax + 1):
            zs = {k[2]: c for k, c in D.items() if k[0] == a and k[1] == b}
            if not zs:
                row.append('(0, 0)')
                continue
            ln = max(zs) + 1
            code = 0
            for e in range(ln - 1, -1, -1):
                c = zs.get(e, 0)
                f = (((abs(c) << 1) | (1 if c < 0 else 0)) << 64) | rng.getrandbits(64)
                code = (code << W) | f
            row.append(f'({ln}, {code})')
        rows.append('[' + ', '.join(row) + ']')
    return f'({name} {W} [' + ',\n    '.join(rows) + '])'


def lean_exps(e):
    return '![' + ', '.join(map(str, e)) + ']'


def lean_tree_defs(D, name):
    """Explicit Horner circuits (outer X = var 0, middle Y = var 1, inner k = var 2), one definition per
    X-row; returns (list of 'def' strings, expression for the whole polynomial)."""
    if not D:
        return [], 'p0'
    mx = max(k[0] for k in D)
    defs = []
    for a in range(mx + 1):
        bmax = max([k[1] for k in D if k[0] == a], default=-1)
        row = 'p0'
        for b in reversed(range(bmax + 1)):
            zs = {k[2]: c for k, c in D.items() if k[0] == a and k[1] == b}
            u = 'p0'
            if zs:
                for e in reversed(range(max(zs) + 1)):
                    u = f'(pa (pc ({zs.get(e, 0)})) (pm vk {u}))'
            row = f'(pa {u} (pm vY {row}))'
        defs.append(f'noncomputable def {name}_r{a} : V := {row}')
    whole = 'p0'
    for a in reversed(range(mx + 1)):
        whole = f'(pa {name}_r{a} (pm vX {whole}))'
    return defs, whole


def frac_tree(x, table, name):
    """Explicit-circuit data for a fraction: (defs, Lean `Frac` literal)."""
    D, e = frac_data(x, table)
    defs, whole = lean_tree_defs(D, name)
    defs.append(f'noncomputable def {name} : V := {whole}')
    return defs, f'⟨{name}, {lean_exps(e)}⟩'


def poly_tree(D, name):
    defs, whole = lean_tree_defs(D, name)
    defs.append(f'noncomputable def {name} : V := {whole}')
    return defs


def lean_listz(D):
    """`hornerZ [...]` for {(eX, eY, ek): int}."""
    if not D:
        return '(0 : Circ 3)'
    mx = max(k[0] for k in D)
    rows = []
    for a in range(mx + 1):
        bmax = max([k[1] for k in D if k[0] == a], default=-1)
        row = []
        for b in range(bmax + 1):
            zs = {k[2]: c for k, c in D.items() if k[0] == a and k[1] == b}
            row.append('[' + ', '.join(str(zs.get(e, 0)) for e in range((max(zs) + 1) if zs else 0)) + ']')
        rows.append('[' + ', '.join(row) + ']')
    return '(hornerZ [' + ',\n    '.join(rows) + '])'


def frac_listz(x, table):
    D, e = frac_data(x, table)
    return f'⟨{lean_listz(D)}, {lean_exps(e)}⟩'
