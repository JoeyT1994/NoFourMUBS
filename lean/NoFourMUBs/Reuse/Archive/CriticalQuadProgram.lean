import NoFourMUBs.Reuse.Archive.CriticalMomentQuad

set_option autoImplicit false
namespace CriticalQuadProgram20261003
open CriticalMomentQuad20261003

/-- A finite integer polynomial program in labelled moment inputs. -/
inductive Program (ι : Type*) where
  | lit : ℤ → Program ι
  | input : ι → Program ι
  | add : Program ι → Program ι → Program ι
  | mul : Program ι → Program ι → Program ι

noncomputable section
variable {ι F : Type*} [Field F]

def value (v : ι → F) : Program ι → F
  | .lit c => (c : F)
  | .input i => v i
  | .add p q => value v p + value v q
  | .mul p q => value v p * value v q

def coefficients {A B : F} (v : ι → Quad A B) : Program ι → Quad A B
  | .lit c => scalar (c : F)
  | .input i => v i
  | .add p q => coefficients v p + coefficients v q
  | .mul p q => coefficients v p * coefficients v q

/-- Evaluation preserves the complete finite program once the shared
correlation satisfies its explicit quadratic. -/
theorem coefficients_sound {A B : F} (r : F) (hq : r^2=A+B*r)
    (v : ι → Quad A B) (p : Program ι) :
    eval r (coefficients v p)=value (fun i => eval r (v i)) p := by
  induction p with
  | lit c => exact eval_scalar r (c : F)
  | input i => rfl
  | add p q hp hq =>
      simp only [coefficients,value,eval_add,hp,hq]
  | mul p q hp hq' =>
      simp only [coefficients,value,eval_mul r hq,hp,hq']

/-- Clearing a common denominator needs no cancellation. Both coefficient
equalities remain explicit obligations. -/
theorem eval_times_denominator {A B : F} (r D N : F) (v : Quad A B)
    (ha : v.a*D=N) (hb : v.b*D=0) : eval r v*D=N := by
  dsimp only [eval]
  calc
    (v.a+v.b*r)*D = v.a*D+(v.b*D)*r := by ring
    _ = N := by rw [ha,hb]; simp

theorem numerator_zero_of_eval_zero {A B : F} (r D N : F) (v : Quad A B)
    (ha : v.a*D=N) (hb : v.b*D=0) (hv : eval r v=0) : N=0 := by
  have h := eval_times_denominator r D N v ha hb
  rw [hv,zero_mul] at h
  exact h.symm

end
#print axioms coefficients_sound
#print axioms eval_times_denominator
#print axioms numerator_zero_of_eval_zero
end CriticalQuadProgram20261003
