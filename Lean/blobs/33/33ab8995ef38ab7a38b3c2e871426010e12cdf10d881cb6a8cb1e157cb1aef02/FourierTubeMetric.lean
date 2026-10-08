import FourierReferenceDistance
import RowPermutationMetric

/-! An explicit common monomial reference, and transport back to the original
matrix coordinates. No infimum or matching oracle occurs in this definition. -/
set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Seed0024ProjectorMetric20261007
noncomputable section

def MonomialF6Reference (Q : Fin 6 → Fin 6 → ℂ) : Prop :=
  ∃ rows cols : Equiv.Perm (Fin 6), ∃ gauge : Fin 6 → ℂ,
    (∀ i,Complex.normSq (gauge i)=1) ∧
    ∀ i j,Q i j=gauge i*explicitF6 (rows i) (cols j)

def InsideF6Tube (H : Fin 6 → Fin 6 → ℂ) (radius : ℝ) : Prop :=
  ∃ Q : Fin 6 → Fin 6 → ℂ, MonomialF6Reference Q ∧
    ∀ j : Fin 6,
      ‖columnProjector (normalizedColumn H j)-columnProjector (normalizedColumn Q j)‖<radius

theorem monomialF6Reference_unit {Q : Fin 6 → Fin 6 → ℂ}
    (hQ : MonomialF6Reference Q) : ∀ i j,Complex.normSq (Q i j)=1 := by
  obtain ⟨rows,cols,gauge,hg,h⟩ := hQ
  intro i j
  rw [h,Complex.normSq_mul,hg]
  simp only [explicitF6,phaseSix,cis_normSq,one_mul]

theorem insideF6Tube_mono {H : Fin 6 → Fin 6 → ℂ} {r s : ℝ}
    (h : InsideF6Tube H r) (hrs : r≤s) : InsideF6Tube H s := by
  obtain ⟨Q,hQ,hd⟩ := h
  exact ⟨Q,hQ,fun j => (hd j).trans_le hrs⟩

theorem insideF6Tube_of_reindex {H : Fin 6 → Fin 6 → ℂ}
    (hH : ∀ i j,Complex.normSq (H i j)=1)
    (rows cols : Equiv.Perm (Fin 6)) {radius : ℝ}
    (ht : InsideF6Tube (fun i j => H (rows i) (cols j)) radius) :
    InsideF6Tube H radius := by
  obtain ⟨Q,hQ,hd⟩ := ht
  let Q' : Fin 6 → Fin 6 → ℂ := fun i j => Q (rows.symm i) (cols.symm j)
  have hQunit := monomialF6Reference_unit hQ
  have hQ' : MonomialF6Reference Q' := by
    obtain ⟨rr,cc,g,hg,h⟩ := hQ
    exact ⟨rows.symm.trans rr,cols.symm.trans cc,fun i => g (rows.symm i),
      fun i => hg _,fun i j => h _ _⟩
  refine ⟨Q',hQ',?_⟩
  intro j
  have hp := columnProjector_row_permutation rows (normalizedColumn H j)
    (normalizedColumn Q' j) (normalizedColumn_mass H hH j)
    (normalizedColumn_mass Q' (fun i j => hQunit _ _) j)
  rw [←hp]
  simpa only [normalizedColumn,Q',Equiv.apply_symm_apply,Equiv.symm_apply_apply]
    using hd (cols.symm j)

theorem actual_to_fourier_tube (H : Fin 6 → Fin 6 → ℂ)
    (hH : ∀ i j,Complex.normSq (H i j)=1) (alpha beta : ℝ)
    (hHK : (∑ i : Fin 6, ∑ j : Fin 6,
      Complex.normSq ((H i j-explicitPairedFamily alpha beta i j)/(Real.sqrt 6 : ℂ)))<
        (1/75:ℝ)^2)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)|<(1:ℝ)/6) : InsideF6Tube H ((3:ℝ)/100) := by
  exact ⟨gaugedReference alpha beta,gaugedReference_is_monomial_F6 alpha beta,
    actual_to_gauged_reference_lt H hH alpha beta hHK hs⟩

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.insideF6Tube_of_reindex
#print axioms Seed0024Mathematical20261007.actual_to_fourier_tube
