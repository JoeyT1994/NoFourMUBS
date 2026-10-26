#!/usr/bin/env python3
"""Assemble the final ZC report from actual per-ball replay results."""
import csv
import json
from pathlib import Path
import statistics

HERE = Path(__file__).resolve().parent


def main():
    summary = json.loads((HERE / "coverage_summary.json").read_text())
    rows = list(csv.DictReader((HERE / "per_ball_cap_counts.csv").open()))
    full = [r for r in rows if r["certified_full_sphere"] == "True"]
    cap_counts = [int(r["replayed_caps"]) for r in full]
    old = sum(int(r["original_boxes"]) for r in full)
    zt = sum(int(r["ZT_certified_patches"]) for r in full if r["ZT_certified_patches"])
    caps = sum(cap_counts)
    total_old = sum(int(r["original_boxes"]) for r in rows)
    failed = [r for r in rows if r["source_model_status"] == "NOT ESTABLISHED"]
    open_rows = [r for r in rows if r["certified_full_sphere"] != "True"]
    search_gaps = [r for r in open_rows if r["source_model_status"] == "CERTIFIED"]
    if search_gaps:
        gap_details = "\n".join(
            f"| {r['seed']} | {r['proposed_caps']} | {r['numerical_hull_minimum_distance']} |"
            for r in search_gaps)
        unresolved = ("**NOT ESTABLISHED — cap search.** The following source normal forms passed, "
                      "but the bounded numerical construction did not produce an independently certified full cover. "
                      "A proposed-cap count is not a certified sphere-cover count. The displayed polar distances "
                      "are numerical diagnostics, with coverage requiring at least one.\n\n"
                      "| Seed | Proposed caps | Numerical minimum polar facet distance |\n"
                      "|---:|---:|---:|\n" + gap_details + "\n")
    else:
        unresolved = ("**CERTIFIED.** Every sample source whose whole-ball normal form passed "
                      "has a complete independently checked cap cover in this return.\n")
    partial_ids = summary.get("certified_caps_only_seed_ids", [])
    if partial_ids:
        unresolved += ("\n**CERTIFIED partial transfers.** All "
                       f"{summary['certified_caps_only_total_caps']:,} individual cap transfers on sources "
                       f"`{', '.join(map(str, partial_ids))}` passed independent target and orientation replay. "
                       "Their result status is `CERTIFIED caps only`; these caps are excluded from all "
                       "complete-cover totals and reduction factors above.\n")
    gap_path = HERE / "gap_replay.json"
    if search_gaps and gap_path.exists():
        unresolved += ("\n**CERTIFIED incompleteness of the frozen candidate lists.** The exact witnesses in "
                       "`gaps/` and their replay records in `gap_replay.json` give a rational vector "
                       "`y=n/d` for each remaining list, with `v_i.y<=h_i` for every cap and `||y||>1`. "
                       "Consequently `y/||y||` is outside every listed cap. `verify_gap.py` checks these "
                       "claims with standard-library integer and rational arithmetic. This proves "
                       "incompleteness of those particular lists, not impossibility of a different cover "
                       "using the available transfers. Both open sources have only T0/T1 descriptors, "
                       "so omitting T3 is not the cause of their gaps.\n")
    example_ids = [6, 8, 23, 37, 73, 104, 937, 2089, 2299]
    example_rows = [r for i in example_ids for r in full if int(r["seed"]) == i]
    if full:
        widest = max(full, key=lambda r: int(r["replayed_caps"]))
        if widest not in example_rows:
            example_rows.append(widest)
    table = "\n".join(f"| {r['seed']} | {int(r['original_boxes']):,} | {int(r['ZT_certified_patches']):,} | {r['replayed_caps']} | {int(r['original_boxes'])/int(r['replayed_caps']):.2f} |" for r in example_rows)
    rejection = json.loads((HERE / "rejection_results.json").read_text())
    models = summary["source_models_certified"]
    front = f'''# Return ZC — Certified spherical-cap boundary transfers

**Prepared 26 October 2026 from the supplied `ZC_cap_transfers.zip`.**

## 1. Result and exact scope

**PROVED.** A cap transfer can be checked with a five-by-five positive-semidefinite matrix and explicit normal-form error bounds. Allowing an affine nonnegative cap multiplier makes the quadratic positivity certificate lossless for strict positivity on a genuine spherical cap. The ordinary two-scalar sphere/cap S-procedure is only sufficient; this report gives an exact counterexample to unconditional losslessness.

**PROVED.** Positive-threshold rational caps cover the unit three-sphere precisely when their complementary halfspace polytope lies in the closed unit four-ball. The supplied short coverage certificate verifies complete polar-facet enumeration with integer supporting inequalities and ridge incidence, then checks the norms of every dual vertex. Its correctness does not assume that a numerical convex-hull program returned all facets.

**CERTIFIED.** This return contains complete new cap-transfer and exact full-sphere coverage certificates for **{len(full)} of the 200 supplied seed spheres**. On exactly those sources, **{old:,} original boxes and {zt:,} previous ZT patches are replaced by {caps:,} certified caps**. The reductions are {old/caps if caps else 0:.4f} and {zt/caps if caps else 0:.4f}, respectively. The certified cap counts have minimum {min(cap_counts) if cap_counts else '—'}, median {statistics.median(cap_counts) if cap_counts else '—'}, and maximum {max(cap_counts) if cap_counts else '—'}.

**CERTIFIED.** The smallest target margin among these complete covers is greater than {summary.get('all_certified_target_margin_lower')}; the smallest required orientation margin is greater than {summary.get('all_certified_orientation_margin_lower')}. Target margins are in the target frame's Euclidean norm units, and orientation margins refer to the required signed imaginary signatures. All reported finite margins are outward-rounded lower bounds from Arb. Every accepted source normal form, phase-lift convention, transfer target, and required orientation is recomputed by replay.

**NUMERICAL.** Cap directions, thresholds, multiplier proposals, adaptive additions, and pruning are numerical searches. A numerical cap cover is promoted to CERTIFIED only after every cap inequality and the exact coverage certificate pass. Random sphere samples are diagnostics only. Each proposal and replay result is provided separately; `per_ball_cap_counts.csv` has one row for each of the 200 sample sources.

**NOT ESTABLISHED.** A new cap cover is not certified here for {len(open_rows)} sample source(s). Their IDs are `{', '.join(r['seed'] for r in open_rows) or 'none'}`. No new X-ball cap cover, T3 cap certificate, full 2,328-source result, count optimality theorem, or Lean implementation is claimed. The cap-transfer theorem extends to an independently verified augmented X-ball normal form, but the concrete augmented replay implementation is not in this input archive and was not rebuilt here.

### Status and local geometric premise

**PROVED** denotes a mathematical implication under its explicitly stated hypotheses. **CERTIFIED** denotes an exact or outward interval computation that can be replayed with the supplied code. **NUMERICAL** denotes candidate search or diagnostics. **NOT ESTABLISHED** denotes a conclusion that this return does not prove.

All branch statements retain the local matched-completion germ in `context/Z_THEOREM.md`. The source contraction extends that germ over its original ball; this return does not silently assume a previously certified whole source ball. The analogous local F6-012 germ is needed for the conditional X-ball statement. No MUB atlas completeness result or Stage C calculation is used. These certificates establish boundary-transfer geometry, not the nonexistence of four mutually unbiased bases.

## 2. Finite results and comparison

**CERTIFIED input counting.** The supplied sample has 200 sources with complete transfer lists and {total_old:,} original source-boundary boxes. The remaining source records supply target headers. This return does not extrapolate counts to their unsupplied transfer lists. The original X-ball boxes are outside the seed-sphere count.

| Seed | Original boxes | Previous ZT certified patches | Certified caps | Original boxes / caps |
|---:|---:|---:|---:|---:|
{table}

The comparison uses `certified_patch_count` in the supplied `ZT_per_ball_counts.csv`, rather than a preliminary proposed-patch count. Full per-source statuses, counts, margins, coverage-facet counts, and current-proposal hash matches are in `per_ball_cap_counts.csv`.

**CERTIFIED.** {models} source normal forms succeeded during candidate construction. Entries lacking a certified new full cover retain their explicit failure or open status; an old listed box is not accepted as an unverified fallback by this checker. The source models currently marked not established are `{', '.join(r['seed'] for r in failed) or 'none'}`. A source-model failure is a failure of this sufficient contraction test, not proof that the source branch does not exist.

{unresolved}

**PROVED comparison of shape constraints.** The supplied ZT report's 627-leaf lower bound for seed 6 concerns its fixed dyadic traversal and transfer descriptors. That older noncontainment calculation is not replayed here. A cap cover uses a different region shape and a different exact coverage theorem. Therefore a smaller cap count is compatible with that lower bound. The computational gain comes from adapting region boundaries to the transfer geometry.

## 3. Implemented construction and verification

**NUMERICAL construction.** The search uses the existing T0/T1 descriptors and windings. Candidate cap axes come from source-box directions and constrained minimizers of the target predictor. Initial candidates are ordered by their supplied box coverage; thresholds are adjusted by bisection. A floating convex hull identifies uncovered polar directions, at which further caps are proposed. Redundant caps are greedily removed, followed by a complete independent replay. No new neighbour-ball catalogue or atlas search is required.

For a normalized affine target `d+F x`, write `G=F^T F`, `b=F^T d`, and diagonalize `G` numerically. At a fixed `lambda>lambda_max(G)`, the scalar-multiplier dual upper bound is

    s = ||d||² + lambda - mu*t
        + (b + mu*e/2)^T (lambda*I-G)^(-1) (b + mu*e/2),

with the minimizing nonnegative `mu` obtained from its one-dimensional quadratic. A bounded scalar search proposes `lambda`. The final certificate stores exact binary-rational `lambda`, `mu`, and `s`; the verifier never trusts the optimizer or its reported objective.

**CERTIFIED implementation.** `cap_verify.py` recomputes coefficients and errors, reconstructs the five-by-five matrix, and accepts only a strict interval LDL test. The target additionally requires `r_target*(1-sqrt(s)) > error`. The two orientation signs are checked using the exact linear-cap minimum and the quadratic signature remainder. The code also supports a nonzero four-vector affine multiplier, with its second-order-cone inequality checked independently. The achieved search primarily uses the scalar subfamily; losslessness of the stronger theorem is not substituted for a successful computational witness.

**CERTIFIED achieved variants.** Across the complete covers, {summary.get('certified_cap_modes', {}).get('polynomial', 0):,} cap records use polynomial mode, {summary.get('certified_cap_modes', {}).get('local', 0):,} use the interior-anchor local mode, and {summary.get('certified_cap_modes', {}).get('local_sphere', 0):,} use sphere-anchor local mode. The `weighted_target` flag is set on {summary.get('certified_weighted_target_caps', 0):,} records; it activates the weighted bounds for nonlinear transfers. There are {summary.get('certified_nonzero_affine_multiplier_caps', 0):,} records with a nonzero affine-multiplier vector. The exact coverage certificates contain {summary.get('certified_total_facets', 0):,} facets altogether and require {summary.get('coverage_support_dot_checks', 0):,} supporting dot-product checks. The cap-count reduction is therefore not asserted to equal a wall-clock or Lean-kernel speedup factor.

Polynomial caps use the interior cap-rim anchor and the global normal correction. Local caps use an enclosed true value and derivative from the original source contraction. The `local_sphere` mode fixes the anchor at `c=r*e` and uses `Delta²=2*r²*(1-t)`, allowing the numerical search to reuse its centre jet while varying the threshold. All Taylor segments remain in the original closed ball. Bisection is a proposal heuristic, because the chosen anchor and sufficient bounds vary with the threshold; maximal cap size is not asserted.

Caps marked `weighted_target: true` use the output-preserving normal bounds in `weighted.py`. They retain `C=AX` inside the projected residual tensors before taking norms and recompute equations (25)–(29) of the supplied `ZT_REPORT.md`. The polynomial target error is `hnorm*Delta²/2+T0_C`; the local target error is `(hnorm+T2_C)*Delta²/2`. The original source contraction remains unchanged, and no weighted contraction condition is assumed. `weighted_audit.md` and `weighted_test.json` provide the formulas, code audit, and two independently checked example outputs. Both orientation bounds remain independently checked with their original valid constants. The lossless quadratic orientation variant and direct quartic SOS variant below are proved alternatives; the achieved replay uses the explicitly described affine target and linear-orientation bounds.

**CERTIFIED input consistency.** Transfer and coverage use exactly the same stored integer normal `v` and hexadecimal threshold `h`. The combined checker sanitizes these fields before calling coverage, so additional standalone coverage aliases cannot substitute different cap geometry. The lightweight replay input preserves all seed headers, descriptor order, target indices, corners, group elements, and windings; it discards only unused original box arrays and the outgoing edge record. The full supplied input remains available in `context/` for reconstruction and provenance.

## 4. Replay and negative controls

From the extracted return directory, install `requirements.txt`, then run the following commands in its `ZC_work` subdirectory:

```bash
python -m pip install -r ../requirements.txt
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 python cap_verify.py \\
  transfer_input.json.gz certificates/seed_6.json --output replay_seed_6.json
python coverage.py --self-test
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 python test_rejection.py \\
  transfer_input.json.gz certificates/seed_6.json --output rejection_replay.json
```

`cap_verify.py` uses NumPy and python-flint; the independent coverage verifier uses Python integers only. SciPy is needed by proposal and hull construction, not by certificate coverage replay. `replay_all.py` rechecks all delivered complete certificates sequentially using the compact input, preventing the large original dyadic box lists from being duplicated across workers.

**CERTIFIED negative controls.** The real-data rejection suite reports **{rejection['status']}** on {len(rejection['tests'])} checks. It accepts the untampered real cap, rejects a negative multiplier, false zero target bound, changed winding, unsupported cap enlargement, zero normal, missing hull facet, changed dual vertex, and invalid affine-multiplier norm, and verifies that extra aliases cannot override the true cap geometry. The separate exact coverage fixture includes boundary equality and robust strict coverage cases. This tests mathematical failure modes rather than mirroring the construction code.

**CERTIFIED gap controls.** The exact uncovered-point verifier also passed one positive control and five invalid-witness controls, recorded in `gap_replay_tests.json`. Package assembly rechecks both gap witnesses against the frozen candidate lists and verifies the hashes of all 200 frozen proposals.

`results/` contains the finite replay records with input, certificate, and code SHA-256 values. `runtime_versions.json` records the measured dependency versions. A full archive manifest fixes the delivered bytes. Timing fields are measurements from this run, not a theorem about future Arb, Julia, or Lean execution time. No runtime claim is extrapolated to the entire atlas.

## 5. Proofs

The following sections give the cap-transfer certificate, its losslessness proof, explicit error accounting and alternatives, an exact example, qualitative completeness under shrinking caps, and the exact coverage criterion and its completeness proof.

'''
    theory = (HERE / "cap_theory.md").read_text()
    coverage = (HERE / "coverage_notes.md").read_text()
    # The standalone coverage note includes related appendices that are
    # already included from their dedicated, more detailed source files.
    coverage = coverage.split("## Qualitative completeness when combined with local transfer jets")[0].rstrip()
    scalar = (HERE / "scalar_completeness.md").read_text()
    example = (HERE / "affine_multiplier_example.md").read_text()
    # Keep full proofs in the actual deliverable; the notes' opening status is
    # about their analytic content, while finite replay status is stated above.
    theory = theory.replace("No finite sample has been replayed in this note.",
                            "Finite replay results are reported in Section 2 above.")
    theory = "\n".join("#" + line if line.startswith("#") else line for line in theory.splitlines())
    coverage = "\n".join("#" + line if line.startswith("#") else line for line in coverage.splitlines())
    scalar = "\n".join("#" + line if line.startswith("#") else line for line in scalar.splitlines())
    example = "\n".join("#" + line if line.startswith("#") else line for line in example.splitlines())
    (HERE / "REPORT.md").write_text(front + theory + "\n\n" + example + "\n\n" + scalar + "\n\n" + coverage + "\n")
    print(json.dumps({"report": str(HERE / "REPORT.md"), "words": len((front+theory+example+scalar+coverage).split()),
                      "certified_spheres": len(full), "caps": caps}))


if __name__ == "__main__":
    main()
