import NoFourMUBs.Step2.ActualCorners
import NoFourMUBs.Step2.SOS.FrameSignatures
import NoFourMUBs.Reuse.Archive.CriticalMomentBinding
import Mathlib.Logic.Equiv.Fintype

/-! Bind the existing critical scalar algebra to the current matrix model.
The frame signature and phase-invariance proofs are reused directly. -/

open Matrix Hadamard6 NoFourMUBs.Side CriticalPhysical20261003

noncomputable section
namespace NoFourMUBs.Step2.Critical

theorem allCritical_submatrix_signature_im {H : Had6} (hH : AllCritical H)
    (r c : Fin 3 → I6) (hr : Function.Injective r) (hc : Function.Injective c) :
    (sideSignature (H.1.submatrix r c)).im = 0 := by
  obtain ⟨p, hp⟩ := Equiv.Perm.exists_extending_pair
    (Sum.inl : Fin 3 → I6) r Sum.inl_injective hr
  obtain ⟨q, hq⟩ := Equiv.Perm.exists_extending_pair
    (Sum.inr : Fin 3 → I6) c Sum.inr_injective hc
  have hz := (frameScalarIdentities H (p, q)).2.2.1
  rw [hH (p, q), frameRight_raw] at hz
  have hb : rightBlock (permuted H (p, q)).1 = H.1.submatrix r c := by
    ext i j
    change H.1 (p (.inl i)) (q (.inr j)) = H.1 (r i) (c j)
    rw [hp, hq]
  rw [hb] at hz
  nlinarith [sq_nonneg (sideSignature (H.1.submatrix r c)).im]

/-- Only the real-part convention differs between the two scalar interfaces. -/
theorem moment_R_discriminant (s t r : ℂ) :
    CriticalScalarReduction20261003.R (momentP s t r) (momentJ s t r)
      (momentW s t r) = 4 * gS s t r ^ 2 * etaS s t r - chiS s t r ^ 2 := by
  have hj : momentJ s t r = jS s t r := by
    simp [momentJ, jS, Complex.star_def, Complex.mul_re, Complex.mul_im]
    <;> ring
  rw [CriticalScalarReduction20261003.R, hj]
  rfl

theorem moment_R_signature {B : Mat3} (hB : EntrywiseUnit B)
    (h0 : ∀ j, B 0 j = 1) :
    CriticalScalarReduction20261003.R
      (momentP (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2)))
      (momentJ (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2)))
      (momentW (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2))) =
      4 * (sideSignature B).im ^ 2 := by
  rw [moment_R_discriminant, sig_rows B h0]
  exact (signature_discriminant (hB 1) (hB 2)).symm

/-- No determinant or nonzero-correlation hypothesis is needed. -/
theorem allCritical_submatrix_scalar_zero {H : Had6} (hH : AllCritical H)
    (r c : Fin 3 → I6) (hr : Function.Injective r) (hc : Function.Injective c)
    (h0 : ∀ j, H.1 (r 0) (c j) = 1) :
    let B := H.1.submatrix r c
    CriticalScalarReduction20261003.R
      (momentP (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2)))
      (momentJ (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2)))
      (momentW (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2))) = 0 := by
  exact (moment_R_signature (B := H.1.submatrix r c)
    (fun i j => H.2.1 (r i) (c j)) h0).trans (by
      rw [allCritical_submatrix_signature_im hH r c hr hc]
      norm_num)

#print axioms allCritical_submatrix_signature_im
#print axioms moment_R_discriminant
#print axioms moment_R_signature
#print axioms allCritical_submatrix_scalar_zero

end NoFourMUBs.Step2.Critical
