import CriticalCornerTerms

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
noncomputable section

def phaseLaurentValue (u : Fin 6 → ℂ) : ℂ :=
  (u 1*u 5+u 2*u 3+u 0*u 4+u 2*u 4+u 0*u 5+u 1*u 3) *
  (u 1*u 5+u 2*u 3+u 0*u 4-u 2*u 4-u 0*u 5-u 1*u 3)^2 /
  (u 0*u 1*u 2*u 3*u 4*u 5)

theorem phaseLaurentValue_star (u : Fin 6 → ℂ) :
    star (phaseLaurentValue u)=phaseLaurentValue (fun j => star (u j)) := by
  simp [phaseLaurentValue]

/-- Exact finite Laurent expansion of perm(E) det(E)^2 / prod(E) minus its
reciprocal. The six inputs are the literal noninitial entries of E. -/
theorem cornerPolynomial_exact (u : Fin 6 → ℂ) (hu : ∀ j,u j≠0) :
    cornerPolynomial u = phaseLaurentValue u-phaseLaurentValue (fun j => (u j)⁻¹) := by
  have h5 (a b c d e f : ℂ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  have hv : u=![u 0,u 1,u 2,u 3,u 4,u 5] := by
    ext j
    fin_cases j <;> rfl
  rw [hv]
  norm_num [cornerPolynomial,polynomial,cornerTerms,value,phaseLaurentValue,
    Fin.sum_univ_succ,Fin.prod_univ_succ,Fin.succ,Matrix.cons_val_two,
    Matrix.cons_val_three,Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,
    h5,
    zpow_neg,zpow_ofNat] <;>
    field_simp [hu 0,hu 1,hu 2,hu 3,hu 4,hu 5] <;> ring

theorem cornerPolynomial_unit (u : Fin 6 → ℂ) (hu : ∀ j,Complex.normSq (u j)=1) :
    cornerPolynomial u = phaseLaurentValue u-star (phaseLaurentValue u) := by
  have hn (j : Fin 6) : u j≠0 := by
    intro hz
    have h := hu j
    simp [hz] at h
  have hi : (fun j => (u j)⁻¹)=(fun j => star (u j)) := by
    funext j
    simp [Complex.inv_def,hu j]
  rw [cornerPolynomial_exact u hn,hi,phaseLaurentValue_star]

end
#print axioms phaseLaurentValue_star
#print axioms cornerPolynomial_exact
#print axioms cornerPolynomial_unit
end CriticalLaurent20261003
