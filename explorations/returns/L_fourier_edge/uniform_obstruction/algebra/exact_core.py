"""Small exact rings for this certificate. Python 3 standard library only.

Q is Q(i,sqrt(2),sqrt(3),sqrt(5)), with the canonical 16-element
multiquadratic basis. LP is its two-variable Laurent polynomial ring.
"""
from fractions import Fraction as F
import ast


class Q:
    __slots__ = ("c",)
    radicands = (-1, 2, 3, 5)

    def __init__(self, value=0):
        if isinstance(value, Q):
            self.c = value.c
        elif isinstance(value, dict):
            self.c = {k: F(v) for k, v in value.items() if v}
        else:
            self.c = {} if not value else {0: F(value)}

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Q) else Q(x)

    def __add__(self, other):
        if isinstance(other, LP):
            return other + self
        other = self.coerce(other)
        out = dict(self.c)
        for k, v in other.c.items():
            out[k] = out.get(k, 0) + v
        return Q(out)

    __radd__ = __add__

    def __neg__(self):
        return Q({k: -v for k, v in self.c.items()})

    def __sub__(self, other):
        if isinstance(other, LP):
            return LP(self) - other
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) + (-self)

    def __mul__(self, other):
        if isinstance(other, LP):
            return other * self
        other = self.coerce(other)
        out = {}
        for a, x in self.c.items():
            for b, y in other.c.items():
                both = a & b
                v = x * y
                for bit, rad in enumerate(self.radicands):
                    if both & (1 << bit):
                        v *= rad
                k = a ^ b
                out[k] = out.get(k, 0) + v
        return Q(out)

    __rmul__ = __mul__

    def __truediv__(self, other):
        other = self.coerce(other)
        if set(other.c) <= {0}:
            q = other.c.get(0, 0)
            if not q:
                raise ZeroDivisionError
            return Q({k: v/q for k, v in self.c.items()})
        return self * other.inverse()

    def inverse(self):
        if not self:
            raise ZeroDivisionError
        # Norm successively through the four quadratic generators.
        value, multiplier = self, Q(1)
        for bit in range(4):
            conjugated = value.flip(bit)
            multiplier = multiplier * conjugated
            value = value * conjugated
        assert set(value.c) == {0}
        return multiplier / value.c[0]

    def __pow__(self, n):
        if n < 0:
            return self.inverse() ** (-n)
        result, base = Q(1), self
        while n:
            if n & 1:
                result *= base
            base *= base
            n >>= 1
        return result

    def flip(self, bit):
        return Q({k: (-v if k & (1 << bit) else v) for k, v in self.c.items()})

    def conj(self):
        return self.flip(0)

    def abs2(self):
        return self * self.conj()

    def __eq__(self, other):
        if isinstance(other, LP):
            return other == self
        return self.c == self.coerce(other).c

    def __bool__(self):
        return bool(self.c)

    def __hash__(self):
        return hash(tuple(sorted(self.c.items())))

    def serial(self):
        return [[k, str(v)] for k, v in sorted(self.c.items())]

    def __repr__(self):
        if not self.c:
            return "0"
        pieces = []
        for k, v in sorted(self.c.items()):
            factors = [str(v)]
            for bit, name in enumerate(("i", "sqrt(2)", "sqrt(3)", "sqrt(5)")):
                if k & (1 << bit):
                    factors.append(name)
            pieces.append("*".join(factors))
        return " + ".join(pieces).replace("+ -", "- ")


I = Q({1: 1})
S2 = Q({2: 1})
S3 = Q({4: 1})
S5 = Q({8: 1})


def parse(expression):
    """Parse only the arithmetic grammar actually used in EXACT_TRIPLE.json."""
    def visit(node):
        if isinstance(node, ast.Constant) and isinstance(node.value, int):
            return Q(node.value)
        if isinstance(node, ast.Name) and node.id == "I":
            return I
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
            return -visit(node.operand)
        if isinstance(node, ast.BinOp):
            a, b = visit(node.left), visit(node.right)
            if isinstance(node.op, ast.Add):
                return a+b
            if isinstance(node.op, ast.Sub):
                return a-b
            if isinstance(node.op, ast.Mult):
                return a*b
            if isinstance(node.op, ast.Div):
                return a/b
        if (isinstance(node, ast.Call) and isinstance(node.func, ast.Name)
                and node.func.id == "sqrt" and len(node.args) == 1
                and isinstance(node.args[0], ast.Constant)):
            return {2: S2, 3: S3, 5: S5, 6: S2*S3}[node.args[0].value]
        raise ValueError("Unexpected input syntax: " + ast.dump(node))
    return visit(ast.parse(expression, mode="eval").body)


class LP:
    __slots__ = ("c",)

    def __init__(self, value=0):
        if isinstance(value, LP):
            self.c = value.c
        elif isinstance(value, dict):
            self.c = {k: Q.coerce(v) for k, v in value.items() if v}
        else:
            value = Q.coerce(value)
            self.c = {(0, 0): value} if value else {}

    @staticmethod
    def coerce(x):
        return x if isinstance(x, LP) else LP(x)

    def __add__(self, other):
        other = self.coerce(other)
        out = dict(self.c)
        for k, v in other.c.items():
            out[k] = out.get(k, Q()) + v
        return LP(out)

    __radd__ = __add__

    def __neg__(self):
        return LP({k: -v for k, v in self.c.items()})

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) + (-self)

    def __mul__(self, other):
        other = self.coerce(other)
        out = {}
        for (a, b), x in self.c.items():
            for (c, d), y in other.c.items():
                k = (a+c, b+d)
                out[k] = out.get(k, Q()) + x*y
        return LP(out)

    __rmul__ = __mul__

    def __pow__(self, n):
        if n < 0:
            assert len(self.c) == 1
            (a, b), x = next(iter(self.c.items()))
            return LP({(a*n, b*n): x**n})
        result, base = LP(1), self
        while n:
            if n & 1:
                result *= base
            base *= base
            n >>= 1
        return result

    def conj(self):
        return LP({(-a, -b): x.conj() for (a, b), x in self.c.items()})

    def abs2(self):
        return self * self.conj()

    def __eq__(self, other):
        return self.c == self.coerce(other).c

    def __bool__(self):
        return bool(self.c)

    def __hash__(self):
        return hash(tuple(sorted(self.c.items())))

    def serial(self):
        return [[a, b, x.serial()] for (a, b), x in sorted(self.c.items())]

    def evaluate(self, z, w):
        return sum((x*z**a*w**b for (a, b), x in self.c.items()), Q())

    def canonical(self):
        """Remove a nonzero monomial factor and make the first coefficient 1."""
        if not self.c:
            return self
        a, b = min(self.c)
        coefficient = self.c[(a, b)]
        return LP({(c-a, d-b): x/coefficient for (c, d), x in self.c.items()})

    def __repr__(self):
        return " + ".join("("+repr(x)+")*z^"+str(a)+"*w^"+str(b)
                          for (a, b), x in sorted(self.c.items())) or "0"


Z = LP({(1, 0): 1})
W = LP({(0, 1): 1})
OMEGA = (-1 + I*S3)/2


def transpose(a):
    return list(map(list, zip(*a)))


def adjoint(a):
    return [[x.conj() for x in row] for row in transpose(a)]


def multiply(a, b):
    return [[sum((a[i][k]*b[k][j] for k in range(len(b))), 0)
             for j in range(len(b[0]))] for i in range(len(a))]


def det3(a):
    return (a[0][0]*(a[1][1]*a[2][2]-a[1][2]*a[2][1])
            -a[0][1]*(a[1][0]*a[2][2]-a[1][2]*a[2][0])
            +a[0][2]*(a[1][0]*a[2][1]-a[1][1]*a[2][0]))


def submatrix(a, rows, cols):
    return [[a[i][j] for j in cols] for i in rows]


def fourier(z, w):
    d = (Q(1), z, w)
    return [[OMEGA**((i%3)*(j%3)) * (d[j%3] if i >= 3 else 1)
             * (-1 if i >= 3 and j >= 3 else 1)
             for j in range(6)] for i in range(6)]


def is_hadamard(a):
    n = len(a)
    return (all(x.abs2() == 1 for row in a for x in row)
            and multiply(a, adjoint(a)) == [[n if i == j else 0
                                           for j in range(n)] for i in range(n)])


def rank(a):
    """Exact Gaussian elimination in the multiquadratic field."""
    a = [[Q.coerce(x) for x in row] for row in a]
    row = 0
    for column in range(len(a[0])):
        pivot = next((i for i in range(row, len(a)) if a[i][column]), None)
        if pivot is None:
            continue
        a[row], a[pivot] = a[pivot], a[row]
        scale = a[row][column].inverse()
        a[row] = [x*scale for x in a[row]]
        for i in range(row+1, len(a)):
            scale = a[i][column]
            if scale:
                a[i] = [x-scale*y for x, y in zip(a[i], a[row])]
        row += 1
        if row == len(a):
            break
    return row
