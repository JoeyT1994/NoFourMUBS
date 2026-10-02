"""Shared exact Pauli helpers for the CountTwo checks (sympy)."""
import sympy as S

I2 = S.eye(2)
X = S.Matrix([[0, 1], [1, 0]])
Y = S.Matrix([[0, -S.I], [S.I, 0]])
Z = S.Matrix([[1, 0], [0, -1]])
PAULI = [I2, X, Y, Z]
NAMES = 'IXYZ'
kron = S.kronecker_product
EPS = S.Matrix([[0, 1], [-1, 0]])
J = kron(I2, EPS)          # standard quaternionic form on C2 (x) C2


class CheckFailure(Exception):
    pass


def require(ok, message):
    if not ok:
        raise CheckFailure(message)


def is_zero(M):
    entries = list(M) if isinstance(M, S.MatrixBase) else [M]
    return all(S.expand(S.simplify(e)) == 0 for e in entries)


def sig(v):
    return v[0]*X + v[1]*Y + v[2]*Z


def theta(F):
    return J*F.T*J.H


def pcoef(F):
    """Pauli coefficients tr((P_a x P_b) F)/4."""
    return {NAMES[a]+NAMES[b]: S.expand((kron(PAULI[a], PAULI[b])*F).trace()/4)
            for a in range(4) for b in range(4)}


def cross(a, b):
    return [a[1]*b[2]-a[2]*b[1], a[2]*b[0]-a[0]*b[2], a[0]*b[1]-a[1]*b[0]]
