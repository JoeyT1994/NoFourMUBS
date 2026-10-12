import NoFourMUBs.Step2.CriticalZero.PhysicalPoleBoundary
import NoFourMUBs.Step2.CriticalZero.PoleQuartic
import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Classification
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPoles
import NoFourMUBs.Reuse.Archive.CriticalNonzeroBlockGauge

set_option autoImplicit false
set_option maxHeartbeats 2000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.Poles
open CriticalPhysical20261003 CriticalModulusDomain20261003 CriticalLightSheet20261003

/-- An actual pole satisfies the same quartic as the regular case. The
original pole-product identity supplies its zero denominator factor. -/
theorem actual_pole_quartic_zero (E : Hadamard6.Mat3) (k : ℝ) (i : Fin 3)
    (hE : ∀ a b, Complex.normSq (E a b)=1) (h0 : ∀ j, E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k)
    (hL : blockDenominator E i=0) :
    CriticalNonzeroPolynomial20261003.quartic k
      (Complex.normSq (sideS E)*Complex.normSq (sideT E)*Complex.normSq (sideR E))=0 := by
  let X := Complex.normSq (sideS E)
  let Y := Complex.normSq (sideT E)
  let Z := Complex.normSq (sideR E)
  let K := X*Y*Z
  have hh := (CriticalNonzeroRational20261003.real_parameter_regular k).1
  have hpc : (X : ℂ)+(Y : ℂ)+(Z : ℂ)=
      CriticalNonzeroRational20261003.p (k : ℂ) := by
    have he := congrArg (fun a : ℝ => (a : ℂ)) hp
    rw [(CriticalNonzeroPhysicalBinding20261003.parameter_complex_p_j k).1] at he
    exact_mod_cast he
  have hwc : (X : ℂ)*(Y : ℂ)+(X : ℂ)*(Z : ℂ)+(Y : ℂ)*(Z : ℂ)=
      CriticalNonzeroRational20261003.W (k : ℂ)+(K : ℂ) := by
    have he := congrArg (fun a : ℝ => (a : ℂ)) hw
    have hwcast : (CriticalRationalParam20261003.w k : ℂ)=
        CriticalNonzeroRational20261003.W (k : ℂ) := by
      simp [CriticalRationalParam20261003.w, CriticalRationalParam20261003.q,
        CriticalNonzeroRational20261003.W, CriticalNonzeroRational20261003.q,
        CriticalNonzeroRational20261003.h]
    rw [hwcast] at he
    change ((X*Y+X*Z+Y*Z-X*Y*Z : ℝ) : ℂ)=_ at he
    push_cast at he ⊢
    change (X : ℂ)*(Y : ℂ)+(X : ℂ)*(Z : ℂ)+(Y : ℂ)*(Z : ℂ)=
      CriticalNonzeroRational20261003.W (k : ℂ)+((X*Y*Z : ℝ) : ℂ)
    push_cast
    linear_combination he
  have hkc : (X : ℂ)*(Y : ℂ)*(Z : ℂ)=(K : ℂ) := by
    simp only [K, Complex.ofReal_mul]
  have hf := (CriticalNonzeroRational20261003.pole_products
    (X : ℂ) (Y : ℂ) (Z : ℂ) (k : ℂ) (K : ℂ) hh hpc hwc hkc).1
  obtain ⟨hL0,hL1,hL2⟩ :=
    CriticalNonzeroPhysicalInputs20261003.actual_parameter_denominators
      E k hE h0 hp hj hw
  have hz : blockDenominator E 2*blockDenominator E 1*blockDenominator E 0=0 := by
    fin_cases i
    · change blockDenominator E 0=0 at hL
      rw [hL, mul_zero]
    · change blockDenominator E 1=0 at hL
      rw [hL, mul_zero, zero_mul]
    · change blockDenominator E 2=0 at hL
      rw [hL, zero_mul, zero_mul]
  rw [hL2,hL1,hL0] at hz
  change CriticalNonzeroRational20261003.pole (k : ℂ) 1 (X : ℂ)*
    CriticalNonzeroRational20261003.pole (k : ℂ) 1 (Y : ℂ)*
    CriticalNonzeroRational20261003.pole (k : ℂ) 1 (Z : ℂ)=0 at hz
  rw [hz] at hf
  have hf' := (div_eq_iff (pow_ne_zero 7 hh)).mp hf.symm
  simp only [zero_mul] at hf'
  have ha : CriticalNonzeroPolynomial20261003.denFactorPlus
      (k : ℂ) (K : ℂ)=0 :=
    (mul_eq_zero.mp hf').resolve_left (by norm_num)
  have hcast : ((CriticalNonzeroPolynomial20261003.denFactorPlus k K : ℝ) : ℂ)=
      CriticalNonzeroPolynomial20261003.denFactorPlus (k : ℂ) (K : ℂ) := by
    simp [CriticalNonzeroPolynomial20261003.denFactorPlus]
  have ha' : CriticalNonzeroPolynomial20261003.denFactorPlus k K=0 := by
    apply Complex.ofReal_injective
    simpa only [Complex.ofReal_zero] using hcast.trans ha
  exact quartic_zero_of_pole_boundary k K (Or.inr ha')
    (actual_pole_modulus_boundary E k i hE h0 hp hj hw hL)

/-- Consume the existing classification, including both signs of the
parameter. No new positive-root or interval argument is needed at poles. -/
theorem actual_pole_candidates (E : Hadamard6.Mat3) (k : ℝ) (i : Fin 3)
    (hk : k≠0)
    (hE : ∀ a b, Complex.normSq (E a b)=1) (h0 : ∀ j, E 0 j=1)
    (hp : sideP E=CriticalRationalParam20261003.p k)
    (hj : sideJ E=CriticalRationalParam20261003.j k)
    (hw : sideW E=CriticalRationalParam20261003.w k)
    (hL : blockDenominator E i=0) :
    let K := Complex.normSq (sideS E)*Complex.normSq (sideT E)*Complex.normSq (sideR E)
    (|k|=1/3 ∧ K=729/125) ∨ (|k|=1 ∧ K=5) ∨
      (NonzeroScalar.kappa |k|=0 ∧ K=minimum k) := by
  exact NonzeroScalar.candidates_of_signed_quartic_zero hk
    (actual_block_allowed_abs E k hk hp hj hw)
    (actual_pole_quartic_zero E k i hE h0 hp hj hw hL)

end NoFourMUBs.Step2.Critical.Poles
