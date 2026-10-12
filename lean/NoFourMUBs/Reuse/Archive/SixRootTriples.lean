import NoFourMUBs.Reuse.Archive.SixRootPolynomial

import Hadamard6.FourierAutocorrelation

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace GeometricSixRoots20261003
open scoped BigOperators
open Polynomial
noncomputable section

/-- A multiset, so repeated phases remain present with their multiplicities. -/
def sixValues (x : Fin 6 → ℂ) : Multiset ℂ :=
  {x 0, x 1, x 2, x 3, x 4, x 5}

def cubicTriple (ω a : ℂ) : Multiset ℂ := {a, a*ω, a*ω^2}

theorem cubic_phase_cube {ω : ℂ} (hω : ω^2+ω+1=0) : ω^3=1 :=
  Hadamard6.cubic_of_quadratic hω

theorem cubic_triple_product {ω : ℂ} (hω : ω^2+ω+1=0) (a t : ℂ) :
    (t-a)*(t-a*ω)*(t-a*ω^2)=t^3-a^3 := by
  have hc := cubic_phase_cube hω
  linear_combination (-a*t^2+a^2*t)*hω+(a^2*t-a^3)*hc

theorem six_product_two_cubics (x : Fin 6 → ℂ)
    (hu : ∀ i, Complex.normSq (x i)=1)
    (h1 : ∑ i, x i=0) (h2 : ∑ i, (x i)^2=0) :
    ∃ a b : ℂ, Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      ∀ t : ℂ, (∏ i, (t-x i))=(t^3-a^3)*(t^3-b^3) := by
  classical
  let a := x 0
  obtain ⟨b,hb⟩ := IsAlgClosed.exists_pow_nat_eq (e3 x-a^3) (by norm_num : 0<(3:ℕ))
  have ha : a^6-e3 x*a^3+e6 x=0 := by
    rw [← sparse_six_product x hu h1 h2 a]
    exact Finset.prod_eq_zero (Finset.mem_univ (0:Fin 6)) (by dsimp [a]; ring)
  have hf (t : ℂ) : (∏ i, (t-x i))=(t^3-a^3)*(t^3-b^3) := by
    rw [sparse_six_product x hu h1 h2 t]
    linear_combination ha+(t^3-a^3)*hb
  have hbprod : (∏ i, (b-x i))=0 := by rw [hf]; simp
  obtain ⟨i,_,hi⟩ := Finset.prod_eq_zero_iff.mp hbprod
  have hbi : b=x i := sub_eq_zero.mp hi
  exact ⟨a,b,hu 0,by simpa [hbi] using hu i,hf⟩

theorem sixValues_polynomial (x : Fin 6 → ℂ) (t : ℂ) :
    ((sixValues x).map (fun a => X-C a)).prod.eval t = ∏ i, (t-x i) := by
  simp [sixValues, Fin.prod_univ_succ, mul_assoc]

theorem cubicTriple_polynomial {ω : ℂ} (hω : ω^2+ω+1=0) (a t : ℂ) :
    ((cubicTriple ω a).map (fun a => X-C a)).prod.eval t=t^3-a^3 := by
  simpa [cubicTriple, mul_assoc] using cubic_triple_product hω a t

/-- Exact multiset extraction, including when the two cubic triples coincide. -/
theorem six_unit_roots_two_triples (x : Fin 6 → ℂ)
    (hu : ∀ i, Complex.normSq (x i)=1)
    (h1 : ∑ i, x i=0) (h2 : ∑ i, (x i)^2=0)
    {ω : ℂ} (hω : ω^2+ω+1=0) :
    ∃ a b : ℂ, Complex.normSq a=1 ∧ Complex.normSq b=1 ∧
      sixValues x=cubicTriple ω a+cubicTriple ω b := by
  obtain ⟨a,b,ha,hb,hf⟩ := six_product_two_cubics x hu h1 h2
  refine ⟨a,b,ha,hb,?_⟩
  have hp : ((sixValues x).map (fun a => X-C a)).prod =
      ((cubicTriple ω a+cubicTriple ω b).map (fun a => X-C a)).prod := by
    apply Polynomial.funext
    intro t
    rw [sixValues_polynomial, hf]
    simp only [Multiset.map_add, Multiset.prod_add, eval_mul]
    rw [cubicTriple_polynomial hω, cubicTriple_polynomial hω]
  have hr := congrArg Polynomial.roots hp
  simpa only [roots_multiset_prod_X_sub_C] using hr

end
end GeometricSixRoots20261003
#print axioms GeometricSixRoots20261003.cubic_phase_cube
#print axioms GeometricSixRoots20261003.cubic_triple_product
#print axioms GeometricSixRoots20261003.six_product_two_cubics
#print axioms GeometricSixRoots20261003.sixValues_polynomial
#print axioms GeometricSixRoots20261003.cubicTriple_polynomial
#print axioms GeometricSixRoots20261003.six_unit_roots_two_triples
