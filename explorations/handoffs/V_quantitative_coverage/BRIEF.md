# Handoff V: quantitative strict-corner coverage (every class away from F6 has a corner with R ≥ ε)

**Goal.** Prove an explicit lower bound

  **max over the 400 positional 3×3 corners C of R_C(H)  ≥  ε(ρ)  whenever d([H], [F6]) ≥ ρ,**

for every complex Hadamard matrix H of order 6 not equivalent to Tao's matrix, with explicit ε(ρ) > 0. Ideally the
bound has the form ε = c·ρ² on some range, with c explicit. This would turn the computer atlas into a plain finite
cover of a fixed compact set of seeds (§1).

This is research mathematics. Partial results are valuable (§6). Label every claim **PROVED** (written proof),
**CERTIFIED** (exact finite computation, replayable), **NUMERICAL** (evidence only) or **NOT ESTABLISHED**.

Context files referenced below are in `context/` in this zip.

---

## 1. Why this helps

- **The proof** (`context/PROOF.md`) excludes four MUBs by covering the space X of non-Tao Hadamard classes with
  certified balls.
- **The new atlas** (`context/SPEC.md`) uses balls in the four seed phases θ ∈ Ω = {R > 0}, mapped to classes by the
  matched completion f₊ and its conjugate.
- **Covering X today needs an open-and-closed argument.** Every point on a ball's boundary must transfer into another
  ball's interior, often through a different corner of the matrix, and X's connectedness then gives coverage. That
  machinery (corner-change transfers, a breadth-first build, the clopen theorem) is most of the engineering.
- **With an explicit ε(ρ), the coverage step becomes trivial:**
  1. Every class outside the ball B(F6, ρ) has a corner seed in the compact set K_ε = {θ ∈ T⁴ : R(θ) ≥ ε}. This holds
     up to the seed's symmetries, and every strict corner of a non-Tao matrix is matched, by the nonmatched converse
     (`context/PROOF.md` Theorem 2.4).
  2. So it is enough to cover K_ε (a fixed compact subset of the 4-torus) by seed balls, plus one ball at F6.
  3. That check is a finite partition of K_ε. There are no transfers between corners, no boundary covers, no
     connectedness argument and no breadth-first construction, and the build is embarrassingly parallel.
- K_ε stays at distance ~ε/|∇R| from the edge of Ω, so every ball is well conditioned.

## 2. Setup

Notation follows `context/PROOF.md` §1–2.

- **Corners.** For a 6×6 Hadamard H and a positional corner C = (I, J), |I| = |J| = 3, dephase H[I, J] to get the
  seed θ_C ∈ T⁴. Then R_C(H) = R(θ_C) = 4g²η − χ², a polynomial in the corner entries that is invariant under
  equivalence and conjugation. Since 4(Im Ψ)² = R on actual sides, R_C ≥ 0 for every corner of an actual Hadamard.
- **Distance.** d([H], [K]) = min over monomial unitaries U, V of ‖H − U K V‖_F. Any equivalent metric with explicit
  comparison constants is fine.
- **The qualitative statement is proved** (`context/PROOF.md` Theorem 2.5 and Prop. S.3; `STRICT_CORNER_COVERAGE.md`):
  R_C(H) = 0 at all 400 corners iff H ≅ F6. The proof, in outline:
  - **Routing.** A singular minor or a row triple of the form (1; x; x̄) puts H in a Fourier family; the all-critical
    members of the Fourier families are ≅ F6 (`FOURIER_CRITICAL_LOCUS.md`).
  - **Critical-strip classification.** On a three-row strip with every corner critical, each corner has p ∈ {0, 5, p*}
    or is one of two rational endpoints. Zero-J strips: return O (`O_zeroj_unsquared_REPORT.md`). Nonzero-J strips:
    return K (`K_nonzero_J_REPORT.md`, `CRITICAL_STRIP_CLASSIFICATION.md`, `CRITICAL_CORNER_REDUCTION.md`).
  - **Counting.** For a fixed column, Σ_{C∋c} p_C = 54; the signed vertex sums of J vanish; and Σ X_C² ≥ 54
    (`ENDPOINT_COUNTING.md`, return S). These exclude p* and the endpoints.

  Every step is an exact identity or a sign condition. A quantitative version perturbs each step: "all R_C ≤ ε ⇒ each
  corner is δ(ε)-close to the critical classification ⇒ the counting identities force H to be δ′-close to F6."
- **Tao** is excluded from the statement. For the record: Tao has max R = 243, attained at 360 of its 400 corners
  (the other 40 have R = 0).

## 3. Data (NUMERICAL)

- **The maximum corner R over 12,021 sample classes** spread over all of X (the old atlas centres;
  `context/atlas_centres_best_corner.csv`):

  | quantile | 0 | 0.1% | 1% | 5% | 50% | 100% |
  |---|---|---|---|---|---|---|
  | max_C R_C | 0.21 | 17.9 | 101.9 | 192.3 | 305.9 | 388.9 |

  - The global maximum possible is R_max = 3¹³/2¹² ≈ 389.2 (`context/PROOF.md` Theorem 1).
  - The smallest values sit at the centres next to F6 (records 874–878, 562, 1263: 1.4–8.6). Record 877 contains F6.
- **Along the Fourier family** through F6 (`context/fourier_path.csv`):
  - H(t) = [[F₃, F₃], [F₃D, −F₃D]], D = diag(1, e^{it}, 1), with max_C R_C = 576 t² for small t;
  - ‖H(t) − H(0)‖_F = √6 t, and H(0) = F₂ ⊗ F₃ ≅ F6.

  Since d ≤ √6 t, this path satisfies max_C R_C ≥ 96 d² near F6. Expect a quadratic (Łojasiewicz exponent 2) lower
  bound, with a constant to be determined in all directions, not only along this family.
- **Where the maximising corner sits:** the median of R/|∇R| (its seed's distance to the edge of Ω) is 1.34, and only
  16 classes, all next to F6, are within 0.08 (column `best_edge_distance`).

## 4. Questions

**Q1. Local version at F6.** Is max_C R_C(H) ≥ c·d([H], [F6])² for d ≤ ρ₀, with explicit c and ρ₀? Two possible
routes:
- the Hessian of S(H) = Σ_C R_C(H) at F6, restricted to the tangent space of X (dimension 4 = defect of F6), plus a
  third-order remainder bound;
- a direct argument through the corners. At F6, 36 corners are regular edge points (R = 0, ∇R ≠ 0, g = 3); see
  handoff U's `f6_corners.csv` if available.

  Note that max_C R_C ≥ S/400, so a bound on S suffices.

**Q2. Global version.** Give an explicit ε(ρ) for d ≥ ρ, either:
- by making the critical-strip proof quantitative (§2), or
- by another route.

An honest constant is fine even if it is small, e.g. ε = 10⁻³ for ρ = 0.1; the atlas only needs K_ε to stay away from
the edge of Ω.

**Q3. A cheaper intermediate.** Prove the weaker statement Σ_C R_C(H) ≥ ε(ρ) (the average rather than the max), or
the same with any fixed subset of corners (e.g. the 20 corners of one row strip).

## 5. What you can use

- Everything in `context/`. Exact computation (sympy, exact algebraic numbers) and interval arithmetic are welcome.
- **Do not use the atlas, or any Stage C result, as an input.** The statement is about Hadamard geometry only, so the
  atlas is not needed. A circular route would also defeat the purpose: the point is to make the atlas trivial.
- A computer-assisted proof is acceptable (e.g. a certified cover of X evaluating only R, with no Stage C), but say so
  clearly. An analytic route through the existing strip identities is strongly preferred.

## 6. Deliverables

A report, `REPORT.md`, with:
- the statement(s) proved, with explicit constants;
- the proofs, each step labelled;
- replayable verification scripts for every CERTIFIED step.

Q1 alone (the local constant at F6) is already useful: it sizes the F6 ball and its interface with the seed balls.
