import NoFourMUBs.Step2.CriticalZero.ActualFourier
import NoFourMUBs.Step2.CriticalZero.FourierAffineBinding
import NoFourMUBs.Reuse.Archive.FourierCriticalPhysical

/-! The reused Fourier locus in the representative used by the main theorem. -/

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical
open Hadamard6 FourierCriticalLocus20261003
open CriticalPhysical20261003 CriticalStripMoments20261003

theorem fourier_to_fixed :
    OAI.MUB6.Equivalent (FourierBridge.toOAI fourierHadamard.1) fixedF6 := by
  refine ⟨SOS.Normalization.canonicalPermutation45, SOS.Normalization.canonicalPermutation45,
    fun _ => 1, fun _ => 1, by simp, by simp, ?_⟩
  intro i j
  have h := congrFun (congrFun (raw_source_binding standardOmega 1 1) i) j
  simpa only [fourierHadamard, fixedF6, N_eq_fourier_transpose,
    Matrix.transpose_apply, one_mul, mul_one] using h.symm

theorem allCritical_fourier_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 := by
  have he : OAI.MUB6.Equivalent
      (FourierBridge.toOAI (FourierBridge.fromOAI H)) fixedF6 := by
    simpa only [FourierBridge.toOAI_fromOAI] using allCritical_fourier_fixed hH hf
  exact equivalent_trans (FourierBridge.equivalent_fromOAI he)
    (equivalent_symm (FourierBridge.equivalent_fromOAI fourier_to_fixed))

theorem allCritical_regular_zero_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (z : ℝ)
    (hzlo : -3 ≤ z) (hz0 : z ≠ 0) (hz3 : z ≠ -3) (hz2 : z ≠ -2)
    (hp : sideP (stripLeftBlock H) = 9-z^2)
    (hj : sideJ (stripLeftBlock H) = 0)
    (hw : sideW (stripLeftBlock H) = z^2*(z+3)^2) :
    Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 :=
  allCritical_fourier_standard hH
    (allCritical_regular_zero_fourier hH z hzlo hz0 hz3 hz2 hp hj hw)

#print axioms fourier_to_fixed
#print axioms allCritical_fourier_standard
#print axioms allCritical_regular_zero_standard
end NoFourMUBs.Step2.Critical
