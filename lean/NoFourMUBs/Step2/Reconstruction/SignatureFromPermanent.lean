import NoFourMUBs.Step2.MatchedUnique
import NoFourMUBs.Reuse.Archive.StrictSideRootGuards

set_option autoImplicit false
open Matrix Hadamard6 NoFourMUBs.Side StrictReconstruction20261007
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction

/-- Bind the existing permanent formula to the unified signature. The Laurent
identity and the constructor's scalar guards are reused directly. -/
theorem sideSignature_of_prescribed_permanent {B : Mat3}
    (hB : EntrywiseUnit B) (hfirst : ∀ j, B 0 j = 1)
    {s t r : ℂ} (hs : sS (B 1) = s) (ht : sS (B 2) = t)
    (hr : rS (B 1) (B 2) = r)
    (hR : 0 < Centiradian20261006.gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    (hp : permanent3 B = sideZ s t r epsilon * prescribedLambda0 s t r epsilon) :
    sideSignature B = (gramG s t r : ℂ) * sideZ s t r epsilon := by
  have hx := fun j => hB 1 j
  have hy := fun j => hB 2 j
  have hu := unit_mul_conj (normSq_uS hx)
  have hv := unit_mul_conj (normSq_uS hy)
  have hI := (side_identities hx hy).1
  have hsig : TS (B 1) (B 2) =
      piS (B 1) (B 2) * conj (P0 (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2))) -
        (cR (rS (B 1) (B 2)) : ℂ) * Complex.normSq (piS (B 1) (B 2)) := by
    rw [TS, hI]
    calc
      _ = (uS (B 1) * conj (uS (B 1))) * (uS (B 2) * conj (uS (B 2))) *
          (piS (B 1) (B 2) * conj (P0 (sS (B 1)) (sS (B 2)) (rS (B 1) (B 2))) -
            (cR (rS (B 1) (B 2)) : ℂ) *
              (piS (B 1) (B 2) * conj (piS (B 1) (B 2)))) := by ring
      _ = _ := by simp only [hu, hv, one_mul, Complex.mul_conj]
  have hpi : piS (B 1) (B 2) =
      sideZ s t r epsilon * prescribedLambda0 s t r epsilon := by
    have h : permanent3 B = piS (B 1) (B 2) := by
      rw [permanent3_expand]
      simp only [hfirst, one_mul, piS]
      ring
    exact h.symm.trans hp
  have hL := (prescribedLambdas_eq_sideLambdas hR epsilon).1
  have hLN : Complex.normSq (prescribedLambda0 s t r epsilon) = 1 := by
    rw [hL]
    exact (strict_sideLambda_units hR he).1
  have hpiN : Complex.normSq (piS (B 1) (B 2)) = gramEta s t r := by
    rw [hpi, Complex.normSq_mul, sideZ_normSq hR he, hLN, mul_one]
  have hP : conj (sideP0 s t r) ≠ 0 :=
    (map_ne_zero _).mpr (strict_sideP_nonzero hR).1
  have hLP : prescribedLambda0 s t r epsilon * conj (sideP0 s t r) =
      (gramG s t r : ℂ) + (cR r : ℂ) * conj (sideZ s t r epsilon) := by
    rw [hL]
    exact div_mul_cancel₀ _ hP
  have hP0 : P0 s t r = sideP0 s t r := by
    simp [P0, sideP0, Complex.ofReal_sub, Complex.ofReal_ofNat]
  have hZ : sideZ s t r epsilon * conj (sideZ s t r epsilon) = (gramEta s t r : ℂ) := by
    rw [Complex.mul_conj, sideZ_normSq hR he]
  rw [sig_rows B hfirst, hsig, hpiN, hs, ht, hr, hpi, hP0, mul_assoc, hLP]
  linear_combination (cR r : ℂ) * hZ

end NoFourMUBs.Step2.Reconstruction
