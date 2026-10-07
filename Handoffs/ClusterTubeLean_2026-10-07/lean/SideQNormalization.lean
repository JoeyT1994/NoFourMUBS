import PhysicalSideCap
import QSignedBinding

set_option autoImplicit false
set_option maxHeartbeats 1800000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
open Centiradian20261006.SignedDeterminant
noncomputable section

theorem sideQ_eq_dephasedQ (x y : Fin 3 → ℂ)
    (hx : ∀ j, Complex.normSq (x j)=1)
    (hy : ∀ j, Complex.normSq (y j)=1) :
    sideQ x y = dephasedQ (x 1*conj (x 0)) (x 2*conj (x 0))
      (y 1*conj (y 0)) (y 2*conj (y 0)) := by
  have hx0 := nonzero_of_normSq_one (hx 0)
  have hx1 := nonzero_of_normSq_one (hx 1)
  have hx2 := nonzero_of_normSq_one (hx 2)
  have hy0 := nonzero_of_normSq_one (hy 0)
  have hy1 := nonzero_of_normSq_one (hy 1)
  have hy2 := nonzero_of_normSq_one (hy 2)
  simp only [sideQ, sideDet, sidePerm, sideMonomial, dephasedQ, map_mul,
    conj_eq_inv_of_normSq_one (hx 0), conj_eq_inv_of_normSq_one (hx 1),
    conj_eq_inv_of_normSq_one (hx 2), conj_eq_inv_of_normSq_one (hy 0),
    conj_eq_inv_of_normSq_one (hy 1), conj_eq_inv_of_normSq_one (hy 2)]
  field_simp [hx0, hx1, hx2, hy0, hy1, hy2]
  <;> ring

theorem normalized_entry_unit (z w : ℂ)
    (hz : Complex.normSq z=1) (hw : Complex.normSq w=1) :
    Complex.normSq (z*conj w)=1 := by
  rw [Complex.normSq_mul, Complex.normSq_conj, hz, hw, mul_one]

theorem sideQ_signed_binding (x y : Fin 3 → ℂ)
    (hx : ∀ j, Complex.normSq (x j)=1)
    (hy : ∀ j, Complex.normSq (y j)=1) :
    2*(sideQ x y).im = fastSigned (x 1*conj (x 0)) (x 2*conj (x 0))
      (y 1*conj (y 0)) (y 2*conj (y 0)) := by
  rw [sideQ_eq_dephasedQ x y hx hy]
  exact (fastSigned_eq_twice_q_im _ _ _ _
    (normalized_entry_unit _ _ (hx 1) (hx 0))
    (normalized_entry_unit _ _ (hx 2) (hx 0))
    (normalized_entry_unit _ _ (hy 1) (hy 0))
    (normalized_entry_unit _ _ (hy 2) (hy 0))).symm

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.sideQ_eq_dephasedQ
#print axioms Seed0024Mathematical20261007.normalized_entry_unit
#print axioms Seed0024Mathematical20261007.sideQ_signed_binding
