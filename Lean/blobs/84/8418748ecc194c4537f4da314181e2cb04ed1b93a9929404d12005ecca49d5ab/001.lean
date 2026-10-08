import SharedSeedIntervals
set_option autoImplicit false

/-! Rational physical sheet inputs for the same four seed rectangles.  Both
sheet signs are retained independently for the two physical sides, including
zero radicand.  The good-side determinant floor justifies the real division.
No lambda denominator guard and no local Fourier root recipe is assumed here. -/
namespace Mub6.Classification.SharedSeedSheetIntervals
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.SharedSeedIntervals
open FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseRoots
noncomputable section

def SqrtUpperCertificate (R : Interval) (u : ℚ) : Prop :=
  0 ≤ u ∧ R.hi ≤ u^2

instance (R : Interval) (u : ℚ) : Decidable (SqrtUpperCertificate R u) := by
  unfold SqrtUpperCertificate
  infer_instance

def sqrtInterval (u : ℚ) : Interval := ⟨0,u⟩
def signedSqrtInterval (negative : Bool) (u : ℚ) : Interval :=
  if negative then neg (sqrtInterval u) else sqrtInterval u

theorem sqrtInterval_sound {R : Interval} {u : ℚ} {r : ℝ}
    (hc : SqrtUpperCertificate R u) (hr : Mem R r) :
    Mem (sqrtInterval u) (Real.sqrt r) := by
  have hu : (0 : ℝ) ≤ u := by exact_mod_cast hc.1
  have hh : ((R.hi : ℚ) : ℝ) ≤ (u : ℝ)^2 := by exact_mod_cast hc.2
  exact ⟨by simpa only [sqrtInterval, Rat.cast_zero] using Real.sqrt_nonneg r,
    (Real.sqrt_le_iff).2 ⟨hu, hr.2.trans hh⟩⟩

theorem signedSqrtInterval_sound {R : Interval} {u : ℚ} {r : ℝ}
    (hc : SqrtUpperCertificate R u) (hr : Mem R r) (negative : Bool) :
    Mem (signedSqrtInterval negative u) (if negative then -Real.sqrt r else Real.sqrt r) := by
  cases negative
  · exact sqrtInterval_sound hc hr
  · exact mem_neg (sqrtInterval_sound hc hr)

/-- This explicit coarse rational bound always exists; it need not be narrow. -/
def coarseSqrtUpper (R : Interval) : ℚ := max 1 R.hi

theorem coarseSqrtUpper_certificate (R : Interval) :
    SqrtUpperCertificate R (coarseSqrtUpper R) := by
  have h1 : (1 : ℚ) ≤ coarseSqrtUpper R := le_max_left _ _
  have hR : R.hi ≤ coarseSqrtUpper R := le_max_right _ _
  constructor
  · linarith
  · nlinarith

/-- First clamp g by its physical good-side floor, then explicitly retain the
corresponding positive floor for the real denominator 2g. -/
def guardedSheetDenominator (G : Interval) : Interval :=
  clampLower (mul (point 2) (clampLower G (54/5))) (108/5)

theorem guardedSheetDenominator_positive (G : Interval) :
    0 < (guardedSheetDenominator G).lo := by
  exact lt_of_lt_of_le (by norm_num : (0 : ℚ) < 108/5) (le_max_right _ _)

theorem guardedSheetDenominator_sound {G : Interval} {g : ℝ}
    (hg : Mem G g) (hgood : (54/5 : ℝ) ≤ g) :
    Mem (guardedSheetDenominator G) (2*g) := by
  apply mem_clampLower
  · simpa only [Rat.cast_ofNat] using mem_mul (mem_point 2) (mem_clampLower hg hgood)
  · norm_num
    linarith

def sheetRectangle (G C : Interval) (u : ℚ) (negative : Bool) : RationalRectangle :=
  rectangle (divide C (guardedSheetDenominator G))
    (divide (signedSqrtInterval negative u) (guardedSheetDenominator G))

theorem sheetRectangle_sound {G C R : Interval} {u : ℚ} {g c r : ℝ}
    (hg : Mem G g) (hc : Mem C c) (hr : Mem R r)
    (hgood : (54/5 : ℝ) ≤ g) (hu : SqrtUpperCertificate R u) (negative : Bool) :
    MemRectangle (sheetRectangle G C u negative)
      (FourierRadicalGuards.sheet g c (if negative then -Real.sqrt r else Real.sqrt r)) := by
  rw [sheetRectangle, mem_rectangle_iff, FourierRadicalGuards.sheet_re,
    FourierRadicalGuards.sheet_im]
  exact ⟨mem_divide (guardedSheetDenominator_positive G) hc
      (guardedSheetDenominator_sound hg hgood),
    mem_divide (guardedSheetDenominator_positive G) (signedSqrtInterval_sound hu hr negative)
      (guardedSheetDenominator_sound hg hgood)⟩

/-- Neither a positive radicand nor a choice of a principal sheet is required. -/
theorem sheet_two_sign_cover {G C R : Interval} {u : ℚ} {g c r : ℝ} {z : ℂ}
    (hg : Mem G g) (hc : Mem C c) (hr : Mem R r)
    (hgood : (54/5 : ℝ) ≤ g) (hu : SqrtUpperCertificate R u)
    (hz : z = FourierRadicalGuards.sheet g c (Real.sqrt r) ∨
      z = FourierRadicalGuards.sheet g c (-Real.sqrt r)) :
    ∃ negative : Bool, MemRectangle (sheetRectangle G C u negative) z := by
  rcases hz with hp | hn
  · rw [hp]
    exact ⟨false, sheetRectangle_sound hg hc hr hgood hu false⟩
  · rw [hn]
    exact ⟨true, sheetRectangle_sound hg hc hr hgood hu true⟩

def sharedGInterval (B : SeedBoxes) : Interval :=
  meetInterval (gBox (horizontalBoxes B)) (gBox (verticalBoxes B))
def sharedChiInterval (B : SeedBoxes) : Interval :=
  meetInterval (chiBox (horizontalBoxes B)) (chiBox (verticalBoxes B))
def sharedRadicandInterval (B : SeedBoxes) : Interval :=
  meetInterval (radicandBox (horizontalBoxes B)) (radicandBox (verticalBoxes B))

def sharedSheetBox (B : SeedBoxes) (u : ℚ) (negative : Bool) : RationalRectangle :=
  sheetRectangle (sharedGInterval B) (sharedChiInterval B) u negative

/-- Both actual sheets are enclosed from one physical seed and one rational
square-root upper bound. The two Boolean signs are independent. -/
theorem physical_shared_seed_sheet_boxes {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u) :
    ∃ horizontalSign verticalSign : Bool,
      MemRectangle (sharedSheetBox B u horizontalSign) (sideSheet (northeast H)) ∧
      MemRectangle (sharedSheetBox B u verticalSign) (sideSheet ((southwest H)ᵀ)) := by
  obtain ⟨hg, _, hc, hr⟩ := physical_shared_seed_invariants hH hB
  obtain ⟨hs, hhs⟩ := sheet_two_sign_cover hg hc hr (seed_g_lower_bound hH) hu
    (horizontal_sheet_two_sqrt hH).2
  obtain ⟨vs, hvs⟩ := sheet_two_sign_cover hg hc hr (seed_g_lower_bound hH) hu
    (vertical_sheet_two_sqrt hH).2
  exact ⟨hs, vs, hhs, hvs⟩

theorem sheet_sign_pair_count : Fintype.card (Bool × Bool) = 4 := by decide

/-- Every complex root of w²+w+1 is a phase, so its rectangle need not be
supplied by a separate external membership assumption. -/
theorem quadratic_omega_normSq {w : ℂ} (hw : w^2+w+1=0) : Complex.normSq w = 1 := by
  have hp : (Complex.normSq w)^3 = 1 := by
    simpa only [map_pow, map_one] using congrArg Complex.normSq (omega_cube hw)
  have hn := Complex.normSq_nonneg w
  have hf : (Complex.normSq w-1)*((Complex.normSq w)^2+Complex.normSq w+1)=0 := by
    nlinarith
  have hpos : 0 < (Complex.normSq w)^2+Complex.normSq w+1 := by positivity
  rcases mul_eq_zero.mp hf with he | he
  · exact sub_eq_zero.mp he
  · linarith

theorem quadratic_omega_unitBox {w : ℂ} (hw : w^2+w+1=0) : MemRectangle unitBox w :=
  mem_unitBox (le_of_eq (quadratic_omega_normSq hw))

theorem fixed_omega_unitBox : MemRectangle unitBox omega :=
  quadratic_omega_unitBox omega_quadratic

def horizontalMomentBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) : SideMomentBoxes :=
  quotientMomentBoxes (horizontalBoxes B) (sharedSheetBox B u negative) unitBox

def verticalMomentBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) : SideMomentBoxes :=
  quotientMomentBoxes (verticalBoxes B) (sharedSheetBox B u negative) unitBox

/-- All moment memberships follow from the physical seed memberships and the
rational square-root bound. No actual sheet, N, D or lambda membership remains. -/
theorem physical_shared_seed_moment_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u) :
    ∃ horizontalSign verticalSign : Bool,
      CoversSideMoments (horizontalMomentBoxes B u horizontalSign)
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments (verticalMomentBoxes B u verticalSign)
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  obtain ⟨hs, vs, hhs, hvs⟩ := physical_shared_seed_sheet_boxes hH hB hu
  exact ⟨hs, vs, physical_shared_seed_quotient_moments hH hB omega hhs hvs fixed_omega_unitBox⟩

/-- Circle-coordinate endpoint: the SAME four coordinate intervals feed both
physical sides. All four pairs of sheet signs remain available to a consumer. -/
theorem physical_circle_seed_moment_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (signs : SeedSigns) {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u) :
    ∃ horizontalSign verticalSign : Bool,
      CoversSideMoments (horizontalMomentBoxes (circleSeedBoxes signs T) u horizontalSign)
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments (verticalMomentBoxes (circleSeedBoxes signs T) u verticalSign)
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  apply physical_shared_seed_moment_cover hH _ hu
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

/-- A coarse always-available moment enclosure for any physically occupied
four-circle cell. Width and subsequent local root certificates are separate. -/
theorem physical_circle_seed_coarse_moment_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (signs : SeedSigns) {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i)) :
    let B := circleSeedBoxes signs T
    let u := coarseSqrtUpper (sharedRadicandInterval B)
    ∃ horizontalSign verticalSign : Bool,
      CoversSideMoments (horizontalMomentBoxes B u horizontalSign)
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments (verticalMomentBoxes B u verticalSign)
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  exact physical_circle_seed_moment_cover hH signs he ht (coarseSqrtUpper_certificate _)

#print axioms sqrtInterval_sound
#print axioms signedSqrtInterval_sound
#print axioms coarseSqrtUpper_certificate
#print axioms guardedSheetDenominator_positive
#print axioms guardedSheetDenominator_sound
#print axioms sheetRectangle_sound
#print axioms sheet_two_sign_cover
#print axioms physical_shared_seed_sheet_boxes
#print axioms sheet_sign_pair_count
#print axioms quadratic_omega_normSq
#print axioms quadratic_omega_unitBox
#print axioms fixed_omega_unitBox
#print axioms physical_shared_seed_moment_cover
#print axioms physical_circle_seed_moment_cover
#print axioms physical_circle_seed_coarse_moment_cover
end
end Mub6.Classification.SharedSeedSheetIntervals
