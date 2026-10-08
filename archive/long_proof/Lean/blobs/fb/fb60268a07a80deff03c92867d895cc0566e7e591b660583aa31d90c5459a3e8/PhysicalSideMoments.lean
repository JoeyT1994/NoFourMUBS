import ClearedSideMoments
import PhysicalSideSign

/-! The unit-side identities instantiated on the actual physical matrix.
Orthogonality recovers the native negative seed-Gram variables, and the
actual determinant supplies the sign. There are no side-moment premises. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate BigOperators
open SignedDeterminant NativeSigned20261006
noncomputable section

def nativeSeedS (H : Mat6) : ℂ := -1-H 1 1-H 1 2
def nativeSeedT (H : Mat6) : ℂ := -1-H 2 1-H 2 2
def nativeSeedR (H : Mat6) : ℂ := -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)

theorem physical_side_s {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    sideS3 (H 1 3) (H 1 4) (H 1 5)=nativeSeedS H := by
  have h := hH.2 1 0
  simp [Fin.sum_univ_succ,hd.1,hd.2] at h
  unfold sideS3 nativeSeedS
  linear_combination h

theorem physical_side_t {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    sideT3 (H 2 3) (H 2 4) (H 2 5)=nativeSeedT H := by
  have h := hH.2 2 0
  simp [Fin.sum_univ_succ,hd.1,hd.2] at h
  unfold sideT3 nativeSeedT
  linear_combination h

theorem physical_side_r {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    sideR3 (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5)=nativeSeedR H := by
  have h := hH.2 2 1
  simp [Fin.sum_univ_succ,hd.2] at h
  unfold sideR3 nativeSeedR
  linear_combination h

theorem physical_side_sign {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    sideSign (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5)=physicalSideSign H := by
  unfold sideSign sideDet3 physicalSideSign
  rw [rawDet_im_eq_signed _ _ _ _
    (by simp [Complex.normSq_mul,hH.1]) (by simp [Complex.normSq_mul,hH.1])
    (by simp [Complex.normSq_mul,hH.1])]
  simp only [cornerSigned,cornerNormalize_eq_source_dephasing,hd.1,map_one,mul_one]

/-- Native M and B are bound to actual H at every one of their six positions. -/
theorem physical_side_moments_cleared {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (k : Fin 6) :
    let s := nativeSeedS H; let t := nativeSeedT H; let r := nativeSeedR H
    (sideDelta s t r:ℂ)*sideMoments (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5) k =
      sideMomentConstants s t r k+(physicalSideSign H:ℂ)*sideMomentLinear s t r k := by
  have h := side_moments_cleared (H 1 3) (H 1 4) (H 1 5) (H 2 3) (H 2 4) (H 2 5)
    (hH.1 1 3) (hH.1 1 4) (hH.1 1 5) (hH.1 2 3) (hH.1 2 4) (hH.1 2 5) k
  dsimp only at h ⊢
  rwa [physical_side_s hH hd,physical_side_t hH hd,physical_side_r hH hd,physical_side_sign hH hd] at h

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.physical_side_s
#print axioms Centiradian20261006.NativeMean20261006.physical_side_t
#print axioms Centiradian20261006.NativeMean20261006.physical_side_r
#print axioms Centiradian20261006.NativeMean20261006.physical_side_sign
#print axioms Centiradian20261006.NativeMean20261006.physical_side_moments_cleared
