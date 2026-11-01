#!/usr/bin/env python3
"""Explicit reduction of y-row flatness to two Gram-only polynomial identities."""
import sympy as s
from core_model import *
ALL = dict(ALL)
steps = []

def add(name, target, comb, consequence=None, cancel=None):
    residual = s.expand(target - sum((s.sympify(v) * ALL[k] for k, v in comb.items())))
    if residual != 0:
        raise AssertionError((name, s.factor(residual)))
    row = {'name': name, 'target': str(target), 'cofactors': {k: str(s.sympify(v)) for k, v in comb.items()}}
    if cancel is not None:
        if not s.expand(target - cancel * consequence) == 0:
            raise AssertionError('required exact identity or schema condition failed')
        row['cancel'] = str(cancel)
        row['consequence'] = str(consequence)
        ALL[name] = s.expand(consequence)
    else:
        ALL[name] = s.expand(target)
    steps.append(row)
sigma_base = sig - u - mu * q
D = n * c - 2 * a * k
Pnum = rho * k - delta * A
Pstar = rho * K - Delta * a
Cnum = k * a + delta * rho
Cstar = K * A + Delta * rho
Snum = u * rho + mu * a
F = nu * CP + cm * Nu + sig * cp * CM
Nraw = n * rho ** 2 * (nu * Pstar + Nu * Cnum) + Snum * Pnum * Cstar
R0 = n * nu * K * rho ** 3 + n * Nu * k * a * rho ** 2 + A * rho * (k * K - h) * Snum
Rd = n * Nu * rho ** 3 - K * A * A * Snum
Rb = -n * nu * a * rho ** 2 + k * rho ** 2 * Snum
R = delta * R0 + e * Rd + h * Rb
quot, rem = s.div(s.Poly(s.expand(R), rho), s.Poly(rho * rho - n * rho + a * A, rho))
quot = quot.as_expr()
rem = rem.as_expr()
L0 = s.Poly(rem, rho).nth(0)
L1 = s.Poly(rem, rho).nth(1)
L10 = s.expand(L1).subs(delta, 0)
L11 = s.diff(s.expand(L1), delta)
if L11.has(delta):
    raise AssertionError('required exact identity or schema condition failed')
normal = s.expand(2 * e * L0 + L10 * (e * n + delta * D) + e * L11 * (n * delta + D))
y0 = s.cancel(s.Poly(normal, delta).nth(0) / e)
y1 = s.Poly(normal, delta).nth(1)
if not s.expand(normal - e * y0 - delta * y1) == 0:
    raise AssertionError('required exact identity or schema condition failed')
YINPUTS = {'sigma_definition': sigma_base, 'y_gram_0': y0, 'y_gram_1': y1}
ALL.update(YINPUTS)
ystart = len(steps)
add('y_scaled_cp', n * rho * cp - Pnum, {'cp_definition': rho, 'Q_definition': -delta})
add('y_scaled_CP', n * rho * CP - Pstar, {'CP_definition': rho, 'q_definition': -Delta})
add('y_scaled_cm', n * rho * cm - Cnum, {'cm_definition': rho, 'q_definition': k})
add('y_scaled_CM', n * rho * CM - Cstar, {'CM_definition': rho, 'Q_definition': K})
add('y_scaled_sigma', rho * sig - Snum, {'sigma_definition': rho, 'q_definition': mu})
add('y_denominator_clear', n * n * rho ** 3 * F - Nraw, {'y_scaled_CP': n * nu * rho ** 2, 'y_scaled_cm': n * Nu * rho ** 2, 'y_scaled_sigma': n * rho * cp * n * rho * CM, 'y_scaled_cp': Snum * n * rho * CM, 'y_scaled_CM': Snum * Pnum})
add('y_delta_reduction', delta * Nraw - R, {'delta_square': Rd, 'delta_norm': Rb - delta * Snum * A * rho})
add('y_rho_reduction', R - rem, {'rho_quadratic': quot})
add('y_rho_delta', 2 * delta * rho - n * delta - D, {'rho_definition': delta, 'd_scaled': 1})
add('y_rho_e', 2 * e * rho - e * n - delta * D, {'rho_definition': e, 'd_scaled': delta, 'delta_square': -d})
add('y_normal_form', 2 * e * rem - normal, {'y_rho_e': L10, 'y_rho_delta': e * L11})
add('y_flatness', 2 * e * delta * n * n * rho ** 3 * F, {'y_denominator_clear': 2 * e * delta, 'y_delta_reduction': 2 * e, 'y_rho_reduction': 2 * e, 'y_normal_form': 1, 'y_gram_0': e, 'y_gram_1': delta}, consequence=F, cancel=2 * e * delta * n * n * rho ** 3)
YSTEPS = steps[ystart:]
