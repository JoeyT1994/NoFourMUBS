import NoFourMUBs.Reuse.Archive.CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_06 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 6=reducedRow06 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,-1,2,1,0,-1]+(cornerTerms j).2))=reducedRow06 M
  norm_num [cornerTerms,momentMonomial,reducedRow06,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_07 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 7=reducedRow07 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,-1,2,2,-1,-1]+(cornerTerms j).2))=reducedRow07 M
  norm_num [cornerTerms,momentMonomial,reducedRow07,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_08 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 8=reducedRow08 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,0,1,-1,1,0]+(cornerTerms j).2))=reducedRow08 M
  norm_num [cornerTerms,momentMonomial,reducedRow08,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_09 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 9=reducedRow09 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,0,1,0,-1,1]+(cornerTerms j).2))=reducedRow09 M
  norm_num [cornerTerms,momentMonomial,reducedRow09,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_10 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 10=reducedRow10 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,0,1,1,1,-2]+(cornerTerms j).2))=reducedRow10 M
  norm_num [cornerTerms,momentMonomial,reducedRow10,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_11 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 11=reducedRow11 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,0,1,2,-1,-1]+(cornerTerms j).2))=reducedRow11 M
  norm_num [cornerTerms,momentMonomial,reducedRow11,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_06
#print axioms row_reduction_07
#print axioms row_reduction_08
#print axioms row_reduction_09
#print axioms row_reduction_10
#print axioms row_reduction_11
end CriticalLaurent20261003
