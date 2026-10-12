"""Exact sparse witness discovery shared by the SOS certificate exporters."""
import time
from fractions import Fraction


def add_scaled(a, b, c):
    for i, v in b.items():
        value = a.get(i, 0) + c * v
        if value:
            a[i] = value
        elif i in a:
            del a[i]


def combination(rows, target, log_every=0):
    """Return y with sum y[i] rows[i] = target, checking that identity exactly."""
    rows = [{i: Fraction(c) for i, c in row.items()} for row in rows]
    target = {i: Fraction(c) for i, c in target.items()}
    pivots, order = {}, []
    start = time.monotonic()
    for index, row in enumerate(rows):
        z, used = dict(row), []
        while z:
            k, c = max(z), z[max(z)]
            if k not in pivots:
                pivots[k] = ({i: v / c for i, v in z.items()}, index, c, used)
                order.append(k)
                break
            used.append((k, c))
            add_scaled(z, pivots[k][0], -c)
        if log_every and index % log_every == 0:
            print(index, 'equations;', len(pivots), 'pivots;',
                  round(time.monotonic() - start, 1), 'seconds', flush=True)
    residual, weights = dict(target), {}
    while residual:
        k, c = max(residual), residual[max(residual)]
        assert k in pivots, ('Target not in the span', k, c)
        weights[k] = weights.get(k, 0) + c
        add_scaled(residual, pivots[k][0], -c)
    coefficients = {}
    for k in reversed(order):
        w = weights.get(k, 0)
        if not w:
            continue
        _, index, divisor, used = pivots[k]
        value = w / divisor
        coefficients[index] = coefficients.get(index, 0) + value
        for earlier, factor in used:
            weights[earlier] = weights.get(earlier, 0) - value * factor
    coefficients = {i: c for i, c in coefficients.items() if c}
    check = {}
    for i, c in coefficients.items():
        add_scaled(check, rows[i], c)
    assert check == target
    return coefficients
