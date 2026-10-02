#!/usr/bin/env python3
"""Exact finite part of the order-six 3x3 Hadamard-block classification.

Only integer arithmetic in Z[omega], omega^2+omega+1=0, is used.
The continuous-to-finite reduction is proved in FourierBlockClassification.md.
"""
from itertools import product, permutations
from pathlib import Path
import json

ROOTS = ((1, 0), (0, 1), (-1, -1))
TAO = (
    (0,0,0,0,0,0), (0,0,1,1,2,2), (0,1,0,2,2,1),
    (0,1,2,0,1,2), (0,2,2,1,0,1), (0,2,1,2,1,0),
)


def mul(x, y):
    a, b = x
    c, d = y
    return a*c-b*d, a*d+b*c-b*d


def star(x):
    a, b = x
    return a-b, -b


def gram_is_hadamard(H):
    for i in range(6):
        for j in range(6):
            products = [mul(H[i][k], star(H[j][k])) for k in range(6)]
            value = tuple(sum(z[t] for z in products) for t in range(2))
            if value != (6*int(i == j), 0):
                return False
    return True


def tao_certificate(exponents):
    wanted = [tuple(exponents[i][j] for i in range(6)) for j in range(6)]
    for rest in permutations(range(1, 6)):
        rows = (0,) + rest
        columns = [tuple(TAO[i][j] for i in rows) for j in range(6)]
        if sorted(columns) == sorted(wanted):
            cols = [columns.index(column) for column in wanted]
            assert sorted(cols) == list(range(6))
            assert all(exponents[i][j] == TAO[rows[i]][cols[j]]
                       for i in range(6) for j in range(6))
            return {'rows': list(rows), 'columns': cols,
                    'convention': 'H[i,j] = Tao[rows[i],columns[j]]; zero-based indices'}
    raise AssertionError('No exact Tao permutation certificate')


def run():
    records = []
    for p, q, r, s in product(range(3), repeat=4):
        v, w = (0, p, q), (0, r, s)
        numerator = []
        for a in range(3):
            row = []
            for b in range(3):
                counts = [0, 0, 0]
                for m in range(3):
                    for n in range(3):
                        counts[(a*m+w[m]-m*n+v[n]+n*b) % 3] += 1
                # D=-F diag(w) F* diag(v) F /3.
                row.append((counts[2]-counts[0], counts[2]-counts[1]))
            numerator.append(row)
        bad = [(i, j) for i in range(3) for j in range(3)
               if (numerator[i][j][0]**2 - numerator[i][j][0]*numerator[i][j][1]
                   + numerator[i][j][1]**2) != 9]
        pure_v, pure_w = q == 2*p % 3, s == 2*r % 3
        record = {'exponents_pqrs': [p,q,r,s], 'flat': not bad,
                  'v_Fourier_row': pure_v, 'w_Fourier_row': pure_w,
                  'D_numerators_over_3': numerator}
        if bad:
            assert not pure_v and not pure_w
            record['first_nonflat_entry'] = list(bad[0])
            record['branch'] = 'rejected'
        else:
            assert all(x % 3 == 0 for row in numerator for z in row for x in z)
            D = [[tuple(x//3 for x in z) for z in row] for row in numerator]
            H = [[ROOTS[a*b % 3] for b in range(3)]
                 + [ROOTS[(v[a]+a*b) % 3] for b in range(3)] for a in range(3)]
            H += [[ROOTS[(a*b+w[b]) % 3] for b in range(3)] + D[a]
                  for a in range(3)]
            assert gram_is_hadamard(H)
            record['exact_Hadamard_Gram'] = True
            if pure_v or pure_w:
                record['branch'] = 'Fourier_or_transpose'
            else:
                assert all(z in ROOTS for row in H for z in row)
                exponents = [[ROOTS.index(z) for z in row] for row in H]
                record['branch'] = 'Tao'
                record['Tao_certificate'] = tao_certificate(exponents)
        records.append(record)
    counts = {'input': len(records),
              'flat': sum(row['flat'] for row in records),
              'Fourier_or_transpose': sum(row['branch'] == 'Fourier_or_transpose' for row in records),
              'Tao': sum(row['branch'] == 'Tao' for row in records),
              'rejected': sum(row['branch'] == 'rejected' for row in records)}
    assert counts == {'input':81, 'flat':63, 'Fourier_or_transpose':45, 'Tao':18, 'rejected':18}
    return {'status':'PASS', 'arithmetic':'exact integer Eisenstein arithmetic',
            'scope':'finite mixed branch of the structural classification; no MUB block-forcing theorem',
            'counts':counts, 'Tao_exponent_matrix':TAO, 'records':records}


if __name__ == '__main__':
    result = run()
    path = Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps({'status':result['status'], 'counts':result['counts'], 'receipt':str(path)}, indent=2))
