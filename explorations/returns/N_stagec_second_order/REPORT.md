# Handoff N — second-order Stage C test

Source snapshot: NoFourMUBs commit 73152c64. Completed 17 October 2026.

## Outcome and claim status

**N1 is PROVED.** This handoff gives the exact quadratic polynomial on the
five-dimensional bin box times the four-dimensional tangent ball, explicit
one-sided support bounds, a cubic remainder, and all normal/frame errors.
The unchanged Lean certificate domain is respected. **N2 is also PROVED as
a conditional analytic normal-bound theorem**, with the necessary branch
and tangent-leakage conditions.

**NUMERICAL: the complete primary-then-retry procedure passes
238/301 (79.07%) at R = 0.12, final M = 96.**
The primary filter alone passes 210/301 (69.77%),
just below 70%. Every one of its 91 unresolved sample records
was then retried with up to five additional multiplier directions per
retained bin, using the same N1 inequalities. The retries recover
28 exclusions while preserving all primary successes.

The brief's 70% enlarged-radius criterion is **MET by this
defined two-attempt procedure**. It is not met by the primary filter
alone, and the standalone IRLS filter has not been run on all 301 records.
Both attempts' measured costs are included below. Joint-edge inequalities
remain the original ones throughout; N2 is not used in these measurements.

At R = 0.08, final M = 48 reduces the number of bins presented to the
tangent stage by 3.203 times relative to the measured original
M = 96 baseline. However, 75 originally passing records fail at
that coarse final resolution. Refining every unresolved record to M = 96 gives
a 2.372-fold reduction and 282/301 passes. Therefore the stronger
claim of a threefold reduction while all baseline passes are retained is
**NOT ESTABLISHED** by this implementation.

| Claim | Status | Scope |
| --- | --- | --- |
| Exact second-order column expansion and sharp Hessian contraction | **PROVED** | Complete paper proof below |
| Cheap block support and forced-endpoint vertex support | **PROVED** | Explicit finite formulas; no trusted optimizer |
| Cubic and normal/frame remainder budgets | **PROVED** | Includes all displacements in existing Admissible |
| Guarded binary64 error budget | **PROVED under stated input and arithmetic assumptions, paper** | Bounded regime, supplied table-input error model, and binary64 operation assumptions |
| 1,620 selected new rejection comparisons | **CERTIFIED** | Independent 160-bit Arb replay, conditional on the supplied geometry bars |
| Exact rational identity/support regression fixtures | **CERTIFIED** | Finite algebraic computations, not an exhaustive atlas proof |
| Full 301-record sample and six named records at all requested configurations | **NUMERICAL** | 306 distinct records, 1,224 completed configurations |
| Complete primary-then-retry policy at R = 0.12 | **NUMERICAL** | All 301 primary attempts plus all 91 prescribed retries; 238/301 passes |
| N2 normal inequality and leakage-aware small-root corollary | **PROVED** | No second-order chart coefficients or enlarged atlas certified |
| New Lean consumer/adaptor source | **NOT ESTABLISHED as compiled Lean** | Complete candidate proof text; analytic estimates remain hypotheses |
| Production integer checker, independent Julia integration, full recertification | **NOT ESTABLISHED** | Existing checkers and atlas were not replaced |
| Kernel CPU-hour savings | **NOT ESTABLISHED** | Counts and Python measurements do not establish kernel runtime |

The standalone test is work/stagec_second_order.py. The default
tangent_tests2 takes the union of the old rejection criterion and the new
oriented quadratic criterion. It keeps the original function signature.
tangent_tests2_cheap exposes the inexpensive block version. The frozen
implementation SHA-256 is 475cf92dbc86bc171e021d690b8f525024ba55e74aa513c40bd51cbe4e93a023.

## The implemented theorem

For each column let H_i be the real symmetric Hessian matrix defined in
Appendix A, with Q_i(w) = π wᵀH_iw. It satisfies H_i 1 = 0 and
−P₀ ≤ H_i ≤ P₀, so its operator norm is at most one.
For any multiplier y, the exact tangent polynomial is

    p_y(d,η) = lᵀd + bᵀη + dᵀAd + 2dᵀCη + ηᵀDη,

with the coefficients, norms and explicit constants given in Appendix A.
The sign of the tangent linear coefficient is b = −Bᵀy.

Let s be the sign of y·c and let U bound the upper support of −s p_y
over the box and tangent ball. A bin is excluded when

    |y·c| > U + E₃(y) + Eν(y).

The default U is the minimum of the cheap block bound and a finite vertex
bound. The latter retains the combined box-linear, box-quadratic and
ball-linear terms, and fixes coordinates whose derivative has a certified
constant sign. The tangent quadratic block uses the smaller of Gershgorin
and a traceless-Frobenius eigenvalue bound. No eigenvalue from an
unverified numerical solver enters a rejection.

The new error budget uses the exact contraction of H_i to give

    Eν = n N_y + 2π n sqrt(W(y²)) + π n² ||y||∞.

The full n passed by BallRecord, including rational-to-float frame
rounding, occurs in every term. W is the weighted Frobenius bound with
row-sum allowance eΣ ≥ r_H ||Σ_i T_i||op + sqrt(6)n. The actual
implementation uses the explicit upper bound
r_H (||Σ_i T_i||F + 1e-12) + sqrt(6)n; the added allowance covers
rounding of the frame row sum and its Frobenius norm.

Two independent cubic bounds are proved and their minimum is used. One
is a uniform pair-difference bound. The other preserves cancellation
across columns in the pure-vector remainder and reduces its supremum to
the 16 distinct cuts of five vertices. Its mixed-term constants include
sqrt(606), derived from the exact bin fourth-power maximum 101 a⁴.
Unlike the uniform columnwise bound, this split estimate bounds the
absolute value of the weighted residual directly; it need not bound
the sum of the absolute column residuals. This is sufficient for the
oriented exclusion theorem and is reflected in the Lean interface.

## Completed numerical measurements

**NUMERICAL.** The sample is exactly the zero-based indices
0,40,...,12000, containing 301 records. Adding 100, 2471, 5305, 9889,
146 and 11640 gives 306 distinct records because 11640 already belongs
to the sample. Every new-test record was run at all four requested
configurations: (0.08,48), (0.08,96), (0.12,96), (0.16,96).
All primary runs start at M = 12. The original scalar test, original
label radius, original edge tests and original joint-edge remainder
are preserved.

R is measured in radians; all test inputs are converted to cycles.
Fixed R intentionally enlarges records that the supplied atlas had
shrunk. In the original R = 0.08 baseline, 263/301 pass and
38 fail. Every baseline failure in this sample is an enlargement
of an originally smaller record. All 263 sampled records originally
stored at R = 0.08 pass that baseline. A retained graph pattern or a
graph resource cap is a failure of this exclusion procedure, not a
counterexample consisting of actual Hadamards or MUBs.

| Method | R | Final M | Pass | Direct tests | Tangent-stage bins | Median survivors | Median labels |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Original | .08 | 96 | 263/301 (87.38%) | 256,942,784 | 41,813,258 | 11,880 | 170 |
| N1 | 0.08 | 48 | 188/301 (62.46%) | 107,223,072 | 13,054,228 | 1,786 | 204 |
| N1 | 0.08 | 96 | 282/301 (93.69%) | 125,289,792 | 25,023,770 | 5,472 | 119 |
| N1 | 0.12 | 96 | 210/301 (69.77%) | 167,723,648 | 59,698,857 | 20,029 | 269 |
| N1 | 0.16 | 96 | 86/301 (28.57%) | 261,356,032 | 140,806,661 | 71,981 | 657 |
| N1 + retry policy | .12 | 96 | 238/301 (79.07%) | 211,339,456 | 74,674,516 | 17,779 | 238 |

### Interpreting the reductions

The matched original baseline uses 41,813,258 tangent tests and 256,942,784
direct tests over the sample. The new M = 96 run uses 25,023,770
tangent-stage bins, a 1.671-fold reduction. It has
0 baseline-pass regressions and 19 additional passes
among the enlarged records. The original baseline and the new default
each propose one initial direction per tangent-stage bin; the new
default additionally evaluates a quadratic support only when the old
inequality has not already rejected that bin.

The adaptive policy stops at M = 48 on 188 records and refines the
remaining 113 to M = 96. Its derived tangent-stage total is
17,629,752, a 2.372-fold reduction. This uses the completed
M = 48 and M = 96 snapshots; the survey itself computed both snapshots
for all records. It is incorrect to quote the coarse-level reduction
while omitting the records whose graphs need refinement.

At R = 0.12 the primary pass rate is 210/301 and the explicitly
defined primary-then-retry rate is 238/301. The retry-policy row
counts both attempts on each retried record; its medians use the primary
result for an initial success and the retry result otherwise. A complete
atlas at that radius has not been built:
coverage, overlap transfers, the remaining failed records, and kernel
recertification are separate obligations.

### Complete radius-0.12 retry procedure and its cost

**NUMERICAL.** The procedure first runs the primary test on all 301 sample
records. It accepts each successful exclusion, then retries every one of
the 91 unresolved records with tangent_tests_irls. Each retry
starts at M = 12 and ends at M = 96. All prescribed retries were completed,
including those still unresolved after retry. The criterion for choosing
a retry was primary failure; no later selection of favorable records is
used in the reported denominator.

The primary attempt has 210 passes; the retries add 28, for
238 passes and 63 unresolved records. The retry
attempts use 14,975,659 tangent-stage
candidate bins, bringing the two-attempt total to 74,674,516.
The primary and retry direct-test counts sum to 211,339,456.
Within a retry, at most five additional N1 direction evaluations can be
performed for each candidate bin retained by its initial primary filter.
The aggregate number of those extra direction evaluations was not
instrumented; the conservative bound is
74,878,295. Thus candidate-bin totals
are not counts of all arithmetic operations.

The sum of recorded Stage-C seconds is
1048.55 for
the primary attempts and
524.74 for the
retries. Their sum is a workload diagnostic, not elapsed wall time of the
four-worker run or a kernel timing estimate. The extra work is the price
of this measured increase in pass rate; it does not establish a speedup.

The full frozen policy, complete successful/unresolved ID lists, all
retry outcomes, per-level data and combined per-record costs are in
work/optional/ADAPTIVE_SURVEY.md, adaptive_policy.json,
adaptive_retry.jsonl and adaptive_records.csv. The selected successful
tree is used as a whole; bins and graphs from separate attempts are not
combined into an unproved certificate.

### Per-level totals on the sample

The following counts are accumulated over all 301 records. Full
per-record survivors, tangent tests, direct tests, labels and outcomes
are in work/survey/final_summary.csv. Per-level rows are in
work/survey/final_levels.csv and the JSONL files.

| Method | R | Final M | Level M | Direct | Tangent-stage bins | Survivors |
| --- | --- | --- | --- | --- | --- | --- |
| Original | 0.08 | 96 | 12 | 74,898,432 | 3,884,617 | 2,419,525 |
| Original | 0.08 | 96 | 24 | 77,424,800 | 5,438,981 | 1,637,596 |
| Original | 0.08 | 96 | 48 | 52,403,072 | 9,840,555 | 1,631,765 |
| Original | 0.08 | 96 | 96 | 52,216,480 | 22,649,105 | 3,854,327 |
| N1 | 0.08 | 48 | 12 | 74,898,432 | 3,884,617 | 665,135 |
| N1 | 0.08 | 48 | 24 | 21,284,320 | 4,170,573 | 345,010 |
| N1 | 0.08 | 48 | 48 | 11,040,320 | 4,999,038 | 564,585 |
| N1 | 0.08 | 96 | 12 | 74,898,432 | 3,884,617 | 665,135 |
| N1 | 0.08 | 96 | 24 | 21,284,320 | 4,170,573 | 345,010 |
| N1 | 0.08 | 96 | 48 | 11,040,320 | 4,999,038 | 564,585 |
| N1 | 0.08 | 96 | 96 | 18,066,720 | 11,969,542 | 1,795,995 |
| N1 | 0.12 | 96 | 12 | 74,898,432 | 5,309,511 | 908,336 |
| N1 | 0.12 | 96 | 24 | 29,066,752 | 7,107,835 | 617,786 |
| N1 | 0.12 | 96 | 48 | 19,769,152 | 11,436,751 | 1,374,666 |
| N1 | 0.12 | 96 | 96 | 43,989,312 | 35,844,760 | 6,386,995 |
| N1 | 0.16 | 96 | 12 | 74,898,432 | 7,114,552 | 1,318,651 |
| N1 | 0.16 | 96 | 24 | 42,196,832 | 11,945,091 | 1,141,732 |
| N1 | 0.16 | 96 | 48 | 36,535,424 | 24,830,707 | 3,366,417 |
| N1 | 0.16 | 96 | 96 | 107,725,344 | 96,916,311 | 22,339,623 |

### The six named records — complete final implementation

| Record | R | Final M | Survivors at 12,24,48[,96] | Tangent-stage bins | Labels | Outcome |
| --- | --- | --- | --- | --- | --- | --- |
| 100 | 0.08 | 48 | 1135, 838, 1148 | 33,431 | 144 | PASS |
| 100 | 0.08 | 96 | 1135, 838, 1148, 3949 | 62,058 | 80 | PASS |
| 100 | 0.12 | 96 | 1767, 1448, 2834, 13630 | 144,172 | 200 | PASS |
| 100 | 0.16 | 96 | 2883, 2651, 7287, 48328 | 337,549 | 459 | graph cap |
| 2471 | 0.08 | 48 | 1635, 880, 1353 | 36,630 | 151 | PASS |
| 2471 | 0.08 | 96 | 1635, 880, 1353, 4135 | 67,822 | 90 | PASS |
| 2471 | 0.12 | 96 | 2358, 1539, 3247, 14941 | 157,061 | 197 | PASS |
| 2471 | 0.16 | 96 | 3600, 2841, 8031, 52207 | 365,820 | 477 | graph cap |
| 5305 | 0.08 | 48 | 2174, 1052, 1609 | 41,808 | 176 | PASS |
| 5305 | 0.08 | 96 | 2174, 1052, 1609, 5047 | 77,564 | 99 | PASS |
| 5305 | 0.12 | 96 | 3070, 1844, 4026, 18362 | 185,761 | 241 | PASS |
| 5305 | 0.16 | 96 | 4449, 3522, 10261, 66260 | 445,209 | 594 | PASS |
| 9889 | 0.08 | 48 | 2870, 1460, 2443 | 51,282 | 275 | graph cap |
| 9889 | 0.08 | 96 | 2870, 1460, 2443, 8690 | 101,563 | 158 | PASS |
| 9889 | 0.12 | 96 | 3858, 2537, 5829, 28559 | 240,245 | 339 | graph cap |
| 9889 | 0.16 | 96 | 5425, 4543, 14244, 96281 | 569,063 | 831 | graph cap |
| 146 | 0.08 | 48 | 1257, 762, 1142 | 33,401 | 156 | graph pattern retained |
| 146 | 0.08 | 96 | 1257, 762, 1142, 3679 | 61,971 | 80 | PASS |
| 146 | 0.12 | 96 | 1895, 1444, 2841, 13623 | 144,654 | 182 | graph pattern retained |
| 146 | 0.16 | 96 | 3005, 2624, 7546, 48678 | 345,239 | 450 | graph pattern retained |
| 11640 | 0.08 | 48 | 1671, 1043, 1586 | 37,767 | 183 | graph pattern retained |
| 11640 | 0.08 | 96 | 1671, 1043, 1586, 4929 | 70,265 | 108 | graph pattern retained |
| 11640 | 0.12 | 96 | 2369, 1842, 4021, 18797 | 171,625 | 261 | graph pattern retained |
| 11640 | 0.16 | 96 | 3434, 3350, 10096, 67369 | 412,420 | 604 | graph pattern retained |

### Separate optional multiplier pilot

**NUMERICAL, three selected configurations only.** The optional IRLS proposal
in work/optional first applies the frozen main filter, then tries up to five
additional multiplier directions for bins that remain. Each direction uses
the unchanged N1 support and error budgets. These pilot outcomes do not enter
the full-sample pass rates above.

| Record | R | Main: bins / labels / outcome | Optional: bins / labels / outcome | Main / optional seconds |
| --- | --- | --- | --- | --- |
| 100 | 0.08 | 3,949 / 80 / excluded | 2,472 / 61 / excluded | 0.583 / 1.028 |
| 146 | 0.12 | 13,623 / 182 / graph pattern retained | 8,373 / 131 / graph pattern retained | 1.719 / 2.743 |
| 9889 | 0.12 | 28,559 / 339 / graph cap | 19,474 / 245 / excluded | 5.772 / 7.297 |

All comparisons start at M = 12 and finish at M = 96. The optional proposal
excludes Record 9889 at R = 0.12, where the main implementation reaches the
graph cap. It leaves Record 146 unresolved. All three optional runs took
longer than their matched main references despite reducing survivors.
The recorded tangent counter measures candidate bins, not the extra
direction evaluations; the latter aggregate was not instrumented.
This is a possible fallback for hard records, with no sample pass-rate
or kernel-speed claim. Full per-level counts, extra-work limits, source
hashes and portable commands are in work/optional/README.md.


### Comparison qualifications discovered during this work

**NUMERICAL and source-code audit.** The supplied proxy globally replaces
SC.remainder. Both tangent_tests and joint_filter call that function.
Consequently the scaled proxy changes the joint-edge test as well as the
single-vector test. Its enlarged-radius pass rates are not predictions
for an N1-only implementation. The present survey leaves the original
joint-edge remainder unchanged. The unscaled reproduction also finds
Record 5305 passes at R = 0.16 with the original test, whereas the brief
describes all six as failing there; the reproducible supplied-code result
is retained in the baseline data.

The handoff's kernel-survey median of about 216,000 tangent tests is
based on a different kernel-oriented bin setup. The matched baseline
here uses the full supplied Python scalar test and least-squares
multiplier with BallRecord bars. The measured totals above, rather than
that median, are the denominator for every reported reduction.

Timing fields in the raw data are wall times of individual numerical
stages, including a shared-prefix attribution for each requested final
resolution. The new full survey used four workers; the baseline sample
used one. They are useful implementation measurements but do not
establish a hardware-controlled kernel speedup or an atlas CPU-hour
estimate. The strongest implemented support evaluates up to 32
four-dimensional norms. The inexpensive support option is cheaper,
and its full-sample performance has not been measured here.

## Verification and its precise scope

**CERTIFIED.** Independent rational checks verify exact identities and
finite support fixtures using only integer/Fraction arithmetic.
work/verify_quadratic_exact.py checks 576 block/linear identities,
3,456 Hessian pair/contraction identities, 576 support fixtures and
576 weighted Frobenius fixtures, including deliberately nonhorizontal
displacements. It also checks the split-exponential identity in an
exact polynomial ring. The second independent script
work/verification/verify_identities.py checks 48 rational phase cases,
288 column Hessians, 576 sum-of-squares identities and the exact
fourth-power bin constant 101.

**CERTIFIED, conditional arithmetic replay.** The independent
work/verification/replay_arb.py imports no candidate implementation,
NumPy, Stage C or survey driver. It recomputes exponentials at 160
bits, reconstructs the coefficients through pairwise rank-one
quadratic forms, verifies forced endpoints, and evaluates every
support and error term. All 1,620/1,620
selected new-only rejections pass. They cover every combination of
the six named records, R = 0.08/0.12/0.16 and
M = 6/12/24/48/96, with 18 fixtures in each of the 90 cells.
Half are the smallest observed margins in the capped/sampled
candidate population and half are random selections; this is not
an exhaustive minimum-margin search.

The smallest certified exact margin is
1.033361105741680716643794330264580288957e-7, with enclosure radius
4.95e-47. It occurs for Record 100, R = 0.12, M = 96 and midpoint
(0,3,67,25,79,167)/192. There are zero forced-coordinate mismatches.
All selected bins are retained by the old exact-formula comparison
with its original 1e-7 guard. The maximum observed discrepancy
between a floating side and its independent interval formula is
below 1.990e-16 on the left and 9.051e-17 on the right.

This certifies the listed inequalities on exact supplied inputs,
conditional on their geometric bars and the proved analytic theorem.
It does not certify the geometric bars, the entire bin tree, the
whole atlas, or the Lean kernel. The analytic guarded error budget,
under its stated table-input and binary64 arithmetic assumptions,
is the justification for the unsampled floating comparisons. Sampled
replay does not establish those assumptions globally and does not
replace that argument.

**NUMERICAL.** The direct-exponential perturbation check covers
17,280 feasible perturbations at all three radii and
five levels, including 8,640 coherent
nonhorizontal normal errors. The largest block-identity discrepancy
is 1.457e-16; no support,
cubic, normal or reconstruction inequality failed.

## Lean and integration

**NOT ESTABLISHED as compiled Lean.** The handoff includes
work/formal/Quadratic.lean and work/formal/QuadraticCert.lean.
They contain definitions of the exact residual and complete candidate
proof text for the logical support-to-exclusion implication, including
the unchanged conclusion:

    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a.

No additional axiom or admitted proof is introduced. The analytic
cubic, normal and support bounds are explicit hypotheses in this
consumer interface; defining a residual does not prove its cubic
estimate. Neither Lean/lake nor a complete mathlib/repository build
is available here, so these files are not claimed kernel-checked.

**PROVED domain correction.** Existing Admissible does not include
horizontality. For example, choosing δ_:i = −λx for every column
gives a valid small linear-tube displacement while invalidating the
unqualified cancellation 6||x||²+||δ||². The row-sum allowance in
Appendix A repairs this for every admissible displacement, without
changing StageCCert.

For production integration, add the new leaf checker alongside the
existing scalar/linear checkers, instantiate the provided consumer
theorem with formalized quantitative bounds, implement the exact
coefficient circuit and its error bridge, and replay it independently.
The relevant paths are STAGEC.md C2b, stagec.py, the StageC Lean
modules, proof/independent, and kernel_atlas. Single.lean need not
change for the implemented N1-only variant. A whole-atlas
recertification is still required after integration.

**NOT ESTABLISHED: end-to-end kernel operation savings.** Once
A,C,D are available, the inexpensive support can be checked in a few
hundred arithmetic operations. Their construction is additional:
the 45 independent block coefficients arise from 90 column/pair
weights, and a naive circuit costs thousands of multiply-adds.
The stronger vertex option does more work. Exact Gaussian-integer
construction, verified square-root hints, denominator clearing and
coefficient-error allowances are described in Appendix C.

**PROVED N2, with additional integration work required.** Appendix B
proves the archived normal inequality and a leakage-aware smaller-root
corollary. It does not supply the quadratic chart coefficients or
certify the archive's numerical n₃ ≈ 0.3R³ estimate. A cubic e₃ alone
is insufficient for a cubic total n₃ unless tangent leakage is also
O(R³), for example by an exactly normal chart. Replacing n by n₃
inside the old linear Admissible tube would omit the quadratic chart
correction. N2 therefore needs a separate Hadamard-to-chart semantic
adapter while StageCCert itself remains unchanged.

## Reproduce the results

Use Python 3.12 and the pinned requirements. From the bundle root:

~~~bash
python -m pip install -r requirements.txt
sha256sum -c SHA256SUMS
python work/verify_quadratic_exact.py
python work/verification/verify_identities.py
python work/verification/replay_arb.py
python work/verification/validate_numerical.py
python work/survey/benchmark.py --records six+sample40 --methods second_order --second-order-start 12 --configs .08:48,.08:96,.12:96,.16:96 --plugin work/stagec_second_order.py --workers 4 --output reproduced_new.jsonl
~~~

The complete enlarged-radius retry procedure is reproducible with
work/optional/adaptive_survey.py; its prepare/run/summarize commands and
fresh-run instructions are in work/optional/ADAPTIVE_SURVEY.md. It uses
the frozen primary radius-0.12 results to retry every unresolved record.

The raw JSONL and event files retain completed records, per-level
counts, input/source hashes, radius bars, graph outcomes and numerical
library versions. The benchmark harness resumes by run key and
checks that a live plugin's source hash stays fixed. The original
baseline and complete final tables are supplied so the user need
not rerun the full survey merely to inspect the results.

The original files under inputs were left unchanged and their
supplied checksums were replayed successfully. The bundle-level
SHA256SUMS additionally covers every delivered file.


## Appendix A — complete N1 proof


**Status:** the analytical statements in Sections 1–8 below are proved. The
floating-point discussion specifies a bounded numerical implementation and an
error budget; it is not a substitute for running an independent interval or
integer checker on a changed atlas. No numerical reduction in atlas cost is
asserted in this note.

The inputs used are `BRIEF.md`, `inputs/proof/atlas/STAGEC.md`,
`inputs/proof/atlas/RIGOUR.md`, `inputs/proof/atlas/ballrecord.py`, and the integer
checker interfaces in `inputs/kernel_atlas/lean/KernelAtlas/Tangent2*.lean`.
All phase displacements in this note are in **cycles**.

### 1. Exact second-order expansion, with the sign checked

Fix one column, write \(q_j=e(u_j-P_{ji})/\sqrt6\), and put
\(S=\sum_jq_j\). Define the real symmetric matrix

\[
 H_{jk}=\operatorname{Re}(q_j\overline q_k)
 -\mathbf1_{j=k}\operatorname{Re}(\overline S q_j).
\]

Its row sums vanish. In particular, for every real \(w\),

\[
\begin{split}
Q(w)&=\pi w^THw\\
&=\pi\left(\left|\sum_jq_jw_j\right|^2
 -\sum_j\operatorname{Re}(\overline S q_j)w_j^2\right)\\
&=-\pi\sum_{j<k}\operatorname{Re}(q_j\overline q_k)(w_j-w_k)^2.
\end{split}                                                    \tag{1}
\]

Thus \(Q\) is invariant under adding the same scalar to all coordinates.
The linear coefficient is \(J_j=-\operatorname{Im}(\overline S q_j)\), and
\(\sum_jJ_j=0\).

For \(S'=\sum_jq_je(w_j)\), expand the ordered-pair expression
\(|S'|^2=\sum_{j,k}q_j\overline q_k e(w_j-w_k)\). The constant, linear,
and quadratic terms give the **exact identity**

\[
 \frac{|S'|^2-1}{4\pi}=c+J\cdot w+\pi w^THw+\rho,\qquad
 c=\frac{|S|^2-1}{4\pi}.                                      \tag{2}
\]

Taylor's integral remainder for \(e(t)=\exp(2\pi it)\) gives

\[
 |e(t)-1-2\pi it+2\pi^2t^2|\le\frac{(2\pi)^3}{6}|t|^3.
\]

Using \(|q_j\overline q_k|=1/6\) and dividing by \(4\pi\),

\[
 |\rho|\le\frac{\pi^2}{18}\sum_{j,k}|w_j-w_k|^3
 =\frac{\pi^2}{9}\sum_{j<k}|w_j-w_k|^3.                        \tag{3}
\]

There is no missing factor of two in either (1) or (3). The sign in the
definition of \(J\) is negative; this makes the tangent coefficient below
\(-B^Ty\), not \(+B^Ty\).

### 2. A sharp universal Hessian bound

Let \(C_0=I-\mathbf1\mathbf1^T/6\) be the centring projector. Since
\(|\operatorname{Re}(q_j\overline q_k)|\le1/6\), (1) implies

\[
 |v^THv|\le\frac16\sum_{j<k}(v_j-v_k)^2=\|C_0v\|^2.
                                                               \tag{4}
\]

Equivalently,

\[
 -C_0\preceq H\preceq C_0,\qquad \|H\|_{\rm op}\le1.           \tag{5}
\]

This constant is sharp uniformly in the phases: when all \(q_j\) are equal,
\(H=-C_0\). A bound \(1+|S|/\sqrt6\) is valid but unnecessarily loses up to
a factor of two.

The bilinear version needed below can be proved without spectral theory:

\[
 |v^THz|\le\frac16\sum_{j<k}|v_j-v_k||z_j-z_k|
 \le\|C_0v\|\,\|C_0z\|.                                      \tag{6}
\]

### 3. Exact quadratic polynomial on the box times the tangent ball

Write \(d=(0,d_1,\ldots,d_5)\), \(|d_j|\le a\),
\(x=C_0d\), \(h=r_H\), and \(\|\eta\|\le h\). The frame \(T\) here is
the **actual frame used by the test**, including its float rounding if that is
the representation being checked. Let \(T_i\) be its \(6\times4\) column
block and \(w_i^0=x-T_i\eta\).

For a real multiplier \(y\), define

\[
\begin{aligned}
 l_j&=\sum_i y_iJ_{ij}, &&1\le j\le5,\\
 b&=-\sum_i y_iT_i^TJ_i=-B^Ty,\\
 A&=\pi\sum_i y_iH_i[1{:}5,1{:}5],\\
 C&=-\pi\sum_i y_iH_i[1{:}5,:]T_i,\\
 D&=\pi\sum_i y_iT_i^TH_iT_i.
\end{aligned}                                                  \tag{7}
\]

Both \(A\) and \(D\) are symmetric. The zero row sums of \(H_i\) and \(J_i\)
remove the centring projector exactly, so

\[
\begin{split}
p_y(d,\eta)&=\sum_i y_i\{J_i\cdot w_i^0+Q_i(w_i^0)\}\\
&=l^Td+b^T\eta+d^TAd+2d^TC\eta+\eta^TD\eta.                    \tag{8}
\end{split}
\]

The matrix \(C\) is the coefficient of **half** the mixed term: the polynomial
contains \(2d^TC\eta\). Neither a factor of two nor a centring correction may
be omitted when implementing (8).

#### 3.1 Cheap one-sided support

For symmetric \(D\), define the Gershgorin upper bound

\[
 g(D)=\max_k\left(D_{kk}+\sum_{m\ne k}|D_{km}|\right),\qquad
 g_+(D)=\max(0,g(D)).                                           \tag{9}
\]

Then the following number is an explicit upper bound on \(\sup p_y\):

\[
\begin{split}
U(l,b,A,C,D)={}&a\|l\|_1+h\|b\|_2\\
&+a^2\left[\sum_j(A_{jj})_++2\sum_{j<k}|A_{jk}|\right]\\
&+2ah\sum_j\|C_{j,:}\|_2+h^2g_+(D).                            \tag{10}
\end{split}
\]

Proof: bound the linear terms by the support functions of the box and ball.
For the diagonal box terms use \(A_{jj}d_j^2\le(A_{jj})_+a^2\); for
off-diagonal terms use \(|d_jd_k|\le a^2\). For the mixed term,
\(|d^TC\eta|\le ah\sum_j\|C_{j,:}\|\). Finally
\(\eta^TD\eta\le g(D)\|\eta\|^2\le g_+(D)h^2\). The Gershgorin
inequality also has the elementary proof
\(2D_{km}\eta_k\eta_m\le|D_{km}|(\eta_k^2+\eta_m^2)\).

This support evaluation involves only the 45 independent quadratic
coefficients (15 in \(A\), 20 in \(C\), and 10 in \(D\)), absolute values,
positive parts, row sums, and six Euclidean norms of dimensions at most four.
The cost of **forming** those coefficients is additional and must be included
in a kernel performance claim; it is not automatically a few hundred
operations merely because their final support evaluation is cheap.

The mixed block admits the further valid alternatives

\[
\sup|d^TC\eta|\le ah\min\left\{
 \sum_j\|C_{j,:}\|_2,\ \sqrt5\,\|C\|_F\right\}.                \tag{11}
\]

The implementation's still cheaper cross bound is

\[
 \sup|d^TC\eta|\le ah\left\|\left(\sum_j|C_{jk}|\right)_k\right\|_2.
                                                               \tag{11a}
\]

Indeed each coordinate of \(C^Td\) has modulus at most
\(a\sum_j|C_{jk}|\). By the triangle inequality, (11a) is no larger
than the row-norm alternative in (10), and by Cauchy–Schwarz it is also
no larger than the Frobenius alternative in (11). Thus one such norm can
replace the five row norms in the basic support evaluation.

There is also an elementary traceless-Frobenius eigenvalue bound. If
\(k\) is the tangent dimension, \(t=\operatorname{tr}(D)/k\), and
\(E=D-tI\), then

\[
 \lambda_{\max}(D)\le t+\sqrt{(k-1)/k}\,\|E\|_F.               \tag{11b}
\]

For \(k>1\), the largest eigenvalue \(\mu\) of the traceless matrix
\(E\) is nonnegative, the remaining eigenvalues sum to \(-\mu\), and
their squares sum to at least \(\mu^2/(k-1)\). This proves (11b).
For \(k=1\) it is equality. The minimum of (9) and (11b) is valid.
For \(k=0\), all tangent terms are zero.

Any checked upper bound on \(\lambda_{\max}(D)\), for example a rational
positive-semidefiniteness certificate for \(\lambda I-D\), may replace
\(g(D)\). An unchecked numerical eigenvalue is not such a certificate.

#### 3.2 A stronger scalar-diagonal variant

The exact maximum of \(ut+vt^2\) on \([-a,a]\) is

\[
m_a(u,v)=
\begin{cases}
 a|u|+va^2,&v\ge0\text{ or }|u|\ge-2av,\\
 -u^2/(4v),&v<0\text{ and }|u|<-2av.
\end{cases}                                                    \tag{12}
\]

Replacing the first box-linear term plus its diagonal contribution in (10)
by \(\sum_jm_a(l_j,A_{jj})\) is valid and never larger. This captures a
negative diagonal's cancellation with the linear term. In exact integer
arithmetic the interior case can be checked after multiplying by the
positive denominator \(-4A_{jj}\); a division routine need not be trusted.

#### 3.3 Optional 32-vertex tightening

Define \(\kappa=\sum_j(-A_{jj})_+\). Then

\[
\begin{split}
\sup p_y\le a^2\kappa+h^2g_+(D)
+\max_{\epsilon\in\{-1,1\}^5}\bigl[
 a l^T\epsilon+a^2\epsilon^TA\epsilon
 +h\|b+2aC^T\epsilon\|_2\bigr].                               \tag{13}
\end{split}
\]

To prove (13), first take the ball-linear support. Add
\(\sum_j(-A_{jj})_+d_j^2\) to the resulting box function. This only
increases it, and makes the resulting function convex in each coordinate
separately: its quadratic coordinate coefficient is nonnegative and its
norm term is convex. Replacing coordinates successively by endpoints proves
the maximum is attained at a vertex. At a vertex the added term is exactly
\(a^2\kappa\).

Gray-code traversal updates \(C^T\epsilon\), \(A\epsilon\), and
\(l^T\epsilon\) cheaply, but (13) still needs 32 four-dimensional norm
checks. It is a tightening option, not the promised minimal-cost kernel
test. The minimum of (10), its scalar-diagonal improvement, and (13) is valid.

#### 3.4 Forcing dominant coordinates to endpoints

Let \(F\) be the set of coordinates satisfying

\[
 |l_j|>2a\sum_k|A_{jk}|+2h\|C_{j,:}\|_2.                       \tag{13a}
\]

The partial derivative of the original polynomial (8) has the sign of
\(l_j\) everywhere in its domain. For any fixed \(\eta\), replacing
\(d_j\) by \(a\operatorname{sign}(l_j)\) increases the polynomial.
Coordinates in \(F\) may therefore be fixed to these endpoints before
forming an upper bound. The vertex bound can be sharpened to

\[
\begin{split}
\sup p_y\le{}&a^2\left[\sum_j(A_{jj})_+
 +\sum_{j\in F}\min(A_{jj},0)\right]+h^2g_+(D)\\
&+\max_{\substack{\epsilon\in\{-1,1\}^5\\
 \epsilon_j=\operatorname{sign}(l_j)\ (j\in F)}}
 \left[a l^T\epsilon+a^2\epsilon^TA_{\rm off}\epsilon
       +h\|b+2aC^T\epsilon\|_2\right].                         \tag{13b}
\end{split}
\]

Here \(A_{\rm off}\) has zero diagonal. For forced coordinates even a
negative diagonal contributes its true constant \(A_{jj}a^2\). For
unforced coordinates remove a negative diagonal to obtain a separately
convex function, then maximize at endpoints as in (13). This proves (13b).
In a numerical implementation, only call a coordinate forced after an
extra positive derivative margin that dominates coefficient errors; the
v2 implementation uses \(10^{-8}\).

### 4. A weighted Frobenius lemma, with the formal-domain repair

The existing Lean predicate `Admissible` does **not** assert horizontality,
and `StageCCert.hleaf` quantifies over all displacements satisfying that
predicate. To preserve this interface, the implementation uses a row-sum
defect allowance. Let

\[
 e_\Sigma\ge\left\|\sum_i\delta_{:,i}\right\|_2.
\]

For an unrestricted admissible decomposition \(\delta=T\eta+\nu\), a
valid choice is

\[
 e_\Sigma=h\left\|\sum_iT_i\right\|_{\rm op}+\sqrt6\,n.
                                                               \tag{14a}
\]

The operator norm may be replaced by the Frobenius norm. For physical
horizontal displacements, \(e_\Sigma=0\) is valid; for the unchanged
`Admissible` interface use (14a). Even if \(T\) is exactly horizontal,
unrestricted \(\nu\) requires the \(\sqrt6n\) term.

For every nonnegative six-vector \(v\), put

\[
\begin{split}
W(v)=\min\{&\|v\|_\infty(6X^2+2Xe_\Sigma+r_F^2),\\
           &\|v\|_1(X+r)^2,\\
           &\|v\|_1X^2+2X\left[r_F\|C_0v\|_2
                    +\frac{\|v\|_1}{6}e_\Sigma\right]
                    +\|v\|_\infty r_F^2\},
\qquad X=\sqrt{29/6}\,a.                                      \tag{14}
\end{split}
\]

For every displacement \(\delta\) satisfying the column, Frobenius,
and row-sum-defect bounds, and \(w_i=x-\delta_{:,i}\),

\[
 \sum_i v_i\|w_i\|^2\le W(v).                                 \tag{15}
\]

The proof of the first branch uses the common vector displacement:

\[
 \sum_i\|x-\delta_i\|^2
 =6\|x\|^2-2x^T\sum_i\delta_i+\|\delta\|_F^2
 \le6X^2+2Xe_\Sigma+r_F^2.
\]

The second branch is the per-column bound. For the third, expand the
weighted sum and use

\[
\delta v=\delta(C_0v)+\frac{\|v\|_1}{6}\delta\mathbf1,\quad
 |x^T\delta v|\le X\left[r_F\|C_0v\|+
                           \frac{\|v\|_1}{6}e_\Sigma\right],\quad
 \sum_iv_i\|\delta_i\|^2\le\|v\|_\infty r_F^2.
\]

The horizontal specialization \(e_\Sigma=0\) is sharper but must not be
used in the unchanged `Admissible` leaf interface without a new semantic
bridge. The rounded frame itself does not need to have exactly zero row or
column sums. Replacing \(r_F\) by the per-column \(r\) in the first or
third branch is invalid.

### 5. Explicit cubic remainder

For all pairs \(j,k\),

\[
 |w_{ji}-w_{ki}|
 \le |d_j-d_k|+|\delta_{ji}-\delta_{ki}|
 \le D_*=2a+\sqrt2\,r.                                        \tag{16}
\]

In general
\(\sum_{j<k}(w_{ji}-w_{ki})^2=6\|C_0w_i\|^2\le6\|w_i\|^2\).
Equations (3), (14),
and (16) therefore give the fully explicit bound

\[
 \left|\sum_i y_i\rho_i\right|
 \le E_3(y):=\frac{2\pi^2}{3}(2a+\sqrt2r)W(|y|).                \tag{17}
\]

For comparison, the unweighted norm estimate
\(\sum_{j,k}|w_j-w_k|^3\le12\sqrt2\|C_0w\|^3\) also gives
\(|\rho_i|\le(2\sqrt2\pi^2/3)\|w_i\|^3\). Formula (17) retains
the sharper box difference \(2a\), as well as Frobenius/horizontal
information across columns.

#### 5.1 Split cubic bound preserving cancellation in the vector displacement

There is a sharper alternative which needs no horizontality assumption.
Let \(\kappa=2\pi\),

\[
 R_2(t)=e(t)-1-i\kappa t,\qquad
 R_3(t)=e(t)-1-i\kappa t+\kappa^2t^2/2.
\]

The following algebraic identity is exact:

\[
 R_3(v-t)=R_3(v)+R_3(-t)
 +R_2(v)(e(-t)-1)+i\kappa vR_2(-t).                            \tag{17a}
\]

For each pair \(j<k\), let \(v=d_j-d_k\),
\(t_i=\delta_{ji}-\delta_{ki}\), and

\[
 g_{jk}=\left|\sum_i y_iq_{ji}\overline q_{ki}\right|.
\]

The pair's contribution to the weighted Taylor remainder is
\((2\pi)^{-1}\operatorname{Re}\sum_i y_iq_{ji}\overline q_{ki}R_3(v-t_i)\).
Applying (17a) before taking absolute values bounds the four contributions by

\[
 \frac{2\pi^2}{3}g_{jk}|v|^3,
 \quad\frac{\pi^2}{9}\sum_i|y_i||t_i|^3,
 \quad\frac{\pi^2}{3}\sum_i|y_i|v^2|t_i|,
 \quad\frac{\pi^2}{3}\sum_i|y_i||v|t_i^2.                       \tag{17b}
\]

The pure-vector term is convex in \(d\), so its maximum occurs at one
of the 32 vertices. Since \(d_0=0\), this maximum is

\[
 a^3\left[\sum_{j>0}g_{0j}+8\operatorname{MaxCut}_{K_5}(g)\right].
                                                               \tag{17c}
\]

Here `MaxCut` is simply the maximum over the 16 distinct bipartitions of
five vertices; no optimization oracle is needed. Equivalently, enumerate
all 32 sign vectors and evaluate the 15 nonnegative pair terms.

For the other terms, use

\[
\begin{gathered}
 \max_{i,j,k}|t_i|\le\sqrt2r,\qquad
 \sum_{j<k,i}t_i^2\le6r_F^2,\\
 \max_{|d_j|\le a,\ d_0=0}\sum_{j<k}(d_j-d_k)^4=101a^4.
\end{gathered}
\]

The last equality follows by convexity and evaluation at vertices: the
five pairs involving 0 contribute \(5a^4\), and at most six pairs
between the two sign classes contribute \(16a^4\) each. Cauchy–Schwarz
over pairs and columns gives

\[
 \sum_{j<k,i}|y_i|v^2|t_i|
 \le\sqrt{606}\,\|y\|_2a^2r_F.
\]

Consequently the valid alternative cubic budget is

\[
\begin{split}
 E_{3,\mathrm{split}}={}&\frac{2\pi^2}{3}a^3
   \left[\sum_{j>0}g_{0j}+8\operatorname{MaxCut}_{K_5}(g)\right]\\
 &+\frac{2\sqrt2\pi^2}{3}\|y\|_\infty r r_F^2\\
 &+\frac{\pi^2}{3}\sqrt{606}\,\|y\|_2a^2r_F
   +4\pi^2a\|y\|_\infty r_F^2.                               \tag{17d}
\end{split}
\]

Use \(\min(E_3,E_{3,\mathrm{split}})\). In particular, the first
term keeps the cancellation of \(\sum_i y_iq_{ji}\overline q_{ki}\)
across columns. Multiplying the original complete remainder by an empirical
factor does not implement this bound.

#### 5.2 Optional pure-vector sine/cosine tightening — theorem only

This refinement is **proved but not implemented or benchmarked** in the
delivered numerical module. It reuses the same weighted Gram entries and
32 vertices, so it is a reasonable candidate for a later controlled
experiment.

Write \(G_{jk}=\sum_i y_iq_{ji}\overline q_{ki}\). The real and
imaginary parts of \(R_3(v)\) are
\(\cos(2\pi v)-1+2\pi^2v^2\) and
\(\sin(2\pi v)-2\pi v\). Scalar Taylor remainders give, for every real v,

\[
\begin{aligned}
 |\sin(2\pi v)-2\pi v|&\le(2\pi)^3|v|^3/6,\\
 |\cos(2\pi v)-1+2\pi^2v^2|&\le(2\pi)^4v^4/24.
\end{aligned}
\]

Consequently each pure-vector pair contribution is bounded by

\[
 \frac{2\pi^2}{3}|\operatorname{Im}G_{jk}|\,|v|^3
 +\frac{\pi^3}{3}|\operatorname{Re}G_{jk}|\,v^4.                \tag{17e}
\]

The sum of these nonnegative convex functions of pair differences is
convex in \(d\), hence attains a maximum at a box vertex. For
\(\epsilon_0=0\), \(\epsilon_{1:5}\in\{-1,1\}^5\), and
\(\Delta_{jk}=|\epsilon_j-\epsilon_k|\), a valid alternative to
the first term of (17d) is therefore

\[
 E_{x,\mathrm{RI}}=
 \max_\epsilon\sum_{j<k}\left[
 \frac{2\pi^2}{3}a^3|\operatorname{Im}G_{jk}|\Delta_{jk}^3
 +\frac{\pi^3}{3}a^4|\operatorname{Re}G_{jk}|\Delta_{jk}^4
 \right].                                                     \tag{17f}
\]

Take the minimum of this value and the existing pure-vector cubic budget;
leave all three mixed/pure-displacement terms of (17d) unchanged. Formula
(17f) can be particularly useful when the weighted Gram entries have small
imaginary parts, since their real parts enter one order later. No uniform
speedup or survivor-count improvement follows from the theorem alone.

### 6. All normal and frame-rounding errors

Assume the input decomposition is

\[
 \delta=T\eta+\nu,\qquad \|\eta\|\le h,\quad\|\nu\|_F\le n.
\]

There is no requirement here that \(\nu\) belongs to an exact normal space.
This matters because `ballrecord.py` folds the frame-rounding discrepancy
into this vector. With \(w_i=x-\delta_i\), one has \(w_i^0=w_i+\nu_i\),
hence

\[
 Q_i(w_i^0)-Q_i(w_i)=2\pi w_i^TH_i\nu_i+\pi\nu_i^TH_i\nu_i.
                                                                  \tag{18}
\]

Expanding around **actual** \(w_i\) rather than around \(w_i^0\) is useful:
it makes (15), with the generic-interface defect allowance, available and
avoids any unjustified assumption that a float frame is horizontal.

Define

\[
 N_y=\left(\sum_i\sum_j y_i^2J_{ij}^2\right)^{1/2},
\qquad m=\|y\|_\infty.
\]

Equations (6), (15), (18), and Cauchy–Schwarz over columns prove

\[
 E_\nu(y):=nN_y+2\pi n\sqrt{W(y^2)}+\pi n^2m                  \tag{19}
\]

is an upper bound on the error made when replacing
\(\sum_i y_i[J_iw_i+Q_i(w_i)]\) by \(p_y(d,\eta)\). Explicitly,

\[
\begin{split}
 \left|\sum_i y_iJ_i\nu_i\right|&\le nN_y,\\
 \left|\sum_i y_iw_i^TH_i\nu_i\right|
 &\le\left(\sum_i y_i^2\|w_i\|^2\right)^{1/2}\|\nu\|_F
 \le n\sqrt{W(y^2)},\\
 \left|\sum_i y_i\nu_i^TH_i\nu_i\right|&\le mn^2.
\end{split}
\]

#### Exact-frame to rounded-frame transfer

Let \(T_e\) be the exact rational frame and \(T_f\) the frame used by the
test. If \(\delta=T_e\eta+\nu_e\), define
\(\nu_f=\nu_e+(T_e-T_f)\eta\). Then

\[
 \|\nu_f\|\le n_e+\|T_e-T_f\|_{\rm op}h
 \le n_e+d_T h,
 \quad d_T\ge\sum_{e,k}|(T_e-T_f)_{ek}|.                       \tag{20}
\]

This is the correction computed by `ballrecord.py` before Stage C is called.
Use its **full corrected** \(n\) in all three terms of (19), and use
\(T=T_f\) in every block of (7). Do not use the pre-correction normal radius
in the quadratic terms. No further frame error term is then needed: (18)
accounts for the entire combined residual. The transfer and division of all
displacement radii by \(2\pi\) must be performed with valid upper bounds.

### 7. Proved exclusion theorem

For any multiplier \(y\), any actual unbiased vector in the bin and any
Hadamard in the Record ball would satisfy

\[
 0=y\cdot c+p_y(d,\eta)+e,\qquad
 |e|\le E_3(y)+E_\nu(y).                                       \tag{21}
\]

#### Original absolute-value N1 formulation

Let

\[
 U_{\rm abs}(y)=\max\{U(l,b,A,C,D),U(-l,-b,-A,-C,-D)\}.
\]

Then

\[
 |y\cdot c|>U_{\rm abs}(y)+E_3(y)+E_\nu(y)                    \tag{22}
\]

implies that the bin contains no vector unbiased to the standard basis and
to any Hadamard in the Record ball. This is N1 with an explicit, proved
box-times-ball supremum bound.

#### Stronger oriented formulation

For either \(s\in\{-1,1\}\), the sharper sufficient rejection is

\[
 s(y\cdot c)>U(-sl,-sb,-sA,-sC,-sD)+E_3(y)+E_\nu(y).           \tag{23}
\]

To prove it, multiply (21) by \(s\) and obtain
\(s(y\cdot c)=-s p_y-se\), whose right side is bounded by the right
side of (23). Usually take \(s=\operatorname{sign}(y\cdot c)\).
Only the one-sided upper support of the negative oriented polynomial is
needed. Using absolute eigenvalues or absolute diagonal coefficients throws
away this gain. Equation (23) remains valid for either externally proposed
sign; the checker need not trust a sign-selection procedure.

### 8. Exact or dyadic evaluation

The support calculation can use only integer arithmetic and small
certificates:

1. Store dyadic centres and entrywise error bounds for \(c,l,b,A,C,D,J\).
   Form the exact quadratic blocks from Gaussian-integer approximations to
   the six row values and the rational frame. Since \(q=z/\sqrt6\), both
   \(J\) and \(H\) are obtained from quadratic products in \(z\), divided
   by 6; there is no new transcendental evaluation per bin.
2. For each Euclidean norm, supply an integer upper square root \(s\), then
   check \(s\ge0\) and that the squared argument is at most \(s^2\).
3. Evaluate the Gershgorin expression using exact diagonal signs, absolute
   off-diagonal entries, additions, and maxima. Entry uncertainty must be
   included before taking its positive part.
4. Use rational upper bounds on \(\pi\), \(\sqrt2\), and
   \(\sqrt{29/6}\); precompute depth/radius products when possible.
5. Compare a lower enclosure of \(s(y\cdot c)\) strictly with the upper
   support and error sum. A failed check retains the bin.

A useful alternative for the ball-linear plus ball-quadratic part is a
trust-region certificate. For any \(\lambda\ge0\) with
\(\lambda I-D\succ0\),

\[
 b^T\eta+\eta^TD\eta
 \le\lambda h^2+\frac14 b^T(\lambda I-D)^{-1}b.                 \tag{24}
\]

This follows by completing the square. A proposed rational upper value can
be checked by a \(5\times5\) Schur-complement positive-semidefiniteness
certificate; the optimizer's eigenvalues or inverse need not be trusted.
It is optional, since the much cheaper Gershgorin version already proves
N1.

#### Block formation and cost

For implementation efficiency let \(z_{ji}=\operatorname{Re}(\overline S_iq_{ji})\)
and \(v_i=T_i^Tq_i\). The rank-two factorization of
\(\operatorname{Re}(q_iq_i^*)\) gives

\[
\begin{aligned}
C_{jk}&=-\pi\sum_i y_i\left[
 \operatorname{Re}(q_{ji}\overline{v_{ik}})-z_{ji}T_{jik}\right],\\
D_{km}&=\pi\sum_i y_i\left[
 \operatorname{Re}(v_{ik}\overline{v_{im}})
 -\sum_j z_{ji}T_{jik}T_{jim}\right].                           \tag{25}
\end{aligned}
\]

The products \(T_{jik}T_{jim}\) are fixed per Record and may be
precomputed. This avoids multiplying dense \(6\times6\) matrices for each
bin. Nevertheless, claiming a kernel speedup requires measuring the entire
coefficient construction, certificate handling, and traversal. Survivor
counts alone do not establish a kernel runtime improvement.

### 9. Bounded binary64 implementation and a new error budget

The following is an explicit sufficient numerical regime for the requested
experiments. The error analysis is conditional on the stated table-input
model and IEEE binary64 round-to-nearest arithmetic, including the usual
basic-operation and square-root error bounds. Its input conditions are:

- all inputs and proposed directions are finite;
- \(6\le M\le96\), with the supported midpoint table denominators;
- \(T\in\mathbb R^{36\times k}\) with \(0\le k\le4\);
- \(0\le h,r,r_F,n\le0.03\) cycles and \(|T_{ek}|\le1\);
- require the proposed finite float direction to satisfy
  \(\max_i|y_i|\le1\), treating those float values as exact reals;
  zero and arbitrarily small directions are allowed;
- form symmetric quadratic coefficients, use Gershgorin or another checked
  bound, and use basic arithmetic with sums of nonnegative squares for norms.

The physical radii \(R\le0.16\) radians correspond to less than 0.026 cycles;
the numerical guards should nevertheless be checked, not inferred from a
radius name alone.

The final public module checks the supported levels, radii, frame dimensions
and frame entries. The correspondence of the supplied midpoint and centre
tables to the stated phases is a caller precondition; the public function
does not independently validate that correspondence. Its clipped
normalization enforces \(\max_i|y_i|\le1\). The analysis does not require
any accuracy claim for the least-squares proposal.

Use the table-input error from `RIGOUR.md` conservatively as a complex
\(q\)-error at most \(2\times10^{-15}\). Summation and the binary64 basic
operation model then give the following entrywise absolute error budget.
The constants are deliberately rounded up; no relative conditioning of the
least-squares direction is assumed.

| Quantity | Sufficient error bound | Reason |
|---|---:|---|
| \(S_i\) | \(2\times10^{-14}\) | Six complex terms, \(|q|=1/\sqrt6\) |
| \(c_i\) | \(5\times10^{-14}\) | Squared norm and division by \(4\pi\) |
| \(J_{ij}\) | \(2\times10^{-14}\) | One product of \(S_i\) and \(q_{ji}\) |
| \((H_i)_{jk}\) | \(5\times10^{-14}\) | One Gram product and a diagonal subtraction |
| \(l_j\) | \(2\times10^{-13}\) | Six terms |
| \(b_k\) | \(2\times10^{-12}\) | 36 products, \(|T_{ek}|\le1\) |
| \(A_{jk}\) | \(2\times10^{-12}\) | Six Hessian entries and \(\pi\) |
| \(C_{jk}\) | \(10^{-11}\) | 36 Hessian/frame products and \(\pi\) |
| \(D_{km}\) | \(10^{-10}\) | At most 216 Hessian/frame/frame products and \(\pi\) |

These bounds cover direct summation of (7). They also cover the factored
construction (25) used by the audited v2 module: each \(v_{ik}\) has
modulus at most \(\sqrt6\) and absolute error below
\(2\times10^{-14}\); each precomputed frame product has error at most
\(u\). The two parts of an entry of \(D/\pi\) have errors below
\(7\times10^{-13}\) and \(9\times10^{-13}\), respectively,
so the displayed \(10^{-10}\) bound is conservative. The corresponding
factored \(C\) bound is below \(10^{-12}\), also comfortably below
the displayed allowance.

The contribution from coefficient errors to (10) is bounded by

\[
 5a\epsilon_l+2h\epsilon_b+25a^2\epsilon_A
 +20ah\epsilon_C+6h^2\epsilon_D<2\times10^{-12}                \tag{26}
\]

under the numerical guards above. The coefficient 6 covers the
traceless-Frobenius alternative in (11b), as well as Gershgorin's coefficient
4. Small rounding errors in the final norms
and sums bring this to less than \(3\times10^{-12}\). The left-side
error is less than \(4\times10^{-13}\). Euclidean norms are
1-Lipschitz in their vector inputs; this remains true at the zero vector, so
no division by a potentially tiny norm belongs in this argument.

The forced-endpoint derivative is separated from its threshold by
\(10^{-8}\), while the coefficient-error contribution to either side
of (13a) is below \(4\times10^{-12}\) under these guards. Thus a
declared forced coordinate remains forced for the exact coefficients.
Taking maxima over 32 vertices does not multiply an entrywise value-error
bound by 32: the maximum is 1-Lipschitz in the sup norm of its inputs.
The same observation applies to the pure-vector cubic maximum. Its
coefficient matrix is another six-term Gram sum; a generous entry error
of \(10^{-12}\), multiplied by the at most \(53a^3\) sum of cubed
vertex differences and \(2\pi^2/3\), contributes less than
\(3\times10^{-13}\).

Compute \(\|C_0v\|\) by explicitly centring six entries and taking their
norm. Do **not** compute it as
\(\sqrt{\sum v_i^2-(\sum v_i)^2/6}\): that expression has avoidable
cancellation. The direct nonnegative branches in (14), including their
radius products, admit the generous bound \(|\Delta W|\le10^{-13}\)
uniformly for \(\|y\|_\infty\le1\).
For the special case \(\|y\|_\infty=1\) and \(v=y^2\), every branch
of (14) is at least \(X^2\), so

\[
 W(y^2)\ge X^2\ge\frac{29}{6\cdot192^2}>1.31\times10^{-4}.
\]

The square-root error in (19) is then below \(5\times10^{-12}\);
it is multiplied by \(2\pi n<0.189\). The cubic error (17) has a
coefficient smaller than 1.38 multiplying \(W(|y|)\). Together with the
norm error in \(N_y\), these bounds leave the total comparison error below
\(10^{-10}\) in this unit-normalized case.

The public normalization divides by
\(\max(\|z\|_\infty,10^{-300})\) before clipping. It can therefore
produce a nonzero direction with \(\|y\|_\infty<1\); no property of the
least-squares solve should be used to rule this out. For all such directions,
including the zero direction, use the uniform square-root inequality

\[
 \left|\sqrt{\max(\widehat W,0)}-\sqrt W\right|
 \le\sqrt{|\widehat W-W|}\le\sqrt{10^{-13}},\qquad W\ge0.
                                                               \tag{27}
\]

Projection onto the nonnegative half-line cannot increase the distance to
\(W\ge0\), and \((\sqrt u-\sqrt v)^2\le|u-v|\) for nonnegative
\(u,v\). These two elementary facts prove (27), including at zero.

The resulting error in the square-root part of the normal budget is at most

\[
 2\pi n\sqrt{10^{-13}}
 \le0.06\pi\sqrt{10^{-13}}<5.961\times10^{-8}.
                                                               \tag{28}
\]

All remaining coefficient, final-arithmetic, cubic and normal-norm errors
above total less than \(10^{-10}\). Consequently the complete comparison
error is less than \(6.1\times10^{-8}<10^{-7}\) for every finite proposed
direction with \(\|y\|_\infty\le1\), under the stated input and arithmetic
assumptions. This proves that the existing \(10^{-7}\) rejection margin
is sufficient without any lower bound on the size of the proposed direction.

The floating orientation is safe under the same budget. If the computed
sign of \(y\cdot c\) differs from its exact sign, the computed absolute
constant is at most its \(4\times10^{-13}\) error allowance. For either
orientation, the exact support-plus-remainder right side is nonnegative:
the origin belongs to the box and tangent ball, so the polynomial support
is at least zero. The computed right side is therefore greater than
\(-6.1\times10^{-8}\). After adding the \(10^{-7}\) guard it exceeds
\(3.9\times10^{-8}\), and such a tiny computed constant cannot reject.
Every accepted floating comparison consequently has a valid orientation.

This discussion also identifies what requires a fresh audit if the code
changes: higher levels beyond 96, multipliers with \(\|y\|_\infty>1\), unguarded
radii, a numerical eigenvalue routine used as if certified, or an algebraic
rearrangement with substantially different intermediate magnitudes. An
independent Arb replay is still useful evidence; it does not turn a sampled
check into verification of every new atlas rejection.

### 10. Integration cautions

- Preserve the existing Stage C admissible-displacement interpretation. The
  first-order and second-order tests may be combined by discarding a bin
  when either proved test rejects it.
- An N2 normal estimate applies to actual Hadamards; it cannot automatically
  replace the normal radius in a LeafRej statement quantified over a larger
  linear admissible tube. That is a separate interface question.
- Per-column bounds use \(r\); sums across columns use \(r_F\), or a
  separately proved weighted/per-column alternative.
- Equation (23) is stronger than bounding the absolute value of the
  quadratic polynomial. The signs of its diagonal and tangent quadratic
  terms must follow the orientation \(-s\).
- Every occurrence of \(n\) includes the rounded-frame discrepancy.
- The second-order theorem is proved independently of whether it achieves
  the proxy's numerical savings. Such a savings claim must come from the
  requested atlas measurements and, ultimately, a recertification.

## Appendix B — complete N2 proof


**Status: PROVED analytically.** The inequality proposed in the archived
`MILESTONE1.md` §5.2 is correct in **radian coordinates**. Its use as a small
normal-radius bound requires the explicit branch check below. No chart existence,
numerical chart coefficients, or radius 0.12–0.16 certification is asserted here.
The numerical chart-residual constants quoted in the archive are measurements,
not consequences of this theorem.

### 1. Conventions and two global estimates

Let `P,x,v` be real 6 by 6 matrices, in radians. Write

\[
 Z(P)_{ac}=e^{iP_{ac}},\qquad
 \Phi_P(x)=Z(P+x)Z(P+x)^*-6I,
\]

and equip its Hermitian zero-diagonal output with

\[
 \|A\|_{\rm out}=\left(\tfrac12\sum_{a,b}|A_{ab}|^2\right)^{1/2}.
\]

This is the norm in the supplied `NormalBound.lean`. It equals the Euclidean
norm of the 30 real coordinates of the 15 upper-triangular complex entries.
All norms on phase displacements below are Frobenius norms. The Jacobian is

\[
 (J_{P+x}v)_{ab}
 =\sum_c Z(P+x)_{ac}\overline{Z(P+x)_{bc}}
              i(v_{ac}-v_{bc}).
\]

Every norm or error upper bound used below is assumed **nonnegative**. This
includes `d0,e0,e1,e2,e3,j_T,U,H,HN,HT,nold,Z,ℓ` and every phase/parameter
radius. The lower spectral bounds satisfy `σ>0` and, whenever the Gram bound
is used, `gmin>0`. These sign conditions are needed when substituting norm
bounds into the inequalities and selecting the smaller quadratic root.

The supplied theorem `outNorm_rem_le`, applied at the arbitrary base `P+x`, gives

\[
 \boxed{\ \|\Phi_P(x+v)-\Phi_P(x)-J_{P+x}v\|_{\rm out}
          \le\sqrt3\,\|v\|^2.\ } \tag{N2.1}
\]

For completeness, the Jacobian perturbation bound is

\[
 \boxed{\ \|(J_{P+x}-J_P)v\|_{\rm out}
          \le2\sqrt3\,\|x\|\|v\|.\ } \tag{N2.2}
\]

Here is a direct proof with no unspecified derivative constant. Set

\[
 D_{ab}(v)=\sum_c(v_{ac}-v_{bc})^2.
\]

The bound `|exp(it)-1|≤|t|` and Cauchy–Schwarz give

\[
 |((J_{P+x}-J_P)v)_{ab}|
 \le\sum_c|x_{ac}-x_{bc}|\,|v_{ac}-v_{bc}|
 \le\sqrt{D_{ab}(x)D_{ab}(v)}.
\]

For every real six-row matrix, without any horizontality assumption,

\[
 0\le D_{ab}(x)\le2\|x\|^2,\qquad
 \sum_{a,b}D_{ab}(v)
 =12\|v\|^2-2\sum_c\left(\sum_a v_{ac}\right)^2
 \le12\|v\|^2.
\]

Consequently the squared output norm is at most
`(1/2)·2||x||²·12||v||²=12||x||²||v||²`, proving (N2.2).
The same calculation with

\[
 (B_P(v,w))_{ab}
 =-\sum_c Z(P)_{ac}\overline{Z(P)_{bc}}
           (v_{ac}-v_{bc})(w_{ac}-w_{bc})
\]

proves `||B_P(v,w)||out≤2√3||v||||w||` for the symmetric Hessian.

### 2. The second-order normal inequality

Let the horizontal phase space split orthogonally as `H=Tspace⊕N`. Suppose

\[
 \|J_P n\|_{\rm out}\ge\sigma\|n\|\quad(n\in N),\qquad
 \|J_P t\|_{\rm out}\le j_T\|t\|\quad(t\in Tspace).
\]

Any certified full operator norm of `J_P` can be used for `j_T`, as in the
archive. A bound on the tangent restriction is usually smaller. If the frame
matrix is `T`, `G=TᵀT`, `||J_PT||op≤j1`, and `λmin(G)≥gmin>0`, one may take
`j_T=j1/√gmin`; `j1` itself need not be an operator bound on the tangent subspace
when the columns of `T` are not orthonormal.

Choose **any** chart proposal

\[
 x=\delta_0(\eta)=g_0+T\eta+\tfrac12q(\eta,\eta),
\]

with coefficients in the horizontal phase space, and certified bounds `||x||≤d0`
and `||Φ_P(x)||out≤e3`. No exact tangent or quadratic-jet equation is imposed
on these coefficients. If a numerical chart has additional components outside
the horizontal space, project them away with a certified error or include them
in a larger leakage complement and bound the Jacobian on that complement.
Suppose `δ` is horizontal and `Φ_P(δ)=0`, and decompose

\[
 \nu=\delta-x=\nu_N+\nu_T,\qquad z=\|\nu_N\|,\quad t=\|\nu_T\|.
\]

Then

\[
 \boxed{
 (\sigma-2\sqrt3\,d_0)z
 \le e_3+(j_T+2\sqrt3\,d_0)t+\sqrt3\,\|\nu\|^2.
 } \tag{N2.3}
\]

**Proof.** Put `Jx=J_{P+x}` and let `R=Φ_P(x+ν)-Φ_P(x)-Jxν`. Since
`Φ_P(x+ν)=0`, one has `Jxν_N=-Φ_P(x)-Jxν_T-R`. Therefore

\[
 \begin{aligned}
 \sigma z
 &\le\|J_P\nu_N\|_{\rm out}\\
 &\le\|J_x\nu_N\|_{\rm out}+2\sqrt3\,d_0z\\
 &\le e_3+\|J_x\nu_T\|_{\rm out}+\sqrt3\|\nu\|^2
           +2\sqrt3\,d_0z\\
 &\le e_3+(j_T+2\sqrt3\,d_0)t+\sqrt3\|\nu\|^2
           +2\sqrt3\,d_0z.
 \end{aligned}
\]

Rearrangement proves (N2.3). This proof requires no equation satisfied by the
coefficients of `q`; all chart defects must be included in `e3`. ∎

### 3. A completely explicit small-root corollary

Assume a certified leakage bound `t≤ℓ`, a certified a-priori bound `z≤Z`, and

\[
 \alpha=\sigma-2\sqrt3\,d_0>0,\qquad
 b=e_3+(j_T+2\sqrt3\,d_0)\ell+\sqrt3\ell^2.
\]

Since the decomposition is orthogonal, `||ν||²=z²+t²`. Thus (N2.3) implies

\[
 \alpha z-\sqrt3 z^2\le b. \tag{N2.4}
\]

The following sufficient checks select the small branch:

\[
 \boxed{\quad 2\sqrt3 Z<\alpha,
 \qquad D=\alpha^2-4\sqrt3 b\ge0.\quad} \tag{N2.5}
\]

Under them,

\[
 z\le z_*=
 \frac{\alpha-\sqrt D}{2\sqrt3}
 =\frac{2b}{\alpha+\sqrt D},\qquad
 \boxed{\ \|\nu\|\le n_3=\sqrt{z_*^2+\ell^2}.\ } \tag{N2.6}
\]

The rationalized expression is preferable numerically, with certified downward
rounding in the denominator and upward rounding in the result. `z_*+ℓ` is a
weaker alternative requiring no final square root. The scalar function
`αz-√3z²` is increasing below its vertex `α/(2√3)`; (N2.5) places the actual
`z` there, and (N2.4) then places it at or below its smaller root. Merely checking
`D≥0` does **not** select the smaller root.

An appropriate `Z` follows from the existing first-order normal bound. With

\[
 \eta=(T^\top T)^{-1}T^\top\delta,\qquad
 h(\eta)=g_0+\tfrac12q(\eta,\eta),
\]

the old residual `νold=δ-Tη` lies in `N`. If `||νold||≤nold`,
`||Π_N h||≤HN`, and `||Π_T h||≤HT`, then

\[
 Z=n_{\rm old}+H_N,\qquad \ell=H_T
\]

are valid. The identity `ν_T=-Π_T h` is exact. Finite-precision coefficient
errors can invalidate a claimed zero tangent leakage and must be included in
`HT` or checked by exact projection. Subdivision alone does not make `e3` or
`n3` cubic in a smaller box width: a new local chart and new residual bounds are
needed for that conclusion.

### 4. An explicit residual certificate for a quadratic chart

Taylor expansion at `P` has a cubic remainder satisfying

\[
 \left\|\Phi_P(v)-\Phi_P(0)-J_Pv-\tfrac12B_P(v,v)\right\|_{\rm out}
 \le\sqrt{\tfrac23}\,\|v\|^3. \tag{N2.7}
\]

Indeed, each entry is at most `D_ab(v)^(3/2)/6` by the scalar exponential
remainder and `||s||₃≤||s||₂`. Its squared output norm is at most

\[
 \tfrac1{72}\sum_{a,b}D_{ab}(v)^3
 \le\tfrac1{72}(2\|v\|^2)^2(12\|v\|^2)
 =\tfrac23\|v\|^6.
\]

For `g0=0`, write `u=Tη`, `h=q(η,η)/2`, and certify, over the parameter region,

\[
 \|u\|\le U,\quad\|h\|\le H,\quad
 \|\Phi_P(0)\|_{\rm out}\le e_0,\quad
 \|J_Pu\|_{\rm out}\le e_1,\quad
 \|J_Ph+\tfrac12B_P(u,u)\|_{\rm out}\le e_2.
\]

The explicit choice

\[
 \boxed{\ e_3=e_0+e_1+e_2+2\sqrt3 UH+\sqrt3 H^2
               +\sqrt{\tfrac23}(U+H)^3\ } \tag{N2.8}
\]

is valid by expanding `B_P(u+h,u+h)`. A sharper Taylor-model or exact
coefficient enclosure can replace this bound. If the constant defect and the
first two jets cancel exactly, `e0=e1=e2=0`, then `U=O(rH)` and `H=O(rH²)`
give `e3=O(rH³)`.

The further conclusion **`n3=O(rH³)` requires tangent leakage
`ℓ=O(rH³)` as well**, a positive lower bound on `α`, bounded `j_T` and `d0`,
and the small-branch checks (N2.5). Under these conditions `b=O(rH³)`, the
rationalized formula gives `z_*=O(rH³)`, and (N2.6) then gives the claimed
cubic total residual. An important sufficient case is that `g0` and every
coefficient of `q` lie **exactly in N**, with `η` chosen by the exact
orthogonal projection described in Section 3: then `ℓ=0`.

A cubic chart defect alone does not control this leakage. In particular,
even with perfect jets, a tangential quadratic chart correction can give
`ℓ=O(rH²)`. Since the certified radius in (N2.6) satisfies `n3≥ℓ`, that
formula then supplies only a quadratic total-radius estimate in general.
Coefficient rounding must therefore preserve exact normality or contribute
an explicit leakage allowance; it cannot be omitted on the grounds that
the chart defect is cubic.

Approximate jet cancellation leaves explicit constant, linear, or quadratic
terms. For nonzero `g0`, rebase the expansion at `P+g0`, while bounding the
Jacobian/spectral data at that base, or include every resulting constant
and lower-degree term.

### 5. Units: the archive's constants are not cycle constants

The archive and `BallRecord.normal_bound(R)` use radians; `stagec.py` uses
cycles after dividing radii by `2π`. Applying (N2.3) directly to cycle norms
with the same constants is incorrect.

Let `Φc(v)=Φ_{2πP}(2πv)` be the unscaled Gram defect in cycle coordinates.
Then `Jc=2πJrad`, and the corresponding bounds are

\[
 \|\Phi_c(x+v)-\Phi_c(x)-J_c(x)v\|_{\rm out}
 \le4\pi^2\sqrt3\|v\|^2,
\]

\[
 \|(J_c(x)-J_c(0))v\|_{\rm out}
 \le8\pi^2\sqrt3\|x\|\|v\|.
\]

Thus the cycle version of (N2.3) is

\[
 (\sigma_c-8\pi^2\sqrt3 d_{0,c})z_c
 \le e_3+(j_{T,c}+8\pi^2\sqrt3 d_{0,c})t_c
       +4\pi^2\sqrt3\|\nu_c\|^2,
\]

where `σc=2πσrad` and `jT,c=2πjT,rad`. The simplest implementation computes
N2 entirely in radians and then passes `n3/(2π)` to Stage C. For a dimensionless
frame `T`, a radian chart coefficient `qrad` becomes `qcyc=2π qrad` when
`ηrad=2πηcyc`; this factor must also be accounted for.

### 6. The extra N1 polynomial and its additional remainder

This subsection uses **cycles**. For the N1 column quadratic form write
`Q_i(w)=πwᵀH_iw`, with `||H_i||op≤1`. Let

\[
 w_{1,i}=x-T_i\eta,\qquad h_i=\tfrac12q_i(\eta,\eta),\qquad
 w_{0,i}=w_{1,i}-h_i.
\]

For a chart with `g0=0`, the degree-at-most-two part of the weighted polynomial is

\[
 \boxed{\quad
 p_2(d,\eta)=\sum_i y_i\big[J_iw_{1,i}+Q_i(w_{1,i})-J_ih_i\big].
 \quad} \tag{N2.9}
\]

The new quadratic coefficient is **`-Σ_i y_i J_i h_i`**. Substitution of the
quadratic chart into `Q_i` also produces cubic and quartic terms:

\[
 \sum_i y_i\big[-2\pi w_{1,i}^{\!\top}H_i h_i
                         +\pi h_i^{\!\top}H_i h_i\big].
\]

If `||h||F≤H` and `W1(y²)≥Σ_i y_i²||w1,i||²`, their total absolute value is at most

\[
 \boxed{\ E_{\rm chart}
 =2\pi H\sqrt{W_1(y^2)}+\pi H^2\|y\|_\infty.\ } \tag{N2.10}
\]

A universally valid choice is
`W1(y²)=||y||∞²(√6 X+||T||op rH)²`. Exact horizontality of `T` improves the
unweighted sum to `6X²+||Tη||²`, and the same weighted refinements as N1 may
be used when their hypotheses are available. Bounds for the actual residual
`δ-δ0` use `n3` in the N1 normal-error formula; the original cubic exponential
remainder is still bounded on the **actual** displacement `δ`, using the
certified ball radii.

For `g0≠0`, either rebase to the shifted centre before building N1 or retain
all constant and linear contributions involving `g0`; (N2.9) alone omits them.
Alternatively, retain the entire degree-four `linearQuadratic(δ0)` polynomial
and bound it directly. The generic Lean support interface accepts that choice.

### 7. Interface audit: what N2 can and cannot replace

The existing `StageCCert.hleaf` quantifies over every
`Admissible(T,rH,n,r,rF,δ)`, including displacements which are not Hadamard.
The old `Admissible` condition is a linear tangent tube. N2 constrains
`δ-δ0(η)` only **when `Φ_P(δ)=0`**, and `δ0` is quadratic.

Consequently one must not replace `n` by `n3` in the existing `Admissible`
definition while leaving its centre `Tη` unchanged. The chart correction
`q(η,η)/2` would be lost, and the new domain would omit physical displacements.
N1 can populate the unchanged `StageCCert` through the supplied
`leafRej_all_of_secondOrderOriented` theorem. For N2, keep `StageCCert` itself
unchanged and add a separate Hadamard-to-quadratic-chart adapter, applying
`stageC_semantic` to each actual Hadamard with the chart bounds established for
it. Such an adapter and its integer checker have not been implemented here.

#### Source dependencies

- Supplied `inputs/lean/NoFourMUBs/NormalBound.lean`: `outNorm`,
  `outNorm_rem_le`, `rowDist_le`, `sum_rowDist_le`, `quad_root_bound`.
- Supplied `inputs/proof/atlas/ballrecord.py`: exact frame, projection,
  normal-radius calculation and radian-to-cycle conversion.
- Supplied archive `MILESTONE1.md` §5.2: the proposed statement audited here.
- The Hessian, Jacobian perturbation, cubic Gram remainder, explicit branch
  selection and chart-polynomial formulas above are proved in this note.

## Appendix C — integer checker and Lean integration notes


### 1. Delivered scope and compilation status

`Quadratic.lean` defines the true quadratic term, linear-plus-quadratic variation
and exact real residual. It supplies complete proof text for:

- an exact decomposition;
- a weighted remainder inequality;
- a shifted absolute-support test;
- a one-sided oriented-support test;
- propagation of a certified polynomial-coefficient error.

`QuadraticCert.lean` supplies uniform rejection theorems whose conclusion is
exactly

```lean
∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a
```

This is the existing rejection branch of `StageCCert.hleaf`. No edit to
`Admissible`, `StageCCert`, its semantic interpretation, or the graph certificate
is required for N1.

**The Lean files are not compiled.** Neither `lean` nor `lake` is on PATH; the
handoff has no `lean-toolchain`, lake project, or mathlib checkout. It also omits
imported repository modules such as `NoFourMUBs.Transfer` and
`KernelAtlas.Tangent`. Thus this bundle cannot run a genuine Lean replay, even
with a bare compiler added. Copy the two files to
`lean/NoFourMUBs/StageC/Quadratic.lean` and `QuadraticCert.lean` in the complete
project and compile there before treating them as checked proof artifacts.

There are no added axioms or admitted proof commands. Nevertheless these are
**conditional interfaces**, not a formalization of the full new analysis:
`SecondOrderLeafBounds` exposes the uniform polynomial support, normal-error
bound and cubic-error bound as separate hypotheses. Defining `cubicResidual`
as the exact difference does not prove its cubic estimate. The paper proof
establishes those estimates mathematically; a production Lean extension must
formalize and connect them to the integer coefficient checker.

The cubic hypothesis is `|Σ_i y_i ρ_i|≤E3`. It accepts both a bound on
`Σ_i |y_i||ρ_i|` (using the supplied weighted absolute-sum lemma) and a sharper
bound obtained by cancellation of weighted column contributions.

### 2. Match to the chosen oriented polynomial support

Let `C0=Σ_i y_i c_i`, let `s∈{−1,1}` be its sign, and orient every coefficient
of the explicit tangent polynomial by `−s`. Write that oriented polynomial as

\[
 \ell^\top d+b^\top\eta+d^\top A d+2d^\top C\eta+\eta^\top D\eta,
 \qquad |d_j|\le a,\quad\|\eta\|\le h.
\]

The selected support upper bound is

\[
 \begin{aligned}
 U={}&a\|\ell\|_1+h\|b\|_2\\
 &+a^2\left(\sum_j\max(A_{jj},0)+2\sum_{j<k}|A_{jk}|\right)\\
 &+2ah\sum_{j=1}^{5}\|C_{j,:}\|_2
   +h^2\max\left(0,\max_k\big(D_{kk}+\sum_{l\ne k}|D_{kl}|\big)\right).
 \end{aligned}
\]

The matrix `A` is symmetric 5 by 5, `C` is 5 by 4 and `D` is symmetric 4 by 4.
The last line uses the row-sum bound on the largest eigenvalue of the symmetric
matrix `D`; it does not claim an exact trust-region maximum. Supplying the
uniform inequality `-s·tangentPolynomial≤U` instantiates `hp` in
`leafRej_all_of_secondOrderOriented`. The normal and cubic analytic theorems
supply `hv` and `h3`. A strict violation then fills `hleaf`.

One can instead certify the polynomial interval `[L,U]`, set
`m=(L+U)/2`, `H=(U-L)/2`, and use the shifted absolute-support version. This
retains interval centres and may be useful for a later refinement.

### 3. Exact polynomial coefficients from existing Gaussian integers

The current `Tangent2K.lean` already has:

- the positive/negative-natural representation `ZP` of signed integers;
- Gaussian integer bin phase approximations `wZ`, column sums `sZ`, and their
  certified error bridge in `Tangent2.lean` / `Tangent2S.lean`;
- arbitrary per-bin integer multiplier hints `yZ`;
- integer square-root upper bounds from `isqU`, checked by inequalities on
  squares;
- the `lin2B_sound` and bin-tree soundness pattern.

Here is an especially transparent way to build the additional coefficients.
Put `f_ji=e(u_j-P_ji)` and use the exact pair identity

\[
 Q_i(w)=-\frac{\pi}{6}\sum_{j<k}
          \operatorname{Re}(f_{ji}\overline{f_{ki}})(w_j-w_k)^2.
\]

If `W_ji` approximates `Z f_ji`, define the signed integer

\[
 R_{i,jk}=-\operatorname{Re}(W_{ji}\overline{W_{ki}}).
\]

For a dyadic or rational frame `T`, the pair difference

\[
 w_j-w_k=d_j-d_k-\sum_l(T_{ji,l}-T_{ki,l})\eta_l
\]

is a rational linear form in nine variables (`d0=0`). Each quadratic coefficient
is obtained by summing the corresponding rank-one products, multiplied by
`y_i R_i,jk`. Clearing the known powers of `Z`, the frame denominator and bin
denominators reduces these operations to signed integer multiplication and
addition. The constant and linear terms can reuse the existing `NN`, `JtZ`
and `BtZ` logic, with their existing error bounds.

The pair formula is also a convenient independent specification against which
an optimized coefficient circuit can be checked. It avoids subtracting two
large expressions to recover the diagonal, and makes the common-phase kernel
`H_i·1=0` explicit.

### 4. Coefficient and frame errors must be certified

Suppose `|W_ji/Z-f_ji|≤ε` for every entry. Since `|f_ji|=1`,

\[
 \left|\frac{W_{ji}\overline{W_{ki}}}{Z^2}
                    -f_{ji}\overline{f_{ki}}\right|
 \le 2\varepsilon+\varepsilon^2=:\varepsilon_{\rm pair}.
\]

Thus the error of the quadratic polynomial computed with these pair products,
at a given tangent displacement `w0`, is at most

\[
 \frac{\pi}{6}\varepsilon_{\rm pair}
       \sum_i|y_i|\sum_{j<k}(w_{0,ji}-w_{0,ki})^2
 =\pi\varepsilon_{\rm pair}\sum_i|y_i|\|P_0w_{0,i}\|^2.
\]

Any certified upper bound on the last weighted sum gives a scalar coefficient
error which can be added to the support. Coefficientwise interval arithmetic
may yield a smaller value. This allowance is in addition to the existing
constant/linear approximation errors, numerical `π` enclosure, arithmetic
rounding, and the cubic/normal remainders. It must not be silently absorbed by
an unproved fixed decimal slack.

For exact rational frame `T` and evaluated frame `Tf`, the existing transfer
`n_eff=n_exact+||T-Tf||op h` covers the displacement difference, including all
quadratic normal cross terms, provided the test consistently uses `Tf` and
`n_eff`. In the integer checker an entrywise `l1` sum of the exact frame errors
is a valid, weaker operator-norm bound. Further rounding of `Tf` creates a
further error; it cannot reuse the old frame allowance unless explicitly
covered by it.

### 5. Remainder evaluation over the unchanged domain

The current `Admissible` condition does not assert that `δ` is horizontal.
The actual Hadamards are horizontal, but a `StageCCert.hleaf` proof quantifies
over a larger domain. Consequently row-sum cancellation in weighted norm
bounds must have a defect allowance.

If

\[
 e_\Sigma\ge\left\|\sum_i\delta_{:,i}\right\|_2,
\]

the corrected candidates for nonnegative weights `v` are

\[
 \begin{aligned}
 W_1(v)&=\|v\|_\infty(6X^2+2Xe_\Sigma+r_F^2),\\
 W_2(v)&=\|v\|_1(X+r)^2,\\
 W_3(v)&=\|v\|_1X^2+
 2X\left(r_F\|P_0v\|_2+\frac{\|v\|_1}{6}e_\Sigma\right)
 +\|v\|_\infty r_F^2.
 \end{aligned}
\]

Taking their minimum is valid over every admissible displacement if the
row-sum bound is valid there. With `δ=Tfη+ν`, one may take

\[
 e_\Sigma=h\left\|\sum_i (T_f)_i\right\|_{\rm op}+\sqrt6\,n;
\]

the Frobenius norm can replace the displayed frame operator norm. Exact
horizontality of `Tf` makes its first term zero. Setting `eΣ=0` is a separate
physical-horizontal specialization and cannot be used automatically in the
unchanged `StageCCert` interface.

All new remainder formulas, including any cancellation of cubic terms between
columns, should be reduced to verified scalar bounds on the supplied domain.
The Lean interface deliberately accepts these bounds as parameters, so further
improvements do not require another certificate-structure change.

### 6. Integer comparison and kernel cost

Each row norm of `C` and the norm of `b` can be bounded by an integer hint `u`
whose sign and square inequality are checked. Gershgorin uses only signed
addition, absolute value and maximum. Remainder square roots can use the same
checked-upper-root mechanism. Values of `π`, `√2`, `√6`, radii and bin widths
are enclosed by per-level dyadic or rational bounds as in the current
`T2LevelOK` / `T2ParOK` design. Multiplying by a common positive denominator
then turns the final strict comparison into an integer comparison.

The multiplier and its orientation remain arbitrary hints. The checker must
certify the oriented constant lower bound and compare it with the upper support
plus all errors; a proposed floating-point sign is not itself evidence. If
its constant interval includes zero or the strict comparison fails, retain
the bin. No numerical eigenvector or optimizer output needs to be trusted.

Once the 45 independent quadratic block entries are available, evaluating the
displayed support uses a few hundred basic operations. **Constructing** those
entries from the 90 column/pair weights by a naive rank-one circuit uses
thousands of multiply-adds. Operation count, integer operand sizes, sharing of
intermediate terms and the number of remaining bins all affect kernel time.
There is no measured kernel speedup for the new test in this deliverable.
The current `Tangent2*.lean` checker is unchanged, and no new atlas certificate
has been replayed through it.

Recommended integration order: compile the interface; formalize the selected
analytic bounds; implement and independently verify the exact coefficient
circuit; connect a new Boolean leaf test to the unchanged semantic rejection
predicate; benchmark one representative Record in the kernel; then recertify
the atlas through both production and independent checkers.

### 7. Additional multipliers and retries of unresolved Records

The numerical retry procedure uses the same analytic test with additional
multiplier proposals. N1 is valid for every real multiplier, so an IRLS solve
is only a proposal mechanism. Each finite proposed binary64 vector is treated
as an exact real vector, clipped to maximum coordinate modulus at most one,
and checked with the same support and remainder formulas and the same
`1e-7` guard. The uniform arithmetic estimate in the N1 proof covers zero
and arbitrarily small directions; it does not require an accurate optimizer.

The measured Record-level procedure first accepts any successful primary
exclusion. It retries every unresolved Record and accepts a successful retry
as a separate complete exclusion. A future certificate exporter can retain
the successful tree and graph from either attempt, together with that
attempt's verified per-bin multiplier hints. It must not combine fragments
of two different graphs or trees without a separate proof of that operation.
Selecting one complete valid `StageCCert` requires no interface change.

The numerical experiment records all primary and retry work. In a production
kernel replay, a verified multiplier hint could avoid reproducing the IRLS
proposal search, but neither hint export nor a new checker is implemented
here. There is therefore no measured kernel saving for this policy. Its
demonstrated benefit is the explicitly reported numerical sample pass rate.
