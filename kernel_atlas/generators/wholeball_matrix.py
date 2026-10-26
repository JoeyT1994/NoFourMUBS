"""Exact rational matrix witnesses for the whole-ball checker.

All factorisations and tests use Fraction. No NumPy, Arb or floating-point
eigenvalue is trusted. The emitted theorem proves only the indicated matrix
norm bound, not a seed ball's C1 claim.
"""

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json
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

    def norm_check(self, bound):
        return frobenius_check([[abs(x) + r for x, r in zip(mx, rx)]
                                for mx, rx in zip(self.mid, self.rad)], bound)

    def contains(self, a):
        return len(a) == len(self.mid) and all(len(row) == len(self.mid[0]) for row in a) and all(
            abs(x - y) <= r for ax, mx, rx in zip(a, self.mid, self.rad) for x, y, r in zip(ax, mx, rx))


def inverse_check(a, proposed, q, y, error):
    n = len(a.mid)
    identity = [[Q(int(i == j)) for j in range(n)] for i in range(n)]
    residual = MatrixBox.exact(identity).sub(MatrixBox.exact(proposed).mul(a))
    return (residual.norm_check(q) and frobenius_check(proposed, y)
            and q < 1 and q * y <= error * (1 - q))


def vector_expr(xs):
    return "![" + ", ".join(lean_rational(x) for x in xs) + "]"


def matrix_expr(a):
    return "![\n    " + ",\n    ".join(vector_expr(row) for row in a) + "\n  ]"


def emit_norm(a, bound, output):
    if not a or not a[0] or any(len(row) != len(a[0]) for row in a):
        raise ValueError("expected a nonempty rectangular matrix")
    lower, pivots = ldl(shift(a, bound))
    if not spectral_check(a, bound, lower, pivots):
        raise ValueError("spectral check failed")
    rel = Path(output).resolve().relative_to(OUTPUT_ROOT.resolve()).with_suffix("")
    if not all(p.isidentifier() and p.isascii() for p in rel.parts):
        raise ValueError("output module components must be ASCII identifiers")
    ns = "NoFourMUBs.KernelAtlas.WholeBall." + ".".join(rel.parts)
    m, n = len(a), len(a[0])
    source = (
        "import KernelAtlas.WholeBall.MatrixBounds\n\n"
        "-- Generated by wholeball_matrix.py: a matrix norm certificate only.\n"
        "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\n"
        f"namespace {ns}\n\n"
        f"def matrix : Matrix (Fin {m}) (Fin {n}) ℚ := {matrix_expr(a)}\n\n"
        f"def bound : ℚ := {lean_rational(bound)}\n\n"
        f"def witness : PSDWitness {n} :=\n"
        f"  {{ L := {matrix_expr(lower)}, d := {vector_expr(pivots)} }}\n\n"
        "theorem checked : spectralCheck matrix bound witness = true := by decide +kernel\n\n"
        "theorem norm_bound : ‖eucMap (realMatrix matrix)‖ ≤ (bound : ℝ) :=\n"
        "  spectralCheck_sound checked\n\n"
        f"end {ns}\n"
    )
    write_module(output, source)


def frozen_normal_basis(path):
    data = json.loads(Path(path).read_text())
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
    print("exact matrix witness tests passed")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--self-test", action="store_true")
    parser.add_argument("--basis", type=Path)
    parser.add_argument("--bound", type=rational)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.self_test:
        self_test()
    if args.basis:
        if args.bound is None or args.output is None:
            parser.error("--basis requires --bound and --output")
        emit_norm(frozen_normal_basis(args.basis), args.bound, args.output)
        print(f"wrote exact frozen-basis norm certificate to {args.output}")
    elif not args.self_test:
        parser.error("provide --self-test or --basis")


if __name__ == "__main__":
    main()
