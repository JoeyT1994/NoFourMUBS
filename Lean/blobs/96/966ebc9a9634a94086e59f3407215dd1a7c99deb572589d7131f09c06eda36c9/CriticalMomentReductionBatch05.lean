import CriticalMomentReductionData

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

theorem row_reduction_30 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 30=reducedRow30 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-2,1,0,1,-1]+(cornerTerms j).2))=reducedRow30 M
  norm_num [cornerTerms,momentMonomial,reducedRow30,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_31 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 31=reducedRow31 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-2,1,1,1,-2]+(cornerTerms j).2))=reducedRow31 M
  norm_num [cornerTerms,momentMonomial,reducedRow31,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_32 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 32=reducedRow32 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-1,0,-2,1,1]+(cornerTerms j).2))=reducedRow32 M
  norm_num [cornerTerms,momentMonomial,reducedRow32,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_33 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 33=reducedRow33 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-1,0,-1,2,-1]+(cornerTerms j).2))=reducedRow33 M
  norm_num [cornerTerms,momentMonomial,reducedRow33,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_34 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 34=reducedRow34 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((-1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-1,0,0,-1,1]+(cornerTerms j).2))=reducedRow34 M
  norm_num [cornerTerms,momentMonomial,reducedRow34,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

theorem row_reduction_35 (M : ℤ → ℤ → ℂ) (hM : OrthogonalMoments M) :
    rowValue M 35=reducedRow35 M := by
  rcases hM with ⟨h0,h1,h2,h3,h4,h5,h6⟩
  have hv5 (a b c d e f : ℤ) : ![a,b,c,d,e,f] (5 : Fin 6)=f := rfl
  change (∑ j : Fin 48, (((1 : ℤ)*(cornerTerms j).1 : ℤ) : ℂ) *
    momentMonomial M (![1,-1,0,1,0,-1]+(cornerTerms j).2))=reducedRow35 M
  norm_num [cornerTerms,momentMonomial,reducedRow35,Fin.sum_univ_succ,
    Fin.succ,Pi.add_apply,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.cons_val_four,Matrix.head_cons,Matrix.tail_cons,hv5,h0,h1,h2,h3,h4,h5,h6] <;> ring

end
#print axioms row_reduction_30
#print axioms row_reduction_31
#print axioms row_reduction_32
#print axioms row_reduction_33
#print axioms row_reduction_34
#print axioms row_reduction_35
end CriticalLaurent20261003
