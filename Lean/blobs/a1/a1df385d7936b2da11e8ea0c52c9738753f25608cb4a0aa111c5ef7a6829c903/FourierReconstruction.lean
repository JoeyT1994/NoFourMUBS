import FourierSide

namespace Hadamard6Extensions.FourierSide
noncomputable section

def prod3 (x : Fin 3 → ℂ) : ℂ := x 0*x 1*x 2
def mixed21 (x y : Fin 3 → ℂ) : ℂ :=
  x 0*x 1*y 2 + x 0*y 1*x 2 + y 0*x 1*x 2
def mixed12 (x y : Fin 3 → ℂ) : ℂ :=
  x 0*y 1*y 2 + y 0*x 1*y 2 + y 0*y 1*x 2

theorem mixed_linear_product (x y : Fin 3 → ℂ) (p q : ℂ) :
    prod3 (fun j => p*x j+q*y j) =
      prod3 x*p^3+mixed21 x y*p^2*q+mixed12 x y*p*q^2+prod3 y*q^3 := by
  simp only [prod3,mixed21,mixed12]
  ring

def cubeRadicand (x y : Fin 3 → ℂ) (s t h alpha delta : ℂ) : ℂ :=
  (prod3 x*h^3-mixed21 x y*h^2*alpha+mixed12 x y*h*alpha^2-
    prod3 y*alpha^3-(h*s-alpha*t)^3/27)/delta^3

theorem cube_radicand_correct (s t A B C D w : ℂ)
    (hw : w^2+w+1 = 0) (hdet : A*D-B*C ≠ 0) :
    cubeRadicand (fourierRow s A B w) (fourierRow t C D w)
      s t (9*A*D) (9*A*B) (9*(A*D-B*C)) = A^3 := by
  let x := fourierRow s A B w
  let y := fourierRow t C D w
  let h := 9*A*D
  let alpha := 9*A*B
  let delta := 9*(A*D-B*C)
  have hdelta : delta ≠ 0 := mul_ne_zero (by norm_num) hdet
  have hrow : (fun j => h*x j-alpha*y j) =
      fourierRow (h*s-alpha*t) (delta*A) 0 w := by
    ext j
    fin_cases j <;> simp [x,y,h,alpha,delta,fourierRow] <;> ring
  have hp := congrArg prod3 hrow
  dsimp only [prod3] at hp
  rw [row_product (h*s-alpha*t) (delta*A) 0 w hw] at hp
  have hm := mixed_linear_product x y h (-alpha)
  have hnumer : prod3 x*h^3-mixed21 x y*h^2*alpha+mixed12 x y*h*alpha^2-
      prod3 y*alpha^3-(h*s-alpha*t)^3/27 = (delta*A)^3 := by
    change (h*x 0-alpha*y 0)*(h*x 1-alpha*y 1)*(h*x 2-alpha*y 2) = _ at hp
    simp only [prod3] at hm
    simp only [prod3]
    linear_combination hp - hm
  change (prod3 x*h^3-mixed21 x y*h^2*alpha+mixed12 x y*h*alpha^2-
      prod3 y*alpha^3-(h*s-alpha*t)^3/27)/delta^3 = A^3
  rw [hnumer]
  field_simp

def radicalSide (s t alpha beta h tau w : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  affineSide s t tau (alpha/(9*tau)) (beta*tau/h) (h/(9*tau)) w

theorem reconstruction_from_mode (s t A B C D k w : ℂ)
    (hA : A ≠ 0) (hD : D ≠ 0) (hk : k^3 = 1) :
    radicalSide s t (9*A*B) (9*C*D) (9*A*D) (A*k) w =
      affineSide s t (A*k) (B*k^2) (C*k) (D*k^2) w := by
  have hk0 : k ≠ 0 := by intro h; simp [h] at hk
  have hB : (9*A*B)/(9*(A*k)) = B*k^2 := by
    field_simp
    rw [hk]
    ring
  have hC : (9*C*D)*(A*k)/(9*A*D) = C*k := by field_simp
  have hD' : (9*A*D)/(9*(A*k)) = D*k^2 := by
    field_simp
    rw [hk]
  simp only [radicalSide,hB,hC,hD']

def cycle3 : Equiv.Perm (Fin 3) where
  toFun j := j+1
  invFun j := j+2
  left_inv := by decide
  right_inv := by decide

theorem row_rotate_once (s A B w : ℂ) (hw : w^2+w+1 = 0) :
    fourierRow s (A*w) (B*w^2) w = fun j => fourierRow s A B w (cycle3 j) := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  ext j
  fin_cases j <;> simp [fourierRow,cycle3] <;> ring_nf <;>
    simp only [h4,h3,h2] <;> ring

theorem row_rotate_twice (s A B w : ℂ) (hw : w^2+w+1 = 0) :
    fourierRow s (A*w^2) (B*w) w =
      fun j => fourierRow s A B w (cycle3 (cycle3 j)) := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  ext j
  fin_cases j <;> simp [fourierRow,cycle3] <;> ring_nf <;>
    simp only [h4,h3,h2] <;> ring

theorem row_reverse (s A B w : ℂ) :
    fourierRow s B A w = fun j => fourierRow s A B w (Equiv.swap 1 2 j) := by
  ext j
  fin_cases j <;> simp [fourierRow,Equiv.swap_apply_def] <;> ring

theorem cube_choice_only_permutes (s t A B C D w tau : ℂ)
    (hw : w^2+w+1 = 0) (hA : A ≠ 0) (hD : D ≠ 0)
    (htau : tau^3 = A^3) :
    ∃ p : Equiv.Perm (Fin 3),
      radicalSide s t (9*A*B) (9*C*D) (9*A*D) tau w =
        fun i j => affineSide s t A B C D w i (p j) := by
  rcases cube_roots_are_modes hw htau with h | h | h
  · rw [h]
    have hh := reconstruction_from_mode s t A B C D 1 w hA hD (by norm_num)
    simp only [mul_one,one_pow] at hh
    rw [hh]
    exact ⟨Equiv.refl _, rfl⟩
  · rw [h,reconstruction_from_mode s t A B C D w w hA hD (omega_cube hw)]
    refine ⟨cycle3,?_⟩
    ext i j
    fin_cases i
    · fin_cases j <;> rfl
    · exact congrFun (row_rotate_once s A B w hw) j
    · exact congrFun (row_rotate_once t C D w hw) j
  · have hcube : (w^2)^3 = 1 := by
      calc
        (w^2)^3 = (w^3)^2 := by ring
        _ = 1 := by rw [omega_cube hw]; norm_num
    rw [h,reconstruction_from_mode s t A B C D (w^2) w hA hD hcube]
    have hfour : (w^2)^2 = w := by
      calc
        (w^2)^2 = w^4 := by ring
        _ = w := omega_four hw
    rw [hfour]
    refine ⟨cycle3.trans cycle3,?_⟩
    ext i j
    fin_cases i
    · fin_cases j <;> rfl
    · exact congrFun (row_rotate_twice s A B w hw) j
    · exact congrFun (row_rotate_twice t C D w hw) j

theorem radical_reconstruction_of_actual_side (s t A B C D w tau : ℂ)
    (hw : w^2+w+1 = 0) (hA : A ≠ 0) (hD : D ≠ 0)
    (hdet : A*D-B*C ≠ 0)
    (htau : tau^3 = cubeRadicand (fourierRow s A B w) (fourierRow t C D w)
      s t (9*A*D) (9*A*B) (9*(A*D-B*C))) :
    ∃ p : Equiv.Perm (Fin 3),
      radicalSide s t (9*A*B) (9*C*D) (9*A*D) tau w =
        fun i j => affineSide s t A B C D w i (p j) := by
  rw [cube_radicand_correct s t A B C D w hw hdet] at htau
  exact cube_choice_only_permutes s t A B C D w tau hw hA hD htau

#print axioms cube_radicand_correct
#print axioms reconstruction_from_mode
#print axioms row_rotate_once
#print axioms row_rotate_twice
#print axioms row_reverse
#print axioms cube_choice_only_permutes
#print axioms radical_reconstruction_of_actual_side

end
end Hadamard6Extensions.FourierSide
