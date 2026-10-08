import SeedSideGuards
import NativeChartOffLocus

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

/-- The literal leading corner at either stationary seed with four circular
lift displacements. The entire closed coordinate cube is retained. -/
def seedCorner (b : Bool) (u : Fin 4 → ℝ) : Mat3 :=
  !![1,1,1;
    1,phase (seedAngle b 0+u 0),phase (seedAngle b 1+u 1);
    1,phase (seedAngle b 2+u 2),phase (seedAngle b 3+u 3)]

theorem seedCorner_unit (b : Bool) (u : Fin 4 → ℝ) (i j : Fin 3) :
    Complex.normSq (seedCorner b u i j)=1 := by
  fin_cases i <;> fin_cases j <;>
    simp [seedCorner,phase,Complex.normSq_eq_norm_sq]

theorem seedCorner_side_sum_bounds (b : Bool) (u : Fin 4 → ℝ)
    (r : ℝ) (hu : ∀ i, |u i| ≤ r) :
    (∀ i : Fin 3, i ≠ 0 → ‖sideSum (seedCorner b u) i‖ ≤ 2*r) ∧
      (∀ i : Fin 3, i ≠ 0 → ‖sideSum (seedCorner b u)ᵀ i‖ ≤ 2*r) := by
  obtain ⟨hc0,hc1,hc2,hc3⟩ := seed_four_pair_cancellations b
  have h0 := shifted_pair_sum_bound _ _ _ _ r hc0 (hu 0) (hu 1)
  have h1 := shifted_pair_sum_bound _ _ _ _ r hc1 (hu 2) (hu 3)
  have h2 := shifted_pair_sum_bound _ _ _ _ r hc2 (hu 0) (hu 2)
  have h3 := shifted_pair_sum_bound _ _ _ _ r hc3 (hu 1) (hu 3)
  constructor
  · intro i hi
    fin_cases i
    · exact (hi rfl).elim
    · simp only [sideSum,norm_neg]
      simpa [seedCorner,Fin.sum_univ_succ,add_assoc] using h0
    · simp only [sideSum,norm_neg]
      simpa [seedCorner,Fin.sum_univ_succ,add_assoc] using h1
  · intro i hi
    fin_cases i
    · exact (hi rfl).elim
    · simp only [sideSum,norm_neg]
      simpa [seedCorner,Fin.sum_univ_succ,Matrix.transpose_apply,add_assoc] using h2
    · simp only [sideSum,norm_neg]
      simpa [seedCorner,Fin.sum_univ_succ,Matrix.transpose_apply,add_assoc] using h3

/-- Concrete analytic-to-native bridge on the full closed seed cube and
arbitrary four unit anchors. All source side-constructor guards needed for
unit entries are derived, and no physical-locus assumption on T is used. -/
theorem seed_nativeChart_signed_identity (b : Bool) (u : Fin 4 → ℝ)
    (anchors : Fin 4 → ℂ) (ha : ∀ i, Complex.normSq (anchors i)=1)
    (r : ℝ) (hu : ∀ i, |u i| ≤ r) (hr : r ≤ radiusEnvelope)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned (nativeChart (seedCorner b u) anchors) rowPair colPair bottomRow rightCol =
      SignedDeterminant.cornerSigned (nativeChart (seedCorner b u) anchors)
        (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) := by
  obtain ⟨hrow,hcol⟩ := seedCorner_side_sum_bounds b u r hu
  exact nativeChart_signed_identity _ _ (seedCorner_unit b u) ha r hr hrow hcol
    rowPair colPair bottomRow rightCol

theorem row_sideArgument_eq (H : Mat6) (hd : Dephased H) (i : Fin 3) :
    sideArgument (blockE H) (fun k => blockB H k 0) i =
      (-1-H (upperIndex i) 1-H (upperIndex i) 2)*conj (H (upperIndex i) 3)-1 := by
  simp [sideArgument,anchoredSum,sideSum,blockE,blockB,upperIndex,bottomIndex,
    Fin.sum_univ_succ,hd.2]
  ring

theorem column_sideArgument_eq (H : Mat6) (hd : Dephased H) (i : Fin 3) :
    sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i =
      (-1-H 1 (upperIndex i)-H 2 (upperIndex i))*conj (H 3 (upperIndex i))-1 := by
  simp [sideArgument,anchoredSum,sideSum,blockE,blockC,upperIndex,bottomIndex,
    Fin.sum_univ_succ,Matrix.transpose_apply,hd.1]
  ring

/-- Exhaustive actual side-row representation with its former nonzero guard
now discharged from the seed ball. Both orientations are still retained. -/
theorem physical_seed_side_row_pair {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) (i : Fin 3) (hi : i ≠ 0) :
    let a := (-1-H (upperIndex i) 1-H (upperIndex i) 2)*conj (H (upperIndex i) 3)-1
    (H (upperIndex i) 4*conj (H (upperIndex i) 3)=pairPlus a ∧
      H (upperIndex i) 5*conj (H (upperIndex i) 3)=pairMinus a) ∨
    (H (upperIndex i) 4*conj (H (upperIndex i) 3)=pairMinus a ∧
      H (upperIndex i) 5*conj (H (upperIndex i) 3)=pairPlus a) := by
  have ha := ((physical_seed_side_guards hH hd b r hball hr).1 i hi).1
  rw [row_sideArgument_eq H hd i] at ha
  have hiz : upperIndex i ≠ 0 := by
    intro h
    apply hi
    apply Fin.ext
    exact congrArg (fun k : Fin 6 => k.val) h
  exact physical_side_row_pair hH hd (upperIndex i) hiz ha

/-- The corresponding actual side-column representation, also with no
additional nonzero-sum premise. -/
theorem physical_seed_side_column_pair {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) (i : Fin 3) (hi : i ≠ 0) :
    let a := (-1-H 1 (upperIndex i)-H 2 (upperIndex i))*conj (H 3 (upperIndex i))-1
    (H 4 (upperIndex i)*conj (H 3 (upperIndex i))=pairPlus a ∧
      H 5 (upperIndex i)*conj (H 3 (upperIndex i))=pairMinus a) ∨
    (H 4 (upperIndex i)*conj (H 3 (upperIndex i))=pairMinus a ∧
      H 5 (upperIndex i)*conj (H 3 (upperIndex i))=pairPlus a) := by
  have ha := ((physical_seed_side_guards hH hd b r hball hr).2 i hi).1
  rw [column_sideArgument_eq H hd i] at ha
  have hiz : upperIndex i ≠ 0 := by
    intro h
    apply hi
    apply Fin.ext
    exact congrArg (fun k : Fin 6 => k.val) h
  exact physical_side_column_pair hH hd (upperIndex i) hiz ha

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.seedCorner_unit
#print axioms Centiradian20261006.ChartExtension20261006.seedCorner_side_sum_bounds
#print axioms Centiradian20261006.ChartExtension20261006.seed_nativeChart_signed_identity
#print axioms Centiradian20261006.ChartExtension20261006.row_sideArgument_eq
#print axioms Centiradian20261006.ChartExtension20261006.column_sideArgument_eq
#print axioms Centiradian20261006.ChartExtension20261006.physical_seed_side_row_pair
#print axioms Centiradian20261006.ChartExtension20261006.physical_seed_side_column_pair
