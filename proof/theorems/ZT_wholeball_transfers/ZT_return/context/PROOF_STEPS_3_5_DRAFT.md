# Draft: Steps 3–5 of the proof, in the 4-dimensional reconstruction (25 Oct 2026)

This text replaces Steps 3–4 of `PROOF.md` (ball Records in the 25-dimensional phase space) once the new atlas is
certified. Steps 0–2 (setting, the maxima of R, reconstruction and connectedness) are unchanged. Numbers marked ⟨…⟩
are filled in from the final certificate.

## Step 3. Local exclusion in seed coordinates

Every non-Tao Hadamard class other than F6 is the matched completion H_o(θ) of a strict seed θ ∈ Ω (Step 2). A **seed
ball** is an ellipsoid

  B = {θ₀ + M_θ w : ‖w‖ ≤ r} ⊂ Ω,  with an orientation o ∈ {±1},

so the four phases of the corner's 2×2 block are its only coordinates. Its image is the set of classes [H_o(θ)], θ ∈ B.

> **Lemma 3.1 (C1: the completion is enclosed).** For every θ ∈ B the matched completion exists, is Hadamard with
> orientation o, and its phase matrix Q(θ) satisfies ‖Q(θ) − P − U w − 2πN‖ ≤ n for an integer winding N.
> Here P is the centre's phase matrix and U a 36 × 4 frame (in the horizontal gauge, up to row and column phases).

*How it is certified.* Per box of a covering of the w-ball:
- second-order Taylor models in w;
- the two sides of the completion by a parametric Krawczyk test (unique solutions of the side Gram equations in an
  explicit tube);
- the orientation by the signs of Im Ψ;
- the fourth block D = −C E*(B*)⁻¹ by a residual correction;
- the phases by a certified arg.

(SPEC §2, §11; `cert/seedcert.py`; Lean: `SeedAtlas.Method`.)

> **Lemma 3.2 (Stage C).** If Stage C succeeds on the enclosure P + U w + ν (‖w‖ ≤ r, ‖ν‖ ≤ n), then no Hadamard
> class in the image of B is a quartet edge.

This is Stage C of [OAI] §6, unchanged, applied to a four-parameter family instead of a 25-dimensional ball
(`proof/atlas/STAGEC.md`; Lean: `StageC`).

## Step 4. The neighbourhood of F6

The reconstruction degenerates only at F6, where R = 0 and both sides of the completion meet.

> **Theorem 4.1 (return X).** No complex Hadamard matrix H with d([H], [F6]) ≤ 9/20 is a quartet edge.
> Here d is the horizontal phase quotient distance.

It is proved by an exact finite cover with a quantitative margin (`proof/theorems/X_no_quartet_near_F6`, replayed).

> **Theorem 4.2 (returns U, W: the edge chart).** Near F6 the same corner (rows and columns 0, 1, 2) parametrises
> every class by p = (θ₁, θ₂, θ₃, y), with y the signed root of R. The chart is valid, and covers every class with
> d ≤ 0.15, on an explicit ellipsoid. It is injective modulo the 72 Fourier stabilisers.

The **edge ball** is the image of {p = M w : ‖w‖ ≤ r_X} in this chart, with M taken from W's tangent metric. It is
certified like a seed ball (C1 by Krawczyk tubes of the augmented 7-unknown system). Its image lies within distance
⟨0.3x⟩ < 9/20 of F6, so it is quartet-free by Theorem 4.1, with no Stage C. Openness at y = 0 follows from the graph
property near F6 (SPEC §10.1–10.2).

## Step 5. The atlas and coverage

The atlas has ⟨N⟩ seed balls and one edge ball.

> **Lemma 5.1 (transfers).** Every point of every ball's boundary sphere is, after a symmetry g ∈ Γ, in the interior
> of another ball. This is shown on a dyadic cover of the sphere ‖w‖ = r by boxes, each with a certified target:
> - **T0:** the same corner;
> - **T1:** another corner, whose seed is linear in the phases;
> - **T3:** into the edge ball.

> **Lemma 5.2 (coverage).** The set W of classes in the atlas is open, closed and nonempty in the space of non-Tao
> classes. Hence W is everything.

*Proof.*
- **Closed:** a finite union of compact images.
- **Open:** interior points of seed balls by the open-map lemma (`SeedAtlas.OpenMap`); boundary points by Lemma 5.1;
  the edge ball by its chart and the graph property.
- **Nonempty:** F6 = H(0) lies in the edge ball.

Ω is connected (Step 2), and the maximum principle gives the conclusion as in `Step2.coverage_of_matched_density`. ∎

**Conclusion.** Every non-Tao class lies in a ball, and no ball contains a quartet edge (Lemma 3.2 or Theorem 4.1).
Tao's matrix is excluded separately (Remark: a zero-dimensional record, Stage C). So ℂ⁶ has no four MUBs.

**Checked by:**
- `cert/certify_seed_atlas.py` (Arb) and `proof/independent_seed/` (Julia, independent);
- Lean: `EdgeFinal.no_four_mubs_seed`, taking the certificate as hypothesis, plus the kernel check of the certificate
  (`kernel_atlas/`).

**Numbers:**

| | |
|---|---|
| seed balls | ⟨…⟩ |
| boundary boxes | ⟨…⟩ |
| edge-sphere boxes | ⟨…⟩ |
| Arb certification | ⟨…⟩ core-hours |
| Julia certification | ⟨…⟩ core-hours |
| kernel | ⟨…⟩ |
