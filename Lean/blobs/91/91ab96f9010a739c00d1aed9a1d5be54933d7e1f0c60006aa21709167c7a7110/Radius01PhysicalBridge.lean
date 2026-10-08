import Radius01ChartInverse

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

theorem physical_seed_side_guards01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    (∀ i : Fin 3, i ≠ 0 →
      sideArgument (blockE H) (fun k => blockB H k 0) i ≠ 0 ∧
        Complex.normSq (sideArgument (blockE H) (fun k => blockB H k 0) i) < 29/20) ∧
    (∀ i : Fin 3, i ≠ 0 →
      sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i ≠ 0 ∧
        Complex.normSq (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i) < 29/20) := by
  obtain ⟨hrow,hcol⟩ := seedBall_side_sum_bounds hd b r hball
  constructor
  · intro i hi
    exact (anchoredSum_guards01 _ _ (hH.1 _ _) r (hrow i hi) hr).2
  · intro i hi
    exact (anchoredSum_guards01 _ _ (hH.1 _ _) r (hcol i hi) hr).2

theorem physical_seed_side_row_pair01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    let a := (-1-H (upperIndex i) 1-H (upperIndex i) 2)*conj (H (upperIndex i) 3)-1
    (H (upperIndex i) 4*conj (H (upperIndex i) 3)=pairPlus a ∧
      H (upperIndex i) 5*conj (H (upperIndex i) 3)=pairMinus a) ∨
    (H (upperIndex i) 4*conj (H (upperIndex i) 3)=pairMinus a ∧
      H (upperIndex i) 5*conj (H (upperIndex i) 3)=pairPlus a) := by
  have ha := ((physical_seed_side_guards01 hH hd b r hball hr).1 i hi).1
  rw [row_sideArgument_eq H hd i] at ha
  have hiz : upperIndex i ≠ 0 := by
    intro h
    apply hi
    apply Fin.ext
    exact congrArg (fun k : Fin 6 => k.val) h
  exact physical_side_row_pair hH hd (upperIndex i) hiz ha

theorem physical_seed_side_column_pair01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    let a := (-1-H 1 (upperIndex i)-H 2 (upperIndex i))*conj (H 3 (upperIndex i))-1
    (H 4 (upperIndex i)*conj (H 3 (upperIndex i))=pairPlus a ∧
      H 5 (upperIndex i)*conj (H 3 (upperIndex i))=pairMinus a) ∨
    (H 4 (upperIndex i)*conj (H 3 (upperIndex i))=pairMinus a ∧
      H 5 (upperIndex i)*conj (H 3 (upperIndex i))=pairPlus a) := by
  have ha := ((physical_seed_side_guards01 hH hd b r hball hr).2 i hi).1
  rw [column_sideArgument_eq H hd i] at ha
  have hiz : upperIndex i ≠ 0 := by
    intro h
    apply hi
    apply Fin.ext
    exact congrArg (fun k : Fin 6 => k.val) h
  exact physical_side_column_pair hH hd (upperIndex i) hiz ha

theorem physical_side_row_fourier_distance01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    (‖H (upperIndex i) 4*conj (H (upperIndex i) 3)-phase (4*Real.pi/3)‖ ≤ (17/3)*r ∧
      ‖H (upperIndex i) 5*conj (H (upperIndex i) 3)-phase (2*Real.pi/3)‖ ≤ (17/3)*r) ∨
    (‖H (upperIndex i) 4*conj (H (upperIndex i) 3)-phase (2*Real.pi/3)‖ ≤ (17/3)*r ∧
      ‖H (upperIndex i) 5*conj (H (upperIndex i) 3)-phase (4*Real.pi/3)‖ ≤ (17/3)*r) := by
  have hs := (seedBall_side_sum_bounds hd b r hball).1 i hi
  have herr := anchored_pair_distance01 (sideSum (blockE H) i) (blockB H i 0) (hH.1 _ _) r hs hr
  change ‖pairPlus (sideArgument (blockE H) (fun k => blockB H k 0) i)-pairPlus (-1)‖ ≤ (17/3)*r ∧
    ‖pairMinus (sideArgument (blockE H) (fun k => blockB H k 0) i)-pairMinus (-1)‖ ≤ (17/3)*r at herr
  rw [row_sideArgument_eq H hd i,reference_pair_fourier.1,reference_pair_fourier.2] at herr
  rcases physical_seed_side_row_pair01 hH hd b r hball hr i hi with ⟨hp,hm⟩ | ⟨hm,hp⟩
  · left
    constructor
    · rw [hp]; exact herr.1
    · rw [hm]; exact herr.2
  · right
    constructor
    · rw [hm]; exact herr.2
    · rw [hp]; exact herr.1

theorem physical_side_column_fourier_distance01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    (‖H 4 (upperIndex i)*conj (H 3 (upperIndex i))-phase (4*Real.pi/3)‖ ≤ (17/3)*r ∧
      ‖H 5 (upperIndex i)*conj (H 3 (upperIndex i))-phase (2*Real.pi/3)‖ ≤ (17/3)*r) ∨
    (‖H 4 (upperIndex i)*conj (H 3 (upperIndex i))-phase (2*Real.pi/3)‖ ≤ (17/3)*r ∧
      ‖H 5 (upperIndex i)*conj (H 3 (upperIndex i))-phase (4*Real.pi/3)‖ ≤ (17/3)*r) := by
  have hs := (seedBall_side_sum_bounds hd b r hball).2 i hi
  have herr := anchored_pair_distance01 (sideSum (blockE H)ᵀ i) (blockC H 0 i) (hH.1 _ _) r hs hr
  change ‖pairPlus (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i)-pairPlus (-1)‖ ≤ (17/3)*r ∧
    ‖pairMinus (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i)-pairMinus (-1)‖ ≤ (17/3)*r at herr
  rw [column_sideArgument_eq H hd i,reference_pair_fourier.1,reference_pair_fourier.2] at herr
  rcases physical_seed_side_column_pair01 hH hd b r hball hr i hi with ⟨hp,hm⟩ | ⟨hm,hp⟩
  · left
    constructor
    · rw [hp]; exact herr.1
    · rw [hm]; exact herr.2
  · right
    constructor
    · rw [hm]; exact herr.2
    · rw [hp]; exact herr.1

/-- The actual native auxiliary chart has all side entries on the unit circle
through the radius-.1 envelope. No lower-block unit hypothesis is present. -/
theorem nativeChart_unit_outside01 (b : Bool) (u : Fin 4 → ℝ)
    (anchors : Fin 4 → ℂ) (ha : ∀ i, Complex.normSq (anchors i)=1)
    (r : ℝ) (hu : ∀ i, |u i| ≤ r) (hr : r ≤ radiusEnvelope01) :
    UnitOutsideLowerBlock (nativeChart (seedCorner b u) anchors) := by
  obtain ⟨hrow,hcol⟩ := seedCorner_side_sum_bounds b u r hu
  have hz := anchorTriple_unit _ _ (ha 0) (ha 1)
  have hw := anchorTriple_unit _ _ (ha 2) (ha 3)
  apply assembleBlocks_unit_outside _ _ _ _ (seedCorner_unit b u)
  · intro i j
    simp only [constructedB,Complex.normSq_mul,hz,
      constructedSideK_unit01 _ _ hz r hrow hr,one_mul]
  · intro i j
    simp only [constructedC,Complex.normSq_mul,hw,
      constructedSideK_unit01 _ _ hw r hcol hr,mul_one]

/-- All 81 literal determinant words and corrected fast signed expressions
agree on the exact native model throughout the full closed seed cube. -/
theorem seed_nativeChart_signed_identity01 (b : Bool) (u : Fin 4 → ℝ)
    (anchors : Fin 4 → ℂ) (ha : ∀ i, Complex.normSq (anchors i)=1)
    (r : ℝ) (hu : ∀ i, |u i| ≤ r) (hr : r ≤ radiusEnvelope01)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned (nativeChart (seedCorner b u) anchors) rowPair colPair bottomRow rightCol =
      SignedDeterminant.cornerSigned (nativeChart (seedCorner b u) anchors)
        (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) := by
  exact mixedSigned_eq_fast_off_locus
    (nativeChart_unit_outside01 b u anchors ha r hu hr) rowPair colPair bottomRow rightCol

/-- Uniform denominator bound for the actual source constructor, at both
seeds and every four-anchor phase choice. -/
theorem seed_constructedSideK_determinant_margin01 (b : Bool) (u : Fin 4 → ℝ)
    (z : Fin 3 → ℂ) (hz : ∀ i, Complex.normSq (z i)=1)
    (r : ℝ) (hu : ∀ i, |u i| ≤ r) (hr : r ≤ radiusEnvelope01) :
    (3/5:ℝ) < ‖(constructedSideK (seedCorner b u) z).det‖ ∧
      (3/5:ℝ) < ‖(constructedSideK (seedCorner b u)ᵀ z).det‖ := by
  obtain ⟨hrow,hcol⟩ := seedCorner_side_sum_bounds b u r hu
  exact ⟨constructedSideK_determinant_margin01 _ _ hz r hrow hr,
    constructedSideK_determinant_margin01 _ _ hz r hcol hr⟩

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.physical_seed_side_guards01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_seed_side_row_pair01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_seed_side_column_pair01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_row_fourier_distance01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_column_fourier_distance01
#print axioms Centiradian20261006.ChartRadius0120261006.nativeChart_unit_outside01
#print axioms Centiradian20261006.ChartRadius0120261006.seed_nativeChart_signed_identity01
#print axioms Centiradian20261006.ChartRadius0120261006.seed_constructedSideK_determinant_margin01
