import Radius01NativeBounds

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

def permuteMatrix (H : Mat6) (rows cols : Equiv.Perm (Fin 6)) : Mat6 :=
  fun i j => H (rows i) (cols j)

def FixesLeading (p : Equiv.Perm (Fin 6)) : Prop := p 0=0 ∧ p 1=1 ∧ p 2=2

theorem fixesLeading_upperIndex {p : Equiv.Perm (Fin 6)} (hp : FixesLeading p) (i : Fin 3) :
    p (upperIndex i)=upperIndex i := by
  fin_cases i <;> simpa [upperIndex] using (by first | exact hp.1 | exact hp.2.1 | exact hp.2.2)

theorem permute_physical {H : Mat6} (hH : Physical H) (rows cols : Equiv.Perm (Fin 6)) :
    Physical (permuteMatrix H rows cols) := by
  constructor
  · intro i j; exact hH.1 _ _
  · intro i j
    change (∑ k : Fin 6, H (rows i) (cols k)*conj (H (rows j) (cols k)))=_
    rw [cols.sum_comp (fun k => H (rows i) k*conj (H (rows j) k)),hH.2]
    simp only [Equiv.apply_eq_iff_eq]

theorem permute_dephased {H : Mat6} (hd : Dephased H) (rows cols : Equiv.Perm (Fin 6))
    (hr : FixesLeading rows) (hc : FixesLeading cols) : Dephased (permuteMatrix H rows cols) := by
  constructor
  · intro j; simp [permuteMatrix,hr.1,hd.1]
  · intro i; simp [permuteMatrix,hc.1,hd.2]

theorem blockE_permute (H : Mat6) (rows cols : Equiv.Perm (Fin 6))
    (hr : FixesLeading rows) (hc : FixesLeading cols) :
    blockE (permuteMatrix H rows cols)=blockE H := by
  ext i j
  simp only [blockE,permuteMatrix,fixesLeading_upperIndex hr,fixesLeading_upperIndex hc]

theorem seedBall_permute {H : Mat6} (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (rows cols : Equiv.Perm (Fin 6)) (hr : FixesLeading rows) (hc : FixesLeading cols) :
    InPuncturedSeedBall (permuteMatrix H rows cols) b r := by
  obtain ⟨u,he,hu,hn⟩ := hball
  refine ⟨u,?_,hu,hn⟩
  intro i
  simpa [seedEntry,permuteMatrix,hr.2.1,hr.2.2,hc.2.1,hc.2.2] using he i

theorem gramEntry_permute (H : Mat6) (rows cols : Equiv.Perm (Fin 6))
    (C : Finset (Fin 6)) (i j : Fin 6) :
    gramEntry (permuteMatrix H rows cols) C i j=
      gramEntry H (C.image cols) (rows i) (rows j) := by
  unfold gramEntry permuteMatrix
  rw [Finset.sum_image]
  intro a _ b _ h
  exact cols.injective h

theorem cornerR_permute (H : Mat6) (rows cols : Equiv.Perm (Fin 6))
    (C : Finset (Fin 6)) (a b c : Fin 6) :
    cornerR (permuteMatrix H rows cols) a b c C=
      cornerR H (rows a) (rows b) (rows c) (C.image cols) := by
  simp only [cornerR,gramEntry_permute]

theorem leadingR_permute (H : Mat6) (rows cols : Equiv.Perm (Fin 6))
    (hr : FixesLeading rows) (hc : FixesLeading cols) :
    leadingR (permuteMatrix H rows cols)=leadingR H := by
  rw [leadingR,cornerR_permute]
  simpa [leadingR,leadingCols,hr.1,hr.2.1,hr.2.2,hc.1,hc.2.1,hc.2.2]

theorem gramEntry_conjugate (H : Mat6) (C : Finset (Fin 6)) (i j : Fin 6) :
    gramEntry H C j i=conj (gramEntry H C i j) := by
  simp [gramEntry,map_sum,map_mul,mul_comm]

theorem gramInvariant_swap_first (s t r : ℂ) :
    gramInvariant (conj s) r t=gramInvariant s t r := by
  have hp : gramP (conj s) r t=gramP s t r := by simp [gramP]; ring
  have hw : gramW (conj s) r t=gramW s t r := by simp [gramW]; ring
  have hj : gramJ (conj s) r t=gramJ s t r := by
    have he : conj s*t*conj r=conj (s*r*conj t) := by simp only [map_mul,starRingEnd_self_apply]; ring
    simp only [gramJ,he,Complex.conj_re]
  simp only [gramInvariant,hp,hw,hj]

theorem gramInvariant_swap_last (s t r : ℂ) :
    gramInvariant t s (conj r)=gramInvariant s t r := by
  have hp : gramP t s (conj r)=gramP s t r := by simp [gramP]; ring
  have hw : gramW t s (conj r)=gramW s t r := by simp [gramW]; ring
  have hj : gramJ t s (conj r)=gramJ s t r := by
    have he : t*conj r*conj s=conj (s*r*conj t) := by simp only [map_mul,starRingEnd_self_apply]; ring
    simp only [gramJ,he,Complex.conj_re]
  simp only [gramInvariant,hp,hw,hj]

theorem cornerR_swap_first (H : Mat6) (a b c : Fin 6) (C : Finset (Fin 6)) :
    cornerR H b a c C=cornerR H a b c C := by
  unfold cornerR
  rw [gramEntry_conjugate H C b a,← map_neg]
  exact gramInvariant_swap_first _ _ _

theorem cornerR_swap_last (H : Mat6) (a b c : Fin 6) (C : Finset (Fin 6)) :
    cornerR H a c b C=cornerR H a b c C := by
  unfold cornerR
  rw [gramEntry_conjugate H C c b,← map_neg]
  exact gramInvariant_swap_last _ _ _

/-- Maximality for increasing triples extends to every ordered distinct
triple by checked invariant symmetries. -/
theorem maximal_distinct_bound {H : Mat6} (hm : Maximal H)
    (a b c : Fin 6) (hab : a ≠ b) (hbc : b ≠ c) (hac : a ≠ c)
    (C : Finset (Fin 6)) (hC : C.card=3) : cornerR H a b c C ≤ leadingR H := by
  by_cases hab' : a < b
  · by_cases hbc' : b < c
    · exact hm a b c hab' hbc' C hC
    · by_cases hac' : a < c
      · rw [← cornerR_swap_last]
        exact hm a c b hac' (by omega) C hC
      · rw [← cornerR_swap_last,← cornerR_swap_first]
        exact hm c a b (by omega) hab' C hC
  · by_cases hac' : a < c
    · rw [← cornerR_swap_first]
      exact hm b a c (by omega) hac' C hC
    · by_cases hbc' : b < c
      · rw [← cornerR_swap_first,← cornerR_swap_last]
        exact hm b c a hbc' (by omega) C hC
      · rw [← cornerR_swap_first,← cornerR_swap_last,← cornerR_swap_first]
        exact hm c b a (by omega) (by omega) C hC

/-- The complete all-400 maximality predicate, with ties, survives arbitrary
unused-row and unused-column permutations fixing the leading corner. -/
theorem permute_maximal {H : Mat6} (hm : Maximal H) (rows cols : Equiv.Perm (Fin 6))
    (hr : FixesLeading rows) (hc : FixesLeading cols) : Maximal (permuteMatrix H rows cols) := by
  intro a b c hab hbc C hC
  rw [cornerR_permute,leadingR_permute H rows cols hr hc]
  apply maximal_distinct_bound hm
  · exact fun he => (ne_of_lt hab) (rows.injective he)
  · exact fun he => (ne_of_lt hbc) (rows.injective he)
  · exact fun he => (ne_of_lt (lt_trans hab hbc)) (rows.injective he)
  · simpa only [Finset.card_image_of_injective _ cols.injective] using hC

theorem fixesLeading_refl : FixesLeading (Equiv.refl (Fin 6)) := by
  exact ⟨rfl,rfl,rfl⟩

theorem fixesLeading_swap_bottom (i j : Fin 3) :
    FixesLeading (Equiv.swap (bottomIndex i) (bottomIndex j)) := by
  have h (k : Fin 6) (hk : k.val<3) :
      Equiv.swap (bottomIndex i) (bottomIndex j) k=k := by
    apply Equiv.swap_apply_of_ne_of_ne <;> intro he <;>
      have hv := congrArg (fun x : Fin 6 => x.val) he <;> simp [bottomIndex] at hv <;> omega
  exact ⟨h 0 (by decide),h 1 (by decide),h 2 (by decide)⟩

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.fixesLeading_upperIndex
#print axioms Centiradian20261006.ChartRadius0120261006.permute_physical
#print axioms Centiradian20261006.ChartRadius0120261006.permute_dephased
#print axioms Centiradian20261006.ChartRadius0120261006.blockE_permute
#print axioms Centiradian20261006.ChartRadius0120261006.seedBall_permute
#print axioms Centiradian20261006.ChartRadius0120261006.gramEntry_permute
#print axioms Centiradian20261006.ChartRadius0120261006.cornerR_permute
#print axioms Centiradian20261006.ChartRadius0120261006.leadingR_permute
#print axioms Centiradian20261006.ChartRadius0120261006.gramEntry_conjugate
#print axioms Centiradian20261006.ChartRadius0120261006.gramInvariant_swap_first
#print axioms Centiradian20261006.ChartRadius0120261006.gramInvariant_swap_last
#print axioms Centiradian20261006.ChartRadius0120261006.cornerR_swap_first
#print axioms Centiradian20261006.ChartRadius0120261006.cornerR_swap_last
#print axioms Centiradian20261006.ChartRadius0120261006.maximal_distinct_bound
#print axioms Centiradian20261006.ChartRadius0120261006.permute_maximal
#print axioms Centiradian20261006.ChartRadius0120261006.fixesLeading_refl
#print axioms Centiradian20261006.ChartRadius0120261006.fixesLeading_swap_bottom
