# Route 2, Milestone 1: coverage for tier 1 (working notes, 15 Oct 2026; paused at a clean point)

## Status at a glance (read this first)

**Coverage method.** Certify all 252 complex roots of the inverse-free bilinear system (returns/A §1.2, §5.2),
uniformly over a Hadamard region. The parameter is the 4-dimensional tangent coordinate η, and everything is Taylor
models in η: a per-root Krawczyk test, per-root η-subdivision, and two-root clusters for collisions. Completeness of the
count is returns/A's theorem: 252 disjoint certified simple roots exhaust the projective solutions, for any A. No
exclusion cover of the 5-torus is needed. Torus roots are identified by involution witnesses (returns/A §10.1). T1 is
then the no-5-clique test (returns/B Lemma 4.1, Thm 6.1).

**Rigorous so far.** These use outward-error binary64 Taylor models, with Arb for σ, exp and ‖L‖; every comparison
has margin 10⁻⁹.
- **Record 2471, R = 0.02, 0.05 and 0.08 (degree 4): PASS.** Each region is the full ball
  {e^{i(P+δ)} : δ horizontal, ‖δ‖ ≤ R}. All 252 roots are certified, 48 of them torus. The clique numbers are 1, 2 and 2.
  This holds modulo three cited or proposed lemmas (§6) and two float-with-margin norms, ‖J(0)‖ and ε_L.
- Nothing else is rigorous yet.

**Numerical (float evaluation of the same exact bound formulas, or sampling):**
- **Coefficient boxes** (A-style, scaled up): stop working at ρ ≈ 10⁻³. They are not viable (§4.1).
- **η-regions with whole-ball Krawczyk:**
  - generic Records (2471, 5305, 9889) pass at ρ = 0.02–0.08;
  - sensitive roots need sub-cubes, plus local charts so that the normal bound shrinks (§5.3);
  - Record 5305 at 0.05 needed 6,000+ sub-cube tests and never finished.
- **The main obstacle is root collisions inside the region, not orthogonality** (§8):
  - real folds: torus roots meeting and leaving the torus. Measured by HomotopyContinuation at sample points, they
    cross **40% of balls at ρ = 0.08**, 52% at 0.16 and 73% at 0.3 (60 random Records);
  - near-singular boundary clusters: roots close to c = 0 near balanced 3×3-minor loci, as at Record 54, where 48
    off-torus roots have σ_min(J) of 0.01–0.07.

  Both need the **two-root cluster certificate**. It is written (`tier1/cluster.py`: Krawczyk in the 9 transverse
  coordinates plus Rouché in the kernel coordinate) but **not yet validated**; its first test run was stopped at the
  pause.
- **T1 screen** (sampled, 60 Records, no 5-clique at tolerance 0.05, among Records without fold crossings):
  - 34/36 at ρ = 0.08, 26/29 at 0.16 and 11/16 at 0.3;
  - ignoring folds, 57, 56 and 55 of 60.

  Orthogonality is rarely the obstruction.
- **Containment cover (geometry only).** Tier-1 regions needed to swallow all 12,021 Records: 4,028 at ρ = 0.16, 985 at
  0.20, 421 at 0.24 and 157 at 0.3 (§7).

**Bottom line.** Tier 1 is certifiable **today, rigorously, at R = 0.08 on generic, fold-free Records**, which is the
Record radius itself, at about 5 minutes per region in Python under heavy load. Larger radii, and the roughly 40% of
Records crossed by folds, depend on the cluster certificate. Resume at §12.

## 1. Main finding: coverage by counting all 252 complex roots

**The complex count is exact at Record centres.** We complexify the system: z ∈ (ℂ*)⁶/ℂ*, with
a_i = Σ_j conj(H_ji) z_j, b_i = Σ_k H_ki / z_k and f_i = a_i b_i − 6 for i = 0..4. On the torus, a_i b_i = |⟨h_i, x⟩|².
The sixth equation follows from the other five when HH* = 6I. The support of each f_i lies in the A₅ root polytope Q,
whose normalised volume is 252. So by Bernstein's theorem the system has at most 252 isolated roots in (ℂ*)⁵.

HomotopyContinuation.jl (polyhedral homotopy, run single-threaded in a scratch environment; `tier1/hc_count.jl`) was run
on the centres of Records 100, 877 (F6), 9319 (anchor), 9711, 9674, 8060, 5636 and 272:
- **all 252 paths finite and nonsingular, none at infinity**, at every centre;
- the earlier figure of 204–217 roots (`explore/complexcount.py`) came from random-start Newton missing roots of
  large modulus;
- torus roots number 48, 52 or 56 of the 252;
- at the torus roots ‖J⁻¹‖_∞ has median about 0.6 (max 0.8–3.6), and nearest-root distances are at least 0.4–1.0 (max-norm,
  log coordinates).

**Why this solves coverage and folds.** Suppose that, for every H in a region, 252 pairwise disjoint certified boxes
each contain exactly one root (Krawczyk: existence and uniqueness), in suitable charts of the toric compactification X_Q.
Then they are all the roots: the intersection number on X_Q is 252, and every component of the intersection contributes
at least 1. A torus root is then in a box that meets the torus. Off-torus boxes are certified to miss the torus, for
example by |Re u_k| > r for some k. There is no exclusion cover of the 5-torus at all.

Folds need no special treatment. When two torus roots meet and leave the torus, they become a conjugate pair u ↔ −ū,
and both stay tracked in ℂ⁵. Only the collision itself needs a two-root box: on a real-codimension-1 set in η,
Krawczyk fails for both roots, and a Rouché count in the reduced one-variable function (holomorphic) gives "exactly 2".

**The theorem it needs.** Here is what has to be cited or proved. Let f₁..f₅ be sections of the line bundle L_Q on
the projective toric variety X_Q. If f has 252 distinct nondegenerate zeros on X_Q, then it has no other zeros: no further
isolated points and no positive-dimensional components. This follows from the refined Bézout theorem (Fulton,
*Intersection Theory*, Thm 12.2 and Ex. 12.3.x, for globally generated bundles), or from Bernstein's Theorem B (both
directions) together with curve selection. To audit: whether X_Q's singularities at small torus orbits matter. They
should not, if no root ever lies on a codimension ≥ 2 orbit, and that is checkable.

## 2. Roots escape to the boundary of X_Q inside Record balls (superseded by returns/A's P⁵×P⁵ charts; kept for the record)

Tracking all 252 roots over sampled balls (`tier1/region_study2.py`) showed many roots running off to infinity in (ℂ*)⁵,
with log-modulus spread above 9: 26 roots at Record 100 with ρ = 0.16, and 56 with ρ = 0.3. The cause is the
**rectangle hypersurfaces**. If a 2×2 submatrix of H has rank 1, so that Δ = P_ab − P_a'b − P_ab' + P_a'b' ≡ 0, the facial
system of the weight 1_S has a root. Many Record centres lie very close to such a hypersurface: minimum tangent
distance 0.003 at Record 100, and 0 to 0.03 for 8 of 12 random Records (`tier1/` inline check). At these points the
affine count drops below 252, but the count in X_Q stays 252.

**Fix (implemented in `tier1/systems.py`).** Use the τ-chart of the facet orbit D_S, with v = (τ, w), where
τ = z_{t*}/z_{s*} and w are the logs of the ratios inside S and inside T. Then G_i = τ f_i
= τ(A^S B^S + A^T B^T − 6) + A^S B^T + τ² A^T B^S. This chart is polynomial in τ, smooth through τ = 0, and Krawczyk works in it.
Tracking that switches charts when the spread exceeds 4.5 follows every root through.

## 3. Sampled Krawczyk with polynomial centres (`tier1/phase1.py`; superseded by §5)

**The test.** For each root we fit a polynomial model m(η) in its chart: degree 2 or 3, from 41 to 65 tracked samples. We
also fit a polynomial preconditioner C(η) ≈ J(η, m(η))⁻¹ of degree 1 or 2. The test uses three quantities:
- ε = sup ‖C G(η, m(η))‖ + (ν-term),
- κ = sup ‖I − C J‖,
- K = Lip(C J) in v.

It then solves Kε + (κ − 1) r + K r² ≤ 0 for r. The suprema are sampled here; in the rigorous version they become Taylor
models in η. The normal part ν of the Hadamard (‖ν‖ ≤ n₃ = c ρ³) enters through ‖C ∂_ν G‖ and ‖C ∂_ν J‖.

**Results at ρ = 0.16, sampled (Records 100 and 9711; degree-3 models, degree-2 preconditioner):**
- **All torus roots pass on the whole region.** Tube radii (the inclusion radius r) have median 0.002 and max 0.003–0.01
  with n₃ = 0.5ρ³. With an exact chart (n₃ = 0) the median is 2·10⁻⁵, so **the chart residual dominates the torus
  tubes**.
- The uniqueness radius r_max is about 0.08–0.11. That is ample for disjointness (root separation ≥ 0.4).
- **Failures are off-torus roots.** At Record 100, 45 to 60 of the 204 off-torus roots fail on the whole region: mostly
  far roots (log spread above 2.3), and especially τ-chart roots with K of 50–190 and κ > 1. They pass on sub-balls of
  radius ρ/2 to ρ/8. Since roots are certified independently, each failing root can have its own η-subdivision.
- The orthogonality graph on the torus roots, with tubes and sampled η, has largest clique 2 at Record 100 and 4–5 at
  Record 9711. So T1 would pass on both once coverage is closed.

## 4. Redirect (coordinator, 15 Oct): integrate returns A and B

`returns/A_root_count` proves the root count in the inverse-free bilinear form on P⁵ × P⁵ (Segre degree 252, §5.2
projective saturation). That supersedes the X_Q argument of §1. The τ-charts of §2 are replaced by one affine
bilinear chart per root (x_p = v_q = 1). `returns/B_pairing` gives two things:
- **Lemma 4.1:** five orthogonal common-unbiased rays complete to six, so **no 5-clique suffices**;
- **Thm 6.1:** the cluster form of T1 with the √5(s_a + s_b) error.

All new code uses these.

### 4.1 Scaling A's coefficient boxes (`tier1/bilin.py`, `tier1/scale_coeff.py`)

**What is measured.** These are Krawczyk tests uniform over a complex coefficient box |Re, Im(A − A₀)| ≤ w. All 72 real
directions are free, and no chart or normal bound is needed. The bound formulas are exact, since the system is
trilinear in (A, x, v); evaluation is in floating point. A ball ‖δ‖ ≤ ρ lies in the box w = ρ/√6.

**Record 100** (counts are roots passing, out of 252; torus roots out of 48):

| w | ρ = √6 w | constant centre: all | constant centre: torus | affine centre m = w₀ + Dα: all | affine centre: torus |
|---|---|---|---|---|---|
| 2⁻²⁵ | 7·10⁻⁸ | 252 | 48 | 252 | 48 |
| 10⁻⁴ | 2.4·10⁻⁴ | 224 | 48 | 252 | 48 |
| 3·10⁻⁴ | 7·10⁻⁴ | 198 | 48 | 234 | 48 |
| 10⁻³ | 2.4·10⁻³ | 55 | 0 | 168 | 48 |
| 2·10⁻³ | 4.9·10⁻³ | 36 | 0 | 56 | 0 |
| ≥ 4·10⁻³ | ≥ 0.01 | 0 | 0 | 0 | 0 |

**Verdict: coefficient boxes do not scale.** They stop at ρ ≈ 10⁻³, because 72 free real directions make the root
sweep 10–20 times the tangent sweep. To reach 0.02–0.16, the parameter must be the 4-dimensional Hadamard
coordinate η, with the normal part ν handled as an ℓ²-small perturbation (§5).

## 5. Region certificate in η with Taylor models (`tier1/tm.py`, `tier1/region.py`)

**Setup.**
- **Coordinates.** The parameter is η ∈ ℝ⁴, taken over the ball ‖η‖ ≤ ρ (or over sub-cubes of it).
- **Chart.** The graph chart is δ(η) = Tη + ν(η) with ν(η) ∈ N. It is modelled by δ₀(η) = g₀ + Tη + ½q(η, η). The
  normal remainder satisfies ‖ν‖ ≤ n₃ by a second-order normal bound (proposed **Lemma 4.1′**, §5.2).
- **Taylor-model arithmetic.** A(η) = conj(H(η))ᵀ/√6 is a complex Taylor model in η of degree 3, with an exact radius
  bound for exp. TM arithmetic bounds |η^m| on the ball by ρ^|m| ∏(m_i/|m|)^{m_i/2}.

**Per root** (252 roots, each in the bilinear chart x_p = v_q = 1):
1. The model m(η) comes from chord-Newton in TM arithmetic, a polynomial of degree 3.
2. The preconditioner is affine: C(η) = C₀ − C₀ J₁(η) C₀.
3. **Krawczyk.** In a weighted max-norm (relative, absolute or square-root weights; the first that passes is used),
   we require ε_k + κ₀_k r + κ₁_k r² < r with:
   - ε = |C F(A, m)|;
   - κ₀ = |I − C J(A, m)| plus the ν terms (Cauchy–Schwarz over the 36 entries: n₃ ‖(C ∂F/∂A_e A_e)_e‖₂);
   - κ₁ = 2 Σ_{s,t} |Σ_j C_kj T[j,s,t]| s_s s_t / s_k. J is affine in the unknowns, so κ₁ is exact.
4. Failing roots are retried on the 16 sub-cubes of their cube, each root with its own subdivision. Sub-cubes get
   **local** second-order charts with a local e₃, so n₃ shrinks like h³ (§5.3).

**After all roots:**
- pairwise projective separation (2×2 determinant witnesses with disc bounds);
- off-torus roots certified by ||x_s|² − |x_t|²| > 0;
- torus boxes certified by **involution witnesses**: τ(box_a) misses every other box (returns/A §10.1);
- the orthogonality graph on torus roots, with TM lower bounds of |⟨x_a, x_b⟩| (adaptive sub-cubes, recentred
  models) and the **no-5-clique** test.

### 5.1 First results (float evaluation of the bound formulas)

| Record | ρ | Roots certified on the whole ball | Sub-cube pieces | Coverage | Edges | Clique | T1 | Time |
|---|---|---|---|---|---|---|---|---|
| 2471 | 0.02 | 252/252 | 0 | yes | 0 | 1 | **pass** | 15 s |
| 5305 | 0.02 | 250/252 | 272 (2 roots, depth 2) | yes | 0 | 1 | **pass** | 41 s |
| 2471 | 0.05 | 252/252 | 0 | yes | 5 | 2 | **pass** | 15 s |
| 5305 | 0.05 | 237/252 | 6,148 (15 roots, depth ≤ 3) | 1 torus root unresolved (ε stuck at 0.003: the global n₃) | | | fail | slow |
| 100 | 0.02 | 218–239/252 (no subdivision) | | | | | | |

The 5305 failure at 0.05 is fixed by local charts (§5.3).

### 5.2 Lemma 4.1′ (second-order normal bound), proposed

Let δ₀(η) = g₀ + Tη + ½q(η, η), with any coefficients, and e₃ ≥ sup_{‖η‖≤r_H} ‖Φ(δ₀(η))‖, computed by Taylor models.
Suppose a Hadamard e^{i(P+δ)} has η = G⁻¹Tᵀδ, and write ν = δ − δ₀(η) = ν_N + ν_T, with ν_T the tangent leakage of
q and g₀ (computable, about 10⁻¹⁷). Then

  (σ − 2√3 d₀)‖ν_N‖ ≤ e₃ + (‖J₀‖ + 2√3 d₀)‖ν_T‖ + √3‖ν‖²,  d₀ ≥ ‖δ₀‖.

The ingredients are Lemma 4.1's base-independent remainder (‖Φ(x + ν) − Φ(x) − J(x)ν‖ ≤ √3‖ν‖²) and
‖J(x) − J(0)‖ ≤ 2√3‖x‖. Lemma 4.1's quadratic bound n gives an a-priori bound, which puts ‖ν‖ below the larger root.
So ‖ν‖ ≤ n₃, the smaller root plus the leakage.

Measured (`tier1/chart2.py`):

| ρ | σ | Rigorous-form n₃ | True chart residual |
|---|---|---|---|
| 0.08 | 1.7–2.2 | (0.9–1.1) ρ³ | 0.06 ρ³ |
| 0.16 | 1.7–2.2 | (1.1–1.5) ρ³ | 0.06 ρ³ |
| 0.3 | 1.7–2.2 | fails (crude TM bound of Φ) | |

The Taylor-model bound of Φ is about 20 times pessimistic. A sharper e₃ needs centred forms or subdivision.

### 5.3 Local charts

The global n₃ does not shrink under η-subdivision. Some roots, including one torus root of Record 5305, have ‖C ∂F/∂A‖
of about 50 relative to their coordinates, so ε stays near 50 n₃ in every sub-cube. A sub-cube of half-width h therefore
gets its own second-order chart, the Taylor expansion of the graph chart at its centre, with its own e₃ ∝ h³. That gives
n₃(h) = min(n₃, 1.1 e₃(h)/σ). Rigorously, this is Lemma 4.1′ applied on the sub-cube, with the global n₃ as the a-priori
bound.

### 5.4 Tighter bounds (Bombieri norm)

TM bounds now take, degree by degree, the minimum of Σ|c_m| bnd_m and the Bombieri bound
|p_k(η)| ≤ (Σ_{|m|=k} m!/k! |c_m|²)^{1/2} ‖η‖^k (Cauchy–Schwarz against the symmetric coefficient tensor). Vector-valued
versions are used for ‖Φ‖ and ‖L Φ‖, where L is a left inverse of J_N.

Rigorous-form n₃ at ρ = 0.08 / 0.16 / 0.3 is now (0.29–0.35) ρ³ / (0.40–0.49) ρ³ / (0.97–1.9) ρ³. The sampled truth is
0.06 ρ³.

At ρ = 0.08 the torus-root failures of degree-3 models come from Taylor-model truncation, not from ν: the bound on F is
0.002 against a true value of about 2·10⁻⁴. **Degree 4 removes them**, at about 4 times the cost.

## 6. Rigorous version, first region (`tier1/rigorous_region.py`)

**Arithmetic.** Taylor models with `rig=True` (`tier1/tm.py`): every add, multiply, sum and exp adds its own binary64
rounding bound to the radius. e^{i t₀} comes from Arb at 120 bits. All comparisons use a margin of 10⁻⁹.

**Inputs.**
- Lemma 4.1 in Arb, from `ballrecord.py`: σ, r_H, n, frame T, frame rounding dT;
- Lemma 4.1′ with a left inverse L, where ‖L‖ is an Arb operator-norm bound and ‖I − L J_N‖ is bounded by a float
  residual plus slack;
- the 252 HomotopyContinuation roots, used as proposals only.

**Theorem inputs.**
- returns/A §5.2: 252 disjoint simple-root boxes exhaust the projective solutions, for every A;
- returns/A §10.1: the involution argument;
- returns/B Lemma 4.1 and Thm 6.1: no 5-clique, intra-box separation;
- the trilinear Krawczyk lemma (§5).

**Results.**

| Record | R | n₃ | Roots | Separation | Involution witnesses | Torus | Edges / clique | Verdict | Time |
|---|---|---|---|---|---|---|---|---|---|
| 2471 | 0.02 | 7.8·10⁻⁶ (old bound) | 252/252 | ok | ok | 48 | 0 / 1 | **PASS** | 68 s |
| 2471 | 0.05 | 1.3·10⁻⁴ (old bound) | 252/252 | ok | ok | 48 | 7 / 2 | **PASS** | 70 s |
| 2471 | 0.08 | 1.8·10⁻⁴ | 245/252 at degree 3 | | | | | fail | 64 s |
| 2471 | 0.08 | 1.8·10⁻⁴ (left-inverse bound) | 252/252 at degree 4 | ok | ok | 48 | 19 / 2 | **PASS** | 293 s |

**Three regions, Record 2471 at R = 0.02, 0.05 and 0.08, are therefore certified "no third MUB" in binary64 with outward
error bounds.** Each region is the full ball {e^{i(P+δ)} : δ horizontal, ‖δ‖ ≤ R}. The R = 0.08 region is exactly the Record-2471 ball. Its residual
dependencies are:
- the citations above;
- ‖J(0)‖ evaluated in float with a 1% margin, which should become an Arb bound;
- the ε_L slack, which should be in Arb as well.

## 7. Atlas size (geometry only): containment cover (`tier1/cover_estimate.py`)

Each kept Record retains its certified boundary transfers. A Record t is excused from Stage C when it lies inside a
certified tier-1 region around a centre c, that is, when d(c, t) + R_t ≤ ρ. Distances use alignments composed along the
transfer graph. The order is random-greedy, and **all centres are assumed to pass T1**.

| ρ | Tier-1 regions needed to swallow all 12,021 Records | Median Records swallowed per region |
|---|---|---|
| 0.16 | 4,028 | 4 |
| 0.20 | 985 | 27 |
| 0.24 | 421 | 71 |
| 0.30 | 157 | 203 |

This route needs **no new topology**: the clopen argument, the Records and their transfers are all unchanged. Only the
per-Record exclusion step, Lemma 4.2, is replaced by "inside a tier-1 region". Records whose surroundings fail T1 keep
Stage C (tier 2).


## 8. Root collisions: folds and near-singular boundary clusters

**Folds.** `tier1/fold_check.py` counts torus roots with HomotopyContinuation at 12 sample points per ball:
- **6110:** {48, 50, 52} in the ball, with off-torus |Re u| down to 0.11;
- **7465:** {48, …, 54};
- **9688:** {54, 56, 58};
- **63 and 664:** constant 48.

In the 60-Record screen, a fold crosses the ball in 24 Records at ρ = 0.08, 31 at 0.16 and 44 at 0.3. They are
concentrated among atlas indices above about 5,300 and among centres whose torus count is not 48. **Folds are the
common case, not a corner case.** On a fold hypersurface, which has real codimension 1 in η, two roots coincide, so
per-root Krawczyk can never succeed on a domain meeting it, at any subdivision depth.

**Boundary clusters.** At Record 54 (ρ = 0.08), all 48 failing roots are off-torus with min |x_i| = 0.003–0.07 and
σ_min(J) = 0.01–0.07. They are pairs near the c = 0 boundary at balanced 3×3 minors, where returns/A Thm 6.1 makes the
boundary point singular. They fail with κ₀ > 1 even at ρ = 0.01–0.02.

**Two-root cluster certificate (`tier1/cluster.py`; written, unvalidated).**
- **Setup.** For a failing pair (a, b), work in a's chart with the midpoint w̄. Take the SVD J(w̄) = U S V^H. Let u be
  the right singular vector of the smallest singular value, with Q_z its orthogonal complement; let ℓ be the left
  singular vector, with Π the remaining rows.
- **Model.** mm(η) = w̄ + Q_z z₀(η), from chord-Newton on Π F = 0 in Taylor models.
- **Step 1.** For every η and every |t| ≤ τ, Π F(mm + u t + Q_z z) = 0 has a unique z(η, t) with |z| ≤ r_z. This is
  Krawczyk in 9 complex dimensions. F is exactly quadratic in dw, since F(w + dw) = F(w) + J dw + Bq(dw, dw).
- **Step 2.** g(η, t) = ℓ·F(mm + u t + Q_z z(η, t)) = c₀ + c₁ t + c₂ t² + E. Rouché: if
  sup|c₀| + sup|c₁| τ + E < inf|c₂| τ², then g has exactly 2 zeros in |t| < τ. So the cylinder holds exactly two roots
  counted with multiplicity, which is what returns/A §5.3 needs.

The cylinder is hooked into `region.py` (`CLUSTERS = True`). Failing pairs at the same domain are tried before
subdivision. Separation and involution checks skip cluster partners, and cluster members near the torus become T1
nodes with x-disc = τ max|u_x| + r_z.

**Still missing:**
- (a) validation runs. The first run on 6110 and 54 at ρ = 0.08 was stopped at the pause; the slow inner bound was
  then fixed;
- (b) ν-terms in the step-1 Jacobian (prototype omission);
- (c) the B-style intra-cluster condition, which should use the x-disc (currently the flag is τ > 0.25);
- (d) involution handling of a cluster: τ(cylinder) must meet only itself. Then the pair is either 2 torus roots or a
  conjugate pair, and T1 must treat the cylinder ∩ torus.

## 9. T1 screen (sampled, `tier1/t1_screen.py 60 7 0.08,0.16,0.3 0.05,0.1,0.2`)

Each Record has 64 sample η, and torus roots are continued from HomotopyContinuation centres. An edge is drawn if
min |⟨x_a, x_b⟩| ≤ tol. Records with a fold crossing count as "track-fail".

| ρ | Fold-free Records | Fold-free with no 5-clique (tol 0.05) | All 60, ignoring folds, no 5-clique |
|---|---|---|---|
| 0.08 | 36/60 | 34/36 | 57/60 |
| 0.16 | 29/60 | 26/29 | 56/60 |
| 0.3 | 16/60 | 11/16 | 55/60 |

The clique-number histogram at ρ = 0.08 and tol 0.05 is {2: 52, 4: 5, 6: 3}. The three 6-clique Records are near-triple
(T₃-adjacent), so tier 2 is needed there. returns/B's screen gave 20/48 at 0.16 and 2/48 at 0.3; its quadratic remainder
over the whole ball is far more pessimistic than our sampled minimum or the TM edge test with adaptive sub-cubes. In the
η-certificate runs the edge test was never the failing step: clique ≤ 2 at 2471, 5305 and 9889.

## 10. Size and cost estimate of a tiered atlas

**Option A: keep the 12,021 Records and their certified transfers** (no new topology). Replace Stage C, Record by
Record, by a tier-1 certificate on the same ball (R = 0.08), as was done rigorously for 2471. That is 12,021 regions,
each needing:
- 252 Krawczyk tests at degree 3 or 4, plus about 1,000–2,000 TM edge tests;
- about 1–5 minutes of Python (about 5 minutes under load 50).

There are no bins, no tangent tests and no two-clique search. Expected tier-2 remainder:
- Records whose ball contains a fold or boundary cluster, about 40%, unless the cluster certificate works;
- near-triple Records with a sampled 5-clique, about 5%.

**Option B: containment.** Tier-1 regions of radius ρ swallow whole Records (§7): 4,028 / 985 / 421 / 157 regions at
ρ = 0.16 / 0.20 / 0.24 / 0.30. A region at ρ ≥ 0.16 meets a fold with probability above 50%, so Option B is only
realistic **with** cluster certificates. Coverage then still comes from the old transfers, which are unchanged.

**Option C: new tiling by exact reach / seed domain.** Not pursued. It needs new transfer certificates for the region
boundaries, but Lemma 5.1 applies verbatim with R_t = ρ, since Lemma 4.1 holds up to ρ < σ/L ≈ 0.43.

**Lean cost (rough).** One region is about 252 × (5,000 TM products of 35–70 coefficients) ≈ 10⁸–10⁹ rational
multiply-adds. At the kernel rates of `kernel_atlas/docs/KERNEL_FEASIBILITY.md` that is hours per region, *not* the 1–5 minutes
estimated in §7 there, unless the TM degree drops or certificates ship more precomputed data. This needs a real
benchmark before any Lean commitment.

## 11. What is rigorous, numerical, cited or proposed

| Item | Status |
|---|---|
| 252-root completeness (projective, any A) | cited: returns/A §5.2 (proved there; independent audit pending) |
| Involution torus classification | cited: returns/A §10.1 |
| No 5-clique suffices; cluster form of T1 | cited: returns/B Lemma 4.1, Thm 6.1 |
| Trilinear Krawczyk lemma with polynomial centre and affine preconditioner (§5) | proof sketch here; standard |
| Lemma 4.1′ (second-order normal bound, left-inverse form, §5.2) | proposed here; proof sketch; needs write-up and audit |
| Local Lemma 4.1′ on sub-cubes (§5.3) | proposed; prototype float only. `rigorous_region.py` disables local charts |
| Two-root Rouché cluster (§8) | proposed; code unvalidated |
| `rigorous_region.py` 2471 at R = 0.02, 0.05, 0.08 | **rigorous** (binary64 with outward error plus Arb), modulo the lines above; ‖J(0)‖ and ε_L are float with margins (to move to Arb) |
| Everything in §§1–5.1, 7, 9 | numerical |

## 12. How to resume (exact steps)

**Environment.**
- Python 3.10 with numpy, scipy, networkx and python-flint 0.9. Run single-process, with
  `OMP_NUM_THREADS=2 OPENBLAS_NUM_THREADS=2 nice -n 10`.
- Julia 1.12 with HomotopyContinuation.jl in a project directory:
  `julia --project=$JENV -e 'using Pkg; Pkg.add("HomotopyContinuation")'`.
  Then `export JENV=<that dir>`. `tier1/roots.py` reads `JENV`; its default is a scratch path that will not exist on
  a new machine.

**Regenerating data.** No large file is needed in git.
- `tier1/centres.npz` (11 MB, Record centres and frames) is rebuilt automatically from
  `results/atlas_certificate.json.gz` on first use, or with `python3 tier1/centres.py`.
- `tier1/hc_cache/` (HomotopyContinuation roots per Record or sample point) is rebuilt on demand by
  `roots.hc_roots` (about 0.6 s per matrix after Julia start-up).
- `tier1/cover_*.npy` comes from `python3 tier1/cover_estimate.py <rho>` (4–35 min).
- These three are listed in `tier1/.gitignore`.

**Key commands** (run from `tier1/`):
- `python3 rigorous_region.py 2471 0.08 0 4` (record, R, maxd, degree) replays the rigorous PASS in about 5 minutes.
- `python3 region.py 0.08 <ids> --maxd 2 --D 4` runs the float region certificate. One JSON line per region; progress
  goes to stderr.
- `python3 t1_screen.py 60 7 0.08,0.16,0.3 0.05,0.1,0.2` runs the sampled T1 screen.
- `python3 fold_check.py 0.08 12 <ids>` counts folds.
- `python3 chart2.py <rho> <ids>` evaluates the rigorous-form n₃.

**Next steps, in order:**
1. Validate `cluster.py` on 6110 (fold) and 54 (boundary cluster) at ρ = 0.08:
   `python3 region.py 0.08 6110 54 --maxd 1 --D 4`. Fix (b)–(d) of §8.
2. Run the 20-Record batch (`sample20.txt`) at ρ = 0.08 with clusters and record pass rate and time per region. The
   pre-cluster batch was too slow because Record 54 subdivided without clusters. Add a per-region time cap.
3. Make the rigorous path complete:
   - Arb for ‖J(0)‖ and ε_L;
   - local Lemma 4.1′ on sub-cubes in rigorous form;
   - clusters with `rig=True`.
   Then certify 5–10 Records rigorously at R = 0.08.
4. Benchmark the operation count per region against `kernel_atlas/docs/KERNEL_FEASIBILITY.md` rates before choosing Option A or B
   (§10). Reducing the TM degree, for example degree 3 with sub-cubes, may matter more for Lean than for Python.
5. Write up Lemma 4.1′ and the trilinear Krawczyk and Rouché-cluster lemmas for audit.

## 13. Proposed edits to DESIGN.md (not applied)

- **Lemma T1, item 1 (Coverage).** Replace "Stage C bins at a coarse resolution" with "252 certified projective roots
  or two-root clusters of the bilinear system (returns/A §5.2–5.3), uniformly over the η-region". Bins are not needed.
- **Lemma T1, item 4.** "no 6-clique" becomes **"no 5-clique"** (returns/B Lemma 4.1).
- **Folds paragraph.** Folds are not "harmless". They cross about 40% of R = 0.08 balls and break per-root
  certification, so they need Rouché two-root clusters. Near-singular boundary clusters (balanced 3×3 minors) need the
  same.
- **Measurements.** |U(H)| ≤ 252 complex roots, all finite and simple at generic centres. The earlier 204–217 figures
  were incomplete Newton searches.
- **Chart.** The second-order chart is certified with Lemma 4.1′, in rigorous form n₃ ≈ 0.3–0.5 ρ³ at
  ρ ≤ 0.16 (the true value is 0.06 ρ³).
- **Lean section.** Add the cost warning of §10.
