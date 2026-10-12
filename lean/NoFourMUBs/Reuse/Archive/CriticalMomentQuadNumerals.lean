import NoFourMUBs.Reuse.Archive.CriticalMomentQuad

set_option autoImplicit false
namespace CriticalMomentQuad20261003
noncomputable section
variable {F : Type*} [Field F] {A B : F}

@[simp] theorem eval_two (r : F) : eval r (2 : Quad A B)=(2 : F) := by
  change ((2 : ℕ) : F)+(0 : F)*r=(2 : F)
  simp

@[simp] theorem eval_three (r : F) : eval r (3 : Quad A B)=(3 : F) := by
  change ((3 : ℕ) : F)+(0 : F)*r=(3 : F)
  simp

end
#print axioms eval_two
#print axioms eval_three
end CriticalMomentQuad20261003
