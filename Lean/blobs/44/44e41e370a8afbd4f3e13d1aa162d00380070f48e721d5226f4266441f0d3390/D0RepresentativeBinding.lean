import Worker12.RepresentativeCore
set_option autoImplicit false
namespace Worker12
set_option maxHeartbeats 4000000
theorem hTimes_phaseHadamard : Mub6.IsPhaseHadamard6 hTimes := by
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;>
      norm_num [hTimes, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Complex.normSq_apply]
  · ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [hTimes, Fin.addCases, Matrix.cons_val_succ, Matrix.cons_val_zero, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail,
        Matrix.mul_apply, Matrix.conjTranspose_apply, Fin.sum_univ_succ,
        Matrix.smul_apply, Matrix.one_apply, Complex.ext_iff]

def d0ColumnPermutation : Equiv.Perm (Fin 6) where
  toFun := d0ColumnOrder
  invFun := d0ColumnOrder
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

/-- UNVERIFIED DRAFT: explicit old local `hTimes -> d0Phase` witness.
Rows are not permuted; columns use `[3,5,4,0,2,1]`; row phases are the
conjugates of column 3 of `hTimes`; column phases are one. -/
theorem hTimes_monomial_d0 :
    Mub6.MonomialEquivalent hTimes d0Phase := by
  refine ⟨Equiv.refl _, d0ColumnPermutation,
    (fun i ↦ star (hTimes i 3)), (fun _ ↦ 1), ?_, ?_, ?_⟩
  · intro i
    simpa [Complex.star_def, Complex.normSq_conj] using
      hTimes_phaseHadamard.1 i 3
  · intro j
    norm_num
  · funext i j
    simp [d0Phase, Mub6.monomialEdge, d0ColumnPermutation]

def publishedD0Phase : Mub6.BasisMatrix :=
  !![1, 1, 1, 1, 1, 1;
     1, -1, Complex.I, -Complex.I, -Complex.I, Complex.I;
     1, Complex.I, -1, Complex.I, -Complex.I, -Complex.I;
     1, -Complex.I, Complex.I, -1, Complex.I, -Complex.I;
     1, -Complex.I, -Complex.I, Complex.I, -1, Complex.I;
     1, Complex.I, -Complex.I, -Complex.I, Complex.I, -1]

/-- UNVERIFIED DRAFT: the local fixed D0 target is literally equation (30),
including its row/column order. -/
theorem d0Phase_eq_published : d0Phase = publishedD0Phase := by
  funext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [d0Phase, hTimes, d0ColumnOrder, publishedD0Phase,
      Matrix.cons_val, Matrix.vecHead, Matrix.vecTail, Complex.ext_iff]

/-- UNVERIFIED DRAFT: explicit `hTimes` binding to equation (30). -/
theorem hTimes_monomial_publishedD0 :
    Mub6.MonomialEquivalent hTimes publishedD0Phase := by
  rw [← d0Phase_eq_published]
  exact hTimes_monomial_d0

/-- UNVERIFIED DRAFT: exact physical normalization of the preceding witness. -/
theorem physical_hTimes_monomial_publishedD0 :
    Mub6.MonomialEquivalent
      (physicalNormalize hTimes)
      (physicalNormalize publishedD0Phase) :=
  physicalNormalize_monomialEquivalent hTimes_monomial_publishedD0

def PublishedD0StandardPairExclusion : Prop :=
  ¬ Mub6.ExtendsStandardPair (physicalNormalize publishedD0Phase)

/-- UNVERIFIED DRAFT: literal equation-(30) nonextension implies the local
fixed-D0 exclusion target. -/
theorem d0QuartetExclusion_of_published
    (hpublished : PublishedD0StandardPairExclusion) :
    D0QuartetExclusion := by
  have hpaper := quartetExclusion_of_standardPair hpublished
  simpa only [D0QuartetExclusion, d0Phase_eq_published] using hpaper


#print axioms hTimes_monomial_d0
#print axioms d0Phase_eq_published
#print axioms physical_hTimes_monomial_publishedD0
#print axioms d0QuartetExclusion_of_published
end Worker12
