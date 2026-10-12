import NoFourMUBs.Step2.CriticalZero.SingularModel

namespace Worker12

@[simp] theorem splitIndex_symm_zero : splitIndex.symm 0 = Sum.inl 0 := by decide
@[simp] theorem splitIndex_symm_one : splitIndex.symm 1 = Sum.inl 1 := by decide
@[simp] theorem splitIndex_symm_two : splitIndex.symm 2 = Sum.inl 2 := by decide
@[simp] theorem splitIndex_symm_three : splitIndex.symm 3 = Sum.inr 0 := by decide
@[simp] theorem splitIndex_symm_four : splitIndex.symm 4 = Sum.inr 1 := by decide
@[simp] theorem splitIndex_symm_five : splitIndex.symm 5 = Sum.inr 2 := by decide

noncomputable def cubicSeed (ω : ℂ) (a b c d : Fin 3) : OAI.MUB6.CMatrix :=
  unsplitMatrix (Hadamard6.fourierNormalForm ω (ω ^ a.val) (ω ^ b.val)
    (ω ^ c.val) (ω ^ d.val)
    (Hadamard6.fourierForcedD ω (ω ^ a.val) (ω ^ b.val) (ω ^ c.val) (ω ^ d.val)))

end Worker12
