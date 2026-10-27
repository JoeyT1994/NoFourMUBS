"""Build the final human-readable report from the fresh bound receipts."""
from collections import Counter
import csv
from fractions import Fraction
import hashlib
import json
from pathlib import Path
import statistics

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def main():
    summary = json.loads((HERE / "receipts/summary.json").read_text())
    if summary["verdict"] != "PASS" or summary["requested_spheres"] != 82:
        raise ValueError("A fresh complete 82-source replay is required")
    kinds, modes, psi_modes = Counter(), Counter(), Counter()
    weighted = 0
    rows, sizes, norms, pivots = [], [], [], []
    margins = {"T3 parameter": [], "T3 phase distance": [],
               "T0/T1 target": [], "T1 orientation": []}
    comparisons = 0
    for entry in summary["sources"]:
        i = entry["seed"]
        path = HERE / f"results/seed_{i}.json"
        raw = path.read_bytes()
        if hashlib.sha256(raw).hexdigest() != entry["proposal_sha256"]:
            raise ValueError(f"Proposal {i} changed after replay")
        p = json.loads(raw)
        r = json.loads((HERE / f"receipts/seed_{i}.json").read_text())
        if not r["full_sphere"]:
            raise ValueError("Inconsistent accepted source list")
        kinds.update(r["cap_kinds"])
        n, f = len(p["caps"]), len(p["coverage"]["facets"])
        sizes.append(n)
        norms.append((Fraction(r["coverage"]["max_norm_squared"]), i))
        comparisons += n * f
        for c in p["caps"]:
            modes[c.get("mode", "polynomial")] += 1
            weighted += c.get("weighted_target", False)
            if "t3_parameter" in c:
                psi_modes[c.get("psi_remainder", "global")] += 1
        for cr in r["cap_results"]:
            if cr["kind"] == "T3":
                margins["T3 parameter"].append(cr["target_margin_lower"])
                margins["T3 phase distance"].append(cr["distance_margin_lower"])
                for key in ("parameter", "distance"):
                    pivots.append(cr[key]["min_ldl_pivot_lower"])
            else:
                margins["T0/T1 target"].append(cr["target_margin_lower"])
                margins["T1 orientation"].extend(cr.get("orientation_margins_lower", []))
                pivots.append(cr["min_ldl_pivot_lower"])
        rows.append(dict(
            seed=i, original_boxes=sum(r["original_boxes"].values()),
            original_T3_boxes=r["original_boxes"].get("T3", 0), caps=n,
            T0_caps=r["cap_kinds"].get("T0", 0),
            T1_caps=r["cap_kinds"].get("T1", 0),
            T3_caps=r["cap_kinds"].get("T3", 0),
            facets=f, replay_seconds=r["elapsed_seconds"], status="CERTIFIED"))
    with (HERE / "sphere_counts.csv").open("w", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    neg = json.loads((HERE / "negative_tests_receipt.json").read_text())
    smoke = json.loads((HERE / "mode_verification_receipt.json").read_text())
    construction = json.loads((HERE / "results/run_receipt.json").read_text())
    if neg["status"] != "CERTIFIED" or smoke["status"] != "CERTIFIED":
        raise ValueError("Required regressions have not passed")
    count, facets = summary["certified_sphere_caps"], summary["certified_sphere_facets"]
    objects = count + facets
    worst, worst_seed = max(norms)
    stats = dict(
        status="CERTIFIED", full_spheres=82, original_boxes=569854,
        original_T3_boxes=159836, caps=count, facets=facets, caps_plus_facets=objects,
        cap_kinds=dict(kinds), matrix_witnesses=count+kinds["T3"],
        exact_facet_cap_support_comparisons=comparisons,
        modes=dict(modes), T3_Psi_modes=dict(psi_modes), weighted_caps=weighted,
        cap_count_min=min(sizes), cap_count_median=statistics.median(sizes),
        cap_count_max=max(sizes), remaining_box_spheres=0, remaining_boxes=0,
        margin_lower_bounds={k:min(v) for k,v in margins.items() if v},
        minimum_LDL_pivot_lower=min(pivots),
        worst_polar_vertex_norm_squared=str(worst), worst_polar_source=worst_seed,
        construction_wall_seconds=construction["seconds"],
        replay_wall_seconds=summary["elapsed_wall_seconds"],
        replay_total_source_seconds=summary["total_source_seconds"],
        negative_tests_rejected=neg["rejected_count"],
        smoke_cap_cases=smoke["certified_cap_cases"], input_sha256=summary["input_sha256"])
    (HERE / "SUMMARY.json").write_text(json.dumps(stats, indent=2)+"\n")
    negrows = "\n".join(
        f"| {t['name']} | REJECTED | {t['result'].get('reason', t['result'].get('error', 'Rejected'))} |"
        for t in neg["tests"])
    marginrows = "\n".join(f"| {name} | {min(values):.16g} |"
                          for name, values in margins.items() if values)
    selected = sorted(rows, key=lambda r: r["caps"], reverse=True)[:5]
    selected += [r for r in rows if r["seed"] in (2346, 2747) and r not in selected]
    examplerows = "\n".join(
        f"| {r['seed']} | {r['original_boxes']:,} | {r['caps']} | {r['T3_caps']} | {r['facets']} |"
        for r in selected)
    report = rf"""# ZC2b return: T3 caps and complete mixed-sphere coverage

## Result

**CERTIFIED, relative to the inherited chart inputs. All 82 supplied source
spheres have full cap covers.** Every selected cap passed a fresh Arb
transfer replay, and each identical combined T0/T1/T3 cap list passed its
exact polar-facet coverage replay. There are **zero source spheres and zero
boundary boxes left to the box method** within this 82-source extract.

| Quantity | Certified count |
|---|---:|
| Source spheres | 82 / 82 |
| Original boxes replaced | 569,854 |
| Original T3 boxes replaced | 159,836 |
| T0 caps | {kinds['T0']:,} |
| T1 caps | {kinds['T1']:,} |
| T3 caps | {kinds['T3']:,} |
| All caps | {count:,} |
| Exact coverage facets | {facets:,} |
| Caps plus facets | {objects:,} |
| 5 by 5 norm witnesses | {count+kinds['T3']:,} |
| Remaining boxes in this extract | 0 |

**CERTIFIED counts; rounded derived comparison.** There are approximately
{569854/count:.2f} times fewer caps than original boxes. Counting each cap
and each coverage facet separately gives a reduction of about
{569854/objects:.2f} times ({100*(1-objects/569854):.2f}% fewer listed objects).
These are object-count comparisons, not measurements of Lean execution
time or trusted-kernel cost. Coverage also performs {comparisons:,} exact
facet-versus-cap support checks. Each T3 cap needs two norm matrices;
each T0/T1 cap needs one, with separate T1 orientation checks where required.

**CERTIFIED.** The minimum, median and maximum cap counts per source are
{min(sizes)}, {statistics.median(sizes):g} and {max(sizes)}.
The complete per-source inventory is sphere_counts.csv, with an individual
receipt for every source in receipts/.

| Source | Original boxes | Caps | T3 caps | Exact facets |
|---|---:|---:|---:|---:|
{examplerows}

## The new cap theorem

**PROVED.** Two independent five-by-five quadratic witnesses suffice for
the T3 cap test. Their sizes depend on the four source coordinates plus one
constant coordinate. The four-dimensional parameter output and
36-dimensional phase-distance output therefore have the same witness size.
T3_THEOREM.md contains the complete derivation and hypotheses.

For \(v\cdot x\ge h\), \(\|x\|=1\), \(w=rx\), put \(e=v/\|v\|\),
\(t=h/\|v\|\). An interior anchor uses \(c=rte\) and
\(\Delta^2=r^2(1-t^2)\). A true sphere anchor uses \(c=re\) and
\(\Delta^2=2r^2(1-t)\). Write

\[
Q(w)=\overline Q+\overline D(w-c)+\xi(w).
\]

For any fixed phase output \(B\), the complete errors are

\[
E_B^{{\rm poly}}=\tfrac12\|BH_2\|\Delta^2+T_0(BX),\qquad
E_B^{{\rm local}}=\tfrac12(\|BH_2\|+T_2(BX))\Delta^2.
\]

Here \(T_0(C)\), \(T_2(C)\) are proved bounds for \(Cz\), \(CD^2z\)
on the original source ball. Ordinary norm bounds or the replayed
output-weighted bounds supply them.

**PROVED.** Let \(L\) extract the first three ordered corner phases,
\(S\) select the side block, \(R=(P_3\otimes P_3)S\), and
\(g=D\psi(S\overline Q)\), with \(\psi=\operatorname{{Im}}\Psi\). Set

\[
A=M_e^{{-1}}\begin{{pmatrix}}L\\-2gR\end{{pmatrix}},\qquad
D_R=\|R\overline D\|\Delta+E_R.
\]

The full inverse-parameter remainder is

\[
\boxed{{\varepsilon_p=E_A+72\|M_e^{{-1}}e_4\|D_R^2}}.
\]

This retains the composite map \(A\) before taking norms, includes the
quadratic and normal parts of the phase displacement, and includes the
factor two from the signed coordinate \(-2\operatorname{{Im}}\Psi\).
For a fixed full row/column alignment and integer winding, put
\(B_F=h_{{36}}\Pi G\). The complete Fourier-distance remainder is
simply \(\varepsilon_F=E_{{B_F}}\).

**PROVED and implemented.** The sharper signature remainder is

\[
|\rho_\psi|\le\min\left\{{36D_R^2,\;
\tfrac12\|D^2\psi(S\overline Q)\|D_R^2+
12\sqrt{{18}}D_R^3\right\}}.
\]

Its contribution is \(2\|M_e^{{-1}}e_4\||\rho_\psi|\).
The exact 24-frequency identity proves
\(\|D^2\psi\|\le72\), \(\|D^3\psi\|\le72\sqrt{{18}}\).
verify_signature_identity.py checks the finite identity using integers.
The final collection has {weighted:,} weighted caps; T3 Psi-mode counts
are {dict(psi_modes)}.

### Matrix and strict-margin tests

**PROVED.** For either normalized affine output \(d+Fx\), choose
\(s\ge0\), \(\lambda\in\mathbb R\), \(\mu\ge\|a\|\). Reconstruct

\[
\mathcal S=\begin{{pmatrix}}
\lambda I-F^TF-\operatorname{{sym}}(ea^T)&-F^Td-(\mu e-ta)/2\\
*&s-\|d\|^2+\mu t-\lambda
\end{{pmatrix}}.
\]

Positive interval LDL pivots certify \(\mathcal S\succ0\). The identity
in the theorem proves \(\|d+Fx\|\le\sqrt s\) on the entire cap.
The strict tests are \(r_e(1-\sqrt{{s_p}})>\varepsilon_p\) and
\((3/20)(1-\sqrt{{s_F}})>\varepsilon_F\).
The X-ball parameter ellipsoid is separately certified inside W's
\(E_{{1/5}}\).

**CERTIFIED.** Minimum physical margins from the fresh replay are strictly
positive. The following decimal approximations summarize the certified
binary lower bounds; the unrounded binary values are retained in the receipts.

| Inequality | Recorded lower bound, rounded for display |
|---|---:|
{marginrows}

The minimum retained LDL pivot lower bound is approximately {min(pivots):.16g}.
Every exact polar vertex has squared norm at most one. The largest
occurs in source {worst_seed}; its exact rational value is retained in
SUMMARY.json and that source's receipt.

## Mixed coverage and format

**PROVED and CERTIFIED for every retained source.** One polar hull covers
the combined T0/T1/T3 caps. For \(a_i=v_i/h_i\), the family covers the
sphere exactly when the unit ball lies in
\(\operatorname{{conv}}\{{a_i\}}\). Every facet is checked for exact
incidence, strict support against every other cap, complete ridge
incidence and exact dual-vertex norm. Appendix B proves completeness.

**PROVED interface; CERTIFIED concrete records.** Existing descriptors
and cap fields retain their meanings. New T3 fields are t3_parameter,
t3_distance, t3_alignment, t3_group_sha256 and optional psi_remainder.
The first two contain independent norm witnesses. The alignment fixes
full permutations and 36 integer windings with convention \(+2\pi N\);
the corner winding keeps its existing meaning. See CAP_FORMAT.md.

## Regressions and prerequisites

**CERTIFIED.** All {neg['negative_test_count']} deliberately invalid
changes were rejected from a passing actual full-sphere baseline:

| Test | Result | Failed obligation |
|---|---|---|
{negrows}

The deleted-cap test updates the count and indices and removes incident
facets. It proves that the retained facet certificate is invalid after
deletion, not that every alternate cover by the remaining caps is
impossible. The corner-winding test refreshes its binding hash, so
arithmetic must reject it. Conflicting normal/threshold aliases are
ignored consistently; both checks use the authoritative v,h fields.

**CERTIFIED.** All 12 actual-cap combinations of three anchor modes,
two Psi modes and two weighting choices passed. Target containment in W
passed. Production dispatch rejected a T3 transfer with no accepted
target C1e object. Receipts are mode_verification_receipt.json and
negative_tests_receipt.json.

## Execution and trust boundary

**NUMERICAL proposal methods.** Floating optimization proposes geometry,
alignments and multipliers; SciPy proposes facets. Every retained cap
then passes Arb, and coverage passes exact integer replay. Floating
success, stored margins and constructor status do not decide acceptance.
Weighted refinement and deletion of redundant caps closed all spheres;
no source remains at a construction budget or requires its old boxes.

**NUMERICAL timings, measured wall time.** The final weighted construction
invocation took {construction['seconds']:.2f} seconds with six workers.
Fresh full replay took {summary['elapsed_wall_seconds']:.2f} seconds with
{summary['workers']} workers, including input loading and accounting.
Summed per-source replay time was {summary['total_source_seconds']:.2f}
seconds; concurrent workers overlap. These times exclude earlier stopped
exploration, documented in initial_runs_receipt.json, and do not measure
Lean performance.

**CERTIFIED binding.** Input SHA-256:
{summary['input_sha256']}.
The fresh receipt hashes the exact input and proposal bytes read, records
checker hashes, and confirms the bound code/input/proposals stayed
unchanged. Environment: Python {summary['python']}, python-flint 0.9.0,
NumPy 2.2.6, SciPy 1.17.0, SymPy 1.14.0 and mpmath 1.3.0;
Arb precision {summary['precision_bits']} bits. Commands are in README.md.

**NOT ESTABLISHED by this return.** The finite geometric replay retains
the matched-completion germ, seed target validity, W/U chart and XS
identification theorem as dependencies. Production integration preserves
accepted target C1e. This return does not recertify Stage C, the complete
atlas, the X-ball outgoing boundary or a global no-four-MUB theorem.
Lean implementation and kernel replay remain separate work.
DEPENDENCIES.md gives the complete interface.
"""
    (HERE / "REPORT.md").write_text(report)
    (ROOT / "README.md").write_text(
        "# ZC2b T3 cap return\n\n"
        "Read [ZC2b/REPORT.md](ZC2b/REPORT.md) for results, "
        "[ZC2b/README.md](ZC2b/README.md) for replay commands, and "
        "[ZC2b/T3_THEOREM.md](ZC2b/T3_THEOREM.md) for the complete proof.\n\n"
        "All 82 supplied transfer spheres certify with caps. Earlier global "
        "claims in inherited context are not newly established by this return.\n")
    print(json.dumps(stats, indent=2))


if __name__ == "__main__":
    main()
