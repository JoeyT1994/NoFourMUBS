import NoFourMUBs.Reuse.Archive.CriticalMomentQuad

set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.CubicEvaluation
open CriticalMomentQuad20261003
variable {F : Type*} [Field F] {A B : F}

/-- The three coefficients of the original companion calculation, each in
the repository's existing quadratic representation. -/
structure Cubic (A B : F) where
  c0 : Quad A B
  c1 : Quad A B
  c2 : Quad A B

def cubicEval (w z : F) (p : Cubic A B) : F :=
  eval w p.c0 + eval w p.c1 * z + eval w p.c2 * z^2

def scalar (q : Quad A B) : Cubic A B := ⟨q,0,0⟩
def root : Cubic A B := ⟨0,1,0⟩
def add (p q : Cubic A B) : Cubic A B :=
  ⟨p.c0+q.c0,p.c1+q.c1,p.c2+q.c2⟩
def neg (p : Cubic A B) : Cubic A B := ⟨-p.c0,-p.c1,-p.c2⟩

/-- Literal degree-four then degree-three reduction used by the original
calculation. The modulus is `z³ = m₀ + m₁*z + m₂*z²`. -/
def mul (m p q : Cubic A B) : Cubic A B :=
  let d4 := p.c2*q.c2
  let d3 := p.c1*q.c2+p.c2*q.c1+d4*m.c2
  ⟨p.c0*q.c0+d3*m.c0,
   p.c0*q.c1+p.c1*q.c0+d4*m.c0+d3*m.c1,
   p.c0*q.c2+p.c1*q.c1+p.c2*q.c0+d4*m.c1+d3*m.c2⟩

def pow (m p : Cubic A B) : ℕ → Cubic A B
  | 0 => scalar 1
  | n+1 => mul m (pow m p n) p

theorem cubicEval_scalar (w z : F) (q : Quad A B) :
    cubicEval w z (scalar q) = eval w q := by
  simp only [cubicEval,scalar,eval_nat (A:=A) (B:=B) w 0,
    Nat.cast_zero,zero_mul,add_zero]

theorem cubicEval_root (w z : F) :
    cubicEval w z (root : Cubic A B) = z := by
  simp only [cubicEval,root,eval_nat (A:=A) (B:=B) w 0,
    eval_nat (A:=A) (B:=B) w 1,Nat.cast_zero,Nat.cast_one,zero_mul,one_mul,
    zero_add,add_zero]

theorem cubicEval_add (w z : F) (p q : Cubic A B) :
    cubicEval w z (add p q) = cubicEval w z p + cubicEval w z q := by
  simp only [cubicEval,add,eval_add]
  ring

theorem cubicEval_neg (w z : F) (p : Cubic A B) :
    cubicEval w z (neg p) = -cubicEval w z p := by
  simp only [cubicEval,neg,eval_neg]
  ring

theorem cubicEval_mul (w z : F) (hw : w^2 = A+B*w)
    (m p q : Cubic A B) (hz : z^3 = cubicEval w z m) :
    cubicEval w z (mul m p q) = cubicEval w z p * cubicEval w z q := by
  dsimp only [cubicEval,mul] at *
  simp only [eval_add,eval_mul w hw]
  linear_combination -(eval w p.c1*eval w q.c2 + eval w p.c2*eval w q.c1 +
    eval w p.c2*eval w q.c2*eval w m.c2 + eval w p.c2*eval w q.c2*z)*hz

theorem cubicEval_pow (w z : F) (hw : w^2 = A+B*w)
    (m p : Cubic A B) (hz : z^3 = cubicEval w z m) (n : ℕ) :
    cubicEval w z (pow m p n) = (cubicEval w z p)^n := by
  induction n with
  | zero => simp only [pow,cubicEval_scalar,eval_nat (A:=A) (B:=B) w 1,
      Nat.cast_one,pow_zero]
  | succ n ih => rw [pow,cubicEval_mul w z hw m _ _ hz,ih,pow_succ]

end NoFourMUBs.Step2.Reconstruction.CubicEvaluation
