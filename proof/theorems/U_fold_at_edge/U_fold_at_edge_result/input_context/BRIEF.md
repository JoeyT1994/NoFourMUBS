# Handoff U: the matched completion across the edge of Ω (a four-dimensional chart through F6)

**Goal.** Show that the four-phase reconstruction extends smoothly across the edge R = 0 of the strict seed region Ω,
once one more coordinate y with y² = R is added, and that the extension is a local chart of the Hadamard class space
there. **In particular, show it at F6.** This would make the computer atlas entirely four-dimensional and remove its
worst-conditioned region (§1).

This is research mathematics. Partial results are valuable (§6). Label every claim **PROVED** (written proof),
**CERTIFIED** (exact finite computation, replayable), **NUMERICAL** (evidence only) or **NOT ESTABLISHED**.

Context files referenced below are in `context/` in this zip.

---

## 1. Why this helps

- **The proof** (`context/PROOF.md`) excludes four MUBs by covering the space X of non-Tao Hadamard classes with
  finitely many certified balls, each excluded by an interval test (Stage C).
- **The new atlas** (`context/SPEC.md`, `context/seed_balls_README.md`) places those balls in the four seed phases θ of
  the minimal reconstruction:
  - a strict seed (R(θ) > 0) has a unique matched completion H₊(θ);
  - the ball is a small ellipsoid of seeds;
  - the enclosure of H₊ over the ball is certified by Taylor models and an interval Newton (Krawczyk) step on the side
    equations.
- **Two problems come from the edge ∂Ω = {R = 0}:**
  1. **Balls shrink near the edge.** The side Jacobian is ¼ Im Ψ = ±√R/8, so seed-to-matrix derivatives blow up like
     1/√R. In the run, the largest singular value of DQ is 3–5 in the bulk but 20–75 near F6, and balls within ~0.05
     of the edge fail at every radius (`context/feasibility_summary.txt`).
  2. **F6 is not in the image.** F6 has R = 0 at every corner, so it is only a limit of f₊(Ω). The atlas therefore
     keeps one 25-dimensional record at F6. That record needs a special transfer step (a Krawczyk enclosure of the
     21 normal directions) to hand its boundary to seed balls, because ‖Mth⁻¹ L‖ ≈ 60 there.
- **If the reconstruction extends smoothly across R = 0,** with a chart through F6, then balls may straddle the edge,
  the F6 record becomes a four-dimensional ball like all others, and the special step disappears. Conceptually, the
  reconstruction's domain becomes the closed "double" of Ω, a manifold without boundary, and F6 is an ordinary point
  of it.

## 2. Setup

Notation follows `context/PROOF.md` §1–2 and `context/SIDE_FIBER.md`.

- **Seeds.** θ ∈ T⁴, with corner E(θ) = [[1,1,1],[1,a,b],[1,c,d]] and (a, b, c, d) = e^{iθ}.
- **Gram matrices.** G_h = 6I − EE* and G_v = 6I − EᵀĒ have the same invariants p, J, g, η, χ.
- **Strictness.** R = 4g²η − χ², and θ is strict when R > 0.
- **Sides.** A side is a 3×3 phase block with first row 1 and Gram matrix G (six angles φ, six real equations).
  Ψ(X) = perm(X) det(X)² / ∏ X_ab. For an actual side with g > 0:
  - its label is z = −Ψ/g, and one of z± = (χ ± i√R)/(2g);
  - R = 4(Im Ψ)²;
  - the Jacobian of φ ↦ Gram(φ) ∈ ℂ³ ≅ ℝ⁶ is ¼ Im Ψ (`context/J_side_existence_RESULT.md`).
- **Matched completion.** The horizontal side B has label z, the vertical side Cᵀ has label w = z̄, and the forced
  block is D = −C E* (B*)⁻¹. Flatness (|D_ij| = 1) holds whenever z + w = χ/g and zw = η, by the closed form of
  `context/PROOF.md` §2.2:
  W₁₁ = J₁₀/(d_h d_v g)·(z + w − χ/g) + J₁₁/(d_h d_v)·(zw − η).
- **The double.** Let D_Ω = {(θ, y) ∈ T⁴ × ℝ : y² = R(θ)} and put z(θ, y) = (χ + i y)/(2g), w = z̄.
  - y > 0 and y < 0 are the two matchings f₊ and f₋ = conj ∘ f₊ ∘ conj.
  - Flatness still holds for real y with y² = R, since zw = (χ² + y²)/(4g²) = η. So wherever sides exist and the
    divisors d_h, d_v are nonzero, F(θ, y) is Hadamard on all of D_Ω, including y = 0.
- **Smoothness of D_Ω.** It is a smooth 4-manifold near (θ*, 0) when ∇R(θ*) ≠ 0.

## 3. Data (NUMERICAL unless stated)

- **F6's 400 corners** (`context/f6_corners.csv`; the R = 0 values are exact):

  | g | ‖∇R‖ | singular | corners |
  |---|---|---|---|
  | 0 | 0 | yes (Fourier-type minors) | 48 |
  | 3 | 1995.3 | no | 25 |
  | 3 | 2821.8 | no | 10 |
  | 3 | 3990.6 | no | 1 |
  | 12 | 0 | no | 288 |
  | 27 | 0 | no | 28 |

  So **36 corners of F6 are regular edge points:** R = 0, ∇R ≠ 0, g = 3 > 0. There D_Ω is smooth and F6's own blocks
  are actual sides with a real label.
- **Along the Fourier family** H(t) = [[F₃, F₃], [F₃D, −F₃D]], D = diag(1, e^{it}, 1), which tends to F₂ ⊗ F₃ ≅ F6:
  - the best-corner R is 576 t² to within 0.1% for t ≤ 0.05 (`context/fourier_path.csv`);
  - ‖H(t) − H(0)‖_F = √6 t.

  So y = √R ≈ 24 t is *linear* in the distance along this family. That is the behaviour of a good chart coordinate.
- **Away from the edge** the reconstruction is well conditioned: the median edge distance R/|∇R| of the best corner
  over 12,021 sample classes is 1.34, and only 16 classes, all next to F6, are within 0.08.

## 4. Questions

**Q1. The fold (sides).** At a point of ∂Ω with g > 0 and ∇R ≠ 0, is φ ↦ Gram(φ) a Whitney fold?
- That means rank 5, with the kernel transverse to the fold set {Im Ψ = 0}.
- If so, the two sides with labels z₊ and z₋ merge at R = 0. Prove that the side is a smooth function of (θ′, y),
  where θ′ are three seed coordinates transverse to ∇R, and y = −2 Im Ψ(B), so that y² = R and z = (χ + iy)/(2g).
- Give the exact nondegeneracy condition, and its locus inside ∂Ω.

**Q2. The completion.** Show that F(θ, y) is smooth on D_Ω near such points, provided d_h d_v ≠ 0. Find the
conditions under which d_h, d_v vanish on ∂Ω.

**Q3. A chart at F6.** At one of F6's 36 regular corners, is F a local homeomorphism (ideally a local diffeomorphism
onto a neighbourhood of [F6] in X)?
- Rank: does the derivative of F into horizontal phase space mod equivalence (25-dimensional) have rank 4?
- Local injectivity: d(F6) = 4 (Tadej–Życzkowski), so is X a topological 4-manifold at F6, with the Fourier family and
  its transpose (two 2-parameter families through F6) lying inside the image of this one chart?
- If the image is only part of a neighbourhood, describe which part, and how many of the 36 corners are needed.

**Q4. Global picture.** Which classes have *no* regular edge corner?
- F6 has degenerate R = 0 corners (∇R = 0 at the g = 12, 27 corners) as well as regular ones.
- Is F6 the only class where every R = 0 corner is degenerate? Or does every class with an R = 0 corner also have a
  regular one?
- Does F (both orientations, all corners) cover X ∪ {F6} by local charts?

**Q5. Quantitative bounds** for the certified enclosure: in the (θ′, y) coordinates near the edge, give explicit
bounds on the side Jacobian and its inverse, and on the second derivatives. The Krawczyk / Taylor-model enclosure needs
a priori bounds in a neighbourhood of radius ~0.05.

## 5. What you can use

- Everything in `context/`. The relevant files:
  - `SIDE_FIBER.md`: side identities, prescribed-label uniqueness;
  - `J_side_existence_RESULT.md`: Jacobian ¼ Im Ψ, inverse function theorem;
  - `STRICT_DOMAIN.md`;
  - `SHEETS_TOPOLOGY.md`: continuity across root cuts and sign switches;
  - `FOURIER_CRITICAL_LOCUS.md`: the all-critical Fourier census;
  - `PROOF.md`: the flatness closed form, Theorem 2.5.
- Exact computation (sympy, exact algebraic numbers) is welcome; F6 is defined over ℚ(ω), ω = e^{2πi/6}.
- `context/seedball.py` is a float implementation of the completion (Newton on the side equations) for numerical
  experiments.
- This question is about Hadamard geometry only, so there is no circularity concern: you may use the atlas, numerics
  and anything in the repository.

## 6. Deliverables

A report, `REPORT.md`, with:
- the answers to Q1–Q5, each labelled;
- explicit formulas for the chart near a regular edge point;
- an explicit verification script for any CERTIFIED claim (exact arithmetic, replayable), especially the rank
  computation at F6.

**Partial results that are useful on their own:**
- Q1 alone (the fold normal form), which lets balls straddle ∂Ω away from F6;
- Q3 alone (the chart at F6), which removes the 25-dimensional record.

**A negative answer is also useful.** For example: F is not locally injective at F6, or X is not a manifold there. In
that case describe the local structure precisely, e.g. as a union of k charts.
