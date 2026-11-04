#!/usr/bin/env python3
"""Independent exact acceptance checker for the Step 1 certificate package.

Arithmetic uses Python integers and fractions.Fraction only. JSON parsing,
path handling and timing use the standard library. No CAS, float, executable
certificate data, external files, or generation modules are imported.

Expressions: a rational string, a variable/definition name, or
['add', ...], ['mul', ...], ['neg', e], ['pow', e, nonnegative_integer_string].
Polynomial identities are checked by sparse rational coefficient equality.
All failures raise exceptions (also when invoked with python -O).
"""

from fractions import Fraction
from pathlib import Path
from itertools import permutations, product
from collections import Counter
import argparse
import hashlib
import json
import sys
import time


def require(ok, message):
    if not ok:
        raise ValueError(message)


def no_numeric_json(value, path='root'):
    if isinstance(value, (int, float)) and not isinstance(value, bool):
        raise ValueError('numeric JSON data must be strings: ' + path)
    if isinstance(value, list):
        for i, item in enumerate(value):
            no_numeric_json(item, path + '[' + str(i) + ']')
    if isinstance(value, dict):
        for key, item in value.items():
            no_numeric_json(item, path + '.' + key)


def clean(p):
    return {m: c for m, c in p.items() if c}


class Ring:
    def __init__(self, variables, definitions=None):
        require(len(variables) == len(set(variables)), 'duplicate variables')
        self.variables = list(variables)
        self.n = len(variables)
        self.zero = (0,) * self.n
        self.definitions = definitions or {}
        require(not set(variables) & set(self.definitions), 'definition shadows variable')
        self.cache = {}
        self.active = set()

    def const(self, q):
        q = Fraction(q)
        return {self.zero: q} if q else {}

    def add(self, *ps):
        result = {}
        for p in ps:
            for m, c in p.items():
                result[m] = result.get(m, Fraction(0)) + c
        return clean(result)

    def scale(self, p, c):
        return clean({m: c * a for m, a in p.items()})

    def mul(self, a, b):
        result = {}
        for m, c in a.items():
            for n, d in b.items():
                mn = tuple(x + y for x, y in zip(m, n))
                result[mn] = result.get(mn, Fraction(0)) + c * d
        return clean(result)

    def pow(self, p, n):
        require(n >= 0, 'negative polynomial power')
        out = self.const(1)
        while n:
            if n % 2:
                out = self.mul(out, p)
            n //= 2
            if n:
                p = self.mul(p, p)
        return out

    def expr(self, e):
        if isinstance(e, str):
            if e in self.variables:
                i = self.variables.index(e)
                return {tuple(int(j == i) for j in range(self.n)): Fraction(1)}
            if e in self.definitions:
                if e not in self.cache:
                    require(e not in self.active, 'cyclic definition: ' + e)
                    self.active.add(e)
                    self.cache[e] = self.expr(self.definitions[e])
                    self.active.remove(e)
                return self.cache[e]
            return self.const(Fraction(e))
        require(isinstance(e, list) and len(e) >= 1, 'malformed expression')
        op, args = e[0], e[1:]
        if op == 'add':
            return self.add(*(self.expr(a) for a in args))
        if op == 'mul':
            out = self.const(1)
            for a in args:
                out = self.mul(out, self.expr(a))
            return out
        if op == 'neg':
            require(len(args) == 1, 'neg arity')
            return self.scale(self.expr(args[0]), Fraction(-1))
        if op == 'pow':
            require(len(args) == 2 and isinstance(args[1], str), 'pow arity')
            return self.pow(self.expr(args[0]), int(args[1]))
        raise ValueError('unknown expression operator: ' + str(op))

    def derivative(self, p, variable):
        i = self.variables.index(variable)
        result = {}
        for m, c in p.items():
            if m[i]:
                n = list(m)
                n[i] -= 1
                result[tuple(n)] = c * m[i]
        return result

    def subst(self, p, replacements):
        values = [replacements.get(v, self.expr(v)) for v in self.variables]
        result = {}
        for m, c in p.items():
            term = self.const(c)
            for val, exp in zip(values, m):
                if exp:
                    term = self.mul(term, self.pow(val, exp))
            result = self.add(result, term)
        return result

    def eval(self, p, values):
        vals = [Fraction(values[v]) for v in self.variables]
        out = Fraction(0)
        for m, c in p.items():
            term = c
            for a, n in zip(vals, m):
                term *= a ** n
            out += term
        return out


def binomial(n, k):
    if k < 0 or k > n:
        return 0
    a = 1
    for j in range(1, k + 1):
        a = a * (n - j + 1) // j
    return a


def check_polynomial_bundle(data):
    ring = Ring(data['variables'], data.get('definitions', {}))
    count = 0
    names = []
    for name in ring.definitions:
        ring.expr(name)  # Check unused definitions too.
    for item in data.get('identities', []):
        require(ring.expr(item['lhs']) == ring.expr(item['rhs']),
                'polynomial identity failed: ' + item['name'])
        count += 1
        names.append(item['name'])
    for item in data.get('derivatives', []):
        p = ring.expr(item['of'])
        order = int(item.get('order', '1'))
        require(order >= 0, 'negative derivative order')
        for _ in range(order):
            p = ring.derivative(p, item['variable'])
        require(p == ring.expr(item['equals']), 'derivative failed: ' + item['name'])
        count += 1
        names.append(item['name'])
    for item in data.get('interval_covers', []):
        entries = {x['name']: x for x in data.get('positivity', [])}
        selected = [entries[name] for name in item['positivity_names']]
        require(selected, 'empty interval cover')
        require(all(x['variable'] == selected[0]['variable'] and
                    ring.expr(x['polynomial']) == ring.expr(selected[0]['polynomial']) for x in selected),
                'interval cover mixes polynomials')
        intervals = sorted((Fraction(x['lower']),Fraction(x['upper'])) for x in selected)
        lo, hi = Fraction(item['lower']), Fraction(item['upper'])
        require(lo < hi and intervals[0][0] <= lo, 'interval cover misses left endpoint')
        reach = intervals[0][1]
        for a,b in intervals[1:]:
            require(a <= reach, 'gap in interval cover')
            reach = max(reach,b)
        require(reach >= hi, 'interval cover misses right endpoint')
        count += 1
        names.append(item['name'])
    for item in data.get('substitutions', []):
        repl = {v: ring.expr(e) for v, e in item['replacements'].items()}
        require(set(repl) <= set(ring.variables), 'unknown substitution variable')
        actual = ring.subst(ring.expr(item['source']), repl)
        require(actual == ring.expr(item['result']), 'substitution failed: ' + item['name'])
        count += 1
        names.append(item['name'])
    for item in data.get('evaluations', []):
        result = ring.eval(ring.expr(item['polynomial']), item['at'])
        require(result == Fraction(item['equals']), 'evaluation failed: ' + item['name'])
        count += 1
        names.append(item['name'])
    for item in data.get('orthant_nonnegative', []):
        p = ring.expr(item['polynomial'])
        allowed = set(item['variables'])
        require(allowed <= set(ring.variables), 'unknown orthant variable')
        require(all(c >= 0 for c in p.values()), 'negative orthant coefficient')
        require(all(all(k == 0 for v,k in zip(ring.variables,m) if v not in allowed) for m in p),
                'orthant polynomial uses an unrestricted variable')
        count += 1
        names.append(item['name'])
    for item in data.get('positivity', []):
        a, b = Fraction(item['lower']), Fraction(item['upper'])
        coeffs = list(map(Fraction, item['coefficients']))
        lower = Fraction(item['lower_bound'])
        require(a < b and lower > 0 and coeffs, 'invalid Bernstein claim')
        require(all(c >= lower for c in coeffs), 'Bernstein coefficient bound')
        variable = item['variable']
        p = ring.expr(item['polynomial'])
        index = ring.variables.index(variable)
        require(all(all(e == 0 for j, e in enumerate(m) if j != index) for m in p),
                'Bernstein polynomial must be univariate')
        t = ring.expr(variable)
        affine = ring.add(ring.const(a), ring.scale(t, b - a))
        lhs = ring.subst(p, {variable: affine})
        omt = ring.add(ring.const(1), ring.scale(t, -1))
        rhs = {}
        n = len(coeffs) - 1
        for i, c in enumerate(coeffs):
            rhs = ring.add(rhs, ring.scale(ring.mul(ring.pow(t, i), ring.pow(omt, n-i)),
                                            c * binomial(n, i)))
        require(lhs == rhs, 'Bernstein identity failed: ' + item['name'])
        count += 1
        names.append(item['name'])
    require(count > 0, 'empty polynomial bundle')
    require(len(names) == len(set(names)), 'duplicate claim names')
    max_degree = max((sum(m) for p in ring.cache.values() for m in p), default=0)
    max_terms = max(map(len, ring.cache.values()), default=0)
    return count, {'max_definition_degree': str(max_degree), 'max_definition_terms': str(max_terms)}


def determinant(matrix):
    a = [list(map(Fraction, row)) for row in matrix]
    n = len(a)
    require(all(len(row) == n for row in a), 'determinant requires square matrix')
    out = Fraction(1)
    for i in range(n):
        pivot = next((j for j in range(i, n) if a[j][i]), None)
        if pivot is None:
            return Fraction(0)
        if pivot != i:
            a[i], a[pivot] = a[pivot], a[i]
            out = -out
        d = a[i][i]
        out *= d
        for j in range(i+1, n):
            ratio = a[j][i] / d
            for k in range(i+1, n):
                a[j][k] -= ratio * a[i][k]
    return out


def check_algebraic_bundle(data):
    count = 0
    for item in data['isolations']:
        coeffs = list(map(Fraction, item['coefficients']))
        lo, hi = Fraction(item['lower']), Fraction(item['upper'])
        require(lo < hi, 'algebraic interval ordering')
        def ev(x):
            val = Fraction(0)
            for c in reversed(coeffs):
                val = val * x + c
            return val
        # Degree at most two: the affine derivative is bounded by its two
        # endpoints, so root uniqueness requires no root-counting oracle.
        require(2 <= len(coeffs) <= 3, 'linear/quadratic isolation expected')
        quad = coeffs[2] if len(coeffs) == 3 else Fraction(0)
        d1, d2 = coeffs[1]+2*quad*lo, coeffs[1]+2*quad*hi
        sign = item.get('derivative_sign', 'positive')
        if sign == 'positive':
            require(min(d1,d2) > 0 and ev(lo) < 0 < ev(hi), 'increasing isolation failed')
        elif sign == 'negative':
            require(max(d1,d2) < 0 and ev(lo) > 0 > ev(hi), 'decreasing isolation failed')
        else:
            raise ValueError('unknown derivative sign')
        require(str(ev(lo)) == item['value_lower'] and str(ev(hi)) == item['value_upper'],
                'incorrect endpoint evaluation')
        count += 1
    for item in data.get('rational_inequalities', []):
        lo, hi = Fraction(item['lhs']), Fraction(item['rhs'])
        require(lo < hi if item['relation'] == '<' else lo <= hi if item['relation'] == '<=' else False,
                'rational inequality failed: ' + item['name'])
        count += 1
    return count, {}


# Endpoint and Laurent checks are defined below; they do not import the supplied
# reference verifier or trust a pre-expanded Fourier file.


def structural_laurent():
    ring = Ring(['a','b','c','d'])
    one = ring.const(1)
    a,b,c,d = (ring.expr(x) for x in ring.variables)
    conj = lambda p: {tuple(-k for k in m): q for m,q in p.items()}
    neg = lambda p: ring.scale(p, -1)
    s = neg(ring.add(one,a,b))
    t = neg(ring.add(one,c,d))
    r = neg(ring.add(one,ring.mul(c,conj(a)),ring.mul(d,conj(b))))
    X,Y,Z = [ring.mul(p,conj(p)) for p in (s,t,r)]
    p = ring.add(X,Y,Z)
    j0 = ring.mul(ring.mul(s,r),conj(t))
    J = ring.add(j0,conj(j0))
    W = ring.add(ring.mul(X,Y),ring.mul(X,Z),ring.mul(Y,Z),
                 neg(ring.mul(ring.mul(X,Y),Z)))
    g = ring.add(ring.const(27),ring.scale(p,-3),J)
    eta = ring.add(ring.const(9),neg(p),J)
    chi = ring.add(W,neg(ring.mul(ring.add(p,ring.const(-9)),ring.add(p,ring.const(-18)))),
                   ring.mul(ring.add(p,ring.const(-15)),J))
    R = ring.add(ring.scale(ring.mul(ring.mul(g,g),eta),4),neg(ring.mul(chi,chi)))
    return ring,R,dict(X=X,Y=Y,Z=Z,p=p,J=J,W=W,g=g,eta=eta,chi=chi)


def transform_laurent(p, matrix):
    result = {}
    for m,c in p.items():
        k = tuple(sum(m[i]*matrix[i][j] for i in range(4)) for j in range(4))
        result[k] = result.get(k,Fraction(0))+c
    return clean(result)


def normalized_compact(ring):
    U = {(-1,-1,0,0): Fraction(1),(1,0,0,0):Fraction(1),(0,1,0,0):Fraction(1)}
    V = {(0,0,-1,-1): Fraction(1),(0,0,1,0):Fraction(1),(0,0,0,1):Fraction(1)}
    conj = lambda p: {tuple(-k for k in m): q for m,q in p.items()}
    A,B = ring.add(U,V),ring.add(U,ring.scale(V,-1))
    u,v = ring.mul(A,conj(A)),ring.mul(B,conj(B))
    ab2 = ring.mul(A,ring.mul(B,B))
    w = ring.add(ab2,conj(ab2))
    g,eta = ring.add(ring.scale(v,2),ring.scale(u,-3)),ring.add(v,ring.scale(u,-2))
    chi = ring.add(ring.scale(ring.mul(ring.add(ring.scale(u,3),ring.scale(v,-1)),
                                      ring.add(v,ring.scale(u,-1),ring.const(12))),Fraction(1,2)),
                   ring.scale(w,-1))
    return dict(g=g,eta=eta,chi=chi)


def decode_sparse(rows, dimension):
    result = {}
    for row in rows:
        require(len(row) == 2 and len(row[1]) == dimension, 'malformed sparse term')
        c,m = Fraction(row[0]),tuple(map(int,row[1]))
        require(c != 0 and m not in result, 'zero or duplicate sparse term')
        result[m] = c
    return result


def field_add(a,b):
    return a[0]+b[0],a[1]+b[1]


def field_mul(a,b):
    # T^2 = -15. The embedding T=i sqrt(15) is fixed on paper.
    return a[0]*b[0]-15*a[1]*b[1],a[0]*b[1]+a[1]*b[0]


def field_pow(q,n):
    require(n>=0, 'nonnegative field power')
    out = Fraction(1),Fraction(0)
    while n:
        if n % 2:
            out = field_mul(out,q)
        n //= 2
        if n:
            q = field_mul(q,q)
    return out


def field_eval(p, w, powers, indices=()):
    result = Fraction(0),Fraction(0)
    for m,c in p.items():
        for i in indices:
            c *= m[i]
        if not c:
            continue
        exp = sum(m[i]*w[i] for i in range(4))
        require(exp in powers, 'missing certified field power')
        a,b = powers[exp]
        result = field_add(result,(c*a,c*b))
    return result


def all_seed_maps():
    zero = (0,0,0,0)
    table = [[zero,zero,zero], [zero,(1,0,0,0),(0,1,0,0)],
             [zero,(0,0,1,0),(0,0,0,1)]]
    maps = []
    for rp,cp,tr,cj in product(permutations(range(3)),permutations(range(3)),range(2),range(2)):
        e = [[table[rp[i]][cp[j]] for j in range(3)] for i in range(3)]
        if tr:
            e = [list(row) for row in zip(*e)]
        sign = 1-2*cj
        matrix = tuple(tuple(sign*(e[i][j][k]+e[0][0][k]-e[i][0][k]-e[0][j][k])
                             for k in range(4)) for i,j in ((1,1),(1,2),(2,1),(2,2)))
        maps.append((rp,cp,tr,cj,matrix))
    return maps


def check_endpoint_bundle(data):
    require(data['field_modulus'] == 'T^2+15' and
            data['field_embedding'] == 'T=i*sqrt(15), positive sqrt(15)',
            'endpoint field specification does not match checker arithmetic')
    ring,R,parts = structural_laurent()
    require(len(R) == int(data['laurent_term_count']), 'R term count')
    require(R == {tuple(-i for i in m):c for m,c in R.items()}, 'R reality')
    cover = tuple(tuple(map(int,row)) for row in data['covering_matrix'])
    expected_cover = ((-1,-1,-1,0),(0,-1,-1,-1),(-1,0,-1,-1),(-1,-1,0,-1))
    require(cover == expected_cover and determinant(cover) == 3, 'covering matrix')
    compact = normalized_compact(ring)
    count = 2
    for name in ('g','eta','chi'):
        supplied = decode_sparse(data['compact_parts'][name],4)
        require(supplied == compact[name] == transform_laurent(parts[name],cover),
                'structural-to-compact identity: '+name)
        count += 1
    powers = {}
    q = Fraction(1,4),Fraction(1,4)
    qb = Fraction(1,4),Fraction(-1,4)
    require(field_mul(q,qb) == (1,0), 'unit algebraic q')
    for item in data['field_powers']:
        k = int(item['exponent'])
        require(k not in powers, 'duplicate field power')
        pair = tuple(map(Fraction,item['value']))
        require(pair == field_pow(q if k>=0 else qb,abs(k)), 'algebraic field power')
        powers[k] = pair
        count += 1
    seed = tuple(map(int,data['base_seed']))
    require(seed == (1,2,-1,-2), 'base seed exponent vector')
    for name,expected in data['parts_at_base'].items():
        require(field_eval(parts[name],seed,powers) == tuple(map(Fraction,expected)),
                'base endpoint part '+name)
        count += 1
    regenerated = all_seed_maps()
    require(len(data['maps']) == len(regenerated) == 144, 'seed map count')
    require(len({x[-1] for x in regenerated}) == 144, 'seed map distinctness')
    orbit_counts = Counter()
    for supplied,(rp,cp,tr,cj,matrix) in zip(data['maps'],regenerated):
        require(tuple(map(int,supplied['row_permutation'])) == rp and
                tuple(map(int,supplied['column_permutation'])) == cp and
                int(supplied['transpose']) == tr and int(supplied['conjugate']) == cj,
                'map operation order')
        require(tuple(tuple(map(int,row)) for row in supplied['matrix']) == matrix,
                'seed map matrix')
        require(determinant(matrix) == Fraction(supplied['determinant']) and
                abs(Fraction(supplied['determinant'])) == 1, 'map unimodularity')
        require(transform_laurent(R,matrix) == R, 'global seed invariance')
        orbit_counts[tuple(sum(row[i]*seed[i] for i in range(4)) for row in matrix)] += 1
        count += 2
    require(len(orbit_counts) == 18 and set(orbit_counts.values()) == {8}, 'orbit size')
    orbit = set()
    exact_coordinates = set()
    expected_value = Fraction(1594323,4096),Fraction(0)
    for item in data['orbit']:
        w = tuple(map(int,item['exponents']))
        require(w in orbit_counts and w not in orbit, 'orbit member')
        orbit.add(w)
        coords = tuple(tuple(map(Fraction,pair)) for pair in item['coordinates'])
        require(coords == tuple(powers[i] for i in w), 'orbit coordinate')
        exact_coordinates.add(coords)
        require(int(item['multiplicity']) == orbit_counts[w], 'orbit multiplicity')
        require(field_eval(R,w,powers) == tuple(map(Fraction,item['value'])) == expected_value,
                'orbit value')
        require(len(item['gradient_moments']) == 4, 'gradient dimension')
        for i in range(4):
            require(field_eval(R,w,powers,(i,)) == tuple(map(Fraction,item['gradient_moments'][i])) == (0,0),
                    'orbit stationarity')
        hessian = []
        for i in range(4):
            row = []
            for j in range(4):
                val = field_eval(R,w,powers,(i,j))
                require(val[1] == 0, 'real Hessian')
                row.append(-val[0])
            hessian.append(row)
        require(hessian == [list(map(Fraction,row)) for row in item['hessian']], 'endpoint Hessian')
        for n in range(1,5):
            minor = determinant([row[:n] for row in hessian[:n]])
            require(minor == Fraction(item['sylvester_minors'][n-1]) and (-1)**n*minor>0,
                    'negative-definite endpoint Hessian')
        count += 7
    require(orbit == set(orbit_counts) and len(exact_coordinates) == 18,
            'exact torus orbit distinctness')
    lifts = set()
    encoded_lifts = set()
    for item in data['lifts']:
        e,o = tuple(map(int,item['even'])),tuple(map(int,item['odd']))
        w = tuple(map(int,item['seed']))
        expected = (e[0]-o[1],o[0]-e[2],o[0]-e[1],e[0]-o[2])
        require(sum(e)==0 and sum(o)==0 and w == expected, 'seed inverse formula')
        require((e,o) not in encoded_lifts, 'duplicate lift')
        encoded_lifts.add((e,o)); lifts.add(w)
    all_lifts = {(e,o) for sg in (-1,1)
                 for e in set(permutations((-2*sg,sg,sg)))
                 for o in set(permutations((2*sg,-sg,-sg)))}
    require(encoded_lifts == all_lifts and lifts == orbit, 'complete lift-to-orbit equality')
    count += 3
    return count, {'laurent_terms':str(len(R)), 'seed_maps':'144', 'orbit_size':'18'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--certificate-dir', type=Path, default=Path(__file__).parent/'certificates')
    parser.add_argument('--report', type=Path)
    parser.add_argument('--algebra-only', action='store_true',
                        help='Development audit only: check present bundles without requiring the complete manifest.')
    args = parser.parse_args()
    start = time.monotonic_ns()
    files = sorted(args.certificate_dir.glob('*.json'))
    require(files, 'no certificates found')
    records = []
    manifest_path = args.certificate_dir/'manifest.json'
    require(args.algebra_only or manifest_path.exists(), 'complete certificate manifest is missing')
    expected = {}
    if manifest_path.exists():
        manifest = json.loads(manifest_path.read_text())
        no_numeric_json(manifest)
        expected = {x['file']: x for x in manifest['files']}
        require(set(expected) == {p.name for p in files if p.name != 'manifest.json'},
                'certificate file list differs from manifest')
        for p in files:
            if p.name in expected:
                require(hashlib.sha256(p.read_bytes()).hexdigest() == expected[p.name]['sha256'],
                        'certificate digest mismatch: ' + p.name)
    for path in files:
        if path.name == 'manifest.json':
            continue
        data = json.loads(path.read_text())
        no_numeric_json(data)
        kind = data['kind']
        if kind == 'polynomial_bundle':
            count, stats = check_polynomial_bundle(data)
        elif kind == 'algebraic_bundle':
            count, stats = check_algebraic_bundle(data)
        elif kind == 'endpoint_bundle':
            count, stats = check_endpoint_bundle(data)
        else:
            raise ValueError('unknown certificate kind: ' + kind)
        if path.name in expected:
            require(str(count) == expected[path.name]['claims'] and kind == expected[path.name]['kind'],
                    'certificate claim count or kind differs from manifest: ' + path.name)
        records.append({'file': path.name, 'claims': str(count), 'statistics': stats})
        print('PASS', path.name, ':', count, 'exact claims', flush=True)
    elapsed = time.monotonic_ns()-start
    status = 'PARTIAL_ALGEBRA_PASS' if args.algebra_only else 'PASS'
    report = {'status': status, 'arithmetic': 'Python integers and fractions.Fraction',
              'files': records, 'claim_count': str(sum(int(r['claims']) for r in records)),
              'elapsed_seconds_exact': str(Fraction(elapsed, 10**9))}
    if args.report:
        args.report.write_text(json.dumps(report, indent=2)+'\n')
    print(status+':', len(records), 'certificate files;', report['claim_count'], 'claims')


if __name__ == '__main__':
    main()
