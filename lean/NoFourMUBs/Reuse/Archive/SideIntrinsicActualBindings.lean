import NoFourMUBs.Reuse.Archive.SideIntrinsicUnitBindings
import NoFourMUBs.Reuse.Archive.SideIntrinsicDenominatorAlgebra
import NoFourMUBs.Reuse.Archive.PreRhoActualBindings

/-! Bind all finite six-phase certificates to the actual Gram correlations. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem fractionData_actual (a : Rows ℂ) (ha : UnitRows a) :
    fractionData a = actualAlignmentData (rowS a) (rowT a) (rowR a) := by
  obtain ⟨hS,hT,hr,hQ⟩ := row_fraction_bindings a ha
  simp only [fractionData, actualAlignmentData]
  rw [← hS, ← hT, ← hr, ← hQ]

theorem conjugateFractionData_actual (a : Rows ℂ) (ha : UnitRows a) :
    conjugateFractionData a =
      actualAlignmentData (conj (rowS a)) (conj (rowT a)) (conj (rowR a)) := by
  obtain ⟨hS,hT,hr,hQ⟩ := row_fraction_bindings a ha
  simp only [conjugateFractionData, actualAlignmentData]
  rw [← hS, ← hT, ← hr, ← hQ]
  simp

#print axioms fractionData_actual
#print axioms conjugateFractionData_actual

theorem actual_scalar_numerators (a : Rows ℂ) (ha : UnitRows a) :
    (gramG (rowS a) (rowT a) (rowR a) : ℂ) * (rowU a * rowV a) = gramGN a ∧
    (gramEta (rowS a) (rowT a) (rowR a) : ℂ) * (rowU a * rowV a) = gramEtaN a ∧
    (gramChi (rowS a) (rowT a) (rowR a) : ℂ) * (rowU a * rowV a)^2 = gramChiN a := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have h := fraction_scalar_numerators a hu hv
  rw [fractionData_actual a ha] at h
  obtain ⟨hg,he,hc,_,_,_⟩ := actualAlignmentData_scalar_bindings (rowS a) (rowT a) (rowR a)
  simpa only [hg,he,hc] using h

#print axioms actual_scalar_numerators

theorem sideP_conjugate (s t r : ℂ) :
    sideP1 (conj s) (conj t) (conj r) = conj (sideP1 s t r) ∧
    sideP2 (conj s) (conj t) (conj r) = conj (sideP2 s t r) := by
  constructor <;> simp [sideP0, sideP1, sideP2, map_ofNat]

theorem actual_lambda_numerators (a : Rows ℂ) (ha : UnitRows a) :
    ((9 - Complex.normSq (rowR a) : ℝ) : ℂ) * (rowU a * rowV a) = c0N a ∧
    ((9 - Complex.normSq (rowT a) : ℝ) : ℂ) * rowV a = c1N a ∧
    ((9 - Complex.normSq (rowS a) : ℝ) : ℂ) * rowU a = c2N a ∧
    conj (sideP0 (rowS a) (rowT a) (rowR a)) * (rowU a * rowV a)^2 = p0barN a ∧
    conj (sideP1 (rowS a) (rowT a) (rowR a)) * rowV a^2 = p1barN a ∧
    conj (sideP2 (rowS a) (rowT a) (rowR a)) * rowU a^2 = p2barN a := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have h := fraction_lambda_numerators a hu hv
  rw [fractionData_actual a ha, conjugateFractionData_actual a ha] at h
  obtain ⟨_,_,_,hc0,hc1,hc2⟩ := actualAlignmentData_scalar_bindings (rowS a) (rowT a) (rowR a)
  obtain ⟨hp0,_,_⟩ := actualAlignmentData_P_bindings (rowS a) (rowT a) (rowR a)
  obtain ⟨_,hp1,hp2⟩ := actualAlignmentData_P_bindings (conj (rowS a)) (conj (rowT a)) (conj (rowR a))
  obtain ⟨hcP1,hcP2⟩ := sideP_conjugate (rowS a) (rowT a) (rowR a)
  simpa only [hc0,hc1,hc2,hp0,hp1,hp2,hcP1,hcP2] using h

#print axioms actual_lambda_numerators
end
end StrictReconstruction20261007.SideIntrinsic
