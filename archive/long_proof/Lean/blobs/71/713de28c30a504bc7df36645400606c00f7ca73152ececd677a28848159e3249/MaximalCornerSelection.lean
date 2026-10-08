import SignedCornerPhysical
import Mathlib.Logic.Equiv.Fintype
import Mathlib.Data.Fin.VecNotation
import Mathlib.Data.Fintype.Perm
import Mathlib.Tactic.FinCases

/-! Resident, minimal full-corner selection interface. The finite maximization
argument is adapted from GlobalCornerDomain.global_representative, whose old
CanonicalCorners dependency is not resident. No classification theorem or
eligible-corner restriction is substituted for the full permutation domain.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Mub6.MaximalRadian20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate BigOperators
noncomputable section

abbrev Perm6 := Equiv.Perm (Fin 6)
def permute (H : Mat6) (p q : Perm6) : Mat6 := fun i j => H (p i) (q j)

theorem permute_comp (H : Mat6) (p q r s : Perm6) :
    permute (permute H p q) r s = permute H (r.trans p) (s.trans q) := rfl

theorem gramEntry_permute (H : Mat6) (p q : Perm6)
    (C : Finset (Fin 6)) (i j : Fin 6) :
    gramEntry (permute H p q) C i j =
      gramEntry H (C.map q.toEmbedding) (p i) (p j) := by
  simp [gramEntry,permute,Finset.sum_map]

theorem cornerR_permute (H : Mat6) (p q : Perm6)
    (a b c : Fin 6) (C : Finset (Fin 6)) :
    cornerR (permute H p q) a b c C = cornerR H (p a) (p b) (p c) (C.map q.toEmbedding) := by
  simp only [cornerR,gramEntry_permute]

theorem physical_permute {H : Mat6} (hH : Physical H) (p q : Perm6) :
    Physical (permute H p q) := by
  constructor
  · intro i j
    exact hH.1 (p i) (q j)
  · intro i j
    change (∑ k : Fin 6, H (p i) (q k)*conj (H (p j) (q k))) = _
    rw [Equiv.sum_comp q (fun k => H (p i) k*conj (H (p j) k)),hH.2 (p i) (p j)]
    simp only [p.injective.eq_iff]

/-- Three distinct positional rows extend to a permutation. The remaining
rows are retained, rather than discarded in a three-row carrier. -/
theorem triple_permutation (a b c : Fin 6) (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) :
    ∃ p : Perm6, p 0=a ∧ p 1=b ∧ p 2=c := by
  let f : Fin 3 → Fin 6 := ![0,1,2]
  let g : Fin 3 → Fin 6 := ![a,b,c]
  have hf : Function.Injective f := by decide
  have hg : Function.Injective g := by
    intro i j hij
    fin_cases i <;> fin_cases j <;>
      simp [g,hab,hac,hbc,Ne.symm hab,Ne.symm hac,Ne.symm hbc] at hij ⊢
  obtain ⟨p,hp⟩ := Equiv.Perm.exists_extending_pair f g hf hg
  exact ⟨p,by simpa [f,g] using hp 0,by simpa [f,g] using hp 1,by simpa [f,g] using hp 2⟩

theorem column_set_permutation (C : Finset (Fin 6)) (hC : C.card=3) :
    ∃ q : Perm6, leadingCols.map q.toEmbedding=C := by
  apply Equiv.Perm.exists_map_finset_eq
  simp [leadingCols,hC]

def PermutationMaximal (H : Mat6) : Prop :=
  ∀ p q : Perm6, leadingR (permute H p q) ≤ leadingR H

/-- This maximum is over every row and column permutation. It is not a
maximum over a good/eligible subset. Non-strict comparison retains ties. -/
theorem exists_permutation_maximum (H : Mat6) :
    ∃ p q : Perm6, PermutationMaximal (permute H p q) := by
  classical
  let f : Perm6 × Perm6 → ℝ := fun pq => leadingR (permute H pq.1 pq.2)
  have hn : (Finset.univ : Finset (Perm6 × Perm6)).Nonempty :=
    ⟨(Equiv.refl _,Equiv.refl _),Finset.mem_univ _⟩
  obtain ⟨pq,_,hm⟩ := (Finset.univ : Finset (Perm6 × Perm6)).exists_max_image f hn
  refine ⟨pq.1,pq.2,?_⟩
  intro r s
  rw [permute_comp]
  exact hm (r.trans pq.1,s.trans pq.2) (Finset.mem_univ _)

/-- Exact join to the existing all-400 positional predicate. -/
theorem permutationMaximal_implies_maximal {H : Mat6} (hm : PermutationMaximal H) :
    Maximal H := by
  intro a b c hab hbc C hC
  obtain ⟨p,hp0,hp1,hp2⟩ := triple_permutation a b c hab.ne (lt_trans hab hbc).ne hbc.ne
  obtain ⟨q,hq⟩ := column_set_permutation C hC
  have h := hm p q
  simpa only [leadingR,cornerR_permute,hp0,hp1,hp2,hq] using h

theorem physical_has_maximal_permutation {H : Mat6} (hH : Physical H) :
    ∃ p q : Perm6, Physical (permute H p q) ∧ Maximal (permute H p q) := by
  obtain ⟨p,q,hm⟩ := exists_permutation_maximum H
  exact ⟨p,q,physical_permute hH p q,permutationMaximal_implies_maximal hm⟩

theorem physical_has_normalized_maximal_permutation {H : Mat6} (hH : Physical H) :
    ∃ p q : Perm6, Physical (normalize (permute H p q)) ∧
      Dephased (normalize (permute H p q)) ∧ Maximal (normalize (permute H p q)) := by
  obtain ⟨p,q,hp,hm⟩ := physical_has_maximal_permutation hH
  exact ⟨p,q,normalize_physical hp,normalize_dephased hp,normalize_maximal hp hm⟩

/-- The zero boundary is retained. Nonnegativity comes from the actual
complementary side's signed square, not from a strict positivity premise. -/
theorem physical_leadingR_nonnegative {H : Mat6} (hH : Physical H) : 0≤leadingR H := by
  have h := physical_signed_square_complement hH 0 1 2 3 4 5
    (by decide) (by decide) (by decide) (by decide)
  have hc : ({3,4,5}:Finset (Fin 6))ᶜ=leadingCols := by decide
  rw [hc] at h
  change (cornerSigned H 0 1 2 3 4 5)^2=leadingR H at h
  rw [←h]
  exact sq_nonneg _

/-- All 400 signed comparisons, including both residual signs, all ties,
and R=0. The leading radical is the complementary-corner invariant. -/
theorem maximal_all_signed_abs_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (a b c i j k : Fin 6) (hab : a<b) (hbc : b<c) (hij : i<j) (hjk : j<k) :
    |cornerSigned H a b c i j k| ≤ Real.sqrt (leadingR H) := by
  have hb := physical_maximal_signed_square_bound hH hm a b c i j k hab hbc hij hjk
  have hs := Real.sq_sqrt (physical_leadingR_nonnegative hH)
  have ha := sq_abs (cornerSigned H a b c i j k)
  nlinarith [Real.sqrt_nonneg (leadingR H),abs_nonneg (cornerSigned H a b c i j k)]

theorem maximal_strict_or_zero {H : Mat6} (hH : Physical H) :
    0<leadingR H ∨ leadingR H=0 := by
  rcases lt_or_eq_of_le (physical_leadingR_nonnegative hH) with h|h
  · exact Or.inl h
  · exact Or.inr h.symm

#print axioms permute_comp
#print axioms gramEntry_permute
#print axioms cornerR_permute
#print axioms physical_permute
#print axioms triple_permutation
#print axioms column_set_permutation
#print axioms exists_permutation_maximum
#print axioms permutationMaximal_implies_maximal
#print axioms physical_has_maximal_permutation
#print axioms physical_has_normalized_maximal_permutation
#print axioms physical_leadingR_nonnegative
#print axioms maximal_all_signed_abs_bound
#print axioms maximal_strict_or_zero
end
end Mub6.MaximalRadian20261006
