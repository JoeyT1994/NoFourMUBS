"""Exact rational matrix witnesses for the whole-ball checker.

All factorisations and tests use Fraction. No NumPy, Arb or floating-point
eigenvalue is trusted. The emitted theorem proves only the indicated matrix
norm bound, not a seed ball's C1 claim.
"""

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json
import math
from pathlib import Path

from wholeball_scalar import lean_rational, rational, write_module, OUTPUT_ROOT


def transpose(a):
    return [list(row) for row in zip(*a)]


def mul(a, b):
    if not a or not b or any(len(row) != len(b) for row in a):
        raise ValueError("matrix multiplication dimension mismatch")
    if any(len(row) != len(b[0]) for row in b):
        raise ValueError("ragged matrix")
    bt = transpose(b)
    return [[sum((x * y for x, y in zip(row, col)), Q(0)) for col in bt] for row in a]


def shift(a, bound):
    """bound² I - AᵀA, exactly as in spectralCheck."""
    gram = mul(transpose(a), a)
    return [[bound**2 * (i == j) - v for j, v in enumerate(row)] for i, row in enumerate(gram)]


def ldl(a):
    """An exact proposal; independently reconstruct it before accepting it."""
    n = len(a)
    if any(len(row) != n for row in a) or a != transpose(a):
        raise ValueError("LDL input must be square and symmetric")
    lower = [[Q(int(i == j)) for j in range(n)] for i in range(n)]
    pivots = []
    for i in range(n):
        d = a[i][i] - sum((lower[i][k]**2 * pivots[k] for k in range(i)), Q(0))
        if d < 0:
            raise ValueError(f"negative LDL pivot {i}")
        pivots.append(d)
        for j in range(i + 1, n):
            v = a[j][i] - sum((lower[j][k] * lower[i][k] * pivots[k] for k in range(i)), Q(0))
            if d == 0:
                if v:
                    raise ValueError(f"zero LDL pivot {i} has a nonzero residual")
            else:
                lower[j][i] = v / d
    if not psd_check(a, lower, pivots):
        raise ArithmeticError("exact reconstruction failed")
    return lower, pivots


def psd_check(a, lower, pivots):
    return all(d >= 0 for d in pivots) and a == mul(
        [[v * pivots[j] for j, v in enumerate(row)] for row in lower], transpose(lower))


def spectral_check(a, bound, lower, pivots):
    return bound >= 0 and psd_check(shift(a, bound), lower, pivots)


def frobenius_check(a, bound):
    return bound >= 0 and sum((v * v for row in a for v in row), Q(0)) <= bound**2


def dominant_check(a):
    return a == transpose(a) and all(2 * row[i] >= sum(map(abs, row)) for i, row in enumerate(a))


def rounded_psd_check(a, lower, pivots):
    reconstructed = mul([[v * pivots[j] for j, v in enumerate(row)] for row in lower], transpose(lower))
    residual = [[x - y for x, y in zip(ax, bx)] for ax, bx in zip(a, reconstructed)]
    return all(d >= 0 for d in pivots) and dominant_check(residual)


def rounded_ldl(a, bits=60):
    """Propose dyadic factors, retaining a strictly positive checked residual.

    The exact reconstruction test is the authority. Rounding a Cholesky/LDL
    factor without this residual check would not certify positive semidefiniteness.
    """
    if bits < 8:
        raise ValueError("rounded LDL needs at least eight fractional bits")
    scale = max(abs(a[i][i]) for i in range(len(a)))
    if not scale:
        lower, pivots = ldl(a)
        return lower, pivots
    for slack_bits in range(4, 161, 4):
        slack = scale / 2**slack_bits
        shifted = [[x - slack * (i == j) for j, x in enumerate(row)] for i, row in enumerate(a)]
        try:
            lower, pivots = ldl(shifted)
        except ValueError:
            continue
        for precision in range(bits, bits + 161, 16):
            grid = 2**precision
            round_q = lambda x: Q(round(x * grid), grid)
            lr = [[round_q(x) for x in row] for row in lower]
            dr = list(map(round_q, pivots))
            if rounded_psd_check(a, lr, dr):
                return lr, dr
    raise ValueError("could not certify a rounded LDL factorization with positive residual")


@dataclass(frozen=True)
class MatrixBox:
    """Exact mirror of MatrixBox in MatrixArithmetic.lean."""

    mid: list
    rad: list

    def __post_init__(self):
        if not self.mid or not self.mid[0]:
            raise ValueError("empty matrix box")
        m, n = len(self.mid), len(self.mid[0])
        if len(self.rad) != m or any(len(row) != n for row in self.mid + self.rad):
            raise ValueError("matrix box shape mismatch")
        if any(v < 0 for row in self.rad for v in row):
            raise ValueError("negative matrix radius")

    @staticmethod
    def exact(a):
        return MatrixBox(a, [[Q(0) for _ in row] for row in a])

    def transpose(self):
        return MatrixBox(transpose(self.mid), transpose(self.rad))

    def neg(self):
        return MatrixBox([[-v for v in row] for row in self.mid], self.rad)

    def add(self, b):
        if len(self.mid) != len(b.mid) or len(self.mid[0]) != len(b.mid[0]):
            raise ValueError("matrix addition dimension mismatch")
        return MatrixBox([[x + y for x, y in zip(rx, ry)] for rx, ry in zip(self.mid, b.mid)],
                         [[x + y for x, y in zip(rx, ry)] for rx, ry in zip(self.rad, b.rad)])

    def sub(self, b):
        return self.add(b.neg())

    def mul(self, b):
        mid = mul(self.mid, b.mid)
        m, n, k = len(self.mid), len(b.mid), len(b.mid[0])
        rad = [[sum((abs(self.mid[i][l]) * b.rad[l][j]
                     + self.rad[i][l] * abs(b.mid[l][j])
                     + self.rad[i][l] * b.rad[l][j] for l in range(n)), Q(0))
                for j in range(k)] for i in range(m)]
        return MatrixBox(mid, rad)

    def row_tensor(self, b):
        """Rowwise Kronecker product; the second column index varies fastest."""
        if len(self.mid) != len(b.mid):
            raise ValueError("row tensor dimension mismatch")
        mid, rad = [], []
        for ax, ar, bx, br in zip(self.mid, self.rad, b.mid, b.rad):
            mid.append([x * y for x in ax for y in bx])
            rad.append([abs(x) * s + r * abs(y) + r * s
                        for x, r in zip(ax, ar) for y, s in zip(bx, br)])
        return MatrixBox(mid, rad)

    def norm_check(self, bound):
        return frobenius_check([[abs(x) + r for x, r in zip(mx, rx)]
                                for mx, rx in zip(self.mid, self.rad)], bound)

    def contains(self, a):
        return len(a) == len(self.mid) and all(len(row) == len(self.mid[0]) for row in a) and all(
            abs(x - y) <= r for ax, mx, rx in zip(a, self.mid, self.rad) for x, y, r in zip(ax, mx, rx))

    def encloses_check(self, b):
        """Mirror A.enclosesCheck B: every interval of A is contained in B."""
        return (len(self.mid) == len(b.mid) and len(self.mid[0]) == len(b.mid[0])
                and all(abs(x-y) + r <= s for mx, rx, my, ry in zip(self.mid, self.rad, b.mid, b.rad)
                        for x, r, y, s in zip(mx, rx, my, ry)))

    def rounded(self, bits=60):
        mid = [[Q(round(x * 2**bits), 2**bits) for x in row] for row in self.mid]
        rad = [[upper_grid(r + abs(x-y), bits) for x, y, r in zip(mx, my, rx)]
               for mx, my, rx in zip(self.mid, mid, self.rad)]
        box = MatrixBox(mid, rad)
        if not self.encloses_check(box):
            raise ArithmeticError("outward matrix rounding failed")
        return box


def inverse_check(a, proposed, q, y, error):
    n = len(a.mid)
    identity = [[Q(int(i == j)) for j in range(n)] for i in range(n)]
    residual = MatrixBox.exact(identity).sub(MatrixBox.exact(proposed).mul(a))
    return (residual.norm_check(q) and frobenius_check(proposed, y)
            and q < 1 and q * y <= error * (1 - q))


def upper_grid(value, bits=60):
    scaled = value * 2**bits
    return Q(-(-scaled.numerator // scaled.denominator), 2**bits)


def sqrt_upper(value, bits=60):
    if value < 0:
        raise ValueError("negative square root input")
    scaled = value * 2**(2 * bits)
    root = math.isqrt(scaled.numerator // scaled.denominator)
    if root * root * scaled.denominator < scaled.numerator:
        root += 1
    return Q(root, 2**bits)


def inverse_proposal(a, bits=60):
    """Floating-point pivoting proposes Y; the exact residual certifies it."""
    n = len(a)
    if not n or any(len(row) != n for row in a):
        raise ValueError("inverse input must be nonempty and square")
    rows = [[float(x) for x in row] + [float(i == j) for j in range(n)] for i, row in enumerate(a)]
    for i in range(n):
        pivot = max(range(i, n), key=lambda j: abs(rows[j][i]))
        rows[i], rows[pivot] = rows[pivot], rows[i]
        if not rows[i][i]:
            raise ValueError("singular approximate inverse")
        scale = rows[i][i]
        rows[i] = [x / scale for x in rows[i]]
        for j in range(n):
            if j != i:
                scale = rows[j][i]
                rows[j] = [x - scale * y for x, y in zip(rows[j], rows[i])]
    values = [row[n:] for row in rows]
    if not all(math.isfinite(x) for row in values for x in row):
        raise ValueError("nonfinite inverse proposal")
    return [[Q(round(x * 2**bits), 2**bits) for x in row] for row in values]


def inverse_witness(box):
    proposed = inverse_proposal(box.mid)
    n = len(proposed)
    identity = [[Q(int(i == j)) for j in range(n)] for i in range(n)]
    residual = MatrixBox.exact(identity).sub(MatrixBox.exact(proposed).mul(box))
    q = sqrt_upper(sum(((abs(x) + r)**2 for mx, rx in zip(residual.mid, residual.rad)
                        for x, r in zip(mx, rx)), Q(0)))
    y = sqrt_upper(sum((x*x for row in proposed for x in row), Q(0)))
    if q >= 1:
        raise ValueError("inverse proposal has no certified Neumann contraction")
    error = upper_grid(q * y / (1 - q))
    if not inverse_check(box, proposed, q, y, error):
        raise ArithmeticError("inverse witness mirror failed")
    return proposed, q, y, error


def vector_expr(xs):
    return "![" + ", ".join(lean_rational(x) for x in xs) + "]"


def matrix_expr(a):
    return "![\n    " + ",\n    ".join(vector_expr(row) for row in a) + "\n  ]"


def emit_norm(a, bound, output, rounded=False):
    if not a or not a[0] or any(len(row) != len(a[0]) for row in a):
        raise ValueError("expected a nonempty rectangular matrix")
    lower, pivots = (rounded_ldl if rounded else ldl)(shift(a, bound))
    valid = rounded_psd_check(shift(a, bound), lower, pivots) if rounded else spectral_check(a, bound, lower, pivots)
    if bound < 0 or not valid:
        raise ValueError("spectral check failed")
    checker = "roundedSpectralCheck" if rounded else "spectralCheck"
    rel = Path(output).resolve().relative_to(OUTPUT_ROOT.resolve()).with_suffix("")
    if not all(p.isidentifier() and p.isascii() for p in rel.parts):
        raise ValueError("output module components must be ASCII identifiers")
    ns = "NoFourMUBs.KernelAtlas.WholeBall." + ".".join(rel.parts)
    m, n = len(a), len(a[0])
    source = (
        f"import KernelAtlas.WholeBall.{'RoundedLDL' if rounded else 'MatrixBounds'}\n\n"
        "-- Generated by wholeball_matrix.py: a matrix norm certificate only.\n"
        "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\n"
        f"namespace {ns}\n\n"
        f"def matrix : Matrix (Fin {m}) (Fin {n}) ℚ := {matrix_expr(a)}\n\n"
        f"def bound : ℚ := {lean_rational(bound)}\n\n"
        f"def witness : PSDWitness {n} :=\n"
        f"  {{ L := {matrix_expr(lower)}, d := {vector_expr(pivots)} }}\n\n"
        f"theorem checked : {checker} matrix bound witness = true := by decide +kernel\n\n"
        "theorem norm_bound : ‖eucMap (realMatrix matrix)‖ ≤ (bound : ℝ) :=\n"
        f"  {checker}_sound checked\n\n"
        f"end {ns}\n"
    )
    write_module(output, source)


def frozen_normal_basis(path):
    data = json.loads(Path(path).read_text())
    fixed = Path(__file__).resolve().parents[2] / "proof/seed_atlas/cert/wholeball_basis.json"
    if Path(path).resolve() != fixed.resolve():
        expected = json.loads(fixed.read_text())
        if data["free_indices"] != expected["free_indices"] or [
            [rational(v) for v in row] for row in data["T_hex"]
        ] != [[rational(v) for v in row] for row in expected["T_hex"]]:
            raise ValueError("the Lean modules require the frozen normal basis exactly")
    seeds = {(1, 1), (1, 2), (2, 1), (2, 2)}
    free = [(i, j) for i in range(1, 6) for j in range(1, 6) if (i, j) not in seeds]
    if data["free_indices"] != [list(t) for t in free]:
        raise ValueError("unexpected normal coordinate ordering")
    t = [[rational(v) for v in row] for row in data["T_hex"]]
    if len(t) != 21 or any(len(row) != 21 for row in t):
        raise ValueError("expected the frozen 21 by 21 change of basis")
    x0 = [[Q(36 * (i == a and j == b) - 6 * (i == a) - 6 * (j == b) + 1, 36)
           for a, b in free] for i in range(6) for j in range(6)]
    return mul(x0, t)


def emit_basis_inverse(path, output):
    data = json.loads(Path(path).read_text())
    frozen_normal_basis(path)  # Validate dimensions and the coordinate ordering.
    a = [[rational(v) for v in row] for row in data["T_hex"]]
    proposed, q, y, error = inverse_witness(MatrixBox.exact(a))
    rel = Path(output).resolve().relative_to(OUTPUT_ROOT.resolve()).with_suffix("")
    if not all(p.isidentifier() and p.isascii() for p in rel.parts):
        raise ValueError("invalid module path")
    ns = "NoFourMUBs.KernelAtlas.WholeBall." + ".".join(rel.parts)
    source = (
        "import KernelAtlas.WholeBall.MatrixArithmetic\n\n"
        "-- Generated by wholeball_matrix.py: the frozen change of basis is nonsingular.\n"
        "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\n"
        f"namespace {ns}\n\n"
        f"def matrix : Matrix (Fin 21) (Fin 21) ℚ := {matrix_expr(a)}\n\n"
        f"def proposed : Matrix (Fin 21) (Fin 21) ℚ := {matrix_expr(proposed)}\n\n"
        f"def residualBound : ℚ := {lean_rational(q)}\n"
        f"def inverseBound : ℚ := {lean_rational(y)}\n"
        f"def inverseError : ℚ := {lean_rational(error)}\n\n"
        "theorem checked : inverseCheck (MatrixBox.exact matrix) proposed\n"
        "    residualBound inverseBound inverseError = true := by decide +kernel\n\n"
        "theorem nonsingular : IsUnit (realMatrix matrix).det :=\n"
        "  (inverseCheck_sound (MatrixBox.has_exact matrix) checked).1\n\n"
        f"end {ns}\n")
    write_module(output, source)


def self_test():
    for a, bound in [([[Q(3), Q(0)], [Q(0), Q(4)]], Q(4)),
                     ([[Q(1), Q(2)], [Q(3), Q(4)], [Q(5), Q(6)]], Q(10))]:
        lower, pivots = ldl(shift(a, bound))
        assert spectral_check(a, bound, lower, pivots)
        bad = list(pivots)
        bad[0] += 1
        assert not spectral_check(a, bound, lower, bad)
    for bad in [[[Q(-1)]] , [[Q(0), Q(1)], [Q(1), Q(0)]]]:
        try:
            ldl(bad)
        except ValueError:
            pass
        else:
            raise AssertionError("invalid PSD matrix accepted")
    a = MatrixBox([[Q(2)]], [[Q(1, 10)]])
    inv = [[Q(1, 2)]]
    assert inverse_check(a, inv, Q(1, 20), Q(1, 2), Q(1, 38))
    assert not inverse_check(a, inv, Q(1, 20), Q(1, 2), Q(1, 38) - Q(1, 2**80))
    assert not inverse_check(a, inv, Q(1), Q(1, 2), Q(100))
    product = a.mul(a)
    for x in (Q(19, 10), Q(2), Q(21, 10)):
        for y in (Q(19, 10), Q(2), Q(21, 10)):
            assert product.contains([[x * y]])
    positive = [[Q(3), Q(1)], [Q(1), Q(2)]]
    lower, pivots = rounded_ldl(positive)
    assert rounded_psd_check(positive, lower, pivots)
    bad = list(pivots)
    bad[0] += 1
    assert not rounded_psd_check(positive, lower, bad)
    assert dominant_check([[Q(1), Q(-1)], [Q(-1), Q(1)]])
    assert not dominant_check([[Q(1), Q(2)], [Q(2), Q(1)]])
    assert sqrt_upper(Q(4)) == 2
    assert sqrt_upper(Q(2))**2 >= 2
    assert (sqrt_upper(Q(2)) - Q(1, 2**60))**2 < 2
    proposed, q, y, error = inverse_witness(MatrixBox.exact(positive))
    assert inverse_check(MatrixBox.exact(positive), proposed, q, y, error)
    narrow = MatrixBox([[Q(1, 3)]], [[Q(1, 1000)]])
    assert narrow.encloses_check(narrow.rounded(8))
    assert not narrow.encloses_check(MatrixBox.exact([[Q(1, 3)]]))
    print("exact matrix witness tests passed")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--self-test", action="store_true")
    parser.add_argument("--basis", type=Path)
    parser.add_argument("--bound", type=rational)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--rounded", action="store_true", help="emit checked dyadic LDL factors and residual")
    parser.add_argument("--basis-inverse", action="store_true", help="certify the frozen change of basis is nonsingular")
    args = parser.parse_args()
    if args.self_test:
        self_test()
    if args.basis:
        if args.basis_inverse:
            if args.output is None:
                parser.error("--basis-inverse requires --output")
            emit_basis_inverse(args.basis, args.output)
            print(f"wrote frozen-basis inverse certificate to {args.output}")
            return
        if args.bound is None or args.output is None:
            parser.error("--basis requires --bound and --output")
        emit_norm(frozen_normal_basis(args.basis), args.bound, args.output, args.rounded)
        print(f"wrote exact frozen-basis norm certificate to {args.output}")
    elif not args.self_test:
        parser.error("provide --self-test or --basis")


if __name__ == "__main__":
    main()
