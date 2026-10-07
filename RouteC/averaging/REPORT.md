# Averaging lemma for corner discriminants: report (7 Oct 2026)

Scope: Tasks 1–4 of the "averaging lemma" brief. Every number below is labelled:
**[exact]** means proved by exact arithmetic (sympy or Z[ζ₆]), **[rig-i.p.]** means
rigorous in principle (explicit inequalities, with constants computed in floating point), and
**[num]** means numerical evidence only. The scripts are in this directory. They use the shared
float helpers in `common.py`.

Notation: H is a 6×6 Hadamard with phases φ ∈ ℝ³⁶. Γ is the 11-dimensional space of row and column
phase shifts (the gauge). For H near an F6-equivalent K:

- **d** is the *gauge-reduced phase distance*: the 2-norm over the 36 entries of the wrapped phase
  difference after least-squares removal of row and column shifts, minimised over the 7200-element
  dephased F6 orbit (`common.dist_F6`).
- **d∞** is the largest entry of that residual.
- **d_F** is the ClusterTube projector distance.

M(H) = max_c R_c(H), and S(H) = Σ_c R_c(H) over the 400 corners.

## 1. Sum-of-squares form (Task 1) **[exact]**

For a 3×3 phase matrix B put

    q(B) = perm(B) · det(B)² / ∏ᵢⱼ Bᵢⱼ .

q is invariant under row and column rephasing, row and column permutations and transposition.
Also q(conj B) = conj q(B). As a Laurent polynomial in the 9 entries, q has 55 monomials, the sum
of the |coefficients| is 108, and every exponent vector k satisfies |k|² ≤ 18.

**Identities** (`task1_identity.py`, sympy, generic dephased E). Write g∨, η∨, χ∨ for the invariants
g, η, χ evaluated at (−s, −t, −r), i.e. with the Gram of E E† instead of 6I − E E†. Then

    g∨ = |det E|²,   η∨ = |perm E|²,   χ∨ = −2 Re q(E),
    R∨(E) = 4 g∨² η∨ − χ∨² = 4|q|² − 4(Re q)² = 4 (Im q(E))²,
    D(E) = q(E) − conj q(E) = 2i Im q(E)     (D of CornerBounds/PROOF.md §2, all 48 terms; sign +).

**Consequence for a Hadamard H = [[A, B], [C, D]]** (blocks by any row triple and any column triple).
From AA† + BB† = 6I and A†A + C†C = 6I:

    R(A) = 4 (Im q(B))² = 4 (Im q(C))² = R(D).

So complementary corners have equal R. In particular

    S(H) = Σ_c R_c(H) = 4 Σ_{all 400 3×3 submatrices B} (Im q(B))² = −Σ_B (q(B) − conj q(B))²,

and each term is the square of a real trigonometric polynomial

    𝒟_B(φ) = 2 Im q(B) = 2 Σ_k c_k sin(k·φ_B)     (55 terms, Σ|c_k| = 108).

So 𝒟 is "2 Im q of the complementary block", and it is purely real. Equivalently, the imaginary
Laurent polynomial D(dephase B) of CornerBounds is i·𝒟_B.

60-digit check (mpmath, 30 random Hadamards refined to residual < 10⁻⁶⁰,
`results_task1.txt`): all four of R(A) = 4(Im q(B))², R(A) = 4(Im q(C))², R(A) = R(D), and
S = 4Σ(Im q)² hold to ≤ 6·10⁻⁵⁶.

## 2. Local structure at F6 (Task 2)

**The variety.**
- **[exact]** (`task2_hessian_exact.py`, arithmetic in Q(√3)). The real Jacobian of HH† = 6I at
  F6 = (ζ₆^{jk}) has rank 21 on the 25 dephased phases, so T = ker has dimension 4 = defect. T is
  spanned by four integer patterns: t₁, t₂ (the tangents a, b of the affine family
  F6^(2)(a,b) = F6 ∘ exp(i(a t₁ + b t₂)); t₁ puts 1 at rows 1,3,5 × columns 1,4, and t₂ does the
  same at columns 2,5), and t₃ = t₁ᵀ, t₄ = t₂ᵀ.
- **[num]** All 9 second-order obstruction quadrics (cokernel components of D²f(v,v), v ∈ T)
  vanish identically.
- **[num]** For random v ∈ T, the nearest-point distance from F6 + εv to the variety is
  (0.10–0.28)·ε², with ε from 0.04 down to 0.005. The Jacobian rank at the nearby variety points
  is 21.
- So near F6 the dephased variety is a **smooth 4-manifold, not a union of branches**. The two
  2-dimensional Fourier families (the t₁,t₂-plane and the t₃,t₄-plane) lie inside one 4-dimensional
  sheet.
- An early Gauss–Newton experiment looked "cone-like", with displacement ∝ ε. That was an artefact:
  min-norm Newton steps there are not nearest-point projections.

**Hessian of S [exact].** Every corner of F6 has Im q = 0, so S = Σ𝒟_c² has a critical zero and
Hess S = 2 Σ_c ∇𝒟_c ∇𝒟_cᵀ. The curvature of the variety does not enter at order 2. 180 of the 400
corners have a nonzero linear term. In the basis (t₁, t₂, t₃, t₄):

    Hess S|_T = 31104 · [[2,−1,0,0],[−1,2,0,0],[0,0,2,−1],[0,0,−1,2]] = 31104 · Gram_perp,

where Gram_perp is the Gram matrix of the gauge-projected tangent vectors. Hence

    S(H) = 15552 · |v_perp|² + O(|v|³)    (isotropic on T; 15552 = 2·6⁵).

In the dephased Euclidean metric on 25 phases, det(Hess − λ Gram) = 1152 (λ−15552)² (λ−7776)
(λ−3888). So S ≥ 1944 |v_deph|² at second order. S grows quadratically in **every** direction
transverse to the (discrete) F6 orbit. There are no continuous orbit directions in dephased
coordinates.

**Off the variety [num, FD to 8 digits]**:
- LᵀL (L = ∂𝒟/∂φ at F6) on Γ⊥ has eigenvalues in [2916, 55296]. So the linear part of 𝒟 controls
  *every* gauge-reduced displacement, not only tangent ones.
- The smallest nonzero singular value of Df is √3.

**Maximal corner, first order** (`task2_minimax.py`, on the exact linear forms L_c):

    min_{v∈T} max_c (L_c v)² / |v_perp|² = 216,     min_{v∈T} max_c (L_c v)² / d_F1(v)² = 5184,

Both minima are attained at v ∝ t₁ − t₂ (and t₃ − t₄). Here d_F1 is the first-order projector
distance, and |v_perp|²/d_F1² ∈ [24, 36] on T. Rigorously, for any H, d_F ≤ d/√6, because
1 − |mean e^{iψ}|² ≤ Var ψ.

**Exact extremal curve** (`task4_exact_curve.py`, sympy). Along H(a) = F6 ∘ exp(ia(t₁ − t₂)),
72 corners have R = 144 sin²(3a) and the other 328 have R = 0, so

    M = 144 sin²(3a),   S = 10368 sin²(3a),   d = √6|a|,
    d_F = sin(a/2)   [upper bound exact; equality numerically, nearest orbit point],

so M = 144 sin²(6 arcsin d_F). The curve returns to an F6-equivalent at a = π/3. The census curve of
CornerBounds §3 is a different, non-extremal direction: there M/d_F² ≈ 9216.

## 3. Radius of the quadratic regime (Task 3)

**Chart-free Taylor chain [rig-i.p.]** (`task3_constants.py`). Let H be any Hadamard, K any
F6-equivalent, and u ⊥ Γ the gauge-reduced displacement, |u| = d. Write u = v + n with v ∈ T and
n ⊥ T. Then:

1. f(K+u) = 0 gives |n| ≤ (½A₂|u|² + 2|u|³)/√3, with A₂ = sup‖D²f(F6)[u,u]‖ ≤ 2√3.
   The third-order term of f is bounded globally by 12|u|³/6.
2. 𝒟(K+u) = Lu + ½Q[u,u] + E₃, where
   - ‖Q[u,u]‖ ≤ Q₂|u|² with Q₂ = √λmax(Σ_c Q_c²) = 348.6;
   - ‖E₃‖ ≤ 6148|u|³. This is global, from (1/3)Σ|c||k|³ = 614.8 per corner times
     √(Σ_c|u_c|⁶) ≤ 10|u|³.
3. ‖Lv‖ = √15552 |v| and ‖Ln‖ ≤ √55296 |n|.

Together:

    √S(H) ≥ 124.71 d − 534.2 d² − 6564 d³ .

Hence S ≥ 7776 d² (half the asymptotic rate) for **d ≤ r₁ = 0.0443**, and S > 0 for d < 0.103.
At the tube boundary, d ≥ √6/30 = 0.0816 (since d_F ≥ 1/30), the chain gives S ≥ 9.3, so
M ≥ S/400 ≥ 0.023.

For rigour one would recompute Q₂ and A₂ from exact Hessians at F6 (Z[ζ₆] arithmetic, as in
task 2). λ = 2916, 55296, 15552 and σ = √3 are evidently exact. Replacing the global cubic constant
by its numerically maximised value (505) gives r₁ = 0.062 and positivity to d < 0.18.

**Careful numerical estimate [num]** (`task3_numeric.py`). This uses the graph chart of V over T,
with 400 directions per radius and Nelder–Mead refinement:

| d (max on sphere) | 0.0035 | 0.028 | 0.057 | 0.085 | 0.141 | 0.213 | 0.284 |
|---|---|---|---|---|---|---|---|
| min S/d² | 15552 | 15546 | 15527 | 15497 | 15399 | 15209 | 14947 |
| min M/d² | 216.0 | 215.9 | 215.7 | 215.2 | 213.9 | 211.2 | 207.5 |

So **S ≥ 0.96·15552 d² and M ≥ 207 d² hold numerically on the whole sheet for d ≤ 0.28**,
far beyond the tube boundary d = 0.0816. The Taylor constants above are pessimistic by about a
factor of 10.

## 4. Global map of min M versus distance (Task 4) **[num]**

`task4_survey.py 1000`, 13,405 Hadamards (residual < 10⁻¹³):

- 4,000 random least-squares Hadamards;
- 2,000 projected perturbations of F6 (radius 10⁻³ to 1);
- 500 of Tao's S6;
- 2,000 from the F3-corner family [[F₃, F₃D₁], [D₂F₃, −D₂F₃D₁]] and perturbations of it;
- 2,000 from the Fourier family F6^(2)(a,b) and its transpose, and perturbations of them;
- 2,905 iterates of 300 projected soft-max descents of M on the variety.

Further runs:

- `task4_fourier_scan.py`: the full (a,b) grid of the Fourier family.
- `task4_constrained.py`: Nelder–Mead minimisation of M/d_F² over the 4-dimensional sheet at fixed
  chart radius, from 8 starts.

Lower envelope, min{M : d_F ≥ ρ}:

| ρ | 0.005 | 0.01 | 0.02 | **1/30** | 0.04 | 0.05 | 0.075 | 0.10 | 0.15 | 0.20 | 0.25 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| sample minimum | 0.144 | 0.578 | 2.25 | **6.29** | 9.52 | 13.9 | 30.8 | 51.0 | 92.6 | 127.7 | 145.6 |
| exact curve 144 sin²(6 arcsin ρ) | 0.130 | 0.518 | 2.06 | **5.686** | 8.14 | 12.6 | 27.3 | 46.0 | 88.8 | 125.9 | 143.6 |

- No sample beats the exact curve.
- The constrained minimisation on the sheet converges, from every start, to the direction t₁ − t₂
  (or t₃ − t₄). Its M/d_F² equals the curve value to all printed digits at d_F = 0.007, 0.018,
  0.035, 0.053, 0.071, 0.106.
- The curve reaches at most d_F = sin(π/12) = 0.2588. Beyond that, the minimum over non-Tao
  samples is 186 (251 for d_F ≥ 0.3). Tao has M = 243 and mean R = 218.7.

Minimum M outside the tube (d_F ≥ 1/30), by family:

| family | random | near F6 | F3 family | Fourier family | descents | Tao |
|---|---|---|---|---|---|---|
| min M | 15.7 | 9.9 | 9.9 | 7.2 | 6.3 | 201 |

Other observed global ratios over all samples:

- S ≥ 2999 d²;
- S ≥ 1.1·10⁵ d_F²;
- mean R ≥ 1.04 outside the tube;
- among random Hadamards, min mean R = 1.43, so "mean ≥ 13" does not hold at 4,000 samples;
- min M = 15.7 for random Hadamards, with 0.1% quantile 44.5.

**Estimate.**

    c₀ := inf{ M(H) : d_F(H) ≥ 1/30 } = 144 sin²(6 arcsin(1/30)) ≈ 5.686     [num; ≤ is exact up to the d_F lower bound].

It is attained on F6^(2)(a, −a) at a = 2 arcsin(1/30). The value is an upper bound once the
numerically-minimised d_F of that point is accepted. More generally, numerically,
min{M : d_F ≥ ρ} = 144 sin²(6 arcsin ρ) for ρ ≤ 0.25.

## 5. What is proved, and the path to a rigorous lemma

- **Exact:**
  - S = 4Σ_B(Im q(B))², with R(A) = 4(Im q(B))² = R(D).
  - dim T = 4, T = span(t₁, t₂, t₁ᵀ, t₂ᵀ).
  - Hess S|_T = 31104·Gram_perp, i.e. S = 15552 d² + O(d³).
  - First-order max-corner constants 216 (in d) and 5184 (in d_F).
  - The census M = 144 sin²(3a) on the extremal curve.
- **Rigorous in principle:** √S ≥ 124.71 d − 534.2 d² − 6564 d³ for every Hadamard. This gives
  S ≥ 7776 d² for d ≤ 0.0443.
- **Numerical:**
  - the local smooth-manifold structure;
  - S/d² ≥ 14947 and M/d² ≥ 207 for d ≤ 0.28;
  - c₀(1/30) ≈ 5.69, with min{M : d_F ≥ ρ} = 144 sin²(6 arcsin ρ).

**Proposed lemma:** if d_F(H) ≥ 1/30 then M(H) ≥ 5. Most promising route:

1. **Local step.** Certify S ≥ c d² on the graph chart of V over T for |w| ≤ 0.4. That chart is
   4-dimensional. Use Krawczyk on the normal map n(w) and degree-2 or degree-3 Taylor models of 𝒟
   on about 10³–10⁴ boxes, together with the 400-corner symmetry. The exact quadratic form 15552|v|²
   and its 4% drop to d = 0.28 leave ample margin.
   - Use max-corner weights rather than S/400. On T the 180 "active" corners give
     M ≥ S₁₈₀/180 ≈ 86 d², and the true minimax constant is 216.
   - Every H with d_F ≤ 0.047 has d ≤ 6 d_F ≤ 0.28 (first order), so this covers the annulus
     d_F ∈ [1/30, 0.047]. It need only be done around one orbit point, by symmetry.
2. **Compact step.** Cover the rest of V. Either use Krawczyk-verified 4-dimensional patches of the
   Hadamard equations (the "direct root enclosure" already wanted in RouteC/README), or reuse the
   campaign's θ-chart: cells with a seed corner having R(θ) ≥ 5 are trivially fine, so only the
   band R(θ) < 5 needs enclosures. On those cells the required bound is M ≥ 5 ≫ 0, so coarse
   enclosures suffice. Samples show M ≥ 46 once d_F ≥ 0.1.
3. **Algebraic alternative to step 2.** Make MC1 quantitative. MC1's contradiction
   (Σ_C p_C = 108 per row triple, with p ∈ {0, 5, p*} on critical strips) becomes a margin once every
   |Im q| ≤ √(c₀)/2. The sum-of-squares form makes "all |𝒟_B| small" the natural hypothesis.

## Scripts

All are run with `python3 -W ignore <script>` from this directory. Set `OMP_NUM_THREADS=1` when
using pools.

| script | output | role |
|---|---|---|
| `common.py` | – | R from the definition and via q, Hadamard projection, F6 orbit (7200), d, d_F |
| `task1_identity.py [n]` | `results_task1.txt` | exact identities and the 60-digit check |
| `task2_hessian_exact.py` | `results_task2_exact.json` | exact T, linear forms, Hessian, eigenvalues |
| `task2_minimax.py` | `results_task2_minimax.json` | first-order constants 216 and 5184, d versus d_F |
| `task3_constants.py` | `results_task3_constants.json` | Taylor-chain constants and radii |
| `task3_numeric.py` | `results_task3_numeric.json` | S/d² and M/d² on the chart up to d = 0.28 |
| `task4_exact_curve.py` | stdout | exact census on F6^(2)(a, −a) |
| `task4_fourier_scan.py` | `results_task4_fourier.npy` | Fourier-family grid |
| `task4_constrained.py` | `results_task4_constrained.json` | min M/d_F² on the sheet |
| `task4_survey.py n` | `results_task4_survey.txt`, `results_task4_samples.npz` | global survey and envelopes |
