import NoFourMUBs.Reuse.Archive.FourierReconstruction

/-! Binding the Fourier reconstruction to the invariants of actual phase rows.
This binds the phase-side identities, not the seed-to-side existence theorem. -/
namespace Hadamard6Extensions.FourierSide
noncomputable section

def sum3 (x : Fin 3 → ℂ) : ℂ := x 0+x 1+x 2
def second3 (x : Fin 3 → ℂ) : ℂ := x 0*x 1+x 0*x 2+x 1*x 2
def cross3 (x y : Fin 3 → ℂ) : ℂ :=
  y 0*star (x 0)+y 1*star (x 1)+y 2*star (x 2)
def permanentSide (x y : Fin 3 → ℂ) : ℂ :=
  x 0*y 1+x 0*y 2+x 1*y 0+x 1*y 2+x 2*y 0+x 2*y 1
def IsPhase3 (x : Fin 3 → ℂ) : Prop := ∀ j, Complex.normSq (x j)=1

theorem phase_mul_star {x : Fin 3 → ℂ} (hx : IsPhase3 x) (j : Fin 3) :
    x j*star (x j)=1 := by
  simpa only [Complex.star_def,Complex.mul_conj,hx j,Complex.ofReal_one]

theorem phase_second_moment {x : Fin 3 → ℂ} (hx : IsPhase3 x) :
    prod3 x*star (sum3 x)=second3 x := by
  have h0 := phase_mul_star hx 0
  have h1 := phase_mul_star hx 1
  have h2 := phase_mul_star hx 2
  simp only [prod3,sum3,second3,star_add]
  linear_combination (x 1*x 2)*h0+(x 0*x 2)*h1+(x 0*x 1)*h2

theorem phase_mixed21 {x y : Fin 3 → ℂ} (hx : IsPhase3 x) :
    mixed21 x y=prod3 x*cross3 x y := by
  have h0 := phase_mul_star hx 0
  have h1 := phase_mul_star hx 1
  have h2 := phase_mul_star hx 2
  simp only [mixed21,prod3,cross3]
  linear_combination -(x 1*x 2*y 0)*h0-(x 0*x 2*y 1)*h1-(x 0*x 1*y 2)*h2

theorem phase_mixed12 {x y : Fin 3 → ℂ} (hy : IsPhase3 y) :
    mixed12 x y=prod3 y*star (cross3 x y) := by
  have h0 := phase_mul_star hy 0
  have h1 := phase_mul_star hy 1
  have h2 := phase_mul_star hy 2
  simp only [mixed12,prod3,cross3,star_add,star_mul,star_star]
  linear_combination -(y 1*y 2*x 0)*h0-(y 0*y 2*x 1)*h1-(y 0*y 1*x 2)*h2

theorem phase_alpha (s A B w : ℂ) (hw : w^2+w+1=0)
    (hx : IsPhase3 (fourierRow s A B w)) :
    s^2-3*prod3 (fourierRow s A B w)*star s=9*A*B := by
  have hs : sum3 (fourierRow s A B w)=s := row_sum s A B w hw
  have h := phase_second_moment hx
  rw [hs] at h
  calc
    s^2-3*prod3 (fourierRow s A B w)*star s =
        s^2-3*(prod3 (fourierRow s A B w)*star s) := by ring
    _ = s^2-3*second3 (fourierRow s A B w) := by rw [h]
    _ = 9*A*B := centered_second_moment s A B w hw

theorem phase_gamma (s t A B C D w : ℂ) (hw : w^2+w+1=0) :
    2*s*t-3*permanentSide (fourierRow s A B w) (fourierRow t C D w)=
      9*(A*D+B*C) := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  simp only [permanentSide,fourierRow,Matrix.cons_val_zero,Matrix.cons_val_one,
    Matrix.cons_val_two,Matrix.head_cons,Matrix.tail_cons]
  ring_nf
  simp only [h4,h3,h2]
  ring

def phaseRadicand (s t u v r h alpha delta : ℂ) : ℂ :=
  (u*h^2*(h-alpha*r)+v*alpha^2*(h*star r-alpha)-(h*s-alpha*t)^3/27)/delta^3

theorem phase_radicand_binding (x y : Fin 3 → ℂ) (s t h alpha delta : ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) :
    phaseRadicand s t (prod3 x) (prod3 y) (cross3 x y) h alpha delta=
      cubeRadicand x y s t h alpha delta := by
  simp only [phaseRadicand,cubeRadicand,phase_mixed21 hx,phase_mixed12 hy]
  ring

theorem physical_phase_radicand_correct (s t A B C D w : ℂ)
    (hw : w^2+w+1=0) (hdet : A*D-B*C≠0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w)) :
    phaseRadicand s t (prod3 (fourierRow s A B w)) (prod3 (fourierRow t C D w))
      (cross3 (fourierRow s A B w) (fourierRow t C D w))
      (9*A*D) (9*A*B) (9*(A*D-B*C))=A^3 := by
  rw [phase_radicand_binding _ _ _ _ _ _ _ hx hy]
  exact cube_radicand_correct s t A B C D w hw hdet

theorem physical_phase_reconstruction (s t A B C D w tau : ℂ)
    (hw : w^2+w+1=0) (hA : A≠0) (hD : D≠0) (hdet : A*D-B*C≠0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w))
    (htau : tau^3=phaseRadicand s t
      (prod3 (fourierRow s A B w)) (prod3 (fourierRow t C D w))
      (cross3 (fourierRow s A B w) (fourierRow t C D w))
      (9*A*D) (s^2-3*prod3 (fourierRow s A B w)*star s) (9*(A*D-B*C))) :
    ∃ p : Equiv.Perm (Fin 3),
      radicalSide s t (s^2-3*prod3 (fourierRow s A B w)*star s)
        (t^2-3*prod3 (fourierRow t C D w)*star t) (9*A*D) tau w=
      fun i j => affineSide s t A B C D w i (p j) := by
  rw [phase_alpha s A B w hw hx] at htau ⊢
  rw [phase_alpha t C D w hw hy]
  rw [physical_phase_radicand_correct s t A B C D w hw hdet hx hy] at htau
  exact cube_choice_only_permutes s t A B C D w tau hw hA hD htau

#print axioms phase_mul_star
#print axioms phase_second_moment
#print axioms phase_mixed21
#print axioms phase_mixed12
#print axioms phase_alpha
#print axioms phase_gamma
#print axioms phase_radicand_binding
#print axioms physical_phase_radicand_correct
#print axioms physical_phase_reconstruction

end
end Hadamard6Extensions.FourierSide
