"""Arithmetic backend for the existing untrusted matched-norm diagnostic.

The original Cubic implementation supplies every basis-product reduction.
Only the order of fraction simplification changes: collect over a common
denominator first, then reduce the six output fractions once each.
This module neither states a new norm formula nor exports a Lean certificate.
"""
import time


def install(Cubic, Quadratic, RF, ctx, checkpoint):
    original_mul = Cubic.__mul__
    zero, one = ctx.constant(0), ctx.constant(1)
    metrics = {'multiplications': 0, 'fallback_common_denominators': 0,
               'output_fraction_reductions': 0}

    def flat(value):
        return tuple(x for q in value.c for x in q.c)

    def common(value):
        saved = getattr(value, '_fraction_free_form', None)
        if saved is not None:
            return saved
        coefficients = flat(value)
        nonzero = [x for x in coefficients if x]
        if not nonzero:
            result = ((zero,) * 6, one)
        elif all(x.d == nonzero[0].d for x in nonzero):
            denominator = nonzero[0].d
            result = (tuple(x.n for x in coefficients), denominator)
        else:
            # The large cached denominators differ only by seed monomials.
            # Inspect that exact condition before taking this inexpensive path.
            cores, shifts = [], []
            for x in nonzero:
                terms = list(x.d.terms())
                shift = tuple(int(min(e[i] for e, _ in terms)) for i in range(4))
                cores.append(x.d // ctx.from_dict({shift: 1}))
                shifts.append(shift)
            if all(p == cores[0] for p in cores):
                shift = tuple(max(e[i] for e in shifts) for i in range(4))
                denominator = cores[0] * ctx.from_dict({shift: 1})
            else:
                metrics['fallback_common_denominators'] += 1
                denominator = one
                for x in nonzero:
                    denominator = (denominator // denominator.gcd(x.d)) * x.d
            numerators = []
            for x in coefficients:
                if not x:
                    numerators.append(zero)
                else:
                    multiplier = denominator // x.d
                    assert multiplier * x.d == denominator
                    numerators.append(x.n * multiplier)
            result = (tuple(numerators), denominator)
        value._fraction_free_form = result
        return result

    def basis_images(parent):
        saved = getattr(parent, '_fraction_free_images', None)
        if saved is not None:
            return saved
        z = parent.element((0, 1, 0))
        w = parent.scalar(Quadratic(0, 1))
        zp, wp = [parent.scalar(1)], [parent.scalar(1)]
        for _ in range(4):
            zp.append(original_mul(zp[-1], z))
        for _ in range(2):
            wp.append(original_mul(wp[-1], w))
        images = {(i, j): flat(original_mul(zp[i], wp[j]))
                  for i in range(5) for j in range(3)}
        parent._fraction_free_images = images
        parent._fraction_free_tables = {}
        return images

    def table(parent, support):
        images = basis_images(parent)
        support = tuple(sorted(support))
        if support in parent._fraction_free_tables:
            return parent._fraction_free_tables[support]
        denominator = one
        distinct = []
        for key in support:
            for x in images[key]:
                if x and not any(x.d == d for d in distinct):
                    distinct.append(x.d)
        for d in distinct:
            denominator = (denominator // denominator.gcd(d)) * d
        cleared = {}
        for key in support:
            row = []
            for x in images[key]:
                multiplier = denominator // x.d
                assert multiplier * x.d == denominator
                row.append(x.n * multiplier)
            cleared[key] = tuple(row)
        result = (denominator, cleared)
        parent._fraction_free_tables[support] = result
        return result

    def multiply(left, other, report=True, *, addend=None):
        right = left.coerce(other)
        if not left or not right:
            return left.parent.scalar(0) if addend is None else left.coerce(addend)
        # Scalar multiplication has no cubic or quadratic reduction to perform.
        if not any(flat(left)[1:]) or not any(flat(right)[1:]):
            result = original_mul(left, right)
            return result if addend is None else result + addend
        started = time.monotonic()
        metrics['multiplications'] += 1
        number = metrics['multiplications']
        a, da = common(left)
        b, db = common(right)
        if report:
            checkpoint('fraction_free_product', multiplication=number,
                       left_terms=[len(x) for x in a], right_terms=[len(x) for x in b])
        raw = {}
        square = left is right
        for i, x in enumerate(a):
            if not x:
                continue
            for j in range(i if square else 0, 6):
                y = b[j]
                if not y:
                    continue
                key = (i // 2 + j // 2, i % 2 + j % 2)
                term = x * y
                if square and i != j:
                    term = 2 * term
                raw[key] = raw.get(key, zero) + term
        raw = {k: v for k, v in raw.items() if v}
        td, cleared = table(left.parent, raw)
        denominator = da * db * td
        out = [zero for _ in range(6)]
        for key, coefficient in raw.items():
            for i, weight in enumerate(cleared[key]):
                if weight:
                    out[i] += coefficient * weight
        if addend is not None:
            extra, extra_denominator = common(left.coerce(addend))
            try:
                multiplier = denominator // extra_denominator
                assert multiplier * extra_denominator == denominator
                factor = one
            except (ValueError, ArithmeticError, AssertionError):
                shared = denominator.gcd(extra_denominator)
                factor = extra_denominator // shared
                multiplier = denominator // shared
            out = [x * factor + y * multiplier for x, y in zip(out, extra)]
            denominator *= factor
        if report:
            checkpoint('fraction_free_collect', multiplication=number,
                       numerator_terms=[len(x) for x in out],
                       denominator_terms=len(denominator))
        reduced = []
        for i, numerator in enumerate(out):
            reduced.append(RF(numerator, denominator))
            metrics['output_fraction_reductions'] += 1
            if report:
                checkpoint('fraction_free_reduce', multiplication=number,
                           output_coefficient=i,
                           output_size=reduced[-1].stats(),
                           product_seconds=time.monotonic()-started)
        return left.parent.element([Quadratic(*reduced[i:i+2]) for i in (0, 2, 4)])

    def validate(parent):
        # This checks the changed arithmetic against the existing implementation
        # on both a square and a mixed product, with all six basis coordinates.
        a, b, c, d = ctx.gens()
        u = parent.element((Quadratic(RF(1+a), RF(b)),
                            Quadratic(RF(c), RF(1)), Quadratic(RF(d), RF(a))))
        v = parent.element((Quadratic(RF(b), RF(1+c)),
                            Quadratic(RF(d), RF(1+a)), Quadratic(RF(1), RF(c))))
        for x, y in ((u, u), (u, v)):
            old, new = flat(original_mul(x, y)), flat(multiply(x, y, report=False))
            assert all(p.n == q.n and p.d == q.d for p, q in zip(old, new))
        old = flat(original_mul(u, v) + u)
        new = flat(multiply(u, v, report=False, addend=u))
        assert all(p.n == q.n and p.d == q.d for p, q in zip(old, new))
        checkpoint('fraction_free_backend_validated',
                   validation='Two exact products and one fused multiply-add match the original arithmetic',
                   backend_metrics=metrics.copy())

    def activate(parent):
        validate(parent)
        Cubic.__mul__ = multiply
        Cubic.__rmul__ = multiply

    activate.mul_add = lambda a, b, c: multiply(a, b, addend=c)
    return activate, metrics
