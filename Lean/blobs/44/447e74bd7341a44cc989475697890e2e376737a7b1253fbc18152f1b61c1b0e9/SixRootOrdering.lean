import SixRootTriples
import Mathlib.Logic.Equiv.Basic
import Mathlib.Data.Fintype.EquivFin

set_option autoImplicit false
namespace GeometricSixRoots20261003
open scoped BigOperators
noncomputable section

theorem sixValues_fiber_card (x : Fin 6 → ℂ) (c : ℂ) :
    Fintype.card {i : Fin 6 // x i=c} = (sixValues x).count c := by
  classical
  calc
    _ = ∑ i : Fin 6, if x i=c then 1 else 0 := by
      simp [Fintype.card_subtype, Finset.sum_boole]
    _ = _ := by
      simp only [sixValues, Fin.sum_univ_succ, Multiset.insert_eq_cons,
        Multiset.count_cons, Multiset.count_singleton, Finset.univ_eq_empty,
        Finset.sum_empty, add_zero]
      simp only [eq_comm (a := x 0) (b := c), eq_comm (a := x 1) (b := c),
        eq_comm (a := x 2) (b := c), eq_comm (a := x 3) (b := c),
        eq_comm (a := x 4) (b := c), eq_comm (a := x 5) (b := c)]
      omega

/-- Equal multiplicities suffice for a permutation; values need not be distinct. -/
theorem sixValues_eq_order (x y : Fin 6 → ℂ) (h : sixValues x=sixValues y) :
    ∃ σ : Equiv.Perm (Fin 6), ∀ i, x (σ i)=y i := by
  classical
  have hc (c : ℂ) : Fintype.card {i : Fin 6 // y i=c} =
      Fintype.card {i : Fin 6 // x i=c} := by
    rw [sixValues_fiber_card, sixValues_fiber_card, h]
  let es (c : ℂ) := Fintype.equivOfCardEq (hc c)
  exact ⟨Equiv.ofFiberEquiv es, Equiv.ofFiberEquiv_map es⟩

theorem six_unit_roots_ordered (x : Fin 6 → ℂ)
    (hu : ∀ i, Complex.normSq (x i)=1)
    (h1 : ∑ i, x i=0) (h2 : ∑ i, (x i)^2=0)
    {ω : ℂ} (hω : ω^2+ω+1=0) :
    ∃ a b : ℂ, Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      ∃ σ : Equiv.Perm (Fin 6),
        ∀ i, x (σ i)=![a,a*ω,a*ω^2,b,b*ω,b*ω^2] i := by
  obtain ⟨a,b,ha,hb,he⟩ := six_unit_roots_two_triples x hu h1 h2 hω
  refine ⟨a,b,ha,hb,?_⟩
  apply sixValues_eq_order
  simpa [sixValues,cubicTriple,Multiset.cons_swap] using he

end
end GeometricSixRoots20261003
#print axioms GeometricSixRoots20261003.sixValues_fiber_card
#print axioms GeometricSixRoots20261003.sixValues_eq_order
#print axioms GeometricSixRoots20261003.six_unit_roots_ordered
