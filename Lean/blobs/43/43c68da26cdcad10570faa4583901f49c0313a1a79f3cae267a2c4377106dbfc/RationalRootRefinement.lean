import RationalRootCertificates
import LocalRootLipschitz

/-! A wholly rational certificate for the sharper, locally separated cube-root
bound. The coarse radius is used for existence; the final radius can be much
smaller and is justified by the factored cubic derivative. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Hadamard6Extensions.LocalRootEnclosures
noncomputable section

structure RefinedCubeCertificate (B : RationalRectangle) (a b r M κ ε : ℚ) : Prop where
  coarse : CubeCertificate B a b r
  upper_nonneg : 0 ≤ M
  separation_pos : 0 < κ
  radius_nonneg : 0 ≤ ε
  center_upper : a^2+b^2 ≤ M^2
  separation : κ ≤ 3*(a^2+b^2)-3*M*r-r^2
  residual : (rootResidual B a b 3).hi ≤ ε^2*κ^2

theorem rationalCenter_normSq (a b : ℚ) :
    Complex.normSq (rationalCenter a b)=((a^2+b^2 : ℚ) : ℝ) := by
  simp only [Complex.normSq_apply,rationalCenter,Rat.cast_add,Rat.cast_pow]
  ring

theorem refinedCubeCertificate_sound {B : RationalRectangle} {T : ℂ}
    {a b r M κ ε : ℚ} (hc : RefinedCubeCertificate B a b r M κ ε)
    (hT : MemRectangle B T) :
    ∃ τ : ℂ, τ^3=T ∧
      MemRectangle (boxMeet (centerBox a b r) (centerBox a b ε)) τ := by
  have hr : (0 : ℝ) ≤ r := by exact_mod_cast hc.coarse.1
  have hM : (0 : ℝ) ≤ M := by exact_mod_cast hc.upper_nonneg
  have hk : (0 : ℝ) < κ := by exact_mod_cast hc.separation_pos
  have hres : Complex.normSq (T-(rationalCenter a b)^3) ≤ (r : ℝ)^6 := by
    apply (rootResidual_sound hT a b 3).trans
    exact_mod_cast hc.coarse.2
  have hu : Complex.normSq (rationalCenter a b) ≤ (M : ℝ)^2 := by
    rw [rationalCenter_normSq]
    exact_mod_cast hc.center_upper
  have hs : (κ : ℝ) ≤ 3*((a^2+b^2 : ℚ) : ℝ)-3*M*r-(r : ℝ)^2 := by
    exact_mod_cast hc.separation
  obtain ⟨τ,ht,hd,hfine⟩ := exists_cube_root_refined T (rationalCenter a b)
    (r : ℝ) ((a^2+b^2 : ℚ) : ℝ) (M : ℝ) (κ : ℝ) hr hM hk hres
    (le_of_eq (rationalCenter_normSq a b).symm) hu hs
  have herr : Complex.normSq (T-(rationalCenter a b)^3) ≤ (ε : ℝ)^2*(κ : ℝ)^2 := by
    apply (rootResidual_sound hT a b 3).trans
    exact_mod_cast hc.residual
  have hsmall : Complex.normSq (τ-rationalCenter a b) ≤ (ε : ℝ)^2 := by
    apply hfine.trans
    exact (div_le_iff₀ (sq_pos_of_pos hk)).2 herr
  exact ⟨τ,ht,mem_boxMeet (mem_centerBox hc.coarse.1 hd)
    (mem_centerBox hc.radius_nonneg hsmall)⟩

#check rationalCenter_normSq
#print axioms rationalCenter_normSq
#check refinedCubeCertificate_sound
#print axioms refinedCubeCertificate_sound
end
end Mub6.Classification.RadicalIntervals
