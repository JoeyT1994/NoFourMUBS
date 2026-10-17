# Handoff J: side existence from the Jacobian of the Gram map

## The task
Replace return F's explicit radical construction (`../../returns/F_side_existence/SIDE_EXISTENCE.md`; Lean
`L1/SideConstruction*`, `L1/SideCheck*`, `L1/SideIdentities`) with a short topological proof resting on one small
Laurent identity, (J) below, which is already certified.

## Definitions (self-contained)
- **Side.** A normalised side is B(x, y) = [[1, 1, 1], [x₀, x₁, x₂], [y₀, y₁, y₂]] with x, y ∈ T³ (unit complex
  numbers), xⱼ = e^{iaⱼ}, yⱼ = e^{ibⱼ}; angles φ = (a, b) ∈ ℝ⁶.
- **Gram map.** γ(B) = (s, t, r) = (Σⱼ xⱼ, Σⱼ yⱼ, Σⱼ x̄ⱼ yⱼ): the entries G₂₁, G₃₁, G₃₂ of G = BB* (as in
  `SIDE_EXISTENCE.md` §1).
- **Signature.** Ψ(B) = perm(B) · det(B)² / ∏_{a,b} B_ab, and T = −Ψ (Lean `TS`).
- **Scalar data.** X = |s|², Y = |t|², Z = |r|², p = X + Y + Z, J = 2 Re(s r t̄), W = XY + XZ + YZ − XYZ,
  g = 27 − 3p + J, η = 9 − p + J, χ = W − (p − 9)(p − 18) + (p − 15)J, R = 4g²η − χ² (`PROOF_v2.md` §1).
- **Lemma 1.1** (`PROOF_v2.md` §1; Lean `Side.TS_root`, `Side.RS_eq_im_sq` in `PRM/SideRoot.lean`): R = 4 (Im T)².
- **Domains.** 𝒢° = {R > 0, p < 9} (open); 𝒢′ = {R > 0, 27 − 3p − J ≥ 0}, the domain of the current Lean
  `exists_side_gram`. 𝒢′ ⊂ 𝒢° by `SIDE_EXISTENCE.md` §2 (5).

## Statements
> **(J) Jacobian identity — CERTIFIED** (`check_jacobian.py` in this folder: exact SymPy simplification plus 5,000
> random sides agreeing to 1e-14). With v = (x₀, x₁, x₂, y₀, y₁, y₂), F = (s, t, r, s̄, t̄, r̄) where s̄ = Σ 1/xⱼ etc.,
> and M_ab = i v_b ∂F_a/∂v_b, one has det M = Ψ̄ − Ψ as Laurent polynomials. On the torus this reads
>
>   det ∂(Re s, Im s, Re t, Im t, Re r, Im r) / ∂(a, b) = ¼ Im Ψ(B),
>
> so by Lemma 1.1 the squared Jacobian determinant equals R/64.

> **(E) To prove.** For every strict seed θ (R(θ) > 0), each of the two side Grams G ∈ {G_h(θ), G_v(θ)} and each sign
> ε = ±1, there is a side B with γ(B) = G and sign Im Ψ(B) = ε.

> **(E′) Optional, Step-1-free form.** The same for every G ∈ 𝒢°. It rests on **Conjecture C: 𝒢′ (or 𝒢°) is
> connected** — NUMERICAL: in coordinates (X, Y, Z, cos φ), 𝒢′ occupies one component of 42,940 grid cells apart from one
> isolated cell, and reaches cos φ = ±1, so its lift to (s, t, r) is connected.

## Proof sketch (to complete)
1. **Regularity.** If γ(B) ∈ 𝒢° then g = |det B|² > 0 and (Im Ψ)² = R/4 > 0, so by (J) the differential Dγ is
   invertible at B.
2. **Openness.** By the inverse function theorem (Mathlib: `HasStrictFDerivAt.map_nhds_eq_of_surj`), the set of Grams
   realised with a given sign of Im Ψ is open.
3. **Closedness in 𝒢°.** T⁶ is compact; a limit of sides realising Grams in 𝒢° is regular by step 1, hence keeps the
   sign of Im Ψ (which cannot vanish on 𝒢°).
4. **Route A (Lean inputs only).** For fixed ε, U = {θ ∈ S : G_h(θ) is realised with sign ε} is clopen in
   S = {R > 0}. At the 18 maximum seeds, sides come from H₀ (`Step2/BaseAnchor.lean`), transported by
   `maximumAnchorCertificate_of_base` (`Step2/AnchorTransport.lean`); conjugation gives the other sign and the orbit is
   conjugation-closed. Then `superlevel_clopen_eq_univ` (`Step2/TopologyCore.lean`) with `Step1Geo.maximumCensus`
   gives U = S. Same for G_v.
5. **Route B (for (E′)).** Connectedness of 𝒢° plus one explicit side of each sign. Example — CERTIFIED (checked
   here): x = (1, i, −1), y = (1, −1, i) gives (s, t, r) = (i, i, 1), p = 3, 27 − 3p − J = 16, Ψ = 56 + 8i,
   R = 256 = 4 (Im Ψ)²; its conjugate has the other sign.

## What may be used
Lemma 1.1, return F §2 for the domain facts, Step 1 (`Step1Geo.maximumCensus`) and the Step 2 topology, H₀. Do not use
[CT] or return F's radicals.

## Deliverables and checking
- A paper proof (about two pages) with labels; a certificate of (J) in the repo's Kronecker or circuit form so the
  kernel can check it (`lean/NoFourMUBs/Identity/`).
- In Lean: a theorem with the signature of `exists_side_gram` (or one that implies it), used at its three call sites:
  `L1/Existence.lean:64`, `L1/Existence.lean:71`, `PRM/Converse.lean:184`.
- Then delete `L1/SideBridge`, `SideCheckCore`, `SideCheckNorm`, `SideCheckY0`, `SideCheckY1`, `SideCircuits`,
  `SideConstruction`, `SideConstructionCore`, `SideConstructionPoly`, `SideExistence`, `SideIdentities`, `SideInput`.
  **Keep `L1/SideFormulas`**, which `L1/FlatBridge.lean` imports; `FlatBridge` also imports `SideExistence`, so first
  move whatever it uses from there.
- Check with `python3 lean/check_axioms.py --full` (standard axioms only) and `python3 verify.py`.

**Risks.** Do the inverse function theorem in angle coordinates on ℝ⁶ (or ℝ⁶ → ℝ⁶ via real and imaginary parts), not
on circles; watch the sign and orientation conventions (here det = +¼ Im Ψ = −¼ Im T).
