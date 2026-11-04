# ZC2a return: certified caps on the X-ball sphere

## Result

**CERTIFIED.** The supplied X-ball's entire boundary sphere is covered by
**19,611 spherical caps**, with **120,258 exact polar facets**. Every retained
cap passed the interval target test, both target-side orientation tests,
and its five-by-five positive-definite witness. Exact integer coverage
passed for the same cap geometry. There are **zero boundary regions left
to boxes** in this source's replacement certificate.

**CERTIFIED.** This replaces the supplied **8,031,516 X-ball boundary
boxes**. The count reduction is the exact ratio `8031516/19611`,
approximately **409.54×**. This is a count comparison, not a
measured Lean-kernel speedup.

| Quantity | Result | Status |
|---|---:|---|
| Original level-6 boxes | 240,365 | CERTIFIED exact input count |
| Original level-7 boxes | 6,709,693 | CERTIFIED exact input count |
| Original level-8 boxes | 1,081,458 | CERTIFIED exact input count |
| Original ordered T1 descriptors | 16,100 | CERTIFIED exact binding |
| Retained caps | 19,611 | CERTIFIED |
| Retained descriptor indices used | 14,491 | CERTIFIED |
| Polar facets | 120,258 | CERTIFIED exact arithmetic |
| Polar ridges | 240,516 | CERTIFIED, incidence exactly two |
| Remaining box regions | 0 | CERTIFIED for this source sphere |

**CERTIFIED.** The final modes are `{'local_sphere': 19611}`; 19,611 caps use
the edge output-weighted target bound. All listed descriptor indices
refer to the unchanged original transfer ordering.

## Quantitative margins

**CERTIFIED.** The whole source model has contraction factor at most
`0.26008218708542868`, normal correction norm at most
`0.0014706708040942364`, and recorded-gauge lift discrepancy at most
`0.025514903658024383` radians. The last bound is
strictly below pi and applies simultaneously to every cap point.

**CERTIFIED.** Across the complete final transfer replay:

| Bound | Rigorous lower bound |
|---|---:|
| Target interior margin | 2.9559561407243125e-05 |
| Both target orientation margins, minimum | 0.56914879835485344 |
| LDL pivot, minimum | 3.2449668892169465e-10 |

These are the checker's directed, rigorous lower endpoints. They are
computed from the exact stored cap scalars and Arb enclosures; numerical
proposal margins are not used.

**CERTIFIED.** The maximum squared norm of every reconstructed dual
vertex is at most **0.999995709414**, strictly below one. This decimal is obtained
by exact upward rounding of the rational maximum. The full rational value
and worst facet index are retained in `results/xball_replay.json`.

## The transfer theorem

**PROVED, under the stated chart hypotheses.** Write the augmented
X-ball model as

\[
Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz(w),\qquad \|w\|\le r.
\]

A cap is `||x||=1, v.x>=h`, with `w=rx`. For its affine target predictor
`d+Fx`, the existing five-by-five witness certifies
`||d+Fx||^2<=s` on the entire cap. In polynomial mode the required error is

\[
\epsilon_A=\tfrac12\|AH_2\|\Delta^2+\tau_A,
\qquad \tau_A=b_{0,A}+q_A\tau.
\]

In either local mode it is

\[
\epsilon_A=\tfrac12 K_A\Delta^2,
\qquad K_A\ge\sup_{\|w\|\le r}\|AD^2Q(w)\|.
\]

The strict target condition is
`r_target*(1-sqrt(s)) > epsilon_A`. Both target Psi signs are checked
with the edge model's normal remainders and the global signature Hessian
bound 72. Local modes use the **22-coordinate edge centre jet**, including
the signature equation and its parameter derivative.

**PROVED.** No strict source-side signature is assumed. Caps may cross
the source fold. The whole-ball lift bound identifies the representative
nearest the recorded `P+Uw` throughout every cap. Full derivations and
exact dependencies on ZT are in `EDGE_CAP_THEOREM.md`.

## Verifier and additive format

**PROVED transfer theorem; CERTIFIED finite replay.** `cert/caps.py` retains its existing
cap-witness interface. Edge local modes dispatch to `edge_centre_jet`;
edge weighted target bounds dispatch to the augmented output-weighted
normal error and full weighted Hessian. Both side-sign estimates retain
their valid edge `tau` and `Z2` bounds.

The additive field is `edge_record["caps"]`, containing `caps` and
`coverage`. Its `group_index` points into the existing T1 array. Existing
fields keep their meaning. The serial production entry point is
`edgecaps.check_edge_caps`; the atlas runner is wired to use it instead
of edge boxes when that field is present. See `FORMAT.md` section 8a and
`EDGE_CAP_VERIFIER.md`.

**CERTIFIED.** The compact input preserves all 2,775
seed headers, the source header, and all original descriptor values and
their order. Only outgoing box arrays are omitted. Exact projection
receipt: `xball_projection_check.json`.

## Exact coverage and storage

**PROVED.** Positive-threshold caps cover the unit sphere when the dual
polytope lies in the closed unit ball. The compact schema stores only
facet index quadruples. Cramer's rule reconstructs each exact dual
vertex; strict support, complete facet enumeration via ridge incidence,
and every vertex norm are then checked using integers.

**PROVED.** The dyadic support tree only skips a subtree after an exact
outward-box dot-product upper bound proves the same strict supporting
inequality for every point in that subtree. Uncertain nodes descend to
individual exact inequalities. It does not weaken coverage acceptance.

| Serialized content | Uncompressed | Gzip | Status |
|---|---:|---:|---|
| Complete cap certificate | 6.637 MiB | 1.548 MiB | CERTIFIED byte count |
| Index-only coverage | 2.702 MiB | 0.616 MiB | CERTIFIED byte count |
| Equivalent expanded coverage witnesses | 24.027 MiB | 9.241 MiB | CERTIFIED byte count |

The equivalent expanded witnesses were reconstructed exactly to measure
their size. They need not be stored in the distributed certificate.
The gzip coverage reduction is approximately
**15.01×**.

**CERTIFIED.** Coverage used `dyadic-bvh` with
52,022,228 exact node bounds and
31,049,878 exact point checks. Direct testing of every
facet against every cap would have required
2,358,379,638 point checks.

## Negative controls

**CERTIFIED.** The final replay rejects all specified mutations below.
The enlarged-cap test halves the threshold; the witness test sets `s=0`.
The in-range wrong-group test changes the cap to a concrete different
descriptor. The dropped-cap test retains the original coverage record,
so it verifies that coverage cannot silently be reused after deletion.

| Test | Result | Rejection |
|---|---|---|
| enlarged cap | CERTIFIED rejected | CertError: edge caps: cap 0 not certified (target PSD witness) |
| tampered witness | CERTIFIED rejected | CertError: edge caps: cap 0 not certified (target PSD witness) |
| wrong group_index | CERTIFIED rejected | CertError: edge caps: cap 0 not certified (target PSD witness) |
| dropped cap | CERTIFIED rejected | need at least five caps and matching cap_count |

These tests concern the stated concrete mutations. A different valid
descriptor or a sufficiently small enlargement can legitimately certify;
the theorem does not claim otherwise.

**CERTIFIED.** A separate exact geometric deletion witness in `results/dropped_cap_hole.json` proves an actual hole after removing cap 322 (original group 10383). Its rational polar point satisfies every remaining cap halfspace and has squared norm strictly greater than one. Normalizing that point gives an exact uncovered direction on the sphere.

## Timings and reproducibility

**NUMERICAL wall-time measurements; CERTIFIED mathematical replay.** The retained complete replay used
6 workers at 224-bit Arb precision:

| Stage | Wall time |
|---|---:|
| Complete transfer replay, including worker source setup | 575.175 s |
| Exact full-sphere coverage replay | 327.184 s |
| Specified mutation tests | 8.893 s |
| Complete retained run | 585.105 s |

The transfer and exact coverage stages overlap in the parallel run; their
wall times must not be added to obtain the total. Input binding,
bookkeeping, and mutation tests account for the remaining total time.

**NUMERICAL — construction timings.**

| Construction stage | Retained wall time | Measurement scope |
|---|---:|---|
| Bulk proposals for all 16,100 groups | 181.961 s | Completed cumulative phase |
| Weighted refit of all 16,100 groups | 387.971 s | Completed cumulative phase |
| Weighted adaptive gap filling | 280.587 s | Sum of retained checkpoints across three runs |
| Final gap-filling run, included above | 113.988 s | Completed final run |
| Freeze, exact coverage, and size measurement | 321.565 s | Completed finalizer run |

`results/construction_timings.json` records each phase and its source log.
Interrupted runs are measured through their retained last checkpoint;
discarded work after those checkpoints is not included. Earlier exploratory
pilots are listed separately. These figures do not claim a single total
construction time and do not count numerical proposals as certification.

Environment: Python 3.12.14; python-flint 0.9.0, numpy 2.3.5, scipy 1.17.0, sympy 1.14.0, mpmath 1.3.0.
The receipt binds the exact input bytes, certificate bytes, and checker
source hashes. Workers hash and parse the same source byte buffer.
`README_RETURN.md` gives complete replay and integrity-check commands.

## Limits of the result

**NOT ESTABLISHED by this return.** Lean-kernel acceptance, a minimum cap
count, a measured Lean runtime improvement, or an independent validation
of the rest of the no-four-MUB atlas. The local F6-012 germ and validity
of the target seed charts are the geometric hypotheses inherited from
the supplied theorem chain. This return completes the X-ball boundary
transfer and coverage component under those hypotheses.
