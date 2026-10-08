import Mathlib.Data.Set.Finite.Basic
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

/-! Elementary finite power fibres, including zero and empty fibres.
No polynomial-library root-count or existence hypothesis is used. -/
set_option autoImplicit false
namespace StrictReconstruction20261007
noncomputable section

theorem square_fibre_finite {K : Type*} [Field K] (a : K) :
    Set.Finite {x : K | x^2=a} := by
  classical
  by_cases hn : ({x : K | x^2=a} : Set K).Nonempty
  · obtain ⟨d,hd⟩ := hn
    apply (Set.Finite.insert d (Set.finite_singleton (-d))).subset
    intro x hx
    have hz : (x-d)*(x+d)=0 := by linear_combination hx-hd
    rcases mul_eq_zero.mp hz with hm | hp
    · simp only [Set.mem_insert_iff,Set.mem_singleton_iff]
      exact Or.inl (sub_eq_zero.mp hm)
    · have he : x= -d := eq_neg_of_add_eq_zero_left hp
      simp only [Set.mem_insert_iff,Set.mem_singleton_iff]
      exact Or.inr he
  · have he : ({x : K | x^2=a} : Set K)=∅ :=
      Set.eq_empty_iff_forall_not_mem.mpr (fun x hx => hn ⟨x,hx⟩)
    rw [he]
    exact Set.finite_empty

theorem cubic_factor_of_quadratic {K : Type*} [Field K]
    (omega x d : K) (hquad : omega^2+omega+1=0) :
    (x-d)*(x-d*omega)*(x-d*omega^2)=x^3-d^3 := by
  have hcube : omega^3=1 := by
    linear_combination (omega-1)*hquad
  have hp : (x-d*omega)*(x-d*omega^2)=x^2+x*d+d^2 := by
    linear_combination -(x*d)*hquad+d^2*hcube
  rw [mul_assoc,hp]
  ring

theorem cube_fibre_finite {K : Type*} [Field K] (omega a : K)
    (hquad : omega^2+omega+1=0) :
    Set.Finite {x : K | x^3=a} := by
  classical
  by_cases hn : ({x : K | x^3=a} : Set K).Nonempty
  · obtain ⟨d,hd⟩ := hn
    apply (Set.Finite.insert d (Set.Finite.insert (d*omega)
      (Set.finite_singleton (d*omega^2)))).subset
    intro x hx
    have hz : (x-d)*(x-d*omega)*(x-d*omega^2)=0 := by
      rw [cubic_factor_of_quadratic omega x d hquad,hx,hd,sub_self]
    simp only [Set.mem_insert_iff,Set.mem_singleton_iff]
    rcases mul_eq_zero.mp hz with hpair | hlast
    · rcases mul_eq_zero.mp hpair with hfirst | hsecond
      · exact Or.inl (sub_eq_zero.mp hfirst)
      · exact Or.inr (Or.inl (sub_eq_zero.mp hsecond))
    · exact Or.inr (Or.inr (sub_eq_zero.mp hlast))
  · have he : ({x : K | x^3=a} : Set K)=∅ :=
      Set.eq_empty_iff_forall_not_mem.mpr (fun x hx => hn ⟨x,hx⟩)
    rw [he]
    exact Set.finite_empty

#print axioms square_fibre_finite
#print axioms cubic_factor_of_quadratic
#print axioms cube_fibre_finite
end
end StrictReconstruction20261007
