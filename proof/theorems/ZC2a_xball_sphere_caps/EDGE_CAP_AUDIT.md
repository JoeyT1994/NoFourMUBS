# ZC2a trust-path audit

## Outcome and meaning

**PROVED at the mathematical level; implementation correspondence
inspected.** The adapted edge-cap path preserves the target and
orientation inequalities in `EDGE_CAP_THEOREM.md`. The compact coverage
schema and its dyadic support hierarchy preserve the original exact
coverage assertion. No remaining false-acceptance path was identified in
these changes under the stated local-chart and target-chart hypotheses.

**NOT ESTABLISHED by this review.** Formal verification of the Python
implementation, Lean-kernel acceptance, or validity of the rest of the
atlas. Full-sphere certification is established only by the final complete
replay receipt, not by this review or by the construction diagnostics.

The inspected trust path is `cert/edgecaps.py`, `cert/caps.py`, the edge
dispatch in `cert/cap_weighted.py`, `cert/edge_wholeball.py`,
`cert/cap_coverage.py`, and `xball_replay.py`. The production integration
in `cert/edgecert.py` and `cert/certify_seed_atlas.py` was also checked.

## 1. Source, target, and descriptor binding

**PROVED, checked invariants.** `edge_source_signature` checks the chart
name, finite binary64 source fields, their dimensions, zero chart centre,
and strictly positive radius. `edge_model` reconstructs the contraction,
verifies the source-frame inverse, and verifies the global phase-lift
margin. A cached model is reused only with the same signature of the
mathematical source fields: chart, centre, frame, radius, recorded phase
centre, and recorded affine frame. Search metadata and old box counts do
not enter this signature or a transfer verdict.

Each cap's `group_index` must be a genuine integer in the existing ordered
group list. The selected group must be T1. Rows, columns, and windings are
validated integer data; the corner and symmetry constructors check their
remaining conditions. The target index must name a parsed seed header,
whose radius and orientation are validated. Transfer-cache entries are
checked against the current model, group, and target objects. These
objects are not mutated by the replay.

**CERTIFIED in the recorded source-validation tests.** Negative and
nonfinite radii, wrong centre dimension, a nonzero edge centre, and reuse
of a model with a different source header are rejected. See
`results/source_validation_tests.json`.

**CERTIFIED exact projection.** The existing
`xball_projection_check.json` records exact JSON-value comparison of the
working headers with the original supplied extract. It preserves all
2,775 seed headers, all 16,100 ordered T1 descriptors, and every
mathematical source field; only outgoing box arrays are omitted. The
8,031,516 original boxes are counted there. This audit inspected the
projection checker and receipt; it did not rerun that large comparison.

## 2. Transfer arithmetic and phase conventions

**PROVED, checked invariants.** No construction-provided error bound,
centre jet, numerical radius, or numerical verdict is accepted as proof.
The source contraction and transfer outputs are rebuilt. Polynomial mode
uses the edge-weighted value bound \(\tau_A\); local modes use the
edge-weighted full Hessian directly. The latter is not obtained by
subtracting independently rounded predictor estimates. The seed-only
weighted cache is bypassed for an edge model.

Both local modes dispatch to the 22-coordinate edge centre jet. Its
residual includes \(-Tc\), its derivative includes \(-T\), and both
are evaluated in the residual lift used by the original left inverse.
The source's first-three-cross-ratio preservation does not trigger the
seed-only exact-linear-corner shortcut. Both target-side signs are
therefore tested.

The scalar certificate parser admits exact integers and finite
binary64-hex values; the cap normal is four exact integers. Cap geometry
requires \(0<h<\|v\|\). The multiplier satisfies the SOC condition,
every LDL pivot must be strictly positive, the target remainder margin
must be strictly positive, and both orientation margins must be strictly
positive. Inconclusive interval signs reject. Floating eigenvalues and
Newton iterations only propose values whose final inequalities are
checked in Arb.

**PROVED, all-cap representative.** Write
\(\delta(w)=Uw+H_2[w,w]/2+Xz(w)\). The lift actually bounded by the
stored-winding test is
\(q_{\mathrm{rec}}(w)=q_{g,0}+D_g\delta(w)\). Its distance from the
recorded affine phase array is strictly below \(\pi\) throughout the
whole source ball. It is consequently the required nearest representative
at every cap point. The horizontal output differs from it by a
row-plus-column array, annihilated by every target cross-ratio and every
side signature.

This formulation also handles possible integer \(2\pi\) centre windings
in a first row or column. On the supplied record those windings are zero,
so it coincides with the direct real dephasing of the residual lift. The
theorem document was clarified accordingly during this audit. No new
code restriction was needed.

## 3. Compact coverage and exact support hierarchy

**PROVED, checked invariants.** The new index-only coverage schema stores
only four cap indices per simplex. Its dual vertex is recomputed by exact
integer determinants and Cramer's rule. The original schema still checks
its supplied numerator and denominator by exact incident equalities.
Both schemas check distinct valid indices, nonzero determinants, strict
support against every nonincident polar point, duplicate facets, two
incidences for every triangular ridge, and every exact dual norm.

The accelerated support test constructs its own hierarchy from the same
exact cap rows. For each rational polar coordinate \(q_{ij}\), with
\(S=2^{32}\), it stores

\[
\ell_{ij}=\lfloor Sq_{ij}\rfloor,
\qquad u_{ij}=\lceil Sq_{ij}\rceil.
\]

Node bounds are coordinatewise unions. For a proposed dual numerator
\(n\) and positive denominator \(d\), its integer bound is

\[
B=\sum_{j:n_j\geq0}u_jn_j+\sum_{j:n_j<0}\ell_jn_j.
\]

A node is skipped only when \(B<dS\). This proves every descendant's
strict support inequality. Other nodes are expanded until their exact
individual inequalities are checked. Incident equalities are checked
separately before this traversal. Negative coordinates use the correct
outward integer floor and ceiling; no floating support verdict occurs.

Strict supporting simplices are actual facets of a full-dimensional
polar hull. The twice-incident-ridge condition closes the selected facets
under adjacency, and connectivity of the hull's facet graph makes the
enumeration complete. Their positive-offset supporting planes place the
origin inside the hull. Thus their dual vertices enumerate the bounded
intersection polytope, and the exact norm tests place it in the closed
unit ball. The proof of the resulting sphere cover is unchanged.

The edge checker requires **both** `passed` and `covers`. A successful
hull enumeration with `require_cover=False` cannot be mistaken for a
successful sphere cover.

## 4. Parallel replay and a repaired snapshot gap

**PROVED, checked invariants.** Every worker uses the same production
`check_edge_cap` routine as serial replay and independently rebuilds the
source model. Sharding by transfer group changes scheduling only. After
the workers return, the parent requires the successful indices to be
exactly \(0,1,\ldots,N-1\), with no missing or duplicate index. Any worker
exception or rejected cap is a failure. The parent also performs exact
coverage on the same cap geometry passed to those workers. That integer
coverage computation may run concurrently with the Arb workers; final
acceptance waits for both it and the complete transfer accounting.

**Repaired during this audit.** The first version only compared input
file hashes before and after the run, while each worker independently
loaded the path. A transient input replacement could therefore have been
restored before the final hash check. `load_exact` now reads one byte
string, checks that string against the parent's expected SHA-256, and
decompresses/parses **that same string**. This is used for the parent
certificate, each worker's source, the serial source, and mutation-test
source. A worker cannot silently consume a different input snapshot.

The final receipt also checks the input, certificate, and checker-file
hashes at completion. The code hashes are reproducibility guards for the
trusted Python execution, not a substitute for formal verification of
the checker or its runtime libraries. Construction scripts do not
participate in acceptance.

**CERTIFIED evidence already recorded.** The parallel smoke run checks
ten cap transfers successfully and then returns `FAIL` because no
coverage certificate was supplied. This is the required failure mode for
an incomplete proof; it is not a full-sphere success. The local-mode smoke
record also verifies the interior-anchor dispatch. No broad test suite was
repeated for this audit.

## 5. Integration and interpretation of negative tests

**PROVED, checked invariants.** When an edge record has `caps`, the main
atlas scheduler keeps its cap proof as one boundary task and does not
schedule its old boxes as an alternative proof. The legacy
`check=False` coverage-only request cannot bypass cap transfer checks:
the cap branch performs both transfer and coverage verification together.
Absence of the field preserves the original box path. A malformed cap
field fails rather than falling back silently.

**PROVED, interpretation.** Enlarging a cap or changing its descriptor
requires replaying the corresponding target and sign witnesses. Particular
mutations are rejected by the recorded negative tests; this does not mean
every arbitrarily small enlargement or every symmetry-related descriptor
must fail. The dropped-cap test rejects the unchanged coverage certificate
because its count and enumeration no longer bind to the cap list. That
test establishes deletion detection; it does not assert that every cap in
the final cover is geometrically indispensable.

**NOT ESTABLISHED here.** The standalone edge replay does not certify
the target seed charts' original C1/Stage C assertions or construct the
local F6-012 germ. Those are retained explicit premises of the geometric
transfer theorem. A final complete replay receipt is needed before the
new cap collection can be labelled a certified replacement of the full
X-ball sphere.
