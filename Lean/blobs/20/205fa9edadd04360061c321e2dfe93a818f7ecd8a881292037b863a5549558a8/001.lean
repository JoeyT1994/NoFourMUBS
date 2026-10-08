import SharedSeedSheetIntervals
set_option autoImplicit false

namespace Mub6.Classification.TightOmegaSeedMoments
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
open Hadamard6Extensions.FourPhaseRoots
noncomputable section

theorem quadratic_omega_coordinates {w : ℂ} (hw : w^2+w+1=0) :
    w.re = -1/2 ∧ w.im^2=3/4 := by
  have hn := quadratic_omega_normSq hw
  have hr := congrArg Complex.re hw
  have hi := congrArg Complex.im hw
  simp only [Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im,
    pow_two, Complex.one_re, Complex.one_im, Complex.zero_re, Complex.zero_im] at hr hi
  simp only [Complex.normSq_apply] at hn
  have him : w.im ≠ 0 := by
    intro hz
    rw [hz] at hr
    nlinarith [sq_nonneg (w.re+1/2)]
  have hmul : (2*w.re+1)*w.im=0 := by nlinarith [hi]
  have hre : w.re = -1/2 := by
    have := (mul_eq_zero.mp hmul).resolve_right him
    linarith
  exact ⟨hre, by rw [hre] at hn; nlinarith⟩

/-- Both primitive roots are retained; their real coordinate is exact. -/
def omegaRectangle : RationalRectangle := ⟨-1/2,-1/2,-887/1024,887/1024⟩

theorem quadratic_omega_rectangle {w : ℂ} (hw : w^2+w+1=0) :
    MemRectangle omegaRectangle w := by
  obtain ⟨hr,hi⟩ := quadratic_omega_coordinates hw
  dsimp [MemRectangle,omegaRectangle]
  norm_num
  constructor
  · linarith
  constructor
  · linarith
  constructor <;> nlinarith [sq_nonneg (w.im+887/1024),sq_nonneg (w.im-887/1024)]

theorem fixed_omega_rectangle : MemRectangle omegaRectangle omega :=
  quadratic_omega_rectangle omega_quadratic

def horizontalBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) : SideMomentBoxes :=
  quotientMomentBoxes (SharedSeedIntervals.horizontalBoxes B)
    (sharedSheetBox B u negative) omegaRectangle

def verticalBoxes (B : SeedBoxes) (u : ℚ) (negative : Bool) : SideMomentBoxes :=
  quotientMomentBoxes (SharedSeedIntervals.verticalBoxes B)
    (sharedSheetBox B u negative) omegaRectangle

theorem physical_seed_moment_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u) :
    ∃ hs vs : Bool,
      CoversSideMoments (horizontalBoxes B u hs) (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments (verticalBoxes B u vs) ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  obtain ⟨hs,vs,hh,hv⟩ := physical_shared_seed_sheet_boxes hH hB hu
  exact ⟨hs,vs,physical_shared_seed_quotient_moments hH hB omega hh hv fixed_omega_rectangle⟩

#print axioms quadratic_omega_coordinates
#print axioms quadratic_omega_rectangle
#print axioms fixed_omega_rectangle
#print axioms physical_seed_moment_cover
end
end Mub6.Classification.TightOmegaSeedMoments
