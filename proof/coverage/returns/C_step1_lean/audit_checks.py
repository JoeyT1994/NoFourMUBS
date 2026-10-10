#!/usr/bin/env python3
"""Supplementary audit: reproduce the existing 14 mutations and 13 source links.

This is not the default acceptance checker. It checks copies in temporary
directories through verify_certificates.py --algebra-only, then compares
selected cross-file source polynomials using that checker's exact arithmetic.
It never edits certificates or the acceptance checker. Standard library only.
"""

from argparse import ArgumentParser
from copy import deepcopy
from fractions import Fraction
from pathlib import Path
import hashlib
import importlib.util
import json
import subprocess
import sys
import tempfile


ROOT = Path(__file__).resolve().parent
CERTIFICATES = ROOT / "certificates"
CHECKER = ROOT / "verify_certificates.py"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def load_certificate(filename):
    return json.loads((CERTIFICATES / filename).read_text())


def mutate_eliminant(data):
    item = next(x for x in data["identities"]
                if x["name"] == "normalized_eliminant_Bezout")
    item["rhs"] = ["add", item["rhs"], "1"]


def mutate_derivative(data):
    item = data["derivatives"][0]
    item["equals"] = ["add", item["equals"], "1"]


def mutate_compact_coefficient(data):
    item = data["compact_parts"]["chi"][0]
    item[0] = str(int(item[0]) + 2)


MUTATIONS = [
    ("cofactor", "boundary_core.json", mutate_eliminant,
     "polynomial identity failed: normalized_eliminant_Bezout"),
    ("derivative", "boundary_edges.json", mutate_derivative,
     "derivative failed: differentiate_horizontal_edge"),
    ("substitution", "boundary_edges.json",
     lambda d: d["substitutions"][0]["replacements"].__setitem__("h", "0"),
     "substitution failed: positive_horizontal_edge"),
    ("bernstein_coefficient", "boundary_edges.json",
     lambda d: d["positivity"][0]["coefficients"].__setitem__(0, "2"),
     "Bernstein identity failed: T_positive_full_edge"),
    ("bernstein_lower_bound", "boundary_edges.json",
     lambda d: d["positivity"][0].__setitem__("lower_bound", "1"),
     "Bernstein coefficient bound"),
    ("interval_gap", "boundary_edges.json",
     lambda d: d["interval_covers"][1].__setitem__(
         "positivity_names", ["F_positive_left", "F_positive_right"]),
     "gap in interval cover"),
    ("interval_mixed_polynomial", "boundary_edges.json",
     lambda d: d["interval_covers"][1].__setitem__(
         "positivity_names", ["T_positive_full_edge", "F_positive_left"]),
     "interval cover mixes polynomials"),
    ("root_sign", "algebraic_numbers.json",
     lambda d: d["isolations"][3].__setitem__("derivative_sign", "negative"),
     "decreasing isolation failed"),
    ("root_endpoint_value", "algebraic_numbers.json",
     lambda d: d["isolations"][3].__setitem__("value_lower", "-32/16384"),
     "incorrect endpoint evaluation"),
    ("compact_source_coefficient", "endpoints.json", mutate_compact_coefficient,
     "structural-to-compact identity: chi"),
    ("field_power", "endpoints.json",
     lambda d: d["field_powers"][0]["value"].__setitem__(0, "0"),
     "algebraic field power"),
    ("duplicate_orbit_coordinates", "endpoints.json",
     lambda d: d["orbit"][0].__setitem__(
         "coordinates", deepcopy(d["orbit"][1]["coordinates"])),
     "orbit coordinate"),
    ("missing_lift", "endpoints.json", lambda d: d["lifts"].pop(),
     "complete lift-to-orbit equality"),
    ("field_modulus", "endpoints.json",
     lambda d: d.__setitem__("field_modulus", "T^2+14"),
     "endpoint field specification does not match checker arithmetic"),
]


def mutation_checks():
    records = []
    with tempfile.TemporaryDirectory(prefix="step1_certificate_audit_") as tmp:
        temporary_root = Path(tmp)
        for name, filename, mutate, expected in MUTATIONS:
            data = load_certificate(filename)
            mutate(data)
            directory = temporary_root / name
            directory.mkdir()
            (directory / filename).write_text(json.dumps(data))
            result = subprocess.run(
                [sys.executable, str(CHECKER), "--algebra-only",
                 "--certificate-dir", str(directory)],
                text=True, capture_output=True, check=False,
            )
            lines = (result.stdout + result.stderr).strip().splitlines()
            last_line = lines[-1] if lines else ""
            require(result.returncode != 0 and expected in last_line,
                    "mutation was not rejected as expected: " + name + ": " + last_line)
            records.append({"name": name, "certificate": filename,
                            "status": "REJECTED_AS_EXPECTED",
                            "exit_code": str(result.returncode), "rejection": last_line})
            print("PASS mutation", name, flush=True)
    return records


def source_checks():
    spec = importlib.util.spec_from_file_location("step1_audit_acceptance_checker", CHECKER)
    require(spec is not None and spec.loader is not None, "cannot load exact arithmetic module")
    verifier = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(verifier)

    files = {p.name: json.loads(p.read_text())
             for p in CERTIFICATES.glob("*.json") if p.name != "manifest.json"}
    variables = sorted({v for d in files.values() if d["kind"] == "polynomial_bundle"
                        for v in d["variables"]} | {"geom_b"})
    common = verifier.Ring(variables)
    rings = {name: verifier.Ring(d["variables"], d.get("definitions", {}))
             for name, d in files.items() if d["kind"] == "polynomial_bundle"}

    def polynomial(filename, expression, mapping=None):
        local = rings[filename]
        coefficients = local.expr(expression)
        substitutions = {v: common.expr(e) for v, e in (mapping or {}).items()}
        result = {}
        for exponents, coefficient in coefficients.items():
            term = common.const(coefficient)
            for variable, exponent in zip(local.variables, exponents):
                if exponent:
                    value = substitutions.get(variable, common.expr(variable))
                    term = common.mul(term, common.pow(value, exponent))
            result = common.add(result, term)
        return result

    def invariant(u, v, moment):
        g = common.add(common.scale(v, 2), common.scale(u, -3))
        eta = common.add(v, common.scale(u, -2))
        chi = common.add(
            common.scale(common.mul(
                common.add(common.scale(u, 3), common.scale(v, -1)),
                common.add(v, common.scale(u, -1), common.const(12))), Fraction(1, 2)),
            common.scale(moment, -1),
        )
        return common.add(common.scale(common.mul(common.pow(g, 2), eta), 4),
                          common.scale(common.pow(chi, 2), -1))

    records = []

    def same(name, lhs, rhs):
        require(lhs == rhs, "cross-file source mismatch: " + name)
        records.append({"name": name, "status": "PASS"})
        print("PASS source", name, flush=True)

    for name in ("u", "v", "w"):
        same("trace_to_boundary_" + name,
             polynomial("boundary_trace.json", name), polynomial("boundary_core.json", name))
    same("boundary_R_to_edges", polynomial("boundary_core.json", "R"),
         polynomial("boundary_edges.json", "R"))

    geometry = "interior_geometry.json"
    mapping = {"ax": "x", "ay": "y", "bx": "geom_b", "by": "0"}
    u, v, moment = [polynomial(geometry, name, mapping)
                    for name in ("initial_u", "initial_v", "initial_moment")]
    same("ambient_normalized_B_slice", invariant(u, v, moment),
         polynomial("interior_core.json", "H", {"v": ["pow", "geom_b", "2"]}))

    mapping = {"ax": ["add", "x", "z"], "ay": "y",
               "bx": ["add", "x", ["neg", "z"]], "by": "y"}
    u, v, moment = [polynomial(geometry, name, mapping)
                    for name in ("initial_u", "initial_v", "initial_moment")]
    same("ambient_to_transverse_coordinates", invariant(u, v, moment),
         polynomial("boundary_curvature.json", "ambient_R", {"b2": ["pow", "y", "2"]}))
    same("cusp_factor_to_transverse_factor", polynomial("interior_cusp.json", "R"),
         polynomial("boundary_curvature.json", "cusp_R", {"b2": ["pow", "y", "2"]}))
    same("boundary_Delta_to_cusp_Delta",
         polynomial("interior_boundary.json", "Delta", {"X": "x", "Y": "y"}),
         polynomial("interior_cusp.json", "Delta"))
    same("geometry_Delta_to_cusp_Delta",
         polynomial(geometry, "trace_Delta", {"tx": "x", "ty": "y"}),
         polynomial("interior_cusp.json", "Delta"))
    same("curvature_polynomial_to_secant_capture",
         polynomial("boundary_curvature.json", "y_minimal_polynomial"),
         polynomial("coordinate_bridges.json", "f_y"))

    isolation = next(x for x in files["algebraic_numbers.json"]["isolations"]
                     if x["name"] == "transverse_y")
    isolated_polynomial = {}
    for exponent, coefficient in enumerate(isolation["coefficients"]):
        isolated_polynomial = common.add(isolated_polynomial, common.scale(
            common.pow(common.expr("y"), exponent), Fraction(coefficient)))
    same("isolated_y_polynomial_to_capture", isolated_polynomial,
         polynomial("coordinate_bridges.json", "f_y"))

    base = next(x for x in files["endpoints.json"]["orbit"]
                if x["exponents"] == ["1", "2", "-1", "-2"])
    quadratic = {}
    for i in range(4):
        for j in range(4):
            quadratic = common.add(quadratic, common.scale(
                common.mul(common.expr("x" + str(i)), common.expr("x" + str(j))),
                -Fraction(base["hessian"][i][j]) / Fraction(59049, 2048)))
    same("normalized_SOS_to_actual_base_Hessian", quadratic,
         polynomial("endpoint_identities.json", "negative_hessian"))

    q = (Fraction(1, 4), Fraction(1, 4))
    q2 = verifier.field_mul(q, q)
    value = verifier.field_add(
        verifier.field_add(tuple(2*a for a in q2), tuple(-a for a in q)),
        (Fraction(2), Fraction(0)),
    )
    same("endpoint_q_satisfies_2q2_minus_q_plus2", value, (0, 0))
    require(len(records) == 13, "unexpected source comparison count")
    return records


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("--report", type=Path, default=ROOT / "logs" / "audit_checks.json")
    args = parser.parse_args()
    mutations = mutation_checks()
    sources = source_checks()
    require(len(mutations) == 14, "unexpected mutation count")
    result = {
        "status": "SUPPLEMENTARY_AUDIT_PASS",
        "scope": "Existing mutation probes and selected cross-file source comparisons; not default acceptance.",
        "checker_sha256": hashlib.sha256(CHECKER.read_bytes()).hexdigest(),
        "mutation_mode": "--algebra-only in temporary directories without manifests",
        "mutation_count": str(len(mutations)), "source_comparison_count": str(len(sources)),
        "mutations": mutations, "source_comparisons": sources,
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(result, indent=2) + "\n")
    print("SUPPLEMENTARY_AUDIT_PASS: 14 rejected mutations; 13 exact source comparisons")


if __name__ == "__main__":
    main()
