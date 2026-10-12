import NoFourMUBs.Step2.CriticalZero.PoleNumerator
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPhysicalSheet

/-! The original physical numerator factorization supplies the zero-numerator
premise, including at a pole. No strict reconstruction is applied at R=0. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.Poles
open CriticalPhysical20261003 CriticalModulusDomain20261003 CriticalLightSheet20261003

theorem actual_pole_modulus_boundary (E : Hadamard6.Mat3) (k : ℝ) (i : Fin 3)
    (hE : ∀ a b, Complex.normSq (E a b) = 1) (h0 : ∀ j, E 0 j = 1)
    (hp : sideP E = CriticalRationalParam20261003.p k)
    (hj : sideJ E = CriticalRationalParam20261003.j k)
    (hw : sideW E = CriticalRationalParam20261003.w k)
    (hL : blockDenominator E i = 0) :
    let K := Complex.normSq (sideS E) * Complex.normSq (sideT E) *
      Complex.normSq (sideR E)
    K = minimum k ∨ K = root0 k ∨ K = rootPlus k ∨ K = rootMinus k := by
  have hdet := (CriticalNonzeroPhysicalInputs20261003.actual_parameter_sheet
    E k hE h0 hp hj hw).1
  have hd : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2) ≠ 0 := by
    simpa only [FourierPhysicalSide.determinant, actual_side_matrix E h0] using hdet
  have hn := FourierPhysicalSide.physical_numerators_factor
    (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2) i
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2) hd
  change FourierGramNumerators.numerator (sideS E) (sideT E) (sideR E) i =
    blockDenominator E i * blockLambda E i at hn
  rw [hL, zero_mul] at hn
  exact modulus_boundary_of_zero_numerator (sideS E) (sideT E) (sideR E) k i
    (hp.trans (parameter_p k)) (hj.trans (parameter_j k))
    (hw.trans (parameter_w k)) hn

end NoFourMUBs.Step2.Critical.Poles
