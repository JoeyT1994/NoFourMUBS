"""Read-only source/receipt checks for an independent, scoped review.

The exact polynomial comparisons below are review diagnostics, not Lean proof
credit. This script neither invokes Lean nor modifies a reviewed source.
"""
from __future__ import annotations

import ast
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import subprocess

HERE = Path(__file__).resolve().parent
C = HERE.parent.parent
P = C / "lean/phase2"
N = (P / "../../radius-input-003/ProvenResults/Patch2442Local/RadiusThreeHundredths").resolve()
OLD = C.parent / "patch2442-theorem-review-2026-10-06/second/ProvenResults/Patch2442Local/CentiradianComplete"
WORKSPACE = next(p for p in C.parents if (p / "research_factory").is_dir())


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def readjson(path):
    return json.loads(Path(path).read_text())


def save(name, value):
    (HERE / name).write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")


class Poly:
    """Integer sparse polynomials in a,b,c,d and their four conjugates."""

    def __init__(self, terms=None):
        self.terms = {e: v for e, v in (terms or {}).items() if v}

    @staticmethod
    def lift(value):
        return value if isinstance(value, Poly) else Poly({(0,) * 8: value})

    def __add__(self, other):
        out = Counter(self.terms)
        out.update(self.lift(other).terms)
        return Poly(out)

    __radd__ = __add__

    def __neg__(self):
        return Poly({e: -v for e, v in self.terms.items()})

    def __sub__(self, other):
        return self + -self.lift(other)

    def __rsub__(self, other):
        return self.lift(other) + -self

    def __mul__(self, other):
        out = Counter()
        for e, v in self.terms.items():
            for f, w in self.lift(other).terms.items():
                out[tuple(x + y for x, y in zip(e, f))] += v * w
        return Poly(out)

    __rmul__ = __mul__

    def __pow__(self, degree):
        assert isinstance(degree, int) and degree >= 0
        out = Poly.lift(1)
        for _ in range(degree):
            out = out * self
        return out

    def __eq__(self, other):
        return self.terms == self.lift(other).terms

    def star(self):
        return Poly({e[4:] + e[:4]: v for e, v in self.terms.items()})


VARS = {name: Poly({tuple(int(i == j) for i in range(8)): 1})
        for j, name in enumerate(("a", "b", "c", "d", "ac", "bc", "cc", "dc"))}


def definitions(path):
    out = {}
    text = Path(path).read_text()
    for match in re.finditer(r"^def (\w+) \(([^:]+) : ℂ\)[^\n]*?:=", text, re.M):
        ends = [text.find(marker, match.end()) for marker in ("\n\n", "\ndef ")]
        end = min(x for x in ends if x >= 0)
        body = text[match.end():end if end >= 0 else None].strip()
        out[match.group(1)] = (match.group(2).split(), body)
    return out


DEFS = definitions(P / "SignedDeterminantFoundation.lean")
DEFS.update(definitions(P / "SignedNumeratorDefs.lean"))
for k in range(9):
    DEFS.update(definitions(P / f"SignedNumeratorCoeff{k}.lean"))


def lean_expression(text, values):
    """Restricted parser: only the ring expressions used in the reviewed defs."""
    tokens = re.findall(r"\w+|[^\s]", text)
    cursor = 0

    def atom():
        nonlocal cursor
        token = tokens[cursor]
        cursor += 1
        if token == "-":
            return -expression(25)
        if token == "(":
            value = expression(0)
            assert tokens[cursor] == ")"
            cursor += 1
            return value
        if token.isdigit():
            return int(token)
        if token == "conj":
            return Poly.lift(atom()).star()
        if token in values:
            return values[token]
        args, body = DEFS[token]
        return lean_expression(body, dict(zip(args, [atom() for _ in args])))

    def expression(minimum):
        nonlocal cursor
        lhs = atom()
        while cursor < len(tokens) and tokens[cursor] in {"+", "-", "*", "^"}:
            op = tokens[cursor]
            precedence = {"+": 10, "-": 10, "*": 20, "^": 30}[op]
            if precedence < minimum:
                break
            cursor += 1
            rhs = expression(precedence if op == "^" else precedence + 1)
            lhs = {"+": lambda: lhs + rhs, "-": lambda: lhs - rhs,
                   "*": lambda: lhs * rhs, "^": lambda: lhs ** rhs}[op]()
        return lhs

    value = expression(0)
    assert cursor == len(tokens), (text, tokens[cursor:])
    return Poly.lift(value)


def lean_def(name):
    _, text = DEFS[name]
    return lean_expression(text, VARS)


def cpp_expression(text, values):
    def visit(node):
        if isinstance(node, ast.Constant):
            assert isinstance(node.value, int)
            return Poly.lift(node.value)
        if isinstance(node, ast.Name):
            return values[node.id]
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
            return -visit(node.operand)
        if isinstance(node, ast.Call):
            assert isinstance(node.func, ast.Name) and node.func.id == "conj"
            assert len(node.args) == 1
            return visit(node.args[0]).star()
        assert isinstance(node, ast.BinOp), ast.dump(node)
        a, b = visit(node.left), visit(node.right)
        if isinstance(node.op, ast.Add):
            return a + b
        if isinstance(node.op, ast.Sub):
            return a - b
        assert isinstance(node.op, ast.Mult)
        return a * b
    return visit(ast.parse(text, mode="eval").body)


def source_checks():
    raw = lean_def("rawDet")
    raw_laurent = {}
    for e, co in raw.terms.items():
        assert all(not (e[j] and e[j + 4]) for j in range(4))
        key = tuple(e[j] - e[j + 4] for j in range(4))
        assert key not in raw_laurent
        raw_laurent[key] = co
    rows = [[int(x) for x in line.split()] for line in (N / "data/determinant_words.txt").read_text().splitlines()]
    assert rows[0] == [48] and len(rows) == 49
    native_dephased = {tuple(row[j] for j in (5, 6, 8, 9)): row[0] for row in rows[1:]}
    assert raw_laurent == native_dephased
    lifted = {(a + b + c + d, -a - c, -b - d, -a - b, a, b, -c - d, c, d): co
              for (a, b, c, d), co in raw_laurent.items()}
    assert lifted == {tuple(row[1:]): row[0] for row in rows[1:]}

    cpp = (N / "interval_model.hpp").read_text().split("template<class T>T signedf(", 1)[1].split("\n}", 1)[0]
    env = dict(VARS, c0=VARS["c"], ai=VARS["ac"], ci=VARS["cc"], one=Poly.lift(1))
    for line in cpp.splitlines():
        line = line.strip()
        if line.startswith(("C<T>ab=", "C<T>f", "C<T>p2=")):
            for assignment in line.removeprefix("C<T>").removesuffix(";").split(","):
                name, body = assignment.split("=", 1)
                env[name] = cpp_expression(body, env)
    coefficient_matches = {str(k): lean_def(f"coeff{k}") == env[f"f{k}"] for k in range(6)}
    assert all(coefficient_matches.values())
    native_fast = env["p2"] * VARS["d"] ** 2 + env["p1"] * VARS["d"] + env["p0"]
    fast = lean_def("fastZ")
    assert native_fast == fast
    assert "return T(2)*(p2*d*d+p1*d+p0).im;" in cpp
    assert "H[rr[i]][cc[j]]*H[rr[0]][cc[0]]*conj(H[rr[i]][cc[0]])*conj(H[rr[0]][cc[j]])" in cpp

    # Reduce only a*conj(a), b*conj(b), c*conj(c). d and conj(d) stay independent.
    reduced = Counter()
    for e, co in (raw - fast + fast.star()).terms.items():
        reduced[(e[0] - e[4], e[1] - e[5], e[2] - e[6], e[3], e[7])] += co
    assert not {e: co for e, co in reduced.items() if co}

    certs = {str(k): lean_def(f"certCoeff{k}") == 0 for k in range(9)}
    assert all(certs.values())
    a = lean_def("denominator")
    g, e, chi, det = [lean_def(name) for name in ("gNum", "eNum", "cNum", "dNum")]
    assert 4 * a * g ** 2 * e - chi ** 2 + det ** 2 == 0
    corners = [(i, j, k, x, y, z) for i in range(3) for j in range(i + 1, 3)
               for x in range(3) for y in range(x + 1, 3)
               for k in range(3, 6) for z in range(3, 6)]
    assert len(corners) == len(set(corners)) == 81
    assert all(i < j < k and x < y < z for i, j, k, x, y, z in corners)
    return {
        "diagnostic_only_not_Lean_credit": True,
        "raw_Lean_terms": len(raw_laurent),
        "native_dephased_term_map_matches": True,
        "native_nine_entry_words_match_dephasing_exponent_lift": True,
        "native_coefficient_matches_in_free_star_algebra": coefficient_matches,
        "native_fastZ_matches_in_free_star_algebra": True,
        "native_factor_two_and_dephasing_text_match": True,
        "independent_d_and_conjugate_d_identity": True,
        "coefficient_zero_diagnostics": certs,
        "assembled_numerator_identity_diagnostic": True,
        "native_mixed_corners": len(corners),
        "native_mixed_indices_are_strictly_increasing": True,
    }


def main():
    pub = readjson(P / "PUBLISH_FILELIST.json")
    portable = readjson(P / "PORTABLE_SOURCE_MANIFEST.json")
    first = readjson(P.parent / "FIRST_WAVE_FREEZE.json")
    assert digest(P / "PUBLISH_FILELIST.json") == "eb591acd2fe4e1f8e4097c4c4797b360e079c8e1426cd542ee8936f290d9e74e"
    for root, files in [(P, pub["files"]), (P.parent, first["files"])]:
        for file, expected in files.items():
            assert digest(root / file) == expected, str(root / file)
    modules = {Path(f).stem: (P / f, h) for f, h in portable["sources"].items()}
    modules.update({Path(f).stem: (P.parent / f, h) for f, h in portable["first_wave_sources"].items()})
    checks = []
    freeze = {str(P / file): h for file, h in pub["files"].items()}
    freeze.update({str(P.parent / file): h for file, h in first["files"].items()})
    runtime = readjson(C / "LEAN_RUNTIME.json")
    runtime_hash = digest(C / "LEAN_RUNTIME.json")
    for module, (source, expected) in modules.items():
        candidates = []
        for folder in source.parent.glob("check-*"):
            result = folder / "RESULT.json"
            saved = folder / f"{module}.lean"
            if result.is_file() and saved.is_file():
                r = readjson(result)
                if r.get("success") and r.get("source_sha256") == expected and digest(saved) == expected:
                    candidates.append(folder)
        assert len(candidates) == 1, (module, candidates)
        folder = candidates[0]
        j, r = readjson(folder / "JOB.json"), readjson(folder / "RESULT.json")
        assert digest(source.parent / f"receipts/{module}.result.json") == digest(folder / "RESULT.json")
        assert j["source_sha256"] == expected and j["runtime_config_sha256"] == runtime_hash
        assert "-j1" in j["command"] and "-M2304" in j["command"]
        assert j["heap_mib"] == 2304 and j["rss_stop_mib"] == 2816
        assert j["minimum_free_disk_bytes"] == 8 * 2 ** 30 and 1 <= j["seconds"] <= 240
        assert r["exit_code"] == 0 and r["stop_reason"] is None
        assert r["peak_tree_rss_bytes"] < 2816 * 2 ** 20
        assert not (folder / "stderr.log").read_bytes()
        assert (folder / f"{module}.olean").is_file()
        deps = {}
        for imported in re.findall(r"^import (\S+)", source.read_text(), re.M):
            if imported in modules:
                resolved = next((Path(d) / f"{imported}.olean" for d in j["lean_path"]
                                 if (Path(d) / f"{imported}.olean").is_file()), None)
                assert resolved and digest(resolved.with_suffix(".lean")) == modules[imported][1]
                deps[imported] = str(resolved)
        for file in ("JOB.json", "RESULT.json", "stdout.log", "stderr.log", f"{module}.lean", f"{module}.olean"):
            freeze[str(folder / file)] = digest(folder / file)
        checks.append({"module": module, "check_directory": str(folder), "source_sha256": expected,
                       "published_receipt_equals_original": True,
                       "result": r, "local_direct_import_resolution": deps})
    log = (P / "receipts/SignedCornerAudit.stdout.log").read_text()
    audit = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log, re.S)
    assert len(audit) == 48 and {n for n, a in audit} == set(portable["declarations"])
    assert all(sorted(a.strip() for a in axioms.split(",")) == ["Classical.choice", "Quot.sound", "propext"]
               for name, axioms in audit)
    token_hits = []
    for source, _ in modules.values():
        body = re.sub(r"/-.*?-/", "", source.read_text(), flags=re.S)
        body = re.sub(r"--[^\n]*", "", body)
        token_hits.extend((str(source), x) for x in re.findall(
            r"\b(?:sorry|admit|sorryAx|axiom|unsafe|native_decide)\b", body))
    assert not token_hits
    lean_version = subprocess.run([runtime["lean"], "--version"], check=True,
                                  capture_output=True, text=True).stdout.strip()
    revision = subprocess.run(["git", "-C", runtime["mathlib"], "rev-parse", "HEAD"],
                              capture_output=True, text=True)
    for path in [P / "PUBLISH_FILELIST.json", P / "DECLARATIONS.json", P / "SOURCE_PINS.json",
                 P / "NUMERATOR_GENERATION.json", P / "generate_numerator_proof.py",
                 P.parent / "FIRST_WAVE_FREEZE.json", C / "LEAN_RUNTIME.json",
                 C / "LEAN_RUNTIME_RECOVERY.json", P.parent / "FORMALIZATION_RECORD.json",
                 WORKSPACE / "research_factory/LEAN_POLICY.md",
                 WORKSPACE / "mub6-numerical/runs/full-proof-integration-2026-10-03/lean_guard.py",
                 WORKSPACE / "mub6-numerical/runs/full-proof-integration-2026-10-03/lean_guard_standalone.py",
                 Path(runtime["lean"]), Path(runtime["mathlib"]) / "lean-toolchain",
                 Path(runtime["mathlib"]) / "lake-manifest.json", HERE / "review_checks.py"]:
        freeze[str(path)] = digest(path)
    for root in (N, OLD):
        for name in ("PROOF.md", "interval_model.hpp", "inputs/physical_algebra.py", "data/determinant_words.txt"):
            freeze[str(root / name)] = digest(root / name)
    for name in ("exact_checks.py", "reference_algebra.py", "engine.cpp", "jet.hpp", "MANIFEST.sha256", "INPUTS.json"):
        freeze[str(N / name)] = digest(N / name)
    report = {
        "schema": "signed-bridge-independent-checks-v1",
        "scope": "Source semantics and existing successful receipts; no new Lean compilation or factory admission.",
        "phase2_publication_file_count": len(pub["files"]),
        "phase2_publication_hashes_match": True,
        "first_wave_frozen_file_count": len(first["files"]),
        "first_wave_frozen_hashes_match": True,
        "phase2_module_count": len(portable["sources"]),
        "first_wave_direct_dependency_modules": list(portable["first_wave_sources"]),
        "aggregate_axiom_declarations": len(audit),
        "aggregate_axioms_each": ["Classical.choice", "Quot.sound", "propext"],
        "prohibited_formal_token_hits": token_hits,
        "lean_version_verified": lean_version,
        "mathlib_recorded_revision": portable["mathlib_commit"],
        "mathlib_git_metadata_available": (Path(runtime["mathlib"]) / ".git").exists(),
        "mathlib_revision_check": {"exit_code": revision.returncode, "stdout": revision.stdout.strip(),
                                   "stderr": revision.stderr.strip()},
        "mathlib_revision_caveat": "Local source directory is named with the recorded revision but has no Git metadata. This review does not independently authenticate that archive or compiled Mathlib cache to the named commit.",
        "native_directory_resolved": str(N),
        "phase2_proof_pin_resolves_to": str(OLD / "PROOF.md"),
        "radius_three_hundredths_proof_sha256": digest(N / "PROOF.md"),
        "phase2_recorded_proof_sha256": readjson(P / "FORMALIZATION_PUBLIC.json")["source_inputs"]["PROOF.md"],
        "source_diagnostics": source_checks(),
        "module_receipt_checks": checks,
    }
    save("CHECKS.json", report)
    save("SOURCE_HASHES.json", {"schema": "signed-bridge-independent-source-freeze-v1", "files": freeze,
                                "scope": "Reviewed bytes and local receipt/artifact snapshots; no upstream dependency authentication implied."})
    print(json.dumps({"source_checks": "PASS", "receipt_checks": "PASS", "frozen_paths": len(freeze),
                      "mathlib_revision_independently_authenticated": False,
                      "checks_sha256": digest(HERE / "CHECKS.json"),
                      "source_hashes_sha256": digest(HERE / "SOURCE_HASHES.json")}, indent=2))


if __name__ == "__main__":
    main()
