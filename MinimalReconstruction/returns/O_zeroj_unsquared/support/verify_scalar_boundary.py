#!/usr/bin/env python3
"""Rebuild and replay the K=0 scalar-boundary certificates using only integers."""

import argparse
import copy
import json
from pathlib import Path


class Dag:
    def __init__(self, names):
        self.names = list(names)
        self.nodes, self.cache = [], {}

    def node(self, op, *args):
        key = (op,) + tuple(args)
        if key not in self.cache:
            self.cache[key] = len(self.nodes)
            self.nodes.append(list(key))
        return Expr(self, self.cache[key])

    def const(self, n):
        assert type(n) is int
        return self.node("const", n)

    def var(self, i):
        return self.node("var", i)

    def certificate(self, name, lhs, rhs):
        return {"id": name, "variables": self.names, "nodes": self.nodes,
                "lhs": lhs.i, "rhs": rhs.i}


class Expr:
    def __init__(self, dag, i):
        self.dag, self.i = dag, i

    def lift(self, b):
        if type(b) is int:
            return self.dag.const(b)
        assert isinstance(b, Expr) and b.dag is self.dag
        return b

    def __add__(self, b):
        return self.dag.node("add", self.i, self.lift(b).i)

    __radd__ = __add__

    def __neg__(self):
        return self.dag.const(-1) * self

    def __sub__(self, b):
        return self + -self.lift(b)

    def __rsub__(self, b):
        return self.lift(b) + -self

    def __mul__(self, b):
        return self.dag.node("mul", self.i, self.lift(b).i)

    __rmul__ = __mul__

    def __pow__(self, n):
        assert type(n) is int and n >= 0
        return self.dag.node("pow", self.i, n)


def reconstruct():
    """Defining formulas, independent of the shipped JSON and its expanded values."""
    result = []
    names = ["z", "X", "Y"]
    ids = ["root_from_sum_product", "boundary_P_reduction", "q_product_norm",
           "q_at_one", "linear_coefficient_guard", "both_moduli_one_impossible",
           "root_at_z_plus_three", "q_difference", "cleared_mixed_boundary_reduction"]
    for i, name in enumerate(ids):
        d = Dag(names)
        z, X, Y = (d.var(j) for j in range(3))
        t = z + 3
        p = 9 - z ** 2
        W = z ** 2 * t ** 2
        A = z * t * (z ** 2 + 3 * z + 1)
        B = 3 * z + 8
        u = z ** 2 + 2 * z - 2
        f = lambda T: T ** 2 - p * T + W
        q = lambda T: A - B * T
        P = (z ** 4 + 3 * z ** 3 * X + 3 * z ** 3 + 19 * z ** 2 * X - 9 * z ** 2
             + 3 * z * X ** 2 + 24 * z * X - 27 * z + 10 * X ** 2 - 18 * X)
        if i == 0:
            lhs, rhs = f(X), X * (X + Y - p) - (X * Y - W)
        elif i == 1:
            lhs, rhs = P + 3 * t * q(X), (3 * z + 10) * f(X)
        elif i == 2:
            N = z * (z + 2) ** 2 * t ** 3 * u
            lhs = q(X) * q(Y) - N
            rhs = -A * B * (X + Y - p) + B ** 2 * (X * Y - W)
        elif i == 3:
            lhs, rhs = q(1), (z + 2) ** 2 * u
        elif i == 4:
            lhs, rhs = 9 * u, B * (3 * z - 2) - 2
        elif i == 5:
            lhs = d.const(9)
            rhs = ((14 * z - 37) * (W - 1)
                   - (14 * z ** 3 + 47 * z ** 2 + 2 * z - 4) * (z ** 2 - 7))
        elif i == 6:
            lhs, rhs = f(t), (z - 1) * (z + 2) * t ** 2
        elif i == 7:
            lhs, rhs = q(X) - q(1), -B * (X - 1)
        else:
            C = 18 * z * (z + 2) * t ** 2 * (t - X) * Y
            lhs, rhs = C * P + 3 * t * C * q(X), C * (3 * z + 10) * f(X)
        # Remove unused defining-expression nodes while retaining backward references.
        used = set()
        def mark(j):
            if j in used:
                return
            used.add(j)
            node = d.nodes[j]
            if node[0] in ("add", "mul"):
                mark(node[1]); mark(node[2])
            elif node[0] == "pow":
                mark(node[1])
        mark(lhs.i); mark(rhs.i)
        indices = sorted(used)
        remap = {old: new for new, old in enumerate(indices)}
        nodes = []
        for j in indices:
            n = d.nodes[j].copy()
            if n[0] in ("add", "mul"):
                n[1], n[2] = remap[n[1]], remap[n[2]]
            elif n[0] == "pow":
                n[1] = remap[n[1]]
            nodes.append(n)
        result.append({"id": name, "variables": names, "nodes": nodes,
                       "lhs": remap[lhs.i], "rhs": remap[rhs.i]})
    return {"format": "integer_polynomial_dag_v1", "certificates": result}


def add(a, b):
    d = a.copy()
    for monomial, coefficient in b.items():
        d[monomial] = d.get(monomial, 0) + coefficient
    return {m: c for m, c in d.items() if c}


def mul(a, b):
    d = {}
    for m, c in a.items():
        for n, e in b.items():
            mn = tuple(x + y for x, y in zip(m, n))
            d[mn] = d.get(mn, 0) + c * e
    return {m: c for m, c in d.items() if c}


def replay(certificate):
    """Independent sparse integer-polynomial interpretation of the five DAG operations."""
    nvars = len(certificate["variables"])
    one = {(0,) * nvars: 1}
    values = []
    for node in certificate["nodes"]:
        op = node[0]
        if op == "const":
            assert len(node) == 2 and type(node[1]) is int
            value = {(0,) * nvars: node[1]} if node[1] else {}
        elif op == "var":
            assert len(node) == 2 and type(node[1]) is int and 0 <= node[1] < nvars
            value = {tuple(int(j == node[1]) for j in range(nvars)): 1}
        elif op in ("add", "mul"):
            assert len(node) == 3 and all(type(j) is int and 0 <= j < len(values) for j in node[1:])
            value = (add if op == "add" else mul)(values[node[1]], values[node[2]])
        elif op == "pow":
            assert len(node) == 3 and type(node[1]) is int and 0 <= node[1] < len(values)
            assert type(node[2]) is int and node[2] >= 0
            value = one
            for _ in range(node[2]):
                value = mul(value, values[node[1]])
        else:
            raise AssertionError("unknown DAG operation")
        values.append(value)
    assert values[certificate["lhs"]] == values[certificate["rhs"]], certificate["id"]


def main():
    if not __debug__:
        raise SystemExit("Run without -O: assertions are mandatory.")
    parser = argparse.ArgumentParser()
    parser.add_argument("--regenerate", action="store_true")
    parser.add_argument("--self-test", action="store_true")
    args = parser.parse_args()
    path = Path(__file__).resolve().parents[1] / "certificates" / "scalar_boundary_certificates.json"
    expected = reconstruct()
    if args.regenerate:
        path.write_text(json.dumps(expected, separators=(",", ":")) + "\n")
    saved = json.loads(path.read_text())
    assert saved == expected, "shipped certificates differ from source reconstruction"
    for c in saved["certificates"]:
        replay(c)
        print("PASS", c["id"])
    if args.self_test:
        altered = copy.deepcopy(saved["certificates"][0])
        j = len(altered["nodes"])
        altered["nodes"] += [["const", 1], ["add", altered["lhs"], j]]
        altered["lhs"] = j + 1
        try:
            replay(altered)
        except AssertionError:
            print("PASS nonzero target mutation rejected")
        else:
            raise AssertionError("invalid target was accepted")
    print(f"PASS {len(saved['certificates'])} certificates; {path.stat().st_size} JSON bytes")


if __name__ == "__main__":
    main()
