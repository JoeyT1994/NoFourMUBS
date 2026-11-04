#!/usr/bin/env python3
"""Generate small exact cofactor certificates downstream of Gram identities I--III."""
import json
from pathlib import Path
import sympy as s
ROOT = Path(__file__).resolve().parent
NAMES = 'n m k K a A b B c C e h delta Delta d db rho q Q cp CP cm CM mu Mu nu Nu sig Sig u U'.split()
V = s.symbols(' '.join(NAMES))
env = dict(zip(NAMES, V))
globals().update(env)
D = n * c - 2 * a * k
Db = n * C - 2 * A * K
inputs = {'hermitian_det': h - n * m + k * K, 'core_I': c * c - 4 * a * b - e, 'core_II': e * A - n * c * k + a * k * k + n * n * b, 'core_III': e * C - c * (n * m + k * K) + 2 * a * k * m + 2 * b * n * K, 'delta_norm': delta * Delta - h, 'delta_square': delta * delta - e, 'd_original': h * d - D * Delta, 'd_original_star': h * db - Db * delta, 'rho_definition': 2 * rho - n - d, 'q_definition': rho * q - a, 'Q_definition': rho * Q - A, 'cp_definition': n * cp - k + delta * Q, 'CP_definition': n * CP - K + Delta * q, 'cm_definition': n * cm - k * q - delta, 'CM_definition': n * CM - K * Q - Delta, 'sigma_norm': sig * Sig - rho, 'n_definition': n - 1 + mu * Mu, 'm_definition': m - 1 + nu * Nu}
ALL = dict(inputs)
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
add('D_conjugation', h * D - e * Db, {'hermitian_det': D, 'core_III': -n, 'core_II': 2 * K})
add('D_discriminant', D * D - (n * n - 4 * a * A) * e, {'core_I': n * n, 'core_II': 4 * a})
add('d_scaled', h * (delta * d - D), {'d_original': delta, 'delta_norm': D}, consequence=delta * d - D, cancel=h)
add('d_scaled_star', h * (Delta * db - Db), {'d_original_star': Delta, 'delta_norm': Db}, consequence=Delta * db - Db, cancel=h)
add('d_reality', h * delta * (d - db), {'d_scaled': h, 'd_scaled_star': -e, 'D_conjugation': 1, 'delta_norm': delta * db, 'delta_square': -Delta * db}, consequence=d - db, cancel=h * delta)
add('d_discriminant', delta * delta * (d * d - n * n + 4 * a * A), {'d_scaled': delta * d + D, 'D_discriminant': 1, 'delta_square': -(n * n - 4 * a * A)}, consequence=d * d - n * n + 4 * a * A, cancel=delta * delta)
add('rho_quadratic', 4 * (rho * rho - n * rho + a * A), {'rho_definition': 2 * rho - n + d, 'd_discriminant': 1}, consequence=rho * rho - n * rho + a * A, cancel=s.Integer(4))
add('q_norm', rho * (rho * (1 + q * Q) - n), {'rho_quadratic': 1, 'Q_definition': rho * q, 'q_definition': A}, consequence=rho * (1 + q * Q) - n, cancel=rho)
add('mixed_gamma', n * (rho * (cm + q * cp) - c), {'cm_definition': rho, 'cp_definition': rho * q, 'q_definition': 2 * k, 'q_norm': -delta, 'rho_definition': delta, 'd_scaled': 1}, consequence=rho * (cm + q * cp) - c, cancel=n)
add('cross_gram', n * (rho * (cp + cm * Q) - k), {'cp_definition': rho, 'cm_definition': rho * Q, 'q_norm': k}, consequence=rho * (cp + cm * Q) - k, cancel=n)
add('cross_gram_star', n * (rho * (CP + CM * q) - K), {'CP_definition': rho, 'CM_definition': rho * q, 'q_norm': K}, consequence=rho * (CP + CM * q) - K, cancel=n)
add('determinant', n * (rho * (cm - q * cp) - delta), {'cm_definition': rho, 'cp_definition': -rho * q, 'q_norm': delta}, consequence=rho * (cm - q * cp) - delta, cancel=n)
add('beta_product', n * n * (rho * cp * cm - b), {'cp_definition': rho * n * cm, 'cm_definition': rho * (k - delta * Q), 'q_definition': k * k, 'q_norm': -k * delta, 'Q_definition': -e, 'delta_square': -rho * Q, 'd_scaled': k, 'rho_definition': k * delta, 'core_II': -1}, consequence=rho * cp * cm - b, cancel=n * n)
add('second_row_norm', mu * Mu + sig * Sig + q * Q * sig * Sig - 1, {'sigma_norm': 1 + q * Q, 'q_norm': 1, 'n_definition': 1})
add('third_row_core_norm', n * n * (rho * (cp * CP + cm * CM) - m), {'cp_definition': rho * n * CP, 'CP_definition': rho * (k - delta * Q), 'cm_definition': rho * n * CM, 'CM_definition': rho * (k * q + delta), 'delta_norm': rho * (1 + q * Q), 'q_norm': k * K + h, 'hermitian_det': n}, consequence=rho * (cp * CP + cm * CM) - m, cancel=n * n)
add('third_row_norm', nu * Nu + cp * CP * sig * Sig + cm * CM * sig * Sig - 1, {'sigma_norm': cp * CP + cm * CM, 'third_row_core_norm': 1, 'm_definition': 1})
add('matrix_cross', sig * Sig * (cp + cm * Q) - k, {'sigma_norm': cp + cm * Q, 'cross_gram': 1})
add('matrix_cross_star', sig * Sig * (CP + CM * q) - K, {'sigma_norm': CP + CM * q, 'cross_gram_star': 1})
add('matrix_det', sig * Sig * (cm - q * cp) - delta, {'sigma_norm': cm - q * cp, 'determinant': 1})
