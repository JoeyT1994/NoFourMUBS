import RationalCarrierIntervals
import SixteenCircleCover

/-! An executable rational outer enclosure for the complete sixteen-phase atlas. -/
namespace Mub6.Classification.CarrierIntervals
open scoped BigOperators
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CompactCover
noncomputable section

def gramDetBox (E : Rect3) : Interval :=
  clampLower (reInterval (detBox (residualBox E))) (54/5)

theorem gramDetBox_positive (E : Rect3) : 0 < (gramDetBox E).lo := by
  change 0 < max _ (54/5 : ℚ)
  exact lt_of_lt_of_le (by norm_num) (le_max_right _ _)

theorem mem_gramDetBox {E : Rect3} {X : Mat3} (hx : MemMatrix E X)
    (hg : (54/5 : ℝ) ≤ (gram X).det.re) :
    Mem (gramDetBox E) (gram X).det.re := by
  have hm := mem_detBox (mem_residualBox hx)
  apply mem_clampLower ⟨hm.1,hm.2.1⟩
  simpa using hg

def lowerBlockBox (E B C : Rect3) : Rect3 :=
  matrixDivideReal
    (matrixNeg (matrixMul (matrixMul (matrixMul C (matrixConjTranspose E))
      (adjugateBox (residualBox E))) B)) (gramDetBox E)

theorem forcedD_real_quotient (E B C : Mat3) (hi : (gram E).det.im=0) :
    (fun i j => (-(C*Eᴴ*(gram E).adjugate*B)) i j / ((gram E).det.re : ℂ)) =
      forcedD E B C := by
  have he : ((gram E).det.re : ℂ) = (gram E).det := by
    apply Complex.ext <;> simp [hi]
  ext i j
  simp only [forcedD,gramAdjugateQuotient,Matrix.mul_smul,Matrix.smul_mul,
    Matrix.neg_apply,Matrix.smul_apply,smul_eq_mul]
  rw [he]
  ring

theorem lowerBlockBox_sound {E B C : Rect3} {X Y Z : Mat3}
    (hx : MemMatrix E X) (hy : MemMatrix B Y) (hz : MemMatrix C Z)
    (hg : (54/5 : ℝ) ≤ (gram X).det.re) (hi : (gram X).det.im=0) :
    MemMatrix (lowerBlockBox E B C) (forcedD X Y Z) := by
  have hm := mem_matrixMul (mem_matrixMul (mem_matrixMul hz
    (mem_matrixConjTranspose hx)) (mem_adjugateBox (mem_residualBox hx))) hy
  have hdiv := mem_matrixDivideReal (gramDetBox_positive E) (mem_matrixNeg hm)
    (mem_gramDetBox hx hg)
  rw [forcedD_real_quotient X Y Z hi] at hdiv
  exact hdiv

abbrev ParameterBox := FreeCoordinate → Interval
def freeBoxes (signs : CarrierSigns) (box : ParameterBox) : FreeCoordinate → RationalRectangle :=
  fun q => circleBox (signs q) (box q)
def freeBoxE (f : FreeCoordinate → RationalRectangle) : Rect3 := fun i j =>
  Fin.cases (boxPoint 1 0) (fun a => Fin.cases (boxPoint 1 0)
    (fun b => f (Sum.inl (a,b))) j) i
def freeBoxB (f : FreeCoordinate → RationalRectangle) : Rect3 := fun i j =>
  Fin.cases (boxPoint 1 0) (fun a => f (Sum.inr (Sum.inl (a,j)))) i
def freeBoxC (f : FreeCoordinate → RationalRectangle) : Rect3 := fun i j =>
  Fin.cases (boxPoint 1 0) (fun b => f (Sum.inr (Sum.inr (i,b)))) j

theorem mem_one_box : MemRectangle (boxPoint 1 0) (1 : ℂ) := by
  norm_num [MemRectangle,boxPoint,rectangle,point]

theorem mem_freeBoxE {f : FreeCoordinate → RationalRectangle} {z : FreeCoordinate → ℂ}
    (hz : ∀ q, MemRectangle (f q) (z q)) : MemMatrix (freeBoxE f) (freeE z) := by
  intro i j
  refine Fin.cases ?_ (fun a => ?_) i
  · exact mem_one_box
  · refine Fin.cases ?_ (fun b => ?_) j
    · exact mem_one_box
    · exact hz _

theorem mem_freeBoxB {f : FreeCoordinate → RationalRectangle} {z : FreeCoordinate → ℂ}
    (hz : ∀ q, MemRectangle (f q) (z q)) : MemMatrix (freeBoxB f) (freeB z) := by
  intro i j
  refine Fin.cases ?_ (fun a => ?_) i
  · exact mem_one_box
  · exact hz _

theorem mem_freeBoxC {f : FreeCoordinate → RationalRectangle} {z : FreeCoordinate → ℂ}
    (hz : ∀ q, MemRectangle (f q) (z q)) : MemMatrix (freeBoxC f) (freeC z) := by
  intro i j
  refine Fin.cases ?_ (fun a => ?_) j
  · exact mem_one_box
  · exact hz _

def blockBoxes (E B C D : Rect3) : CarrierRegion :=
  fun r k => Fin.addCases (m := 3) (n := 3)
    (fun i => Fin.addCases (m := 3) (n := 3) (E i) (B i) k)
    (fun i => Fin.addCases (m := 3) (n := 3) (C i) (D i) k) r

theorem mem_blockBoxes {E B C D : Rect3} {W X Y Z : Mat3}
    (hw : MemMatrix E W) (hx : MemMatrix B X) (hy : MemMatrix C Y) (hz : MemMatrix D Z) :
    CarrierBox (blockBoxes E B C D) (blockCarrier W X Y Z) := by
  intro i j
  refine Fin.addCases (m := 3) (n := 3) (fun a => ?_) (fun a => ?_) i <;>
    refine Fin.addCases (m := 3) (n := 3) (fun b => ?_) (fun b => ?_) j
  · simpa only [blockBoxes,blockCarrier,Fin.addCases_left] using hw a b
  · simpa only [blockBoxes,blockCarrier,Fin.addCases_left,Fin.addCases_right] using hx a b
  · simpa only [blockBoxes,blockCarrier,Fin.addCases_left,Fin.addCases_right] using hy a b
  · simpa only [blockBoxes,blockCarrier,Fin.addCases_right] using hz a b

def chartEnclosure (signs : CarrierSigns) (box : ParameterBox) : CarrierRegion :=
  let f := freeBoxes signs box
  let E := freeBoxE f
  let B := freeBoxB f
  let C := freeBoxC f
  blockBoxes E B C (lowerBlockBox E B C)

/-- The interval routine encloses every physical chart point throughout a box.
All sixteen expressions use the same actual parameter assignment. -/
theorem chartEnclosure_sound (signs : CarrierSigns) (box : ParameterBox)
    (t : CarrierParameters) (ht : ∀ q, Mem (box q) (t q))
    (hphysical : ChartPhysicalFilter signs t) :
    CarrierBox (chartEnclosure signs box) (chartCarrier signs t) := by
  have hf : ∀ q, MemRectangle (freeBoxes signs box q) (chartEntries signs t q) :=
    fun q => circleBox_sound (signs q) (ht q)
  have he := mem_freeBoxE hf
  have hb := mem_freeBoxB hf
  have hc := mem_freeBoxC hf
  obtain ⟨hg,hi,_⟩ := physical_chart_gram_guard hphysical
  exact mem_blockBoxes he hb hc (lowerBlockBox_sound he hb hc hg hi)

def fullParameterBox : ParameterBox := fun _ => ⟨-1,1⟩

/-- Unconditional finite physical coverage by the explicit enclosure routine.
This coarse root cover is intended for adaptive subdivision, not a cost claim. -/
theorem phaseHadamard_in_root_enclosure {H : BasisMatrix} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, ∃ signs : CarrierSigns,
      CarrierBox (chartEnclosure signs fullParameterBox) (normalizedSideCarrier H k) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k,s,t,ht,hp,he,_,ho⟩ := phaseHadamard_sixteen_parameter_cover hH
  refine ⟨k,s,?_,fun z hz => normalizedSideRay_commonRay hH k hz,ho⟩
  rw [he]
  apply chartEnclosure_sound s fullParameterBox t _ hp
  intro q
  simpa only [Mem,fullParameterBox,Rat.cast_neg,Rat.cast_one] using ht q

#print axioms gramDetBox_positive
#print axioms mem_gramDetBox
#print axioms forcedD_real_quotient
#print axioms lowerBlockBox_sound
#print axioms mem_one_box
#print axioms mem_freeBoxE
#print axioms mem_freeBoxB
#print axioms mem_freeBoxC
#print axioms mem_blockBoxes
#print axioms chartEnclosure_sound
#print axioms phaseHadamard_in_root_enclosure
end
end Mub6.Classification.CarrierIntervals
