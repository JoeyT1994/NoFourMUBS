import KarlssonRawCompiler
import KarlssonSeamCompiler
set_option autoImplicit false
set_option maxHeartbeats 1600000

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
noncomputable section

def rawCellParameters {depth : ℕ} (c : RawCell depth) : Fin 3 → Interval :=
  fun i => ⟨(c i).val.1,(c i).val.2⟩
def seamCellParameters {depth : ℕ} (c : SeamCell depth) : Fin 2 → Interval :=
  fun i => ⟨(c i).val.1,(c i).val.2⟩

/-- A concrete provider, not a premise requesting an unspecified enclosure
theorem. Root proposals are ordinary rational data; invalid proposals retain
the phase and cannot invalidate physical coverage. -/
def enclosureProvider (depth : ℕ) (rt : Interval) (hr : sqrt3Valid rt)
    (recipes : ReducedLabel → RawCell depth → Fin 4 → RootRecipe) : GaugeEnclosureProvider depth where
  raw := fun label cell => (RawInput.mk label (rawCellParameters cell) rt (recipes label cell)).output
  seam := fun label cell => (SeamInput.mk label (seamCellParameters cell) rt).output
  raw_sound := by
    intro label cell x h0 h1 hx _ hH
    exact raw_compiler_sound (RawInput.mk label (rawCellParameters cell) rt (recipes label cell)) hr hx h0 h1 hH
  seam_sound := by
    intro label cell x hx hH
    exact ⟨seamMatrix label x,equivalent_refl _,
      seam_compiler_sound (SeamInput.mk label (seamCellParameters cell) rt) hr hx hH⟩

/-- The finite cover now uses the implemented compiler and retains an actual
quartet occurrence after all local root-sign gauge changes. -/
theorem compiled_quartet_cover (depth : ℕ) (rt : Interval) (hr : sqrt3Valid rt)
    (recipes : ReducedLabel → RawCell depth → Fin 4 → RootRecipe)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ((∃ label cell, CarrierBox ((enclosureProvider depth rt hr recipes).raw label cell)
        (ClassificationCover.toNumerical K)) ∨
       (∃ label cell, CarrierBox ((enclosureProvider depth rt hr recipes).seam label cell)
        (ClassificationCover.toNumerical K))) :=
  reduced_quartet_finite_enclosures depth (enclosureProvider depth rt hr recipes) hH h₂

def RectangleIncludes (a b : RationalRectangle) : Prop :=
  b.reLo≤a.reLo ∧ a.reHi≤b.reHi ∧ b.imLo≤a.imLo ∧ a.imHi≤b.imHi
instance (a b : RationalRectangle) : Decidable (RectangleIncludes a b) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _))
theorem rectangle_includes_sound {a b : RationalRectangle} {z : ℂ}
    (h : RectangleIncludes a b) (hz : MemRectangle a z) : MemRectangle b z := by
  have h0 : (b.reLo : ℝ)≤a.reLo := by exact_mod_cast h.1
  have h1 : (a.reHi : ℝ)≤b.reHi := by exact_mod_cast h.2.1
  have h2 : (b.imLo : ℝ)≤a.imLo := by exact_mod_cast h.2.2.1
  have h3 : (a.imHi : ℝ)≤b.imHi := by exact_mod_cast h.2.2.2
  exact ⟨h0.trans hz.1,hz.2.1.trans h1,h2.trans hz.2.2.1,hz.2.2.2.trans h3⟩

theorem raw_export_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) (out : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (c.output i j) (out i j))
    {x : Fin 3 → ℝ} (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hH : IsHadamard (reducedMatrix c.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix c.label x) K ∧ CarrierBox out (ClassificationCover.toNumerical K) := by
  obtain ⟨K,he,hb⟩ := raw_compiler_sound c hr hx h0 h1 hH
  exact ⟨K,he,fun i j => rectangle_includes_sound (hout i j) (hb i j)⟩

theorem seam_export_sound (c : SeamInput) (hr : sqrt3Valid c.sqrt3) (out : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (c.output i j) (out i j))
    {x : Fin 2 → ℝ} (hx : ∀ i, Mem (c.parameters i) (x i))
    (hH : IsHadamard (seamMatrix c.label x)) :
    CarrierBox out (ClassificationCover.toNumerical (seamMatrix c.label x)) := by
  have hb := seam_compiler_sound c hr hx hH
  exact fun i j => rectangle_includes_sound (hout i j) (hb i j)

#print axioms compiled_quartet_cover
#print axioms raw_export_sound
#print axioms seam_export_sound
end
end Mub6.Classification.KarlssonCompiler
