import FourierPhaseData

namespace Hadamard6Extensions.FourierSide
noncomputable section

theorem affine_reverse (s t A B C D w : ℂ) :
    affineSide s t B A D C w=
      fun i j => affineSide s t A B C D w i (Equiv.swap 1 2 j) := by
  ext i j
  fin_cases i
  · fin_cases j <;> rfl
  · exact congrFun (row_reverse s A B w) j
  · exact congrFun (row_reverse t C D w) j

/-- One of the two square-root orientations has a nonzero Fourier pivot.
For that orientation every cube root reconstructs the original side up to a
column permutation. No individual phase coordinate separation is required. -/
theorem two_orientation_reconstruction (s t A B C D w : ℂ)
    (hw : w^2+w+1=0) (hdet : A*D-B*C≠0) :
    ∃ h T : ℂ, (h=9*A*D ∨ h=9*B*C) ∧ h≠0 ∧ T≠0 ∧
      ∀ tau : ℂ, tau^3=T → ∃ p : Equiv.Perm (Fin 3),
        radicalSide s t (9*A*B) (9*C*D) h tau w=
          fun i j => affineSide s t A B C D w i (p j) := by
  rcases one_orientation_nonzero hdet with had | hbc
  · have hA : A≠0 := left_ne_zero_of_mul had
    have hD : D≠0 := right_ne_zero_of_mul had
    refine ⟨9*A*D,A^3,Or.inl rfl,?_,pow_ne_zero 3 hA,?_⟩
    · exact mul_ne_zero (mul_ne_zero (by norm_num) hA) hD
    · intro tau htau
      exact cube_choice_only_permutes s t A B C D w tau hw hA hD htau
  · have hB : B≠0 := left_ne_zero_of_mul hbc
    have hC : C≠0 := right_ne_zero_of_mul hbc
    refine ⟨9*B*C,B^3,Or.inr rfl,?_,pow_ne_zero 3 hB,?_⟩
    · exact mul_ne_zero (mul_ne_zero (by norm_num) hB) hC
    · intro tau htau
      obtain ⟨p,hp⟩ := cube_choice_only_permutes s t B A D C w tau hw hB hC htau
      have hab : 9*B*A=9*A*B := by ring
      have hcd : 9*D*C=9*C*D := by ring
      rw [hab,hcd] at hp
      refine ⟨p.trans (Equiv.swap 1 2),?_⟩
      rw [hp,affine_reverse]
      rfl

def firstMode (x : Fin 3 → ℂ) (w : ℂ) : ℂ := (x 0+w^2*x 1+w*x 2)/3
def secondMode (x : Fin 3 → ℂ) (w : ℂ) : ℂ := (x 0+w*x 1+w^2*x 2)/3
def actualSide (x y : Fin 3 → ℂ) : Matrix (Fin 3) (Fin 3) ℂ := ![![1,1,1],x,y]

theorem actual_side_fourier (x y : Fin 3 → ℂ) (w : ℂ) (hw : w^2+w+1=0) :
    affineSide (sum3 x) (sum3 y) (firstMode x w) (secondMode x w)
      (firstMode y w) (secondMode y w) w=actualSide x y := by
  have hx := fourier_inverse (x 0) (x 1) (x 2) w hw
  have hy := fourier_inverse (y 0) (y 1) (y 2) w hw
  have hx' : fourierRow (sum3 x) (firstMode x w) (secondMode x w) w=x := by
    rw [show x=![x 0,x 1,x 2] from by ext j; fin_cases j <;> rfl] at ⊢
    exact hx
  have hy' : fourierRow (sum3 y) (firstMode y w) (secondMode y w) w=y := by
    rw [show y=![y 0,y 1,y 2] from by ext j; fin_cases j <;> rfl] at ⊢
    exact hy
  simp only [affineSide,actualSide,hx',hy']
  rfl

theorem arbitrary_invertible_side_has_two_orientation_chart
    (x y : Fin 3 → ℂ) (w : ℂ) (hw : w^2+w+1=0)
    (hinv : (actualSide x y).det≠0) :
    ∃ h T : ℂ, h≠0 ∧ T≠0 ∧ ∀ tau : ℂ, tau^3=T →
      ∃ p : Equiv.Perm (Fin 3),
        radicalSide (sum3 x) (sum3 y) (9*firstMode x w*secondMode x w)
          (9*firstMode y w*secondMode y w) h tau w=
        fun i j => actualSide x y i (p j) := by
  have hside := actual_side_fourier x y w hw
  have hn := invertible_side_has_nonzero_discriminant (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw
    (by rw [hside]; exact hinv)
  have hdet : firstMode x w*secondMode y w-secondMode x w*firstMode y w≠0 := by
    intro hz
    apply hn
    rw [hz,mul_zero]
  obtain ⟨h,T,_,hh,hT,hrec⟩ := two_orientation_reconstruction (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw hdet
  refine ⟨h,T,hh,hT,?_⟩
  intro tau htau
  obtain ⟨p,hp⟩ := hrec tau htau
  refine ⟨p,?_⟩
  rw [hside] at hp
  exact hp

#print axioms affine_reverse
#print axioms two_orientation_reconstruction
#print axioms actual_side_fourier
#print axioms arbitrary_invertible_side_has_two_orientation_chart

end
end Hadamard6Extensions.FourierSide
