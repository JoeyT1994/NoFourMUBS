"""Integer polynomial DAGs for the exact nine-moment implementation."""
import json
from pathlib import Path
import sympy as sp
from audit_scalar import write_integer_certificate
from verify_full_weighted import nine_moments


def build(path):
    xs = sp.symbols('x0 x1 x2')
    ys = sp.symbols('y0 y1 y2')
    s, t = sum(xs), sum(ys)
    S, T = sum(1/x for x in xs), sum(1/y for y in ys)
    r = sum(y/x for x, y in zip(xs, ys))
    q = sum(x/y for x, y in zip(xs, ys))
    u, v = sp.prod(xs), sp.prod(ys)
    pi = sum(xs[i]*ys[j] for i in range(3) for j in range(3) if i != j)
    PI = pi.xreplace({z: 1/z for z in xs+ys})
    moments = nine_moments(s, S, t, T, r, q, u, v, u/v,
                          1/u, 1/v, v/u, pi, PI,
                          u*PI, v*PI, pi/u, pi/v)
    targets = [(moments[a, b], sum(x**a*y**b for x, y in zip(xs, ys)))
               for a, b in sorted(moments)]
    write_integer_certificate(targets, path)
    data = json.loads(Path(path).read_text())
    for entry, (a, b) in zip(data['certificates'], sorted(moments)):
        entry['id'] = 'newton_%d_%d' % (a, b)
        entry['meaning'] = 'Actual nine_moments formula equals the direct Laurent sum.'
    Path(path).write_text(json.dumps(data, separators=(',', ':'))+'\n')
    return len(targets)


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('output', type=Path)
    args = parser.parse_args()
    print('Generated', build(args.output), 'Newton polynomial identities.')
