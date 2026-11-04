#!/usr/bin/env python3
"""Exact independent scalar audit for the compact nonzero-J route.

Requires SymPy. Import ``check()`` to replay without console output.
The weighted-moment identities themselves are checked by the parent
certificate; this module checks their scalar consequences and all poles.
"""
import json
from pathlib import Path
import sympy as sp


def check(certificate_path=None):
    count = 0
    polynomial_targets = []

    def identity(left, right=0):
        nonlocal count
        difference = sp.cancel(left-right)
        assert difference == 0, sp.factor(difference)
        count += 1
        polynomial_targets.append((left, right))

    k, T, K = sp.symbols('k T K')
    h = 1+k*k
    p = 9-4/h
    J = 8*k/h**2
    W = 2*(16-32*h+18*h*h)/h**3
    gplus = 3*k**3-k*k+k+1
    gminus = 3*k**3+k*k+k-1
    Qplus = 3*k*k+2*k+3
    Qminus = 3*k*k-2*k+3
    aplus = 3*k*k+2*k+1
    aminus = 3*k*k-2*k+1
    F = 3*k**3+3*k*k-k+3
    curves = {
        'K0': 4*(9*k*k+1)/h**3,
        'Kplus': (27*k**6+9*k**4+17*k*k+3+8*k*h)/h**3,
        'Kminus': (27*k**6+9*k**4+17*k*k+3-8*k*h)/h**3,
        'Kmin': 16*k*k/h**4,
    }
    u = sp.symbols('u')
    Z_repeated = p-2*u
    identity(h**3*(u*u+2*u*Z_repeated-u*u*Z_repeated-W),
             2*(h*u-2)*(h*u-aplus)*(h*u-aminus))
    f = lambda kk: T**3-p*T*T+(W+kk)*T-kk
    identity(sp.discriminant(f(K), T),
             -4*sp.prod(K-curves[name]
                        for name in ('K0', 'Kplus', 'Kminus')))
    root_pairs = {
        'K0': (2/h, (9*k*k+1)/h),
        'Kplus': (aplus/h, (3*k*k-4*k+3)/h),
        'Kminus': (aminus/h, (3*k*k+4*k+3)/h),
    }
    pole_targets = {
        'K0': 256*(k-1)*(k+1)*(3*k-1)**3*(3*k+1)**3
              *(3*k*k+1)**4/h**12,
        'Kplus': -4096*k*k*(k+1)*(3*k-1)**3*Qplus*gplus**2/h**10,
        'Kminus': -4096*k*k*(k-1)*(3*k+1)**3*Qminus*gminus**2/h**10,
        'Kmin': 256*(3*k*k+1)**4*Qminus*Qplus*gplus**2*gminus**2/h**16,
    }

    def L(x, sign):
        z = -2*(1+sign*k)/h
        return 3*(9-p)+sign*J+(9-x)*z

    for name, (a, b) in root_pairs.items():
        identity(f(curves[name]), (T-a)**2*(T-b))
        pole_product = sp.prod(L(x, sign)
                               for x in (a, a, b)
                               for sign in (1, -1))
        identity(pole_product, pole_targets[name])

    x0 = 4*k*k/h**2
    sy = p-x0
    py = 4/h**2
    identity(f(curves['Kmin']), (T-x0)*(T*T-sy*T+py))
    identity(sy*sy-4*py, (3*k*k+1)**2*Qminus*Qplus/h**4)
    pole_product = 1
    for sign in (1, -1):
        z = -2*(1+sign*k)/h
        u = 3*(9-p)+sign*J+9*z
        pole_product *= (u-z*x0)*(u*u-u*z*sy+z*z*py)
    identity(pole_product, pole_targets['Kmin'])

    # The positive factors have elementary certificates, with no root counts.
    identity(Qplus, 3*(k+sp.Rational(1, 3))**2+sp.Rational(8, 3))
    identity(Qminus, 3*(k-sp.Rational(1, 3))**2+sp.Rational(8, 3))
    identity(aplus, 3*(k+sp.Rational(1, 3))**2+sp.Rational(2, 3))
    identity(aminus, 3*(k-sp.Rational(1, 3))**2+sp.Rational(2, 3))
    identity(gplus, 1+k*(3*(k-sp.Rational(1, 6))**2
                         +sp.Rational(11, 12)))
    identity(F, 3*k**3+3*(k-sp.Rational(1, 6))**2
                +sp.Rational(35, 12))
    identity(sp.diff(gminus, k), 9*k*k+2*k+1)

    # Endpoints and the unique positive cubic root's K value.
    for name in ('K0', 'Kplus'):
        identity(curves[name].subs(k, sp.Rational(1, 3)),
                 sp.Rational(729, 125))
    for name in ('K0', 'Kminus'):
        identity(curves[name].subs(k, 1), 5)
    identity(curves['Kminus']-curves['Kmin'], Qminus*gminus**2/h**4)
    identity(gminus.subs(k, 0), -1)
    identity(gminus.subs(k, 1), 4)
    bound_u = sp.symbols('u')
    G = 9*bound_u**3+5*bound_u*bound_u+3*bound_u-1
    identity(G.subs(bound_u, k*k), -gminus*gminus.subs(k, -k))
    identity(G.subs(bound_u, sp.Rational(1, 5)), -sp.Rational(16, 125))
    identity(G.subs(bound_u, sp.Rational(1, 4)), sp.Rational(13, 64))
    identity((9-4/(1+K)).subs(K, sp.Rational(1, 5)), sp.Rational(17, 3))
    identity((9-4/(1+K)).subs(K, sp.Rational(1, 4)), sp.Rational(29, 5))

    Z = sp.symbols('Z')
    identity(pole_targets['K0'].subs(k, 1), 0)
    # One common weighted whole-strip moment supersedes the separate witnesses.
    # Its four exact values are checked by the parent moment certificate.
    witnesses = {
        'K0': 32*k*k*(3*k**4+2*k*k+3)/h**3,
        'Kplus': -64*k*k*(3*k*k+1)**2/(h**4*aplus),
        'Kminus': -64*k*k*(3*k*k+1)**2/(h**4*aminus),
        'Kmin': -64*k*k*(1+k*k*Z)/(h*(3*k*k+1)),
    }
    # At k=1 the minus side signature is zero, while its denominators are g>0.
    identity(L(T, -1).subs(k, 1), 4)
    if certificate_path is not None:
        write_integer_certificate(polynomial_targets, certificate_path)
    return {
        'identities_checked': count,
        'pole_products': {name: str(v) for name, v in pole_targets.items()},
        'weighted_witnesses': {name: str(v) for name, v in witnesses.items()},
        'status': 'PASS',
    }


def write_integer_certificate(targets, path):
    """Encode denominator-cleared integer identities as explicit arithmetic DAGs.

    This is a neutral interchange format, not an assertion that a Lean module
    was compiled. Every node uses only integer constants, variables, addition,
    multiplication, and natural-number powers, so it translates directly to
    the repository's polynomial identity expression language.
    """
    out = {'format': 'integer_polynomial_dag_v1', 'certificates': []}
    for ordinal, (left, right) in enumerate(targets):
        ln, ld = sp.fraction(sp.together(left))
        rn, rd = sp.fraction(sp.together(right))
        variables = sorted((ln*ld*rn*rd).free_symbols, key=str)
        # A zero factor may hide the symbols of the other expressions.
        variables = sorted(set().union(*(sp.sympify(v).free_symbols
                                        for v in (ln, ld, rn, rd))), key=str)
        positions = {v: i for i, v in enumerate(variables)}
        nodes = []
        memo = {}

        def node(spec):
            key = tuple(spec)
            if key not in memo:
                memo[key] = len(nodes)
                nodes.append(spec)
            return memo[key]

        def encode(expr):
            expr = sp.sympify(expr)
            if expr.is_Integer:
                return node(['const', int(expr)])
            if expr.is_Symbol:
                return node(['var', positions[expr]])
            if expr.is_Add or expr.is_Mul:
                op = 'add' if expr.is_Add else 'mul'
                args = [encode(arg) for arg in expr.args]
                result = args[0]
                for arg in args[1:]:
                    result = node([op, result, arg])
                return result
            if expr.is_Pow and expr.exp.is_Integer and expr.exp >= 0:
                return node(['pow', encode(expr.base), int(expr.exp)])
            raise ValueError(('non-integer-polynomial node', expr))

        lhs = node(['mul', encode(ln), encode(rd)])
        rhs = node(['mul', encode(rn), encode(ld)])
        out['certificates'].append({
            'id': 'scalar_%02d' % ordinal,
            'variables': [str(v) for v in variables],
            'nodes': nodes, 'lhs': lhs, 'rhs': rhs,
        })
    Path(path).write_text(json.dumps(out, separators=(',', ':'))+'\n')


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--certificate')
    options = parser.parse_args()
    result = check(options.certificate)
    print('PASS:', result['identities_checked'], 'exact scalar identities')
