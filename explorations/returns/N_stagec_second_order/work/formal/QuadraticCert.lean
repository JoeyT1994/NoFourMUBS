import NoFourMUBs.StageC.Quadratic
import NoFourMUBs.StageC.Cert

/-!
# Stage C: consume second-order leaf bounds without changing StageCCert

STATUS: complete candidate proof text, NOT compiled in this environment.
The universal quantitative hypotheses below are proof obligations, not axioms.
They must be discharged by the analytic estimates and coefficient checker.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-- The exact polynomial at the first-order tangent chart. -/
noncomputable def tangentPolynomial (P : RMat6) (T : Fin 4 → RMat6)
    (u y d : I6 → ℝ) (η : Fin 4 → ℝ) : ℝ :=
  ∑ i, y i * linearQuadratic P (∑ k, η k • T k) u (centre d) i

/-- Quantitative bounds supplied by an N1 coefficient/remainder checker.

The complete input domain is the *existing* `Admissible` domain. The last two bounds
must therefore hold for every displacement in that domain; a theorem restricted to
Hadamard displacements alone is insufficient for this structure.
-/
structure SecondOrderLeafBounds (P : RMat6) (T : Fin 4 → RMat6)
    (u y : I6 → ℝ) (a rH n r rF m H Enu E3 : ℝ) : Prop where
  polynomial : ∀ (d : I6 → ℝ) (η : Fin 4 → ℝ),
    d j0 = 0 → (∀ j, |d j| ≤ a) → Real.sqrt (∑ k, η k ^ 2) ≤ rH →
    |tangentPolynomial P T u y d η - m| ≤ H
  normal : ∀ (δ : RMat6) (d : I6 → ℝ) (η : Fin 4 → ℝ) (ν : RMat6),
    Admissible T rH n r rF δ →
    d j0 = 0 → (∀ j, |d j| ≤ a) →
    δ = (∑ k, η k • T k) + ν →
    Real.sqrt (∑ k, η k ^ 2) ≤ rH → frob ν ≤ n →
    |∑ i, y i * (linearQuadratic P δ u (centre d) i -
      linearQuadratic P (∑ k, η k • T k) u (centre d) i)| ≤ Enu
  cubic : ∀ (δ : RMat6) (d : I6 → ℝ),
    Admissible T rH n r rF δ → d j0 = 0 → (∀ j, |d j| ≤ a) →
    |∑ i, y i * cubicResidual P δ u (centre d) i| ≤ E3

/-- A strict support violation fills an existing `StageCCert.hleaf` rejection field.
Neither `StageCCert` nor `Admissible` is changed. -/
theorem leafRej_all_of_secondOrder {P : RMat6} {T : Fin 4 → RMat6}
    {u y : I6 → ℝ} {a rH n r rF m H Enu E3 : ℝ}
    (hb : SecondOrderLeafBounds P T u y a rH n r rF m H Enu E3)
    (hviol : H + Enu + E3 < |(∑ i, y i * cc P u i) + m|) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a := by
  intro δ hA d hd0 hd hcol
  obtain ⟨⟨η, ν, hδ, hη, hν⟩, hr, hrF⟩ := hA
  have hA' : Admissible T rH n r rF δ :=
    ⟨⟨η, ν, hδ, hη, hν⟩, hr, hrF⟩
  have hp : |(∑ i, y i * linearQuadratic P (∑ k, η k • T k)
      u (centre d) i) - m| ≤ H := hb.polynomial d η hd0 hd hη
  have hv := hb.normal δ d η ν hA' hd0 hd hδ hη hν
  have h3 := hb.cubic δ d hA' hd0 hd
  exact absurd (second_order_test hp hv h3 hcol) (not_le.mpr hviol)

/-- Oriented analogue, with the analytic error bounds stated explicitly. -/
theorem leafRej_all_of_secondOrderOriented {P : RMat6} {T : Fin 4 → RMat6}
    {u y : I6 → ℝ} {a rH n r rF s H Enu E3 : ℝ}
    (hs : |s| = 1)
    (hsc : s * (∑ i, y i * cc P u i) = |∑ i, y i * cc P u i|)
    (hp : ∀ (d : I6 → ℝ) (η : Fin 4 → ℝ),
      d j0 = 0 → (∀ j, |d j| ≤ a) → Real.sqrt (∑ k, η k ^ 2) ≤ rH →
      -(s * tangentPolynomial P T u y d η) ≤ H)
    (hv : ∀ (δ : RMat6) (d : I6 → ℝ) (η : Fin 4 → ℝ) (ν : RMat6),
      Admissible T rH n r rF δ →
      d j0 = 0 → (∀ j, |d j| ≤ a) →
      δ = (∑ k, η k • T k) + ν →
      Real.sqrt (∑ k, η k ^ 2) ≤ rH → frob ν ≤ n →
      |∑ i, y i * (linearQuadratic P δ u (centre d) i -
        linearQuadratic P (∑ k, η k • T k) u (centre d) i)| ≤ Enu)
    (h3 : ∀ (δ : RMat6) (d : I6 → ℝ),
      Admissible T rH n r rF δ → d j0 = 0 → (∀ j, |d j| ≤ a) →
      |∑ i, y i * cubicResidual P δ u (centre d) i| ≤ E3)
    (hviol : H + Enu + E3 < |∑ i, y i * cc P u i|) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a := by
  intro δ hA d hd0 hd hcol
  obtain ⟨⟨η, ν, hδ, hη, hν⟩, hr, hrF⟩ := hA
  have hA' : Admissible T rH n r rF δ :=
    ⟨⟨η, ν, hδ, hη, hν⟩, hr, hrF⟩
  have hp' : -(s * (∑ i, y i * linearQuadratic P (∑ k, η k • T k)
      u (centre d) i)) ≤ H := hp d η hd0 hd hη
  exact absurd (second_order_oriented_test hs hsc hp'
    (hv δ d η ν hA' hd0 hd hδ hη hν) (h3 δ d hA' hd0 hd) hcol)
    (not_le.mpr hviol)

end NoFourMUBs.StageC
