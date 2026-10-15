import Mathlib
import Hadamard6.Basic

/-!
# The fixed-three-row sum rule

From the sum-rule return of 14 Oct 2026 (`covret/partial`); compiled here.

All twenty three-column subsets are explicitly enumerated. The underlying
quadratic identity holds for every complex six-vector. In particular it
has no determinant, discriminant, phase-normalization, or nonzero-divisor
hypothesis. The final theorem covers every injectively selected row triple.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.CoverageSum

/-- The twenty sorted three-element subsets of Fin 6. -/
def triples : Fin 20 → Fin 3 → Fin 6 :=
  ![![0, 1, 2], ![0, 1, 3], ![0, 1, 4], ![0, 1, 5],
    ![0, 2, 3], ![0, 2, 4], ![0, 2, 5], ![0, 3, 4],
    ![0, 3, 5], ![0, 4, 5], ![1, 2, 3], ![1, 2, 4],
    ![1, 2, 5], ![1, 3, 4], ![1, 3, 5], ![1, 4, 5],
    ![2, 3, 4], ![2, 3, 5], ![2, 4, 5], ![3, 4, 5]]

/-- Each selected column triple is injective. -/
theorem triples_injective : ∀ k : Fin 20, Function.Injective (triples k) := by
  decide +kernel

/-- Every injective triple occurs, up to a permutation. -/
theorem triples_cover : ∀ f : Fin 3 → Fin 6, Function.Injective f →
    ∃ k : Fin 20, ∃ π : Equiv.Perm (Fin 3), ∀ i, f i = triples k (π i) := by
  decide +kernel

/-- A polynomial identity, before imposing the six unit-modulus equations. -/
theorem sum_triple_normSq (u : Fin 6 → ℂ) :
    (∑ k : Fin 20, Complex.normSq (∑ j : Fin 3, u (triples k j))) =
      6 * (∑ j : Fin 6, Complex.normSq (u j)) +
        4 * Complex.normSq (∑ j : Fin 6, u j) := by
  simp [triples, Fin.sum_univ_succ, Complex.normSq_apply]
  ring

/-- One pair of complete orthogonal unit rows contributes 36. -/
theorem sum_triple_normSq_eq_36 (u : Fin 6 → ℂ)
    (hu : ∀ j, Complex.normSq (u j) = 1) (hs : ∑ j, u j = 0) :
    (∑ k : Fin 20, Complex.normSq (∑ j : Fin 3, u (triples k j))) = 36 := by
  rw [sum_triple_normSq]
  norm_num [hu, hs]

abbrev Strip := Matrix (Fin 3) (Fin 6) ℂ

def relativeRow (T : Strip) (a b : Fin 3) (j : Fin 6) : ℂ := T a j * conj (T b j)

/-- The sum of the squared magnitudes of the three off-diagonal row correlations
of a selected three-column block. Negating all correlations (to use the
complementary Gram convention) leaves this number unchanged. -/
def cornerP (T : Strip) (k : Fin 20) : ℝ :=
  Complex.normSq (∑ j : Fin 3, relativeRow T 1 0 (triples k j)) +
    Complex.normSq (∑ j : Fin 3, relativeRow T 2 0 (triples k j)) +
    Complex.normSq (∑ j : Fin 3, relativeRow T 2 1 (triples k j))

/-- The sum rule for an abstract three-row phase strip. -/
theorem strip_sum_108 (T : Strip) (hu : ∀ a j, Complex.normSq (T a j) = 1)
    (ho : ∀ a b : Fin 3, a ≠ b → ∑ j, relativeRow T a b j = 0) :
    (∑ k : Fin 20, cornerP T k) = 108 := by
  have hp : ∀ a b : Fin 3, a ≠ b →
      (∑ k : Fin 20, Complex.normSq (∑ j : Fin 3, relativeRow T a b (triples k j))) = 36 := by
    intro a b hab
    apply sum_triple_normSq_eq_36
    · intro j
      simp [relativeRow, Complex.normSq_mul, Complex.normSq_conj, hu]
    · exact ho a b hab
  unfold cornerP
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib,
    hp 1 0 (by decide), hp 2 0 (by decide), hp 2 1 (by decide)]
  norm_num

/-- The order of the two three-index blocks used by Hadamard6. -/
def sixIndex : Fin 6 → I6 :=
  ![Sum.inl 0, Sum.inl 1, Sum.inl 2, Sum.inr 0, Sum.inr 1, Sum.inr 2]

theorem sum_sixIndex {A : Type*} [AddCommMonoid A] (f : I6 → A) :
    (∑ j : Fin 6, f (sixIndex j)) = ∑ j : I6, f j := by
  simp [sixIndex, Fin.sum_univ_succ, Fintype.sum_sum_type, add_assoc]

/-- Any selected three complete rows, in Fin 6 column indexing. -/
def rowStrip (H : Mat6) (r : Fin 3 → I6) : Strip := fun i j => H (r i) (sixIndex j)

/-- Input I6: every injective row triple of a physical Hadamard has total p=108. -/
theorem hadamard_strip_sum_108 (H : Mat6) (hH : Hadamard6.IsHadamard H)
    (r : Fin 3 → I6) (hr : Function.Injective r) :
    (∑ k : Fin 20, cornerP (rowStrip H r) k) = 108 := by
  apply strip_sum_108
  · intro i j
    exact hH.1 (r i) (sixIndex j)
  · intro a b hab
    have hne : r a ≠ r b := fun h => hab (hr h)
    have h := congrArg (fun M : Mat6 => M (r a) (r b)) hH.2
    have hsum : (∑ j : I6, H (r a) j * conj (H (r b) j)) = 0 := by
      simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply,
        Complex.star_def, hne] using h
    change (∑ j : Fin 6, H (r a) (sixIndex j) * conj (H (r b) (sixIndex j))) = 0
    rw [sum_sixIndex (fun j : I6 => H (r a) j * conj (H (r b) j))]
    exact hsum

end NoFourMUBs.PRM.CoverageSum
