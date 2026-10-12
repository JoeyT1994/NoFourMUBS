import NoFourMUBs.Step2.Reconstruction.ThirdMoment.IntrinsicAffine
import NoFourMUBs.Reuse.Archive.CriticalMomentQuad
import Hadamard6.FiniteDilation

set_option autoImplicit false
set_option maxHeartbeats 1500000
open Matrix Hadamard6
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped BigOperators ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The actual intrinsic parameter satisfies the quadratic used by the certificate. -/
theorem intrinsicTheta_quadratic (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    let z := intrinsicTheta a
    let h : ℂ := (gramChi (rowS a) (rowT a) (rowR a) : ℂ) /
      (gramG (rowS a) (rowT a) (rowR a) : ℂ)
    let eta : ℂ := gramEta (rowS a) (rowT a) (rowR a)
    conj z = h-z ∧ z^2 = -eta+h*z := by
  dsimp only
  obtain ⟨hd,hg⟩ := strict_intrinsic_det_guard a ha hR
  have hg0 : (gramG (rowS a) (rowT a) (rowR a) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt hg)
  obtain ⟨hn,hm⟩ := intrinsicTheta_moments a ha hd
  have hz : intrinsicTheta a * conj (intrinsicTheta a) =
      (gramEta (rowS a) (rowT a) (rowR a) : ℂ) := by
    rw [Complex.mul_conj,hn]
  have hb : conj (intrinsicTheta a) =
      (gramChi (rowS a) (rowT a) (rowR a) : ℂ) /
        (gramG (rowS a) (rowT a) (rowR a) : ℂ) - intrinsicTheta a := by
    apply (eq_sub_iff_add_eq).2
    apply (eq_div_iff hg0).2
    linear_combination hm
  refine ⟨hb,?_⟩
  rw [hb] at hz
  linear_combination -hz

/-- Specialize the repository's quadratic evaluator to one paired matrix entry. -/
theorem paired_affine_entry (h eta z v0 v1 m0 m1 : ℂ)
    (hz : z^2 = -eta+h*z) :
    (v0+(h-z)*v1)*(m0+z*m1) =
      ((v0+h*v1)*m0+eta*v1*m1) + z*(v0*m1-v1*m0) := by
  have he := CriticalMomentQuad20261003.eval_mul z hz
    (⟨v0+h*v1,-v1⟩ : CriticalMomentQuad20261003.Quad (-eta) h) ⟨m0,m1⟩
  change ((v0+h*v1)*m0+(-eta)*(-v1)*m1) +
      ((v0+h*v1)*m1+(-v1)*m0+h*(-v1)*m1)*z =
      (v0+h*v1+(-v1)*z)*(m0+m1*z) at he
  linear_combination -he

/-- The exact constant and linear residuals in the saved eight identities. -/
theorem paired_affine_contraction (h eta z offset : ℂ) (V0 V1 M0 M1 : Mat3)
    (hz : z^2 = -eta+h*z) :
    (∑ i, ∑ j, (V0 i j+(h-z)*V1 i j)*(M0 i j+z*M1 i j)) - offset =
      ((∑ i, ∑ j, ((V0 i j+h*V1 i j)*M0 i j+eta*V1 i j*M1 i j)) - offset) +
      z*(∑ i, ∑ j, (V0 i j*M1 i j-V1 i j*M0 i j)) := by
  simp_rw [paired_affine_entry h eta z _ _ _ _ hz]
  simp only [Finset.sum_add_distrib,Finset.mul_sum]
  ring

/-- Multiplication by the forced completion map preserves the affine split. -/
theorem sandwich_affine (K H0 H1 : Mat3) (z : ℂ) :
    K*(H0+z • H1)*Kᴴ = K*H0*Kᴴ+z • (K*H1*Kᴴ) := by
  rw [Matrix.mul_add,Matrix.add_mul,Matrix.mul_smul,Matrix.smul_mul]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
