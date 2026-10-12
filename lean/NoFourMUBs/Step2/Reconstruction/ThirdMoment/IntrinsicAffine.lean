import NoFourMUBs.Reuse.Archive.SideIntrinsicModeRecovery

set_option autoImplicit false
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment

/-- The second denominator is the conjugated side polynomial. -/
def productAffine (g chi eta c0 cj P0 Qj z : ℂ) : ℂ :=
  (g^2 + cj*chi + c0*cj*eta + g*(c0-cj)*z) / (P0*Qj)

def permanentAffine (g chi eta c0 P0 z : ℂ) : ℂ :=
  (chi + c0*eta - g*z) / P0

def mixedAffine (g eta cj Qj z : ℂ) : ℂ := (g*z + cj*eta) / Qj

/-- The direct proof's three affine formulas, without choosing a quadratic root. -/
theorem lambda_affine_forms {g chi eta c0 cj P0 Qj z L0 Lj : ℂ}
    (hP0 : P0 ≠ 0) (hQj : Qj ≠ 0)
    (h0 : conj L0 * P0 = g + c0*z)
    (hj : Lj * Qj = g + cj*conj z)
    (hchi : g*(z + conj z) = chi) (heta : z*conj z = eta) :
    Lj * conj L0 = productAffine g chi eta c0 cj P0 Qj z ∧
    conj z * conj L0 = permanentAffine g chi eta c0 P0 z ∧
    z * Lj = mixedAffine g eta cj Qj z := by
  refine ⟨?_, ?_, ?_⟩
  · apply (eq_div_iff (mul_ne_zero hP0 hQj)).2
    linear_combination (Lj*Qj)*h0 + (g+c0*z)*hj + cj*hchi + c0*cj*heta
  · apply (eq_div_iff hP0).2
    linear_combination conj z*h0 + c0*heta + hchi
  · apply (eq_div_iff hQj).2
    linear_combination z*hj + cj*heta

/-- Bind all five rational formulas to the actual side's products and permanent.
Every denominator is discharged by the existing strict-side guard theorem. -/
theorem intrinsic_affine_moments (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    let g : ℂ := gramG (rowS a) (rowT a) (rowR a)
    let chi : ℂ := gramChi (rowS a) (rowT a) (rowR a)
    let eta : ℂ := gramEta (rowS a) (rowT a) (rowR a)
    let c0 : ℂ := (9 - Complex.normSq (rowR a) : ℝ)
    let c1 : ℂ := (9 - Complex.normSq (rowT a) : ℝ)
    let c2 : ℂ := (9 - Complex.normSq (rowS a) : ℝ)
    let P0 := sideP0 (rowS a) (rowT a) (rowR a)
    let Q1 := conj (sideP1 (rowS a) (rowT a) (rowR a))
    let Q2 := conj (sideP2 (rowS a) (rowT a) (rowR a))
    let z := intrinsicTheta a
    conj (rowU a) = productAffine g chi eta c0 c1 P0 Q1 z ∧
    conj (rowV a) = productAffine g chi eta c0 c2 P0 Q2 z ∧
    conj (rowPerm a) = permanentAffine g chi eta c0 P0 z ∧
    conj (rowU a) * rowPerm a = mixedAffine g eta c1 Q1 z ∧
    conj (rowV a) * rowPerm a = mixedAffine g eta c2 Q2 z := by
  dsimp only
  have hd := (strict_intrinsic_det_guard a ha hR).1
  obtain ⟨hP0,hP1,hP2⟩ := strict_sideP_nonzero hR
  obtain ⟨h0,h1,h2⟩ := intrinsic_lambda_P_bindings a ha hd
  have h0c := congrArg (fun z : ℂ => conj z) h0
  simp only [map_mul, map_add, Complex.conj_ofReal, starRingEnd_self_apply] at h0c
  obtain ⟨hn,hchi⟩ := intrinsicTheta_moments a ha hd
  have heta : intrinsicTheta a * conj (intrinsicTheta a) =
      (gramEta (rowS a) (rowT a) (rowR a) : ℂ) := by
    rw [Complex.mul_conj, hn]
  obtain ⟨f1,fp,fm1⟩ := lambda_affine_forms hP0 (conj_ne_zero_of_ne_zero hP1)
    h0c h1 hchi heta
  obtain ⟨f2,_,fm2⟩ := lambda_affine_forms hP0 (conj_ne_zero_of_ne_zero hP2)
    h0c h2 hchi heta
  have htheta := (intrinsicTheta_lambda a ha hd).1
  have hp : conj (rowPerm a) = conj (intrinsicTheta a) * conj (intrinsicLambda0 a) := by
    simpa only [map_mul] using (congrArg (fun z : ℂ => conj z) htheta).symm
  obtain ⟨hU,hV⟩ := intrinsic_row_products a ha hd
  have hu : conj (rowU a) = intrinsicLambda1 a * conj (intrinsicLambda0 a) := by
    simpa only [map_mul, starRingEnd_self_apply, mul_comm] using
      (congrArg (fun z : ℂ => conj z) hU).symm
  have hv : conj (rowV a) = intrinsicLambda2 a * conj (intrinsicLambda0 a) := by
    simpa only [map_mul, starRingEnd_self_apply, mul_comm] using
      (congrArg (fun z : ℂ => conj z) hV).symm
  have hL : intrinsicLambda0 a * conj (intrinsicLambda0 a) = 1 := by
    rw [Complex.mul_conj, (intrinsic_lambdas_unit a ha hd).1]; rfl
  have hm (L u : ℂ) (hu : conj u = L * conj (intrinsicLambda0 a)) :
      conj u * rowPerm a = intrinsicTheta a * L := by
    rw [hu, ← htheta]
    calc
      _ = (intrinsicTheta a * L) *
          (intrinsicLambda0 a * conj (intrinsicLambda0 a)) := by ring
      _ = _ := by rw [hL, mul_one]
  exact ⟨hu.trans f1, hv.trans f2, hp.trans fp,
    (hm _ _ hu).trans fm1, (hm _ _ hv).trans fm2⟩

end NoFourMUBs.Step2.Reconstruction.ThirdMoment
