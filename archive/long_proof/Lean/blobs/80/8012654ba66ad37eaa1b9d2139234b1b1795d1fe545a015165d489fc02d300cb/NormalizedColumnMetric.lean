import SixColumnMetric

noncomputable section
open scoped BigOperators

namespace Seed0024ProjectorMetric20261007

def normalizedColumn (H : Fin 6 → Fin 6 → ℂ) (j : Fin 6) : Fin 6 → ℂ :=
  fun i => H i j/(Real.sqrt 6 : ℂ)

theorem normalizedColumn_mass (H : Fin 6 → Fin 6 → ℂ)
    (hH : ∀ i j, Complex.normSq (H i j)=1) (j : Fin 6) :
    (∑ i : Fin 6, Complex.normSq (normalizedColumn H j i))=1 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ)=6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.mul_self_sqrt (by norm_num : (0 : ℝ)≤6)
  simp only [normalizedColumn, Complex.normSq_div, hH, hs]
  norm_num

theorem normalizedColumn_projector_frobenius_sq_le
    (H K : Fin 6 → Fin 6 → ℂ)
    (hH : ∀ i j, Complex.normSq (H i j)=1)
    (hK : ∀ i j, Complex.normSq (K i j)=1) (j : Fin 6) :
    ‖columnProjector (normalizedColumn H j)-columnProjector (normalizedColumn K j)‖ ^ 2 ≤
      ∑ i : Fin 6, ∑ k : Fin 6, Complex.normSq ((H i k-K i k)/(Real.sqrt 6 : ℂ)) := by
  calc
    _ ≤ ∑ i : Fin 6, Complex.normSq (normalizedColumn H j i-normalizedColumn K j i) :=
      columnProjector_lipschitz_sq _ _ (normalizedColumn_mass H hH j)
        (normalizedColumn_mass K hK j)
    _ = ∑ i : Fin 6, Complex.normSq ((H i j-K i j)/(Real.sqrt 6 : ℂ)) := by
      simp only [normalizedColumn, sub_div]
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro i _
      exact Finset.single_le_sum (fun k _ => Complex.normSq_nonneg _) (Finset.mem_univ j)

theorem normalizedColumn_projector_lt_of_frobenius
    (H K : Fin 6 → Fin 6 → ℂ)
    (hH : ∀ i j, Complex.normSq (H i j)=1)
    (hK : ∀ i j, Complex.normSq (K i j)=1) (ε : ℝ) (hε : 0<ε)
    (hHK : (∑ i : Fin 6, ∑ k : Fin 6,
      Complex.normSq ((H i k-K i k)/(Real.sqrt 6 : ℂ))) < ε^2) :
    ∀ j : Fin 6,
      ‖columnProjector (normalizedColumn H j)-columnProjector (normalizedColumn K j)‖ < ε := by
  intro j
  apply (sq_lt_sq₀ (norm_nonneg _) hε.le).1
  exact (normalizedColumn_projector_frobenius_sq_le H K hH hK j).trans_lt hHK

end Seed0024ProjectorMetric20261007

#print axioms Seed0024ProjectorMetric20261007.normalizedColumn_mass
#print axioms Seed0024ProjectorMetric20261007.normalizedColumn_projector_frobenius_sq_le
#print axioms Seed0024ProjectorMetric20261007.normalizedColumn_projector_lt_of_frobenius
