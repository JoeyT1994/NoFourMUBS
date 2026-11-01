#!/usr/bin/env python3
"""Reconstruct and replay the compressed scalar proof, using Python integers.

The repeated-modulus branch uses the generic imaginary identity and only
T_{x|y}'s specialized real part; the specialized T_x identity is unnecessary.
"""
import argparse
import copy
import json
from pathlib import Path

from verify_scalar_boundary import Dag, replay

CD = (
    (6, 111, 798, 2942, 5568, 3096, -7344, -14256, -7776),
    (6, 63, 358, 1266, 2592, 2808, 1296),
)


def horner(x, coefficients):
    result = coefficients[0]
    for c in coefficients[1:]:
        result = result * x + c
    return result


def compact(d, name, lhs, rhs):
    used = set()
    def visit(i):
        if i in used:
            return
        used.add(i)
        node = d.nodes[i]
        if node[0] in ('add', 'mul'):
            visit(node[1]); visit(node[2])
        elif node[0] == 'pow':
            visit(node[1])
    visit(lhs.i); visit(rhs.i)
    indices = sorted(used)
    mapping = {j: i for i, j in enumerate(indices)}
    nodes = []
    for j in indices:
        node = d.nodes[j].copy()
        if node[0] in ('add', 'mul'):
            node[1], node[2] = mapping[node[1]], mapping[node[2]]
        elif node[0] == 'pow':
            node[1] = mapping[node[1]]
        nodes.append(node)
    return dict(id=name, variables=d.names, nodes=nodes,
                lhs=mapping[lhs.i], rhs=mapping[rhs.i])


def reconstruct():
    certs = []
    d = Dag(['z', 'X', 'Y', 'Z'])
    z, X, Y, Z = (d.var(j) for j in range(4))
    t = z + 3
    K = X * Y * Z
    W = X * Y + X * Z + Y * Z - K
    lhs = (t-X)*(t-Y)*(t-Z) - (z+2)*(K+(z-1)*t**3)
    rhs = -t**2 * (X+Y+Z-(9-z**2)) + t * (W-z**2*t**2)
    certs.append(compact(d, 'modulus_at_tau', lhs, rhs))

    d = Dag(['z', 'v'])
    z, v = d.var(0), d.var(1)
    t = z + 3
    Z = 9-z**2-2*v
    m = z**2+2*z-6
    C2 = 2*v**2+m*v+z**2*t
    certs.append(compact(d, 'repeated_W_factor',
                        v**2+2*v*Z-v**2*Z-z**2*t**2, (v-t)*C2))

    d = Dag(['z', 'v'])
    z, v = d.var(0), d.var(1)
    t = z + 3
    m = z**2+2*z-6
    C2 = 2*v**2+m*v+z**2*t
    Q = (t**2-v)*(z*t-(z+2)*v)
    R = (3*v+z**2-9)*Q
    a = t*horner(z,(11,86,156,-108,-324))
    b = horner(z,(3,46,256,588,468))
    E = 6*(z+2)*v-horner(z,(7,62,156,108))
    certs.append(compact(d, 'repeated_imag_reduction',
                        4*R,z*(a+b*v)+E*C2))

    d = Dag(['z', 'v'])
    z, v = d.var(0), d.var(1)
    t = z + 3
    m = z**2+2*z-6
    C2 = 2*v**2+m*v+z**2*t
    a = t*horner(z,(11,86,156,-108,-324))
    b = horner(z,(3,46,256,588,468))
    H = (z**2-6*z-18)*(z**2+2*z-2)*(z**2+6*z+6)
    certs.append(compact(d, 'repeated_imag_norm',
                        (a+b*v)*(2*a-b*m-2*b*v),
                        -24*(z+2)*t**4*H-b**2*C2))

    d = Dag(['z', 'v'])
    z, v = d.var(0), d.var(1)
    t = z+3
    m = z**2+2*z-6
    C2 = 2*v**2+m*v+z**2*t
    C, D = (horner(z, coefficients) for coefficients in CD)
    G = horner(z, (6,43,128,216,216,108))
    certs.append(compact(d, 'repeated_norm_pair',
                        (C+2*v*D)*(C-D*m-2*v*D),
                        48*z**3*(z+2)*t**6*G-2*D**2*C2))

    d = Dag(['z'])
    z = d.var(0)
    H = (z**2-6*z-18)*(z**2+2*z-2)*(z**2+6*z+6)
    G = horner(z, (6,43,128,216,216,108))
    U = horner(z, (-28284,-126868,-269543,-317298,-201258))
    V = horner(z, (4714,-3211,-226040,-527112,-50088,409428))
    certs.append(compact(d, 'bezout_746496', U*H+V*G, d.const(746496)))
    return dict(format='integer_polynomial_dag_v1', certificates=certs)


def bind_mixed_source():
    """Bind only C,D to the original T_{x|y} moment-source readout."""
    import mixed_core as core
    z, v = (core.F(g) for g in core.CTX.gens()[:2])
    _, _, original = core.repeated_definitions(z, v)
    assert len(original) == 2
    for coefficients, expected in zip(CD, original):
        assert not (horner(z, coefficients)-expected).n
    print('PASS scalar C,D readouts match the mixed-moment source')
    tau = z + 3
    Z = 9 - z*z - 2*v
    Q = (tau*tau-v)*(z*tau-(z+2)*v)
    factor = 18*z*(z+2)*tau*(tau-v)*(v-Z)
    _, _, generic = core.generic_definitions(z, v, v)
    assert not (generic[1]+factor*Q).n
    C2, _, _ = core.repeated_definitions(z, v)
    assert not (C2-(2*v*v+(z*z+2*z-6)*v+z*z*tau)).n
    print('PASS repeated imaginary reduction bound to the generic source')


def main():
    if not __debug__:
        raise SystemExit('Run without -O: assertions are mandatory.')
    parser = argparse.ArgumentParser()
    parser.add_argument('--regenerate', action='store_true')
    parser.add_argument('--self-test', action='store_true')
    parser.add_argument('--bind-mixed-source', action='store_true')
    args = parser.parse_args()
    path = Path(__file__).resolve().parents[1]/'certificates'/'scalar_core_certificates.json'
    expected = reconstruct()
    if args.regenerate:
        path.write_text(json.dumps(expected, separators=(',',':'))+'\n')
    saved = json.loads(path.read_text())
    assert saved == expected, 'scalar core certificates differ from defining formulas'
    for certificate in saved['certificates']:
        replay(certificate)
        print('PASS', certificate['id'])
    if args.self_test:
        altered = copy.deepcopy(saved['certificates'][-1])
        altered['nodes'][altered['rhs']] = ['const', 746497]
        try:
            replay(altered)
        except AssertionError:
            print('PASS altered Bezout constant rejected')
        else:
            raise AssertionError('invalid Bezout constant was accepted')
    if args.bind_mixed_source:
        bind_mixed_source()
    print(f"PASS {len(saved['certificates'])} scalar core certificates; {path.stat().st_size} JSON bytes")


if __name__ == '__main__':
    main()
