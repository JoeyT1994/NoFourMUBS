# Independent certifier for the atlas certificate (Steps 3 and 4)

This folder contains a second, independent implementation of the Step 3 and Step 4 checks of `PROOF.md`. It reads a
`nofour-atlas-v1` certificate and recomputes everything from each record's `phi` and `Tint`. It was written in
Julia with IntervalArithmetic.jl. Its only sources were the specifications:
- `PROOF.md`
- `proof/atlas/STAGEC.md` (the 9 Oct corrected version)
- `proof/atlas/COVERAGE.md`
- `proof/atlas/RIGOUR.md`
- `proof/atlas/export.py`, used only for the file format
- the module docstring of `proof/atlas/ballrecord.py` (Lemma 3.1)

None of `stagec.py`, `certify.py`, `atlas.py`, `record.py`, `arb_replay.py`, `repair.py`, `nonempty.py` or the body
of `ballrecord.py` was opened.

## Running it

```bash
cd proof/independent
julia --startup-file=no --project=jlenv -e 'using Pkg; Pkg.instantiate()'                    # once
julia --startup-file=no -t 10 --project=jlenv check.jl ../atlas/results/atlas_certificate.json.gz OUTDIR
julia --startup-file=no --project=jlenv tests/sanity.jl OUTDIR/certificate.txt              # soundness sanity checks
sbatch run_rusty.sh                                                                         # the same, on one cluster node
```

`jlenv/` pins the Julia environment (IntervalArithmetic 1.0.10). Add `--fast` for float decisions with margins only.

The full certificate takes about 24 min on one 128-core rusty node (about 50 thread-hours; `results_v4/`), and the CI
tests (`tests/run_tests.sh`) take a few minutes on 4 threads. See "Performance" below.

`--startup-file=no` keeps a personal `startup.jl` out of the run.
`check.jl` calls `convert.py` (Python standard library only) to turn the gzip JSON into plain text, because the Julia
environment has no JSON or gzip package. All floats are passed as `float.hex`, so the conversion is exact.

The checker writes these files to OUTDIR:
- `step3.tsv`: one line per record that needs Step 3.
- `step4.tsv`: one line per closed record.
- `BINDING.txt`: SHA-256 digests of the certificate, `check.jl`, `convert.py`, `src/*.jl` and the Julia
  project and manifest, with the Julia version and the options (`--fast`, `--limit`).
- `RESULT.txt`: a PASS or FAIL per closed record with the reason, the nonemptiness result and a verdict.

Both `.tsv` files are appended as records finish, so a long run can be interrupted and restarted with the same
command; it resumes where it stopped, but only if `BINDING.txt` matches the new run exactly. Otherwise it stops and
asks for an empty OUTDIR, so receipts are never reused for a changed certificate, checker or mode. `--limit K`
checks only the first K closed records and their targets, and can never give the complete verdict.

**Exit status.** `check.jl` exits 0 only when the certificate is complete and every check passed. With `--partial`
(used for sub-certificates, as in `tests/run_tests.sh`) it exits 0 when every checked record passed, and says that
this is not a complete-atlas certificate. Otherwise it exits 1.

| File | Contents |
|---|---|
| `convert.py` | certificate (.json.gz) to plain text |
| `src/io.jl` | reads the text format |
| `src/normal.jl` | the exact frame, sigma, e0, j1, Gram bounds and the normal bound n (Lemma 3.1) |
| `src/stagec.jl` | Stage C, C1–C5 |
| `src/boundary.jl` | the boundary tree (Lemma 4.1) and F6 nonemptiness |
| `check.jl` | the driver |
| `tests/sanity.jl` | soundness sanity checks (see below) |
| `tests/RESULT_test_certificate.txt`, `tests/step3_test_certificate.tsv`, `tests/step4_test_certificate.tsv` | results on the test certificate |

## What is checked, mapped to the lemmas

A record needs Step 3 if it is closed or is the target of a closed record. Each such record gets Step 3. Each closed
record also gets Step 4.

### Step 3a: the exact frame and the normal bound (Lemma 3.1), in radians

1. **Frame.** T = h(Tint / 2^30) is computed exactly as the integer matrix
   T36 = 36·Tint − 6·rowsum − 6·colsum + total, so T = T36 / (36·2^30).
   Stage C and the boundary tree use interval enclosures of this exact rational matrix. No rounded frame enters any
   decision, so **n' = n**: no frame-rounding term is needed.
2. **Gram bounds.** G = TᵀT is computed in exact rationals (BigInt). Gershgorin gives
   lam_max ≤ maxᵢ Σⱼ|G_ij| and λ_min ≥ minᵢ (G_ii − Σ_{j≠i}|G_ij|) > 0. Then ||G^{-1/2}|| ≤ λ_min^{-1/2}, enclosed in
   intervals.
3. **J and Φ(0).** Φ consists of the Re and Im parts of (HH*)_{ij} for i < j (30 real numbers). J (30×36) and Φ(0)
   are evaluated in intervals.
4. **σ.** Let Π = h − T G⁻¹ Tᵀ be the projector onto N. G⁻¹ is exact; Π is an interval matrix. The checker runs an
   interval Cholesky factorisation of Π JᵀJ Π + μ(I − Π) − σ²I, with μ = ||J||² + 1 and σ² taken slightly below the
   float eigenvalue estimate. If every pivot has a positive lower bound, every symmetric matrix in the enclosure is
   positive definite, by inclusion isotonicity. This includes the exact matrix, and for ν ∈ N it gives
   ||Jν||² ≥ σ²||ν||².
5. **The other constants.**
   - e0 ≥ ||Φ(0)||.
   - j1 ≥ ||JT||, via ||A||² ≤ maxᵢ Σⱼ|(AᵀA)_ij|, in intervals.
   - r_H = ||G^{-1/2}||·R.
   - b = e0 + j1 r_H + (L/2) lam_max r_H², with L = 2√3.
   - The checker requires R < σ/L and σ² − 2Lb > 0.
   - n = 2b/(σ + √(σ² − 2Lb)). This equals (σ − √(σ² − 2Lb))/L algebraically, without the cancellation.
   - r_col = maxᵢ ||Tᵢ|| r_H + n. Here Tᵢ is the 6×4 block of rows e = 6j + i, and ||Tᵢ|| is bounded via its Gram
     matrix.
   - r_F = min(R, √lam_max r_H + n).

   All of these are upper bounds from intervals, except σ, which is a lower bound.

### Step 3b: Stage C (Lemma 3.2, STAGEC.md), in cycles

R, r_H, n, r_col and r_F are divided by 2π, taking interval upper bounds. The frame is not rescaled; η absorbs the
factor. K ≥ ||e(P)/√6||₂ is computed in intervals by the Gram row-sum bound.

- **C1/C2, the bins.** All 12⁵ bins at M = 12 are tested. Each survivor is refined into its 32 closed children at
  M = 24, 48 and 96. Bin midpoints are integers in units of 1/192. On every bin, at every level, the checker applies:
  - the per-column direct test, | |Sᵢ| − 1 | > τ = 2π(5a/√6 + r);
  - the vector test, ||(|Sᵢ| − 1)ᵢ|| > 2π(KX + r_F);
  - the scalar test (6.12): y = eᵢ, δ not decomposed, linear δ-term ≤ r·||J_{i·}||;
  - the tangent test C2b, exactly as written: a Σ_{j>0}|(Jᵀy)_j| + r_H||Bᵀy|| + n N_y + 𝓔(y), with every r / r_F
    alternative and both forms of the pure-x term.

  The direction y comes from regularised least squares, y = (WWᵀ + λI)⁻¹c with W = [a J_{:,2:6} | r_H B], and is
  normalised to max|y| = 1. Three values of λ are tried. y is used as an exact real vector.
- **C3, the labels.** Retained M = 96 bins are sorted lexicographically and clustered greedily. The first
  unassigned bin becomes a centre, and every unassigned bin with ||h|| ≤ label_radius joins it. h is the mean-free
  per-coordinate nearest integer wrap in units of 1/192, and 6·192²·||h||² = 6Σw² − (Σw)² is exact in integers.
  The label radius is s = sup(√(max) + X₉₆) + 10⁻¹², in intervals. The check fails if any s ≥ 0.1.
- **C4, the edges.** For every pair of labels, the checker applies:
  - the O and U direct tests;
  - the O and U support tests ("hence" scalar forms, with ||D_U||);
  - on survivors, the joint test for that edge type. The direction (y₀, y₁, y_e) again comes from regularised least
    squares, and four regularisations are tried. 𝓔^ball uses X → s_t and only the G_y pure-x form, as STAGEC.md
    specifies.
- **C5, the search.** First the checker iteratively deletes labels with O-degree < 5 or U-degree < 6. This is valid
  because every vertex of a solution has at least 5 O-neighbours and at least 6 U-neighbours inside the solution.
  It then enumerates every 6-clique A of 𝒪 depth-first from its least vertex. Partial cliques whose common
  U-neighbourhood already has fewer than 6 vertices are pruned. For each complete A, it searches the common
  U-neighbourhood exhaustively for a 6-clique of 𝒪. The search uses exact bitsets. Hitting the cap of 5·10⁷ steps
  counts as a FAIL.

Stage C passes only if no label radius is ≥ 0.1, no pair (A, B) exists and the cap is not hit.

### Step 4: the boundary tree (Lemma 4.1), in radians

- **The cover.** The checker covers [−ρ, ρ]⁴ by 256 boxes of side ρ/2, where ρ ≥ r_H is r_H rounded up to a
  multiple of 2⁻²⁰. With that rounding, every box centre and half-side is an exact float, so the children tile their
  parent exactly. A box is refined into 16 children while the child side is ≥ R/64.
- **Accepting a box.** Each box must be one of the following:
  - **Off the ball.** dist(0, box) > r_H.
  - **Off the shell.** inf ||Tη|| > R + n or sup ||Tη|| < R − n, using the exact T.
  - **Transferred** into a listed target t that passed Step 3. That means sup_box ||c + Mη|| + n < R_t, where:
    - c = h(A P_s + 2πN − P_t) and M = h(A T_s), in intervals;
    - A(X) = sign·(tr ? Xᵀ : X)[rowperm, colperm].
- **Bounding the supremum.** sup_box ||v + M(η − z)|| ≤ min(||v|| + ||M||·2hs, √Σ_e(|v_e| + hs Σ_k|M_ek|)²), with
  the matching lower bound for the shell.
- **The winding N.** N is chosen by dephasing D = AP_s − P_t against each of the 36 reference row/column pairs,
  rounding D'/2π, and keeping the best. Any integer N is valid; this only affects success, not soundness.
- **What is decided in floats.** Floats only choose the order in which targets are tried. Every acceptance is
  re-decided in interval arithmetic, and only that decision counts.

### Nonemptiness

The search covers the closed records that passed Step 3. A record is screened first (`f6_class_min`): with
a = rowperm, b = colperm (0-based), the dephased A·F6 is (2π/6)(a_j − a_1)(b_c − b_1) mod 2π, so the float distance the
search minimises depends only on the two permutations α = a − a_1, β = b − b_1 (mod 6) that fix 0: 120² classes
instead of 720² alignments. A record whose class minimum is ≥ R_t + 10⁻⁶ (and has no rounding tie, i.e. no dephased
entry within 10⁻⁹ of a half-turn) would not be reported by the full search, and is skipped. (The previous screen, dephased
phases within 1 rad of multiples of 2π/6, never excluded anything, since |rem(x, 2π/6)| ≤ π/6.) For the remaining
records the checker brute-forces all 720² row/column permutations of F6. Sign and
transposition can be fixed, because F6ᵀ = F6 and conj F6 is a column permutation of F6 mod 2π. For the best
alignment it chooses a winding N and certifies ||h(A F6 + 2πN − P_t)|| < R_t in intervals.

## Rigour

**Default mode.** Every acceptance decision holds in interval arithmetic:
- Stage C bin and edge tests are evaluated in Float64 to find a rejecting test and direction. Each rejection is then
  re-evaluated without margin in Interval{Float64}, from interval tables of e(k/192) and e(−P_ji)/√6 and the
  interval frame, and must satisfy inf(lhs) > sup(rhs).
- A float rejection that intervals do not confirm is overruled: the bin or edge is kept. Overruled counts are
  reported in `step3.tsv`.
- Label radii, all normal-bound constants, the boundary tree and nonemptiness are decided in intervals or exact
  rationals.
- The graph search is exact.
- The non-dyadic constants a = 1/(2M) and 1/192 are used through interval upper bounds.
- How the replay is organised only affects speed. The products e(k/192)·e(−P_ji)/√6 are tabulated once per record
  (`qtable`), in the same number type and by the same expressions, so every bin sees bit-identical intervals. A direct
  or scalar rejection is first re-decided on the column the float pass rejected; if intervals do not confirm it, the
  test over all columns is evaluated as before. B is only computed for the tangent test, and conj(S_i) q_ji is computed
  once per bin (or label) instead of once per evaluation of 𝓔(y).

**`--fast` mode** skips the interval replay. A float rejection then needs lhs > rhs + 10⁻⁸. The error budget is
written in the style of RIGOUR.md §3 (u = 2⁻⁵³):
- The tables are correctly rounded from 256-bit MPFR, so the absolute error per real coordinate is ≤ u. The float
  frame is the rounding of the exact one, with |ΔT| ≤ u|T|.
- q_ji: |Δq| ≤ 4u. S_i: |ΔS_i| ≤ 6·4u + γ₆√6 < 10⁻¹⁴. |S_i|, c_i: < 10⁻¹³.
- J_ij: |ΔJ| < 10⁻¹³. B_ik: |ΔB| < 10⁻¹².
- Each tested expression is a sum of at most about 150 products of at most 4 factors. Every factor is bounded:
  |y| ≤ 1, |S| ≤ √6, |J| ≤ 1, |T| ≤ 1, K < 1.01, and all radii < 1. Each factor has absolute error < 10⁻¹². So
  |Δ(lhs − rhs)| < 150·4·10⁻¹²·3 < 2·10⁻⁹ < 10⁻⁸.
- The edge tests have smaller expressions.

The full interval replay on the test certificate overruled **0** float rejections (see the results below), which
checks this budget empirically.

**Soundness sanity checks** (`tests/sanity.jl`):
- (a) The certified σ always lies below the float smallest singular value of J on N. It is within 10⁻⁶ of it, or within 10⁻³ when the interval Cholesky needed one 0.999 back-off in σ², as for record 0.
- (b) At the centre F2⊗F3 ≅ F6, with R = 0.01 and the frame ker J, two known third bases are each mutually unbiased
  to I and F2⊗F3: (D2F2)⊗(D3F3) and (D2F2)⊗(D3²F3).
  - All 12 of their vectors lie in retained M = 96 bins, including vectors on bin boundaries, and in labels covering
    those bins.
  - The 15 O-edges among the six labels of the first basis survive the direct, support and joint tests.

  So Stage C does not discard a genuine configuration in this test.
- (c) The F6 search recovers a conjugated, permuted, wound and perturbed copy of F6. The certified distance equals
  the planted perturbation.
- (d) The two-clique search finds planted configurations in random graphs and reports none in unplanted ones.

## Interpretations of the spec (decisions I had to make)

1. **The units of the Stage C radii.** STAGEC.md works in cycles but does not state the conversion. I divide R, r_H,
   n, r_col and r_F (all radians) by 2π, using upper bounds. T is not rescaled, because δ/2π = T(η/2π) + ν/2π.
   label_radius is already in cycles.
2. **The label assignment rule.** I read "within label_radius" as ||h|| ≤ label_radius, using the per-coordinate
   nearest wrap. The radius is then max||h|| + X₉₆ + ε. Any rule is sound, since s is computed afterwards.
3. **Which edge tests are applied.** Direct tests first, then the "hence" scalar support tests, then the joint test,
   for O and U separately. I did not add the stronger 2-vector O test or the projection of D onto mean-free z.
   Both are valid but are not in the spec.
4. **Directions.** The regularised least-squares weights and the number of λ values tried are my own choices: 3 for
   bins, 4 for edges. The spec allows any y. RIGOUR.md mentions "at most 20 directions" for edges, so the original
   presumably tries more.
5. **The minimum box side.** "Down to R/64" is read as: refine while the child side is ≥ R/64. The cube is
   [−ρ, ρ]⁴ with ρ = r_H rounded up to 2⁻²⁰, so the depth-5 side is ρ/64 ≥ R/64.
6. **The shell.** I use the spec's shell R − n ≤ ||Tη|| ≤ R + n. With the exact frame, ν ⊥ span(T) gives the tighter
   shell √(R² − n²) ≤ ||Tη|| ≤ R (see below). It was not needed.
7. **Targets that are not closed.** A transfer counts only if the target passes Step 3 at its own R_t. Whether every
   target is itself closed, which is needed for a complete atlas, is reported separately.

## Results on the test certificate (`indep_test_certificate.json.gz`, 212 records, 80 closed)

`tests/RESULT_test_certificate.txt`, `tests/step3_test_certificate.tsv` and `tests/step4_test_certificate.tsv` hold the full output.
The run was in default (interval replay) mode, with 10 threads; wall time was 8.5 min for Step 3 and 7 s for
Step 4.

- **80 / 80 closed records PASS** Step 3 and Step 4.
- **Step 3.** All 212 records (closed or target) PASS.
  - σ ≥ 1.7312 everywhere.
  - n ≤ 0.0064448 rad.
  - Label radii ≤ 0.0409.
  - M = 96 bins after the tests: about 7,300 on average.
  - Labels: 109 on average, 306 at most.
  - Edges after all tests: about 1,160 O and 2,530 U on average.
  - Degree pruning removes nothing. However, no record has even one 6-clique A of 𝒪 whose common U-neighbourhood has
    ≥ 6 vertices, so the search never reaches the B stage.
  - The interval replay re-decided every float rejection of bins and edges: **0 overruled**.
- **Step 4.** All 80 boundary trees close.
  - 619,424 boxes in total; maximum depth 4, so the minimum side used is r_H/32 > R/64.
  - Every box is decided in intervals.
  - 62 of the 80 records transfer some boxes into non-closed records. All 132 of those targets pass Step 3 at their
    own R_t.
- **Not complete, as expected for a test subset.**
  - 132 targets are not closed.
  - **No record contains F6.** The nearest record by dephased phase residual is off by 0.21 rad, which is far outside
    R. The F6 search itself is checked by `tests/sanity.jl` (c).

So the result agrees with the expectation that every closed record passes. It does not certify the theorem, because
the subset is neither closed under transfer nor contains F6.

**The production certificate.** The `proof/atlas/results/atlas_certificate.json.gz` present on 9 Oct (03:36,
11,228 records, all closed) has **no `Tint` field**. It predates the frame export (and the Stage C correction), so it
cannot be checked from `phi` and `Tint`. `convert.py` stops with an explicit message. When the regenerated
certificate exists, run `check.jl` on it. The cost estimate from the test run is about 23 s of CPU per record in
default mode, so roughly 7 h on 10 threads for 11,000 records. `--fast` takes about 0.5 s per record. Both result
files resume after an interruption.

## Spec issues found

None of these invalidates a lemma as I re-derived it. Items 1–4 are gaps or ambiguities that an independent reader
has to resolve.

1. **Units are not stated in STAGEC.md.** It works in cycles, while r_H, n, r_col, r_F and R come from Lemma 3.1 in
   radians. The 2π conversion of these radii, and the fact that T itself is *not* rescaled, should be stated. The
   task brief says so; STAGEC.md does not.
2. **The symbol L is overloaded.** In C1, L = 5a is the ℓ¹ bound of x. In Lemma 3.1, L = 2√3 is the second-derivative
   bound. C2a then writes τ = 2π(L/√6 + r) with the first meaning.
3. **The scalar test (6.12) is underspecified.** STAGEC.md only says "y a coordinate vector, δ not decomposed". I
   took the linear δ-term as ≤ r·||J_{i·}|| (from ||δ_{:,i}|| ≤ r) and dropped the n N_y term, which belongs only to
   the decomposed form. The remainder is 𝓔(eᵢ) with G_y = |Sᵢ|/√6. This is valid, but the spec should state it.
4. **The joint test, small points.**
   - "D_O … with columns (−Im Q_j, Re Q_j)" makes D_{O,1} and D_{O,2} its *rows*.
   - The ν-term appears once per vector (n N_{y₀} + n N_{y₁}). That is valid by the triangle inequality, but
     n·(Σ_ij(Σ_t y_{t,i} J^t_ij)²)^{1/2} is tighter.
   - ||J_tᵀy_t ± D_Eᵀy_e|| could be taken after projecting onto mean-free vectors, since every x_t is mean-free. J_tᵀy_t
     already is; D_Eᵀy_e is not.
   - Tightening is optional.
5. **The shell is looser than necessary (COVERAGE.md).** With the exact frame, ν ⊥ span(T) gives
   ||Tη||² = R² − ||ν||² on the boundary, so √(R² − n²) ≤ ||Tη|| ≤ R. The stated R − n ≤ ||Tη|| ≤ R + n contains this
   shell and is valid. It is only needed in that form if a rounded frame breaks the orthogonality.
6. **Cancellation in n.** n = (σ − √(σ² − 2Lb))/L subtracts nearly equal numbers, since b ≪ σ². The equivalent
   2b/(σ + √(σ² − 2Lb)) is better conditioned in any arithmetic.
7. **PROOF.md Lemma 3.2 lists its data as (P, r_H, n, r_col).** After the 9 Oct correction, Stage C also needs r_F.
8. **COVERAGE.md says to cover "‖η‖_∞ ≤ r_s".** r_s there is r_H. The 4-dimensional ball constraint ‖η‖ ≤ r_H is
   what excludes boxes. It is worth saying that the cube is only a container.
9. **The certificate does not store N, n or the per-target winding.** This is fine: they are recomputed. A naive
   winding, rounding h(D)/2π or wrapping D entrywise before h, fails badly (‖c‖ ≈ 8–10 instead of 0.10), because
   h(D) mixes non-integer row and column means. The winding must be chosen after dephasing. A one-line remark in
   COVERAGE.md would help other re-implementers.
10. **The export format and "closed".** In the test certificate every closed record's targets include non-closed
    records. A complete certificate must have every target closed. The checker reports this separately
    ("All targets closed").

## Results

| Path | Run |
|---|---|
| `results_v4/` | The current certificate with the faster checker (rusty job 7262168, one 128-core ccq node, 24 min): **12,021 / 12,021 closed Records PASS**, F6 nonemptiness CERTIFIED, sanity checks pass. `RESULT.txt` is identical to `results_v3/`, and so is every line of `step3.tsv.gz` and `step4.tsv.gz` apart from the seconds column |
| `results_v3/` | The current certificate, fresh and complete (rusty job 7213978, one 128-core node, 8 h): **12,021 / 12,021 closed Records PASS**, F6 nonemptiness CERTIFIED, sanity checks pass |
| `results_v2/results_v2_failures.tsv` | The rows that failed on the previous certificate. Record 11403's Stage C found a two-clique configuration in this checker's label graph, and 10 boundary trees needed it as a target. The atlas was repaired by shrinking that Record (`../atlas/results/RECEIPT.md`) |
| `tests/` | Sanity tests, and results on a small test certificate |

The F6 search is multithreaded over candidate Records; only the search is parallel, and each acceptance is the same interval test.

## Performance

The full replay of the 12,021-Record certificate on one 128-core node (AMD EPYC 7742):

| | `results_v3` (job 7213978) | `results_v4` (job 7262168) |
|---|---|---|
| Step 3 (wall) | 7,102 s | 1,118 s |
| Step 4 (wall) | 1,569 s | 275 s |
| F6 nonemptiness (wall) | about 5.5 h | 4 s |
| whole run (wall) | 8 h 01 min | 23 min 40 s |
| thread-hours | about 1,030 | about 50 |

The two runs make the same decisions: every line of `step3.tsv` and `step4.tsv` (all columns except the seconds) and the
whole of `RESULT.txt` are identical. Where the time went in v3, and what changed:
- **F6 search.** Every Record went through the 720² brute force, because its screen excluded nothing. The class
  pre-filter (see "Nonemptiness") leaves one Record (877), and the brute force on it is unchanged.
- **Garbage collection.** At 128 threads the old code spent most of its time stalled: the same Records cost about 5×
  more CPU per Record in one 128-thread process than in eight 16-thread processes. The allocations came from
  closures with boxed variables in the bin loop, the per-edge least-squares solve, the bitset operations of the
  clique search and the float pass of the boundary tree. These loops now reuse buffers. The joint-test direction still
  comes from the same LAPACK Bunch-Kaufman calls (`dsytrf`/`dsytrs`) as `Symmetric(M) \ g`, with the workspace
  kept, so it is bit-identical.
- **Interval replay.** About 90% of Stage C was spent replaying bin rejections in intervals. The table of products
  and the column-first replay (see "Rigour") cut it by about half, without changing any interval inequality or its
  operands.
- **Scheduling.** `@threads :dynamic` gives each thread one contiguous block of Records, and the hardest Records are
  consecutive (11205–11227). `:greedy` hands out one Record at a time.

On a 30-Record sample, including the slowest Records of v3 and Record 877, the per-Record outputs of the old and new code
are byte-identical. On 8 local threads, the sample took 45 s with the old code and 22 s with the new. On a random sample
of 256 Records at 128 threads on rusty, it took 62 s per Record with the old code and 12 s with the new, and the
outputs were identical again.
