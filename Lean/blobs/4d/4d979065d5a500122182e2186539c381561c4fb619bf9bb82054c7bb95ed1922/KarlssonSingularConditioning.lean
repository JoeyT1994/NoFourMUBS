import KarlssonEnclosureProvider
set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace Mub6.Classification.KarlssonConditioning
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
noncomputable section

theorem degenerate_entries_unit {a b : ℂ}
    (hs : normSq a+normSq b=2) (hd : normSq (a^2)=normSq (b^2)) :
    normSq a=1 ∧ normSq b=1 := by
  have he := normSq_square_injective hd
  constructor <;> linarith

theorem degenerate_A_entries_unit (t : ℝ) {p : ℂ} (hp : normSq p=1)
    (hd : normSq (coeffA t p)=normSq (coeffB t p)) :
    normSq (karlssonCoreA t p 0 1)=1 ∧ normSq (karlssonCoreA t p 0 0)=1 := by
  exact degenerate_entries_unit (by linarith [(core_norms t hp).1]) hd
theorem degenerate_B_entries_unit (t : ℝ) {p : ℂ} (hp : normSq p=1)
    (hd : normSq (coeffC t p)=normSq (coeffD t p)) :
    normSq (karlssonCoreB t p 0 1)=1 ∧ normSq (karlssonCoreB t p 0 0)=1 := by
  exact degenerate_entries_unit (by linarith [(core_norms t hp).2.1]) hd

theorem inv_star_of_unit {b : ℂ} (hb : normSq b=1) : (star b)⁻¹=b := by
  apply inv_eq_of_mul_eq_one_right
  exact star_mul_self_of_normSq_one hb

/-- The exact singular input phase has a product representative; no division
or square-root enclosure is necessary. -/
theorem singular_input_product {a b : ℂ} (hb : normSq b=1) :
    singularInput (a^2) (b^2) = (star a*b)^2 := by
  unfold singularInput
  rw [div_eq_mul_inv,inv_star_of_unit (by simpa [map_pow,hb])]
  simp only [star_pow,mul_pow]
theorem singular_output_product {a b : ℂ} (hb : normSq b=1) :
    singularOutput (a^2) (b^2) = (a*b)^2 := by
  unfold singularOutput
  rw [div_eq_mul_inv,inv_star_of_unit (by simpa [map_pow,hb])]
  ring

def forcedIndex : Chart → Fin 4
  | .regular => 0 | .singularAInput => 0 | .singularAOutput => 2
  | .singularBInput => 0 | .singularBOutput => 3
def directPhase (chart : Chart) (t : ℝ) (p : ℂ) : ℂ :=
  match chart with
  | .regular => 1
  | .singularAInput => star (karlssonCoreA t p 0 1)*karlssonCoreA t p 0 0
  | .singularAOutput => karlssonCoreA t p 0 1*karlssonCoreA t p 0 0
  | .singularBInput => star (karlssonCoreB t p 0 1)*karlssonCoreB t p 0 0
  | .singularBOutput => karlssonCoreB t p 0 1*karlssonCoreB t p 0 0

theorem directPhase_spec (chart : Chart) (t : ℝ) {p free : ℂ} (hp : normSq p=1)
    (hs : chart≠.regular)
    (hg : Admissible chart (coeffA t p) (coeffB t p) (coeffC t p) (coeffD t p)) :
    normSq (directPhase chart t p)=1 ∧
    (directPhase chart t p)^2=phaseSquares chart (coeffA t p) (coeffB t p)
      (coeffC t p) (coeffD t p) free (forcedIndex chart) := by
  cases chart with
  | regular => exact False.elim (hs rfl)
  | singularAInput =>
    have hu := degenerate_A_entries_unit t hp hg.1
    constructor
    · simp [directPhase,map_mul,Complex.star_def,hu.1,hu.2]
    · simpa [directPhase,phaseSquares,forcedIndex,coeffA,coeffB] using (singular_input_product hu.2).symm
  | singularAOutput =>
    have hu := degenerate_A_entries_unit t hp hg.1
    constructor
    · simp [directPhase,map_mul,hu.1,hu.2]
    · simpa [directPhase,phaseSquares,forcedIndex,coeffA,coeffB,Matrix.cons_val_two] using (singular_output_product hu.2).symm
  | singularBInput =>
    have hu := degenerate_B_entries_unit t hp hg.2
    constructor
    · simp [directPhase,map_mul,Complex.star_def,hu.1,hu.2]
    · simpa [directPhase,phaseSquares,forcedIndex,coeffC,coeffD] using (singular_input_product hu.2).symm
  | singularBOutput =>
    have hu := degenerate_B_entries_unit t hp hg.2
    constructor
    · simp [directPhase,map_mul,hu.1,hu.2]
    · simpa [directPhase,phaseSquares,forcedIndex,coeffC,coeffD,Matrix.cons_val_three] using (singular_output_product hu.2).symm

def directBox (c : RawInput) : RationalRectangle := clipUnit <|
  match c.label.1 with
  | .regular => boxPoint 1 0
  | .singularAInput => boxMul (boxConj (c.A 0 1)) (c.A 0 0)
  | .singularAOutput => boxMul (c.A 0 1) (c.A 0 0)
  | .singularBInput => boxMul (boxConj (c.B 0 1)) (c.B 0 0)
  | .singularBOutput => boxMul (c.B 0 1) (c.B 0 0)

def conditionedPhases (c : RawInput) (i : Fin 4) : RationalRectangle :=
  if c.label.1≠.regular ∧ i=forcedIndex c.label.1 then directBox c else c.phases i
def conditionedOutput (c : RawInput) : CarrierRegion := clipCarrier (rawBoxes c.A c.B (conditionedPhases c))

theorem directBox_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hs : c.label.1≠.regular) (hg : reducedGuard c.label x) :
    MemRectangle (directBox c) (directPhase c.label.1 (uncompactT (x 0))
      (Mub6.Numerical.CircleCharts.signedCircle c.label.2 (x 1))) := by
  have hp := clipUnit_sound (Mub6.Classification.CarrierIntervals.circleBox_sound c.label.2 (hx 1))
    (Mub6.Numerical.CircleCharts.signedCircle_normSq _ _)
  have ha := coreABox_sound (hx 0) hp (Mub6.Numerical.CircleCharts.signedCircle_normSq _ _) h0 h1 hr
  have hb := coreBBox_sound (hx 0) hp (Mub6.Numerical.CircleCharts.signedCircle_normSq _ _) h0 h1 hr
  have hu := (directPhase_spec c.label.1 (uncompactT (x 0))
    (free := 1) (Mub6.Numerical.CircleCharts.signedCircle_normSq _ _) hs hg).1
  apply clipUnit_sound _ hu
  rcases c with ⟨⟨chart,ps⟩,parameters,rt,roots⟩
  cases chart <;> simp only [directBox,directPhase]
  · exact False.elim (hs rfl)
  · exact mem_boxMul (mem_boxConj (ha 0 1)) (ha 0 0)
  · exact mem_boxMul (ha 0 1) (ha 0 0)
  · exact mem_boxMul (mem_boxConj (hb 0 1)) (hb 0 0)
  · exact mem_boxMul (hb 0 1) (hb 0 0)

#print axioms directPhase_spec
#print axioms directBox_sound
end
end Mub6.Classification.KarlssonConditioning
