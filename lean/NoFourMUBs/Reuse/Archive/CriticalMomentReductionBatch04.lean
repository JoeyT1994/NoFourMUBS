import NoFourMUBs.Reuse.Archive.CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_24 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 24=reducedRow24 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,1,-1,-1,-1,2]+(cornerTerms j).2))=reducedRow24 M
  norm_num [cornerTerms,momentMonomial,reducedRow24,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_25 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 25=reducedRow25 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,1,-1,-1,1,0]+(cornerTerms j).2))=reducedRow25 M
  norm_num [cornerTerms,momentMonomial,reducedRow25,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_26 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 26=reducedRow26 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,1,-1,1,-2,1]+(cornerTerms j).2))=reducedRow26 M
  norm_num [cornerTerms,momentMonomial,reducedRow26,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_27 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 27=reducedRow27 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,1,-1,1,0,-1]+(cornerTerms j).2))=reducedRow27 M
  norm_num [cornerTerms,momentMonomial,reducedRow27,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_28 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 28=reducedRow28 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-2,1,-2,1,1]+(cornerTerms j).2))=reducedRow28 M
  norm_num [cornerTerms,momentMonomial,reducedRow28,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_29 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 29=reducedRow29 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-2,1,-1,1,0]+(cornerTerms j).2))=reducedRow29 M
  norm_num [cornerTerms,momentMonomial,reducedRow29,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_24
#print axioms row_reduction_25
#print axioms row_reduction_26
#print axioms row_reduction_27
#print axioms row_reduction_28
#print axioms row_reduction_29
end CriticalLaurent20261003
