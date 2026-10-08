import PhysicalSideMoments

/-! Exact physical binding of the cleared scalar coefficients A and beta
computed by signed_linear_engine.cpp. No native output or interval bound is
assumed; this proves the algebraic and physical necessary inequality. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant NativeSigned20261006
noncomputable section

def nativePairForm (u v a c : ℂ) (M : Fin 6 → ℂ) : ℂ :=
  let A := a*conj u
  let C := c*conj v
  (coeff0 A C*conj u*conj v)*M 0+
    (coeff1 A C*conj u*v)*M 1+
    (coeff2 A C*(conj u)^2*v)*M 2+
    (coeff3 A C*conj v)*M 3+
    (coeff4 A C*u*(conj v)^2)*M 4+
    (coeff5 A C*conj u)*M 5

def physicalPairForm (H : Mat6) (pair : Fin 3) (M : Fin 6 → ℂ) : ℂ :=
  nativePairForm (H 1 (topFirst pair)) (H 2 (topFirst pair))
    (H 1 (topSecond pair)) (H 2 (topSecond pair)) M

def signedValue (z : ℂ) : ℝ := ((z-conj z)*Complex.I).re

def nativeClearedA (H : Mat6) (pair : Fin 3) : ℝ :=
  signedValue (physicalPairForm H pair
    (sideMomentConstants (nativeSeedS H) (nativeSeedT H) (nativeSeedR H)))
def nativeClearedBeta (H : Mat6) (pair : Fin 3) : ℝ :=
  signedValue (physicalPairForm H pair
    (sideMomentLinear (nativeSeedS H) (nativeSeedT H) (nativeSeedR H)))
def nativeDelta (H : Mat6) : ℝ := sideDelta (nativeSeedS H) (nativeSeedT H) (nativeSeedR H)

theorem physicalMomentSum_eq_pairForm (H : Mat6) (pair : Fin 3) :
    physicalMomentSum H pair=physicalPairForm H pair
      (sideMoments (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5)) := by
  simp [physicalMomentSum,momentSum,physicalPairForm,nativePairForm,sideMoments,
    Fin.sum_univ_succ,bottomIndex]
  <;> ring

theorem physicalPairForm_smul (H : Mat6) (pair : Fin 3) (z : ℂ) (M : Fin 6 → ℂ) :
    physicalPairForm H pair (fun k => z*M k)=z*physicalPairForm H pair M := by
  unfold physicalPairForm nativePairForm
  ring

theorem physicalPairForm_add_smul (H : Mat6) (pair : Fin 3) (z : ℂ) (M N : Fin 6 → ℂ) :
    physicalPairForm H pair (fun k => M k+z*N k)=
      physicalPairForm H pair M+z*physicalPairForm H pair N := by
  unfold physicalPairForm nativePairForm
  ring

theorem signedValue_real_smul (z : ℂ) (a : ℝ) :
    signedValue ((a:ℂ)*z)=a*signedValue z := by
  simp [signedValue,Complex.mul_re,Complex.mul_im]
  <;> ring

theorem signedValue_add (z w : ℂ) :
    signedValue (z+w)=signedValue z+signedValue w := by
  simp [signedValue,Complex.mul_re,Complex.mul_im]
  <;> ring

/-- The exact cleared complex mean equals its native constant and signed
linear parts, using actual physical side entries and row orthogonality. -/
theorem physical_cleared_complex_mean {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (pair : Fin 3) :
    (nativeDelta H:ℂ)*physicalMomentSum H pair=
      physicalPairForm H pair (sideMomentConstants (nativeSeedS H) (nativeSeedT H) (nativeSeedR H))+
      (physicalSideSign H:ℂ)*physicalPairForm H pair
        (sideMomentLinear (nativeSeedS H) (nativeSeedT H) (nativeSeedR H)) := by
  have hm : (fun k => (nativeDelta H:ℂ)*sideMoments (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5) k) =
      (fun k => sideMomentConstants (nativeSeedS H) (nativeSeedT H) (nativeSeedR H) k+
        (physicalSideSign H:ℂ)*sideMomentLinear (nativeSeedS H) (nativeSeedT H) (nativeSeedR H) k) :=
    funext (physical_side_moments_cleared hH hd)
  rw [physicalMomentSum_eq_pairForm,←physicalPairForm_smul,hm,physicalPairForm_add_smul]

/-- This discharges the physical coefficient relation itself. It does not
assert any printed interval enclosure, or match the two side orientations. -/
theorem physical_native_mean_identity {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (pair : Fin 3) :
    nativeDelta H*physicalSignedSum H pair=
      nativeClearedA H pair+physicalSideSign H*nativeClearedBeta H pair := by
  have h := congrArg signedValue (physical_cleared_complex_mean hH hd pair)
  simp only [signedValue_add,signedValue_real_smul] at h
  exact h

/-- Native necessary inequality with only the original physical hypotheses.
The sign is the actual side sign, whose square is independently proved R. -/
theorem physical_native_mean_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) :
    |nativeClearedA H pair+physicalSideSign H*nativeClearedBeta H pair| ≤
      (3*nativeDelta H)*Real.sqrt (leadingR H) := by
  rw [←physical_native_mean_identity hH hd pair]
  exact physical_cleared_sum_abs_bound hH hd hm hR pair (sideDelta_nonnegative _ _ _)

theorem physical_native_mean_square_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) :
    (nativeClearedA H pair+physicalSideSign H*nativeClearedBeta H pair)^2 ≤
      ((3*nativeDelta H)*Real.sqrt (leadingR H))^2 := by
  rw [←physical_native_mean_identity hH hd pair]
  exact physical_cleared_sum_square_bound hH hd hm hR pair (sideDelta_nonnegative _ _ _)
end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.physicalMomentSum_eq_pairForm
#print axioms Centiradian20261006.NativeMean20261006.physicalPairForm_smul
#print axioms Centiradian20261006.NativeMean20261006.physicalPairForm_add_smul
#print axioms Centiradian20261006.NativeMean20261006.signedValue_real_smul
#print axioms Centiradian20261006.NativeMean20261006.signedValue_add
#print axioms Centiradian20261006.NativeMean20261006.physical_cleared_complex_mean
#print axioms Centiradian20261006.NativeMean20261006.physical_native_mean_identity
#print axioms Centiradian20261006.NativeMean20261006.physical_native_mean_abs_bound
#print axioms Centiradian20261006.NativeMean20261006.physical_native_mean_square_bound
