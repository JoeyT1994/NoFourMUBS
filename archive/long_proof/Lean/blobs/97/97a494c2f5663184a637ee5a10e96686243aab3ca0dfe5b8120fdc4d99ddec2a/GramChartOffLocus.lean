import GramChartContainment
import SeedGramGuard

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.GramChart20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006 InvariantBinding20261006
noncomputable section

/-- The new extension retains unit entries outside the lower-right block
for every seed cube point and every four unit anchor choices. The new lower
block is not asserted unit, and the full matrix is not asserted physical. -/
theorem gramNativeChart_unit_outside01 (b : Bool) (u : Fin 4 → ℝ)
    (anchors : Fin 4 → ℂ) (ha : ∀ i, Complex.normSq (anchors i)=1)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρ : ρ ≤ radiusEnvelope01) :
    UnitOutsideLowerBlock (gramNativeChart (seedCorner b u) anchors) := by
  obtain ⟨hrow,hcol⟩ := seedCorner_side_sum_bounds b u ρ hu
  have hz := anchorTriple_unit _ _ (ha 0) (ha 1)
  have hw := anchorTriple_unit _ _ (ha 2) (ha 3)
  apply assembleBlocks_unit_outside _ _ _ _ (seedCorner_unit b u)
  · intro i j
    simp only [constructedB,Complex.normSq_mul,hz,
      constructedSideK_unit01 _ _ hz ρ hrow hρ,one_mul]
  · intro i j
    simp only [constructedC,Complex.normSq_mul,hw,
      constructedSideK_unit01 _ _ hw ρ hcol hρ,mul_one]

/-- The already verified 48-term raw signed determinant and corrected
fast expression continue to agree on this entire off-locus extension. -/
theorem seed_gramNativeChart_signed_identity01 (b : Bool) (u : Fin 4 → ℝ)
    (anchors : Fin 4 → ℂ) (ha : ∀ i, Complex.normSq (anchors i)=1)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρ : ρ ≤ radiusEnvelope01)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned (gramNativeChart (seedCorner b u) anchors) rowPair colPair bottomRow rightCol =
      SignedDeterminant.cornerSigned (gramNativeChart (seedCorner b u) anchors)
        (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) :=
  mixedSigned_eq_fast_off_locus (gramNativeChart_unit_outside01 b u anchors ha ρ hu hρ)
    rowPair colPair bottomRow rightCol

theorem source2442GramModel_unit_outside01 (u angles : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρ : ρ ≤ radiusEnvelope01) :
    UnitOutsideLowerBlock (source2442GramModel u angles) := by
  rw [source2442GramModel,source2442Corner_eq_seedCorner]
  exact gramNativeChart_unit_outside01 false u _ phase_unit ρ hu hρ

theorem source2442GramModel_signed_identity01 (u angles : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρ : ρ ≤ radiusEnvelope01)
    (rowPair colPair bottomRow rightCol : Fin 3) :
    mixedSigned (source2442GramModel u angles) rowPair colPair bottomRow rightCol =
      SignedDeterminant.cornerSigned (source2442GramModel u angles)
        (topFirst rowPair) (topSecond rowPair) (bottomIndex bottomRow)
        (topFirst colPair) (topSecond colPair) (bottomIndex rightCol) :=
  mixedSigned_eq_fast_off_locus (source2442GramModel_unit_outside01 u angles ρ hu hρ)
    rowPair colPair bottomRow rightCol

/-- Uniform margin for the exact cyclic cofactor denominator used by the
new inverse, without an anchor phase restriction or physicality premise. -/
theorem source2442GramModel_seed_determinant_margin (u : Fin 4 → ℝ)
    (ρ : ℝ) (hu : ∀ i, |u i| ≤ ρ) (hρ : ρ ≤ radiusEnvelope01) :
    26 < ‖nativeDeterminant (seedGram (source2442Corner u))‖ := by
  rw [source2442Corner_eq_seedCorner,nativeDeterminant_eq_det,
    seedGram_det_formula _ (seedCorner_unit false u),Complex.norm_real]
  have hp := seedDeterminant_gt_26 false u ρ hu hρ
  rw [Real.norm_eq_abs,abs_of_pos (lt_trans (by norm_num : (0:ℝ)<26) hp)]
  exact hp

end
end Centiradian20261006.GramChart20261006

#print axioms Centiradian20261006.GramChart20261006.gramNativeChart_unit_outside01
#print axioms Centiradian20261006.GramChart20261006.seed_gramNativeChart_signed_identity01
#print axioms Centiradian20261006.GramChart20261006.source2442GramModel_unit_outside01
#print axioms Centiradian20261006.GramChart20261006.source2442GramModel_signed_identity01
#print axioms Centiradian20261006.GramChart20261006.source2442GramModel_seed_determinant_margin
