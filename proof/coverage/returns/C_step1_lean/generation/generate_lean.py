#!/usr/bin/env python3
"""Generate transparent Lean statements/proofs from the JSON certificate data.

Generation is not trusted.  The generated source contains the complete
polynomial expressions and rational constants; Lean's ring/norm_num tactics
must reconstruct ordinary proof terms.  This program uses only the standard
library and accepts no executable text from a certificate.
"""

from __future__ import annotations

import json
import re
from fractions import Fraction as F
from math import comb
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CERTIFICATES = ROOT / "certificates"
LEAN = ROOT / "lean"


def identifier(value):
    result = re.sub(r"[^A-Za-z0-9_]", "_", value)
    if not result or result[0].isdigit():
        result = "n_" + result
    return result


def rational(value, scalar="ℝ"):
    value = F(value)
    if value.denominator == 1:
        return f"({value.numerator} : {scalar})"
    return f"(({value.numerator} : {scalar}) / {value.denominator})"


def walk_references(expr):
    if isinstance(expr, str):
        try:
            F(expr)
            return set()
        except ValueError:
            return {expr}
    if isinstance(expr, list):
        return set().union(*(walk_references(e) for e in expr[1:]))
    raise TypeError(expr)


class Bundle:
    def __init__(self, path, data):
        self.path = path
        self.data = data
        self.variables = data.get("variables", [])
        self.definitions = data.get("definitions", {})
        self.namespace = identifier(path.stem)
        self.args = " ".join("v_" + identifier(v) for v in self.variables)
        self.scalar = "K"
        self.done = []
        self.rendering = set()

    @property
    def binders(self):
        return f" ({self.args} : {self.scalar})" if self.args else ""

    def render(self, expr, replacements=None, expand=False):
        replacements = replacements or {}
        if isinstance(expr, str):
            try:
                return rational(expr, self.scalar)
            except ValueError:
                pass
            if expr in replacements:
                return replacements[expr]
            if expr in self.variables:
                return "v_" + identifier(expr)
            if expr in self.definitions:
                if expand:
                    return self.render(self.definitions[expr], replacements, True)
                return f"(d_{identifier(expr)} {self.args})" if self.args else "d_" + identifier(expr)
            raise ValueError(f"Unknown atom {expr!r} in {self.path}")
        if not isinstance(expr, list) or not expr:
            raise ValueError(f"Malformed expression {expr!r}")
        op = expr[0]
        if op == "add":
            return "(" + " + ".join(self.render(x, replacements, expand) for x in expr[1:]) + ")" if len(expr) > 1 else rational("0", self.scalar)
        if op == "mul":
            return "(" + " * ".join(self.render(x, replacements, expand) for x in expr[1:]) + ")" if len(expr) > 1 else rational("1", self.scalar)
        if op == "neg":
            assert len(expr) == 2
            return "(-" + self.render(expr[1], replacements, expand) + ")"
        if op == "pow":
            assert len(expr) == 3 and str(int(expr[2])) == expr[2] and int(expr[2]) >= 0
            return "(" + self.render(expr[1], replacements, expand) + " ^ " + expr[2] + ")"
        raise ValueError(f"Unknown operator {op!r}")

    def definition(self, name):
        if name in self.done:
            return []
        if name in self.rendering:
            raise ValueError("cyclic definitions")
        self.rendering.add(name)
        result = []
        for ref in sorted(walk_references(self.definitions[name])):
            if ref in self.definitions:
                result.extend(self.definition(ref))
        result.extend([
            f"def d_{identifier(name)}{self.binders} : {self.scalar} :=",
            "  " + self.render(self.definitions[name]),
            "",
        ])
        self.rendering.remove(name)
        self.done.append(name)
        return result

    def unfold(self):
        if not self.done:
            return ["  ring"]
        return ["  simp only [" + ", ".join("d_" + identifier(x) for x in reversed(self.done)) + "] <;> ring"]

    def derivative(self, expr, variable):
        if isinstance(expr, str):
            if expr in self.definitions:
                return self.derivative(self.definitions[expr], variable)
            return "1" if expr == variable else "0"
        op, *tail = expr
        if op == "add":
            return ["add", *(self.derivative(x, variable) for x in tail)]
        if op == "neg":
            return ["neg", self.derivative(tail[0], variable)]
        if op == "mul":
            return ["add", *(["mul", *tail[:i], self.derivative(tail[i], variable), *tail[i+1:]] for i in range(len(tail)))]
        if op == "pow":
            n = int(tail[1])
            if n == 0:
                return "0"
            return ["mul", str(n), ["pow", tail[0], str(n-1)], self.derivative(tail[0], variable)]
        raise ValueError(expr)

    def has_derivative_proof(self, expr, variable, point):
        if isinstance(expr, str):
            if expr in self.definitions:
                return self.has_derivative_proof(self.definitions[expr], variable, point)
            if expr == variable:
                return f"(hasDerivAt_id {point})"
            return f"(hasDerivAt_const {point} {self.render(expr, expand=True)})"
        op, *tail = expr
        if op == "neg":
            return f"({self.has_derivative_proof(tail[0], variable, point)}.neg)"
        if op == "pow":
            return f"({self.has_derivative_proof(tail[0], variable, point)}.pow {tail[1]})"
        if op in ("add", "mul"):
            if not tail:
                return f"(hasDerivAt_const {point} {rational('0' if op == 'add' else '1')})"
            ans = self.has_derivative_proof(tail[0], variable, point)
            for t in tail[1:]:
                ans = f"({ans}.{op} {self.has_derivative_proof(t, variable, point)})"
            return ans
        raise ValueError(expr)

    def polynomial(self):
        lines = [
            "import Step1.Common", "", "set_option autoImplicit false",
            "set_option maxHeartbeats 4000000", "set_option maxRecDepth 4096", "",
            f"namespace Step1.{self.namespace}", "",
            "variable {K : Type*} [Field K] [CharZero K]", "",
            f"/- Generated from certificates/{self.path.name}. See LEAN_NOTES.md. -/", "",
        ]
        for name in self.definitions:
            lines.extend(self.definition(name))
        for row in self.data.get("identities", []):
            name = "identity_" + identifier(row["name"])
            lines += [f"theorem {name}{self.binders} :", f"    {self.render(row['lhs'])} =", f"    {self.render(row['rhs'])} := by"]
            lines += self.unfold() + [""]

        for row in self.data.get("substitutions", []):
            repl = {k: self.render(v, expand=True) for k, v in row["replacements"].items()}
            lines += [f"theorem substitution_{identifier(row['name'])}{self.binders} :", f"    {self.render(row['source'], repl, True)} =", f"    {self.render(row['result'], expand=True)} := by", "  ring", ""]

        for row in self.data.get("evaluations", []):
            repl = {k: rational(v, self.scalar) for k, v in row["at"].items()}
            lines += [f"theorem evaluation_{identifier(row['name'])} :", f"    {self.render(row['polynomial'], repl, True)} =", f"    {rational(row['equals'], self.scalar)} := by", "  norm_num", ""]

        self.scalar = "ℝ"
        for row in self.data.get("orthant_nonnegative", []):
            lines += [f"theorem orthant_{identifier(row['name'])}{self.binders}"]
            for variable in row["variables"]:
                name = identifier(variable)
                lines += [f"    (h_{name} : 0 ≤ v_{name})"]
            lines += [f"    : 0 ≤ {self.render(row['polynomial'], expand=True)} := by", "  ring_nf <;> positivity", ""]
        for row in self.data.get("derivatives", []):
            expr = row["of"]
            variable = row["variable"]
            point = "v_" + identifier(variable)
            for k in range(1, int(row["order"]) + 1):
                derivative = self.derivative(expr, variable)
                target = row["equals"] if k == int(row["order"]) else derivative
                name = "derivative_" + identifier(row["name"]) + "_" + str(k)
                fun = self.render(expr, {variable: "x"}, True)
                lines += [f"theorem {name}{self.binders} :", f"    HasDerivAt (fun x : ℝ => {fun})", f"      {self.render(target, expand=True)} {point} := by", f"  convert {self.has_derivative_proof(expr, variable, point)} using 1 <;> (first | ring | (ext t; ring))", ""]
                expr = derivative

        for row in self.data.get("positivity", []):
            name = identifier(row["name"])
            var = row["variable"]
            x = "v_" + identifier(var)
            lower, upper, bound = (F(row[k]) for k in ("lower", "upper", "lower_bound"))
            bs = [F(c) for c in row["coefficients"]]
            n = len(bs) - 1
            if not (lower < upper and bound > 0 and all(c >= bound for c in bs)):
                raise ValueError("invalid Bernstein positivity coefficients")
            t = f"(({x} - {rational(lower)}) / {rational(upper-lower)})"
            s = f"(({rational(upper)} - {x}) / {rational(upper-lower)})"
            terms = []
            for i, b in enumerate(bs):
                factor = (b-bound) * comb(n, i)
                if factor:
                    terms.append(f"({rational(factor)} * {t} ^ {i} * {s} ^ {n-i})")
            remainder = "(" + " + ".join(terms) + ")" if terms else rational("0")
            poly = self.render(row["polynomial"], expand=True)
            lines += [
                f"theorem positivity_{name}_bound{self.binders}",
                f"    (hLower : {rational(lower)} ≤ {x})",
                f"    (hUpper : {x} ≤ {rational(upper)}) :",
                f"    {rational(bound)} ≤ {poly} := by",
                f"  have ht : 0 ≤ {t} := div_nonneg (by linarith) (by norm_num)",
                f"  have hs : 0 ≤ {s} := div_nonneg (by linarith) (by norm_num)",
                f"  have hNonnegative : 0 ≤ {remainder} := by positivity",
                f"  have hIdentity : {poly} - {rational(bound)} = {remainder} := by ring",
                "  rw [← hIdentity] at hNonnegative",
                "  linarith", "",
                f"theorem positivity_{name}{self.binders}",
                f"    (hLower : {rational(lower)} ≤ {x})",
                f"    (hUpper : {x} ≤ {rational(upper)}) :",
                f"    0 < {poly} := by",
                f"  have h := positivity_{name}_bound {self.args} hLower hUpper",
                "  linarith", "",
            ]
        lines += [f"end Step1.{self.namespace}", ""]
        return "\n".join(lines)


def algebraic(path, data):
    lines = ["import Step1.Common", "", "set_option autoImplicit false", "", "namespace Step1.Algebraic", ""]
    helper = Bundle(path, {"variables": [], "definitions": {}})
    helper.scalar = "ℝ"
    for row in data.get("isolations", []):
        coeff = [F(x) for x in row["coefficients"]]
        if len(coeff) > 3:
            raise ValueError("Only linear/quadratic isolations are supported")
        coeff += [F(0)] * (3-len(coeff))
        d, b, a = coeff
        lower, upper = F(row["lower"]), F(row["upper"])
        negative = row["derivative_sign"] == "negative"
        if row["derivative_sign"] not in ("positive", "negative"):
            raise ValueError("unknown derivative sign")
        signed = [-v if negative else v for v in (a,b,d)]
        p = f"({rational(a)} * x ^ 2 + {rational(b)} * x + {rational(d)})"
        lines += [
            f"theorem isolation_{identifier(row['name'])} :",
            f"    ∃! x : ℝ, x ∈ Set.Icc {rational(lower)} {rational(upper)} ∧",
            f"      {p} = 0 := by",
            "  have h := quadratic_unique_root " + " ".join(rational(v) for v in (*signed,lower,upper)) + " (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)",
        ]
        if negative:
            lines += [
                "  obtain ⟨x, hx, hUnique⟩ := h",
                "  refine ⟨x, ⟨hx.1, ?_⟩, ?_⟩",
                "  · nlinarith [hx.2]",
                "  · intro y hy",
                "    apply hUnique y",
                "    exact ⟨hy.1, by nlinarith [hy.2]⟩", "",
            ]
        else:
            lines += ["  exact h", ""]
        for endpoint, value in (("lower", "value_lower"),("upper", "value_upper")):
            x = rational(row[endpoint])
            expr = f"{rational(a)} * {x} ^ 2 + {rational(b)} * {x} + {rational(d)}"
            lines += [f"theorem isolation_{identifier(row['name'])}_{endpoint}_value :", f"    {expr} = {rational(row[value])} := by norm_num", ""]
    for row in data.get("rational_inequalities", []):
        assert row["relation"] in ("<", "<=")
        rel = "<" if row["relation"] == "<" else "≤"
        lines += [f"theorem rational_{identifier(row['name'])} :", f"    {helper.render(row['lhs'])} {rel} {helper.render(row['rhs'])} := by norm_num", ""]
    lines += ["end Step1.Algebraic", ""]
    return "\n".join(lines)


def main():
    LEAN.mkdir(parents=True, exist_ok=True)
    (LEAN / "Step1").mkdir(exist_ok=True)
    modules = []
    stats = []
    audits = ["import Step1", "", "#print axioms Step1.localMax_iff_openQuotient", "#print axioms Step1.quadratic_strictMonoOn", "#print axioms Step1.quadratic_unique_root", "#print axioms Step1.physical_transverse_capture"]
    for path in sorted(CERTIFICATES.glob("*.json")):
        data = json.loads(path.read_text())
        if data.get("kind") == "polynomial_bundle":
            body = Bundle(path, data).polynomial()
        elif data.get("kind") == "algebraic_bundle":
            body = algebraic(path, data)
        else:
            continue
        module = "Generated_" + identifier(path.stem)
        dest = LEAN / "Step1" / (module + ".lean")
        dest.write_text(body)
        modules.append("Step1." + module)
        stats.append({"module": module, "bytes": str(len(body.encode())), "theorems": str(body.count("\ntheorem "))})
        namespace = re.search(r"^namespace (\S+)$", body, re.MULTILINE).group(1)
        for theorem in re.findall(r"^theorem ([A-Za-z0-9_]+)", body, re.MULTILINE):
            audits.append("#print axioms " + namespace + "." + theorem)
    for manual in ["InteriorConsequences", "FiniteOrbit"]:
        if (LEAN / "Step1" / (manual + ".lean")).exists():
            modules.append("Step1." + manual)
            content = (LEAN / "Step1" / (manual + ".lean")).read_text()
            namespace = re.search(r"^namespace (\S+)$", content, re.MULTILINE).group(1)
            for theorem in re.findall(r"^theorem ([A-Za-z0-9_]+)", content, re.MULTILINE):
                audits.append("#print axioms " + namespace + "." + theorem)
    (LEAN / "Step1.lean").write_text("\n".join("import " + m for m in modules) + "\n")
    (LEAN / "Step1" / "Audit.lean").write_text("\n".join(audits) + "\n")
    (LEAN / "lean-toolchain").write_text("leanprover/lean4:v4.33.0-rc2\n")
    (LEAN / "lakefile.toml").write_text('''name = "step1certificates"
version = "0.1.0"
defaultTargets = ["Step1"]

[leanOptions]
autoImplicit = false
relaxedAutoImplicit = false

[[require]]
name = "mathlib"
git = "https://github.com/leanprover-community/mathlib4"
rev = "51e6992efd06126df61a496bebf8f49482a4e129"

[[lean_lib]]
name = "Step1"
''')
    (LEAN / "GENERATED_SIZES.json").write_text(json.dumps(stats, indent=2) + "\n")
    print(json.dumps(stats, indent=2))


if __name__ == "__main__":
    main()
