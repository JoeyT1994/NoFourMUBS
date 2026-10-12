import NoFourMUBs.Reuse.Archive.CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_18 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 18=reducedRow18 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,2,-1,1,-1,0]+(cornerTerms j).2))=reducedRow18 M
  norm_num [cornerTerms,momentMonomial,reducedRow18,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_19 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 19=reducedRow19 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![-1,2,-1,2,-1,-1]+(cornerTerms j).2))=reducedRow19 M
  norm_num [cornerTerms,momentMonomial,reducedRow19,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_20 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 20=reducedRow20 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,-1,1,-1,0,1]+(cornerTerms j).2))=reducedRow20 M
  norm_num [cornerTerms,momentMonomial,reducedRow20,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_21 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 21=reducedRow21 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,-1,1,-1,2,-1]+(cornerTerms j).2))=reducedRow21 M
  norm_num [cornerTerms,momentMonomial,reducedRow21,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_22 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 22=reducedRow22 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,-1,1,1,-1,0]+(cornerTerms j).2))=reducedRow22 M
  norm_num [cornerTerms,momentMonomial,reducedRow22,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_23 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 23=reducedRow23 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![0,-1,1,1,1,-2]+(cornerTerms j).2))=reducedRow23 M
  norm_num [cornerTerms,momentMonomial,reducedRow23,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_18
#print axioms row_reduction_19
#print axioms row_reduction_20
#print axioms row_reduction_21
#print axioms row_reduction_22
#print axioms row_reduction_23
end CriticalLaurent20261003
