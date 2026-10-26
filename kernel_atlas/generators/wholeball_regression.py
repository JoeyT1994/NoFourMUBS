"""Independent exact regressions for whole-ball tensor signs and ordering."""
from fractions import Fraction as Q
from math import factorial
from wholeball_fourier import polynomial_boxes, equal_columns
from wholeball_matrix import MatrixBox, self_test as matrix_self_test
from wholeball_scalar import self_test as scalar_self_test


def mul(a, b):
    return (a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0])


def self_test():
    matrix_self_test()
    scalar_self_test()
    # Nonsymmetric T also checks that the contraction sums use both indices;
    # the scalar exponential only sees its symmetrization.
    s = [Q(2), Q(-1, 3), Q(4, 5), Q(-7, 2)]
    t = [Q((i+1)*(j+2)*(-1)**(i+j), 7) for i in range(4) for j in range(4)]
    boxes = polynomial_boxes(MatrixBox.exact([s]), MatrixBox.exact([t]))
    for w in ([Q(1), Q(2), Q(-1), Q(3)], [Q(-2, 3), Q(1, 7), Q(4), Q(-1, 2)]):
        linear = sum(a*b for a,b in zip(s,w))
        quadratic = sum(t[4*i+j]*w[i]*w[j] for i in range(4) for j in range(4))
        # Independent power-series recurrence c'_n = i(s+t*x)c_n for
        # exp(i*(s*x+t*x^2/2)), with rational complex pairs.
        coefficients = [(Q(1), Q(0))]
        for n in range(1,5):
            a = mul((Q(0), linear), coefficients[n-1])
            b = mul((Q(0), quadratic), coefficients[n-2]) if n>=2 else (Q(0),Q(0))
            coefficients.append(((a[0]+b[0])/n, (a[1]+b[1])/n))
        for degree, real, imag in ((3, boxes[0], boxes[1]), (4, boxes[2], boxes[3])):
            power = []
            for index in range(4**degree):
                value = Q(1)
                for k in range(degree):
                    value *= w[(index//4**k)%4]
                power.append(value)
            for component, box in enumerate((real,imag)):
                actual = sum(a*b for a,b in zip(box.mid[0],power))
                assert actual == factorial(degree)*coefficients[degree][component]
                assert all(r == 0 for r in box.rad[0])
    from wholeball_shift import grid_seed
    original = dict(theta0=[Q(1,2**65),Q(-3,2**66),Q(2),Q(-4)], r=Q(1,10),
                    Mth=[Q(int(i==j)) for i in range(4) for j in range(4)],
                    U=[Q((i+1)*(j+1),17) for i in range(36) for j in range(4)],
                    P=[Q(i,11) for i in range(36)])
    adjusted, shift = grid_seed(original)
    assert shift is not None and adjusted is not original
    assert all(a+b==c for a,b,c in zip(adjusted['theta0'],shift['offset'],original['theta0']))
    assert adjusted['r']==original['r']+shift['sigma'] and shift['sigma']>0
    assert sum(v*v for v in shift['offset'])<=shift['sigma']**2
    for i in range(36):
        assert adjusted['P'][i]+sum(original['U'][4*i+j]*shift['offset'][j] for j in range(4))==original['P'][i]
    assert grid_seed(adjusted)[1] is None
    # Equal midpoints alone must not merge distinct interval columns.
    columns = MatrixBox([[Q(2),Q(3),Q(2),Q(2)]], [[Q(1),Q(0),Q(1),Q(2)]])
    pick, expand = equal_columns((columns,))
    assert len(pick)==3
    assert expand[0]==expand[2] and expand[0]!=expand[3]
    for table in (columns.mid,columns.rad):
        assert [[row[pick[j]] for j in expand] for row in table]==table
    # An intentionally perturbed tensor must not pass its enclosure gate.
    original = boxes[0]
    shifted = MatrixBox([[v+1 for v in original.mid[0]]], original.rad)
    assert not original.encloses_check(shifted)
    print('whole-ball exact tensor/scalar/matrix regressions passed')


if __name__ == '__main__':
    self_test()
