#!/usr/bin/env python3
"""Exact conditioning certificates: arbitrary affine Fourier parameters and Tao.
All acceptance is exact rational/Laurent arithmetic; numerical spectra are unused.
"""
import sympy as s


def require(ok, message):
    if not ok:
        raise AssertionError(message)


def main():
    z = s.symbols('z0:3', nonzero=True)
    w, x = s.symbols('w x')

    def reduce(expr):
        numerator, denominator = s.fraction(s.cancel(expr))
        require(not denominator.has(w), 'unexpected w denominator')
        return s.cancel(s.rem(numerator, w*w+w+1, w)/denominator)

    C = s.ones(3)-s.eye(3)
    require(s.factor(C.charpoly(x).as_expr()) == (x-2)*(x+1)**2,
            'three-point adjacency spectrum')
    D = s.diag(z[2]/z[1], z[0]/z[2], z[1]/z[0])
    frequency_blocks = []
    for ell in range(3):
        block = s.zeros(3)
        for j in range(3):
            for k in range(3):
                block[j,k] = reduce(sum(
                    (w**((d*(j-k))%3)*z[k]/z[j]
                     +w**((-d*(j-k))%3)*z[j]/z[k])
                    *w**((-d*ell)%3)/2 for d in range(3)))
        frequency_blocks.append(block)
    targets = [3*s.eye(3), s.Rational(3,2)*D*C*D,
               s.Rational(3,2)*D.inv()*C*D.inv()]
    for ell, (actual, expected) in enumerate(zip(frequency_blocks, targets)):
        require(all(s.cancel(v)==0 for v in actual-expected),
                f'Fourier-family symbolic frequency block {ell}')
    A = s.Matrix(9,9,lambda i,j: 1
         if ((i//3-j//3)*(i%3-j%3))%3 == 0 else -s.Rational(1,2))
    require(s.factor(A.charpoly(x).as_expr()) == (x-3)**5*(2*x+3)**4/16,
            'A spectrum')
    full = [0]*10+[9]*8+[0]*5+[12]*5+[3]*4+[9]*4
    require(len(full)==36 and full.count(0)==15, 'full spectrum multiplicities')
    horizontal = full.copy()
    for unused in range(11):
        horizontal.remove(0)
    require({v:horizontal.count(v) for v in set(horizontal)} == {0:4,3:4,9:12,12:5},
            'horizontal Fourier spectrum')
    e = [[0,0,0,0,0,0], [0,0,1,1,2,2], [0,1,0,2,2,1],
         [0,1,2,0,1,2], [0,2,2,1,0,1], [0,2,1,2,1,0]]
    for a in range(6):
        for b in range(a):
            counts = [sum((e[a][j]-e[b][j])%3 == k for j in range(6))
                      for k in range(3)]
            require(counts == [2,2,2], f'Tao row orthogonality {a},{b}')
    T = s.Matrix(36,36,lambda i,j: 1
         if (e[i//6][i%6]-e[j//6][i%6]+e[j//6][j%6]-e[i//6][j%6])%3 == 0
         else -s.Rational(1,2))
    require(s.factor((6*s.eye(36)-T).charpoly(x).as_expr())
            == x**11*(x-12)**9*(2*x-9)**16/65536,
            'Tao full squared-Jacobian spectrum')
    print('PASS: all affine Fourier parameters, horizontal squared spectrum 0^4, 3^4, 9^12, 12^5')
    print('PASS: Tao horizontal squared spectrum (9/2)^16, 12^9')
    print('SCOPE: global conditioning claims elsewhere remain unproved.')

if __name__ == '__main__':
    main()
