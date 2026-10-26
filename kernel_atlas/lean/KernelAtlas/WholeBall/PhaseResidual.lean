import KernelAtlas.WholeBall.CentreDifferential

/-! The thirty real residuals vanish exactly when the phase matrix is Hadamard.
This connects analytic continuation of the full residual to the required
matrix property, including the diagonal and lower triangular entries. -/

open Matrix Complex Hadamard6 NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.WholeBall

def phaseUnindex : I6 → Fin 6
  | .inl i => ⟨i.val, by omega⟩
  | .inr i => ⟨i.val + 3, by omega⟩

lemma phaseIndex_unindex (i : I6) : phaseIndex (phaseUnindex i) = i := by
  fin_cases i <;> rfl

lemma phaseUnindex_index (i : Fin 6) : phaseUnindex (phaseIndex i) = i := by
  fin_cases i <;> rfl

def phaseIndexEquiv : Fin 6 ≃ I6 where
  toFun := phaseIndex
  invFun := phaseUnindex
  left_inv := phaseUnindex_index
  right_inv := phaseIndex_unindex

lemma sum_phaseIndex {R : Type*} [AddCommMonoid R] (f : I6 → R) :
    (∑ k : Fin 6, f (phaseIndex k)) = ∑ k : I6, f k :=
  Equiv.sum_comp phaseIndexEquiv f

lemma gramPair_distinct (p : Fin 15) : (gramPair p).1 ≠ (gramPair p).2 := by
  revert p
  decide +kernel

lemma gramPair_complete (i j : Fin 6) (h : i < j) :
    ∃ p : Fin 15, gramPair p = (i, j) := by
  have hh : ∀ i j : Fin 6, i < j → ∃ p : Fin 15, gramPair p = (i, j) := by decide +kernel
  exact hh i j h

lemma phaseGram_eq_gram (Q : NoFourMUBs.RMat6) (p : Fin 15) :
    phaseGram Q p = (NoFourMUBs.phaseMat Q * (NoFourMUBs.phaseMat Q)ᴴ)
      (phaseIndex (gramPair p).1) (phaseIndex (gramPair p).2) := by
  simp only [phaseGram, phaseGram_entry]
  rw [sum_phaseIndex (fun k => NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) k *
    star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) k))]
  rfl

theorem phaseResidual_zero_of_hadamard {Q : NoFourMUBs.RMat6}
    (h : Hadamard6.IsHadamard (NoFourMUBs.phaseMat Q)) : phaseResidual Q = 0 := by
  have hg (p : Fin 15) : phaseGram Q p = 0 := by
    rw [phaseGram_eq_gram, h.2]
    have hp : phaseIndex (gramPair p).1 ≠ phaseIndex (gramPair p).2 :=
      phaseIndexEquiv.injective.ne (gramPair_distinct p)
    simp [hp]
  ext a
  simp [phaseResidual, hg]

theorem hadamard_of_phaseResidual_zero {Q : NoFourMUBs.RMat6}
    (h : phaseResidual Q = 0) : Hadamard6.IsHadamard (NoFourMUBs.phaseMat Q) := by
  have hg (p : Fin 15) : phaseGram Q p = 0 := by
    have hr := congrFun h ⟨p.val, by omega⟩
    have hi := congrFun h ⟨p.val + 15, by omega⟩
    have hp1 : jacPair ⟨p.val, by omega⟩ = p := by ext; simp [jacPair, Nat.mod_eq_of_lt p.isLt]
    have hp2 : jacPair ⟨p.val + 15, by omega⟩ = p := by ext; simp [jacPair, Nat.mod_eq_of_lt p.isLt]
    apply Complex.ext
    · simpa [phaseResidual, hp1, p.isLt] using hr
    · simpa [phaseResidual, hp2, show ¬ p.val + 15 < 15 by omega] using hi
  refine ⟨fun i j => normSq_exp_real_mul_I _, ?_⟩
  let H := NoFourMUBs.phaseMat Q
  have hupper (i j : Fin 6) (hij : i < j) : (H * Hᴴ) (phaseIndex i) (phaseIndex j) = 0 := by
    obtain ⟨p, hp⟩ := gramPair_complete i j hij
    have hh := hg p
    rw [phaseGram_eq_gram, hp] at hh
    exact hh
  ext i j
  rcases lt_trichotomy (phaseUnindex i) (phaseUnindex j) with hij | hij | hij
  · have hh := hupper _ _ hij
    rw [phaseIndex_unindex, phaseIndex_unindex] at hh
    have hn : i ≠ j := by intro he; subst j; exact (lt_irrefl _ hij)
    simpa [Matrix.one_apply, hn] using hh
  · have he : i = j := phaseIndexEquiv.symm.injective hij
    subst j
    change (∑ k, H i k * star (H i k)) = _
    have hu (k : I6) : H i k * star (H i k) = 1 := by
      change NoFourMUBs.phaseMat Q i k * star (NoFourMUBs.phaseMat Q i k) = 1
      rw [Complex.star_def, Complex.mul_conj]
      simp only [NoFourMUBs.phaseMat, Matrix.of_apply, normSq_exp_real_mul_I, Complex.ofReal_one]
    simp only [hu]
    norm_num
  · have hh := hupper _ _ hij
    rw [phaseIndex_unindex, phaseIndex_unindex] at hh
    have ht : (H * Hᴴ)ᴴ = H * Hᴴ := by simp
    have he := congrFun (congrFun ht i) j
    simp only [Matrix.conjTranspose_apply, hh, star_zero] at he
    have hn : i ≠ j := by intro he; subst j; exact (lt_irrefl _ hij)
    simpa [Matrix.one_apply, hn] using he.symm

theorem phaseResidual_zero_iff {Q : NoFourMUBs.RMat6} :
    phaseResidual Q = 0 ↔ Hadamard6.IsHadamard (NoFourMUBs.phaseMat Q) :=
  ⟨hadamard_of_phaseResidual_zero, phaseResidual_zero_of_hadamard⟩

end NoFourMUBs.KernelAtlas.WholeBall
