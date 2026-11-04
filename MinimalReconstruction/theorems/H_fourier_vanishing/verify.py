#!/usr/bin/env python3
"""Exact, standard-library replay for Fourier vanishing.

No floating point, numerical tolerances, randomized tests, computer algebra
or unverified simplification oracle is used in an acceptance test.
Run `python3 verify.py`.  `--write-certificates` regenerates the deterministic
integer-cofactor data before checking it. Mathematical imports are identified
in REPORT.md and PROVENANCE.json; this program checks the new finite algebra,
not those already accepted upstream theorems or the complete paper proof.
"""
from __future__ import annotations
import argparse
from collections import Counter
from itertools import combinations, permutations
from pathlib import Path
import hashlib
import json
import sys

ROOT = Path(__file__).resolve().parent
TRIPLES = tuple(combinations(range(6), 3))
PERMS3 = tuple(permutations(range(3)))


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def parity(p):
    return -1 if sum(p[i] > p[j] for i in range(len(p))
                     for j in range(i + 1, len(p))) % 2 else 1


def sign(n):
    return -1 if n % 2 else 1


def complement(J):
    return tuple(k for k in range(6) if k not in J)


def eps(J):
    # Sign of the concatenation (J, J^c), with J increasing and |J|=3.
    return sign(sum(J) - 3)


class Poly:
    """Sparse integer polynomials. A monomial is a sorted tuple of variable IDs."""
    __slots__ = ('terms',)

    def __init__(self, value=0):
        if isinstance(value, Poly):
            self.terms = value.terms
        elif isinstance(value, int):
            self.terms = {(): value} if value else {}
        else:
            self.terms = {tuple(m): int(c) for m, c in value.items() if c}

    @staticmethod
    def variable(i):
        return Poly({(i,): 1})

    def __add__(self, other):
        other = Poly(other)
        out = dict(self.terms)
        for m, c in other.terms.items():
            value = out.get(m, 0) + c
            if value:
                out[m] = value
            else:
                out.pop(m, None)
        return Poly(out)

    __radd__ = __add__

    def __neg__(self):
        return Poly({m: -c for m, c in self.terms.items()})

    def __sub__(self, other):
        return self + (-Poly(other))

    def __rsub__(self, other):
        return Poly(other) - self

    def __mul__(self, other):
        other = Poly(other)
        out = {}
        for m, c in self.terms.items():
            for n, d in other.terms.items():
                key = tuple(sorted(m + n))
                out[key] = out.get(key, 0) + c * d
        return Poly(out)

    __rmul__ = __mul__

    def __pow__(self, n):
        require(isinstance(n, int) and n >= 0, 'Invalid polynomial power')
        out, base = Poly(1), self
        while n:
            if n & 1:
                out = out * base
            base = base * base
            n //= 2
        return out

    def __bool__(self):
        return bool(self.terms)

    def __eq__(self, other):
        return self.terms == Poly(other).terms

    def encode(self):
        return [[c, list(m)] for m, c in sorted(self.terms.items())]

    @staticmethod
    def decode(data):
        out = {}
        for coefficient, monomial in data:
            require(type(coefficient) is int, 'Noninteger coefficient')
            require(all(type(i) is int and i >= 0 for i in monomial),
                    'Invalid monomial')
            require(monomial == sorted(monomial), 'Unsorted monomial')
            key = tuple(monomial)
            require(key not in out, 'Duplicate monomial')
            out[key] = coefficient
        return Poly(out)


def matrix(n, m, offset=0):
    return [[Poly.variable(offset + m*i + j) for j in range(m)] for i in range(n)]


def prod(items):
    out = Poly(1)
    for x in items:
        out = out * x
    return out


def det(A):
    n = len(A)
    require(all(len(row) == n for row in A), 'Nonsquare determinant')
    return sum((parity(p) * prod(A[i][p[i]] for i in range(n))
                for p in permutations(range(n))), Poly())


def perm(A):
    n = len(A)
    return sum((prod(A[i][p[i]] for i in range(n))
                for p in permutations(range(n))), Poly())


def minor(A, I, J):
    return det([[A[i][j] for j in J] for i in I])


def test_zero(p, label):
    require(not p, f'{label}: nonzero residual with {len(p.terms)} monomials')


def make_certificate():
    A, C = matrix(3, 6), matrix(3, 6, 18)
    kappa = Poly.variable(36)
    relations = []
    for J in TRIPLES:
        p = minor(A, range(3), J) - kappa * eps(J) * minor(C, range(3), complement(J))
        relations.append({'triple': list(J), 'polynomial': p.encode()})
    cofactor_identities = []
    for pivot in TRIPLES:
        for r in range(3):
            for s in range(3):
                terms = []
                for t, jt in enumerate(pivot):
                    L = tuple(j for j in pivot if j != jt)
                    K = complement(L)
                    for pos, k in enumerate(K):
                        J = tuple(j for j in K if j != k)
                        coefficient = sign(t + sum(L) + 1 + pos)
                        terms.append({
                            'relation_triple': list(J),
                            'cofactor': (coefficient * C[s][jt] * A[r][k]).encode()
                        })
                cofactor_identities.append({
                    'pivot': list(pivot), 'row': r, 'column': s,
                    'cofactors': terms
                })
    return {
        'format': 'integer-monomial-cofactors-v1',
        'variables': [f'A_{r}{j}' for r in range(3) for j in range(6)]
                     + [f'C_{s}{j}' for s in range(3) for j in range(6)] + ['kappa'],
        'relations': relations,
        'lhs_definition': 'kappa*det(C[:,pivot])*sum_k A[row,k]*C[column,k]',
        'identities': cofactor_identities,
        'cofactor_count': sum(len(q['cofactors']) for q in cofactor_identities),
    }


def check_phase_square_identity():
    X = matrix(3, 3)
    # P det(entrywise reciprocal X) is a polynomial: no division is used.
    reciprocal_numerator = sum((
        parity(p) * prod(X[i][j] for i in range(3) for j in range(3) if j != p[i])
        for p in PERMS3), Poly())
    test_zero(det([[x*x for x in row] for row in X]) - perm(X)*det(X)
              + 2*reciprocal_numerator, '3x3 entrywise-square determinant')
    print('PASS  3x3 determinant/permanent/reciprocal polynomial identity')


def check_cauchy_binet():
    A, B = matrix(3, 6), matrix(6, 3, 18)
    AB = [[sum((A[i][k]*B[k][j] for k in range(6)), Poly())
           for j in range(3)] for i in range(3)]
    rhs = sum((minor(A, range(3), J)*minor(B, J, range(3)) for J in TRIPLES), Poly())
    test_zero(det(AB)-rhs, 'Cauchy-Binet 3x6x3')
    print('PASS  universal Cauchy-Binet identity (3 x 6 x 3)')


def check_complementary_laplace():
    H = matrix(6, 6)
    minors = {(I, J): minor(H, I, J) for I in TRIPLES for J in TRIPLES}
    detH = det(H)
    count = 0
    for I in TRIPLES:
        for K in TRIPLES:
            rhs = sum((eps(K)*eps(J)*minors[I,J]*minors[complement(K),complement(J)]
                       for J in TRIPLES), Poly())
            test_zero(rhs - (detH if I == K else 0), f'Laplace I={I} K={K}')
            count += 1
    print(f'PASS  {count} complementary Laplace identities for the third compound inverse')


def check_hodge_certificate(data):
    require(data == make_certificate(), 'Certificate is not the canonical target certificate')
    A, C = matrix(3, 6), matrix(3, 6, 18)
    kappa = Poly.variable(36)
    relations = {tuple(q['triple']): Poly.decode(q['polynomial']) for q in data['relations']}
    count = 0
    for identity in data['identities']:
        pivot = tuple(identity['pivot'])
        r, s = identity['row'], identity['column']
        lhs = kappa * minor(C, range(3), pivot) * sum((A[r][k]*C[s][k] for k in range(6)), Poly())
        rhs = sum((Poly.decode(q['cofactor'])*relations[tuple(q['relation_triple'])]
                   for q in identity['cofactors']), Poly())
        test_zero(lhs-rhs, f'Hodge cofactor identity {pivot} {r} {s}')
        count += 1
    print(f'PASS  {count} Hodge orthogonality identities; {data["cofactor_count"]} explicit integer cofactors')


def check_exchange_and_moment_coverage():
    # Three Cramer identities, universal over independent entries.
    X = matrix(3, 3)
    y = [Poly.variable(9+j) for j in range(3)]
    replacements = []
    for t in range(3):
        Y = [row[:] for row in X]
        Y[t] = y[:]
        replacements.append(det(Y))
    for j in range(3):
        test_zero(det(X)*y[j] - sum((replacements[t]*X[t][j] for t in range(3)), Poly()),
                  f'Row replacement Cramer identity {j}')
    # All 20 initial triples and all 9 single exchanges are covered exactly.
    count = 0
    for I in TRIPLES:
        Ic = complement(I)
        mixed = {tuple(sorted((i,)+tuple(j for j in Ic if j != k))) for i in I for k in Ic}
        for i in I:
            for k in Ic:
                exponents = tuple(2*int(q == i)-int(q in I)+int(q in Ic)-2*int(q == k)
                                  for q in range(6))
                require(all(e in (-1,1) for e in exponents) and sum(exponents) == 0,
                        'Readout exponents are not balanced plus/minus one')
                require(tuple(q for q,e in enumerate(exponents) if e == 1)
                        == tuple(sorted((i,)+tuple(j for j in Ic if j != k))),
                        'Readout exponent labels disagree')
        covered = mixed | {complement(T) for T in mixed}
        require(len(covered) == 18 and set(TRIPLES)-covered == {I,Ic}, 'Mixed moment coverage')
        for i in I:
            for k in Ic:
                J = tuple(sorted(tuple(r for r in I if r != i)+(k,)))
                Jc = complement(J)
                positive = tuple(sorted((k,)+tuple(r for r in Jc if r != i)))
                require(positive == Ic, 'Exchange fails to supply missing moment')
                require(covered | {positive,complement(positive)} == set(TRIPLES), 'Incomplete coverage')
                count += 1
    # Hodge-sign convention from Jacobi, in all 400 positions.
    for I in TRIPLES:
        for J in TRIPLES:
            require(sign(sum(I)+3)*eps(J) == sign(sum(I)+sum(J)), 'Hodge/Jacobi sign mismatch')
    print('PASS  3 polynomial Cramer identities (single-row exchange existence)')
    print(f'PASS  all 20 row triples and {count} exchanges cover all 20 balanced moments; 400 Hodge signs')


# Z[omega]/(omega^2+omega+1), represented as integer pairs.
def eadd(x,y): return (x[0]+y[0],x[1]+y[1])
def eneg(x): return (-x[0],-x[1])
def emul(x,y): return (x[0]*y[0]-x[1]*y[1],x[0]*y[1]+x[1]*y[0]-x[1]*y[1])
def econj(x): return (x[0]-x[1],-x[1])
def epow(x,n):
    result=(1,0)
    for _ in range(n): result=emul(result,x)
    return result

def eprod(xs):
    result=(1,0)
    for x in xs: result=emul(result,x)
    return result

def esum(xs):
    result=(0,0)
    for x in xs: result=eadd(result,x)
    return result

def etranspose(H): return [list(row) for row in zip(*H)]
def edet(H):
    return esum(emul((parity(p),0),eprod(H[i][p[i]] for i in range(len(H))))
                for p in permutations(range(len(H))))
def eperm(H):
    return esum(eprod(H[i][p[i]] for i in range(len(H))) for p in permutations(range(len(H))))

def fourier_numerators(H):
    return [esum(emul(eprod(H[i][j] for i in I),
                       econj(eprod(H[i][j] for i in complement(I)))) for j in range(6))
            for I in TRIPLES]

def check_hadamard(H,label):
    for i in range(6):
        for j in range(6):
            require(emul(H[i][j],econj(H[i][j])) == (1,0),f'{label}: nonunit entry')
            inner=esum(emul(H[i][k],econj(H[j][k])) for k in range(6))
            require(inner == ((6,0) if i == j else (0,0)),f'{label}: row Gram failure')


def epsi(H):
    return emul(emul(eperm(H),epow(edet(H),2)),econj(eprod(x for row in H for x in row)))


def check_exact_examples():
    omega=(0,1)
    zeta=(1,1) # exp(pi i/3) = 1+omega = -omega^2
    F=[[epow(zeta,(i*j)%6) for j in range(6)] for i in range(6)]
    check_hadamard(F,'F6')
    require(all(x == (0,0) for x in fourier_numerators(F)+fourier_numerators(etranspose(F))),
            'F6 Fourier moment is nonzero')
    exponent_matrix=[
        [0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
        [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
    S=[[epow(omega,x) for x in row] for row in exponent_matrix]
    check_hadamard(S,'S6')
    require(S == etranspose(S), 'Tao representative is not symmetric')
    vals=fourier_numerators(S)
    require(emul(vals[0],econj(vals[0])) == (9,0),'Tao witness magnitude not 3 before division by 6')
    E=[[S[i][j] for j in range(3)] for i in range(3)]
    D=[[S[i][j] for j in range(3,6)] for i in range(3,6)]
    require(epsi(E) != econj(epsi(D)), 'Tao unexpectedly satisfies the complementary-Psi witness')
    print('PASS  F6: exact phase/Gram checks and all 40 vanishing moments in Z[omega]')
    print(f'PASS  Tao: 6*M_012 = {vals[0][0]} + ({vals[0][1]})*omega; |M_012|^2 = 1/4')
    print(f'PASS  Tao: Psi(top-left)={epsi(E)}, conjugate Psi(bottom-right)={econj(epsi(D))}')


def check_scalar_reduction():
    d,db,t,tb,x,y = [Poly.variable(i) for i in range(6)]
    # sigma=+/-1. The norm mismatch is explicitly a multiple of t*tb-1.
    for sigma in (-1,1):
        psi=d*x+2*d*db
        barpsiD=sigma*tb*d*y+2*t*tb*d*db
        residual=psi-barpsiD-d*(x-sigma*tb*y)
        test_zero(residual-(-2*d*db)*(t*tb-1),'Complementary Psi scalar cofactor')
    print('PASS  complementary-Psi to Hodge scalar reduction: both parity signs')


def check_input_hashes():
    path=ROOT/'PROVENANCE.json'
    if not path.exists():
        raise FileNotFoundError('Missing PROVENANCE.json')
    data=json.loads(path.read_text())
    for item in data['inputs']:
        p=ROOT/item['local_path']
        require(hashlib.sha256(p.read_bytes()).hexdigest() == item['sha256'],
                f'Input provenance mismatch: {p}')
    print(f'PASS  {len(data["inputs"])} copied input hashes (provenance only, not proof replay)')


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--write-certificates',action='store_true')
    args=parser.parse_args()
    path=ROOT/'certificates'/'hodge_integer_cofactors.json'
    if args.write_certificates:
        path.parent.mkdir(parents=True,exist_ok=True)
        path.write_text(json.dumps(make_certificate(),separators=(',',':'))+'\n')
    print('FOURIER VANISHING — EXACT NEW-ALGEBRA REPLAY')
    print('Arithmetic: Python integers and sparse Z-polynomials; no floating-point acceptance.')
    check_input_hashes()
    check_phase_square_identity()
    check_cauchy_binet()
    check_complementary_laplace()
    check_scalar_reduction()
    check_hodge_certificate(json.loads(path.read_text()))
    check_exchange_and_moment_coverage()
    check_exact_examples()
    print('ALL EXACT CHECKS PASSED')
    print('Scope: new finite algebra only. The paper deduction and accepted upstream inputs are listed in REPORT.md.')


if __name__ == '__main__':
    try:
        main()
    except Exception as exc:
        print(f'FAIL: {type(exc).__name__}: {exc}',file=sys.stderr)
        sys.exit(1)
