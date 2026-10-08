import FormalCore
import Mathlib.Analysis.Real.Sqrt
namespace Mub6.Numerical.PhaseNormalization

noncomputable def scalar : ℂ := ⟨Real.sqrt 6 / 6, 0⟩
noncomputable def normalize (H : BasisMatrix) : BasisMatrix := fun r k => scalar * H r k

theorem scalar_normSq : Complex.normSq scalar = 1 / 6 := by
  norm_num [scalar, Complex.normSq_apply] <;> ring_nf <;> norm_num

theorem scalar_conj_mul : star scalar * scalar = (1 / 6 : ℂ) := by
  change (starRingEnd ℂ) scalar * scalar = _
  rw [← Complex.normSq_eq_conj_mul_self, scalar_normSq]
  norm_num

theorem overlap_normalize (H G : BasisMatrix) (i j : Fin 6) :
    overlap (normalize H) (normalize G) i j = (1 / 6 : ℂ) * overlap H G i j := by
  unfold overlap normalize
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  calc
    star (scalar * H r i) * (scalar * G r j) =
        (star scalar * scalar) * (star (H r i) * G r j) := by
          rw [star_mul]
          ring
    _ = _ := by rw [scalar_conj_mul]

theorem normalized_orthonormal {H : BasisMatrix}
    (h : ∀ i j, overlap H H i j = if i = j then 6 else 0) :
    IsOrthonormalBasis (normalize H) := by
  intro i j
  rw [overlap_normalize, h]
  by_cases hij : i = j <;> norm_num [hij]

theorem normalized_unbiased {H G : BasisMatrix}
    (h : ∀ i j, Complex.normSq (overlap H G i j) = 6) :
    IsUnbiased (normalize H) (normalize G) := by
  intro i j
  rw [overlap_normalize, Complex.normSq_mul, h]
  norm_num

def standard : BasisMatrix := fun r k => if r = k then 1 else 0

theorem standard_left (H : BasisMatrix) (i j : Fin 6) :
    overlap standard H i j = H i j := by
  simp [overlap, standard]

theorem standard_basis : IsOrthonormalBasis standard := by
  intro i j
  rw [standard_left]
  rfl

theorem standard_normalized_unbiased {H : BasisMatrix}
    (h : ∀ r k, Complex.normSq (H r k) = 1) :
    IsUnbiased standard (normalize H) := by
  intro i j
  rw [standard_left]
  change Complex.normSq (scalar * H i j) = _
  rw [Complex.normSq_mul, scalar_normSq, h]
  ring

#print axioms scalar_normSq
#print axioms overlap_normalize
#print axioms normalized_orthonormal
#print axioms normalized_unbiased
#print axioms standard_basis
#print axioms standard_normalized_unbiased
end Mub6.Numerical.PhaseNormalization
