import NoFourMUBs.Reuse.Archive.CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_12 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 12=reducedRow12 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,1,0,-1,0,1]+(cornerTerms j).2))=reducedRow12 M
  norm_num [cornerTerms,momentMonomial,reducedRow12,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_13 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 13=reducedRow13 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,1,0,0,1,-1]+(cornerTerms j).2))=reducedRow13 M
  norm_num [cornerTerms,momentMonomial,reducedRow13,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_14 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 14=reducedRow14 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,1,0,1,-2,1]+(cornerTerms j).2))=reducedRow14 M
  norm_num [cornerTerms,momentMonomial,reducedRow14,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_15 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 15=reducedRow15 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,1,0,2,-1,-1]+(cornerTerms j).2))=reducedRow15 M
  norm_num [cornerTerms,momentMonomial,reducedRow15,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_16 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 16=reducedRow16 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,2,-1,-1,-1,2]+(cornerTerms j).2))=reducedRow16 M
  norm_num [cornerTerms,momentMonomial,reducedRow16,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_17 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 17=reducedRow17 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,2,-1,0,-1,1]+(cornerTerms j).2))=reducedRow17 M
  norm_num [cornerTerms,momentMonomial,reducedRow17,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_12
#print axioms row_reduction_13
#print axioms row_reduction_14
#print axioms row_reduction_15
#print axioms row_reduction_16
#print axioms row_reduction_17
end CriticalLaurent20261003
