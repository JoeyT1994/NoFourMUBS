import CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_00 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 0=reducedRow00 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-2,1,1,1,-2,1]+(cornerTerms j).2))=reducedRow00 M
  norm_num [cornerTerms,momentMonomial,reducedRow00,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_01 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 1=reducedRow01 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-2,1,1,1,-1,0]+(cornerTerms j).2))=reducedRow01 M
  norm_num [cornerTerms,momentMonomial,reducedRow01,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_02 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 2=reducedRow02 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-2,1,1,1,0,-1]+(cornerTerms j).2))=reducedRow02 M
  norm_num [cornerTerms,momentMonomial,reducedRow02,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_03 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 3=reducedRow03 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-2,1,1,1,1,-2]+(cornerTerms j).2))=reducedRow03 M
  norm_num [cornerTerms,momentMonomial,reducedRow03,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_04 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 4=reducedRow04 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,-1,2,-1,2,-1]+(cornerTerms j).2))=reducedRow04 M
  norm_num [cornerTerms,momentMonomial,reducedRow04,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_05 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 5=reducedRow05 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,-1,2,0,1,-1]+(cornerTerms j).2))=reducedRow05 M
  norm_num [cornerTerms,momentMonomial,reducedRow05,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_00
#print axioms row_reduction_01
#print axioms row_reduction_02
#print axioms row_reduction_03
#print axioms row_reduction_04
#print axioms row_reduction_05
end CriticalLaurent20261003
