import NoFourMUBs.Step2.Reconstruction.CubicEvaluation

set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.Companion
open CriticalMomentQuad20261003
variable {F : Type*} [Field F]

/-- Constructor rewrites for the existing quadratic representation. -/
theorem quad_mk_add {A B : F} (x y z t : F) :
    (⟨x,y⟩ + ⟨z,t⟩ : Quad A B) = ⟨x+z,y+t⟩ := rfl

theorem quad_mk_mul {A B : F} (x y z t : F) :
    (⟨x,y⟩ * ⟨z,t⟩ : Quad A B) =
      ⟨x*z+A*y*t,x*t+y*z+B*y*t⟩ := rfl

theorem quad_mk_neg {A B : F} (x y : F) :
    -(⟨x,y⟩ : Quad A B) = ⟨-x,-y⟩ := rfl

end NoFourMUBs.Step2.Reconstruction.Companion
