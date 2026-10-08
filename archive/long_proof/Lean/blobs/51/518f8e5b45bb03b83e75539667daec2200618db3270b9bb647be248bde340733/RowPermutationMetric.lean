import SixColumnMetric

noncomputable section
open scoped BigOperators
open ComplexConjugate

namespace Seed0024ProjectorMetric20261007

theorem row_permutation_mass (p : Equiv.Perm (Fin 6)) (u : Fin 6 → ℂ) :
    (∑ i : Fin 6, Complex.normSq (u (p i))) = ∑ i : Fin 6, Complex.normSq (u i) :=
  Equiv.sum_comp p (fun i => Complex.normSq (u i))

theorem row_permutation_overlap (p : Equiv.Perm (Fin 6)) (u v : Fin 6 → ℂ) :
    (∑ i : Fin 6, conj (u (p i))*v (p i)) = ∑ i : Fin 6, conj (u i)*v i :=
  Equiv.sum_comp p (fun i => conj (u i)*v i)

theorem columnProjector_row_permutation (p : Equiv.Perm (Fin 6)) (u v : Fin 6 → ℂ)
    (hu : (∑ i : Fin 6, Complex.normSq (u i)) = 1)
    (hv : (∑ i : Fin 6, Complex.normSq (v i)) = 1) :
    ‖columnProjector (fun i => u (p i))-columnProjector (fun i => v (p i))‖ =
      ‖columnProjector u-columnProjector v‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1
  rw [columnProjector_sub_norm_sq _ _ ((row_permutation_mass p u).trans hu)
      ((row_permutation_mass p v).trans hv),
    columnProjector_sub_norm_sq u v hu hv, row_permutation_overlap]

end Seed0024ProjectorMetric20261007

#print axioms Seed0024ProjectorMetric20261007.row_permutation_mass
#print axioms Seed0024ProjectorMetric20261007.row_permutation_overlap
#print axioms Seed0024ProjectorMetric20261007.columnProjector_row_permutation
