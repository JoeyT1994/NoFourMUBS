import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Exact conditional arithmetic for Patch2442Region_v3, Section 1.
All supplied lower/upper bounds and mean formulas remain explicit premises.
This file supplies no phase provider, interval evaluator, or physical cover. -/
set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace Patch2442SignedSqrt20261003
noncomputable section

def clearedC (A B D R : ℝ) : ℝ := A^2+(B^2-D^2)*R
def clearedT (A B : ℝ) : ℝ := 2*A*B
def clearedF (C T R : ℝ) : ℝ := C^2-T^2*R

theorem mean_square_le_of_three {x y z R : ℝ}
    (hx : x^2 ≤ R) (hy : y^2 ≤ R) (hz : z^2 ≤ R) :
    ((x+y+z)/3)^2 ≤ R := by
  nlinarith [sq_nonneg (x-y),sq_nonneg (x-z),sq_nonneg (y-z)]

theorem cleared_mean_identity (A B D R σ : ℝ)
    (hR : 0 ≤ R) (hσ : σ^2 = 1) :
    clearedC A B D R + σ*clearedT A B*Real.sqrt R =
      (A+σ*B*Real.sqrt R)^2-D^2*R := by
  have hs : (σ*B*Real.sqrt R)^2 = B^2*R := by
    simp only [mul_pow,hσ,Real.sq_sqrt hR,one_mul]
  calc
    _ = A^2+(σ*B*Real.sqrt R)^2+2*A*(σ*B*Real.sqrt R)-D^2*R := by
      rw [hs]
      unfold clearedC clearedT
      ring
    _ = _ := by ring

theorem mean_square_forces_cleared_nonpos {A B D R σ : ℝ}
    (hD : 0 < D) (hR : 0 ≤ R) (hσ : σ^2 = 1)
    (hm : ((A+σ*B*Real.sqrt R)/D)^2 ≤ R) :
    clearedC A B D R + σ*clearedT A B*Real.sqrt R ≤ 0 := by
  have hd : 0 < D^2 := sq_pos_of_pos hD
  have hn : (A+σ*B*Real.sqrt R)^2 ≤ R*D^2 :=
    (div_le_iff₀ hd).mp (by simpa only [div_pow] using hm)
  rw [cleared_mean_identity _ _ _ _ _ hR hσ]
  nlinarith

theorem positive_add_of_square_lt {c v : ℝ} (hc : 0 < c) (hv : v^2 < c^2) :
    0 < c+v := by
  by_contra h
  have hh : c+v ≤ 0 := le_of_not_gt h
  have hp : 0 ≤ (-c-v)*(c-v) := mul_nonneg (by linarith) (by linarith)
  nlinarith

theorem cleared_F_excludes_both_signs {C T R σ : ℝ}
    (hC : 0 < C) (hF : 0 < clearedF C T R)
    (hR : 0 ≤ R) (hσ : σ^2 = 1) :
    0 < C+σ*T*Real.sqrt R := by
  apply positive_add_of_square_lt hC
  have hs : (σ*T*Real.sqrt R)^2 = T^2*R := by
    simp only [mul_pow,hσ,Real.sq_sqrt hR,one_mul]
  rw [hs]
  exact sub_pos.mp hF

theorem mean_square_excluded_by_CF {A B D R σ : ℝ}
    (hD : 0 < D) (hR : 0 ≤ R) (hσ : σ^2 = 1)
    (hC : 0 < clearedC A B D R)
    (hF : 0 < clearedF (clearedC A B D R) (clearedT A B) R) :
    ¬ ((A+σ*B*Real.sqrt R)/D)^2 ≤ R := by
  intro hm
  exact not_lt_of_ge (mean_square_forces_cleared_nonpos hD hR hσ hm)
    (cleared_F_excludes_both_signs hC hF hR hσ)

theorem sqrt_expression_lower_bound {c C y Y R : ℝ}
    (hc : c ≤ C) (hy : y ≤ Y) :
    c+y*Real.sqrt R ≤ C+Y*Real.sqrt R :=
  add_le_add hc (mul_le_mul_of_nonneg_right hy (Real.sqrt_nonneg R))

theorem positive_of_nonnegative_bounds {c y L R : ℝ}
    (hc : 0 ≤ c) (hy : 0 ≤ y) (hLR : L ≤ R)
    (hp : 0 < c ∨ (0 < y ∧ 0 < L)) :
    0 < c+y*Real.sqrt R := by
  rcases hp with hp | ⟨hyp,hLp⟩
  · exact add_pos_of_pos_of_nonneg hp (mul_nonneg hy (Real.sqrt_nonneg R))
  · exact add_pos_of_nonneg_of_pos hc
      (mul_pos hyp (Real.sqrt_pos.mpr (lt_of_lt_of_le hLp hLR)))

/-- This sufficient upper-square bound even works without assuming y<0. -/
theorem positive_of_upper_square {c y R U : ℝ}
    (hc : 0 < c) (hR : 0 ≤ R) (hRU : R ≤ U) (hs : y^2*U < c^2) :
    0 < c+y*Real.sqrt R := by
  apply positive_add_of_square_lt hc
  rw [mul_pow,Real.sq_sqrt hR]
  exact lt_of_le_of_lt (mul_le_mul_of_nonneg_left hRU (sq_nonneg y)) hs

/-- This sufficient lower-square bound even works without assuming c<0. -/
theorem positive_of_lower_square {c y L R : ℝ}
    (hy : 0 < y) (hL : 0 < L) (hLR : L ≤ R) (hs : c^2 < y^2*L) :
    0 < c+y*Real.sqrt R := by
  have hR : 0 < R := lt_of_lt_of_le hL hLR
  have hp : 0 < y*Real.sqrt R := mul_pos hy (Real.sqrt_pos.mpr hR)
  have hq : c^2 < (y*Real.sqrt R)^2 := by
    rw [mul_pow,Real.sq_sqrt hR.le]
    exact lt_of_lt_of_le hs (mul_le_mul_of_nonneg_left hLR (sq_nonneg y))
  simpa only [add_comm] using positive_add_of_square_lt hp hq

/-- The three strict comparison alternatives in the pinned proof input. -/
def SignedSqrtLowerCertificate (c y L U : ℝ) : Prop :=
  (0 ≤ c ∧ 0 ≤ y ∧ (0 < c ∨ (0 < y ∧ 0 < L))) ∨
  (0 < c ∧ y < 0 ∧ y^2*U < c^2) ∨
  (c < 0 ∧ 0 < y ∧ 0 < L ∧ c^2 < y^2*L)

theorem signed_sqrt_certificate_sound {C Y R c y L U : ℝ}
    (hR : 0 ≤ R) (hLR : L ≤ R) (hRU : R ≤ U)
    (hc : c ≤ C) (hy : y ≤ Y)
    (cert : SignedSqrtLowerCertificate c y L U) :
    0 < C+Y*Real.sqrt R := by
  apply lt_of_lt_of_le _ (sqrt_expression_lower_bound hc hy)
  rcases cert with ⟨hc0,hy0,hpos⟩ | ⟨hcp,_,hs⟩ | ⟨_,hyp,hLp,hs⟩
  · exact positive_of_nonnegative_bounds hc0 hy0 hLR hpos
  · exact positive_of_upper_square hcp hR hRU hs
  · exact positive_of_lower_square hyp hLp hLR hs

theorem signed_mean_excluded_by_certificate {A B D R σ c y L U : ℝ}
    (hD : 0 < D) (hR : 0 ≤ R) (hσ : σ^2 = 1)
    (hLR : L ≤ R) (hRU : R ≤ U)
    (hc : c ≤ clearedC A B D R) (hy : y ≤ σ*clearedT A B)
    (cert : SignedSqrtLowerCertificate c y L U) :
    ¬ ((A+σ*B*Real.sqrt R)/D)^2 ≤ R := by
  intro hm
  have hp := signed_sqrt_certificate_sound hR hLR hRU hc hy cert
  exact not_lt_of_ge (mean_square_forces_cleared_nonpos hD hR hσ hm) hp

theorem nonpositive_upper_excludes_strict {R U : ℝ} (hRU : R ≤ U) (hU : U ≤ 0) :
    ¬ 0 < R := not_lt_of_ge (hRU.trans hU)

#print axioms mean_square_le_of_three
#print axioms cleared_mean_identity
#print axioms mean_square_forces_cleared_nonpos
#print axioms positive_add_of_square_lt
#print axioms cleared_F_excludes_both_signs
#print axioms mean_square_excluded_by_CF
#print axioms sqrt_expression_lower_bound
#print axioms positive_of_nonnegative_bounds
#print axioms positive_of_upper_square
#print axioms positive_of_lower_square
#print axioms signed_sqrt_certificate_sound
#print axioms signed_mean_excluded_by_certificate
#print axioms nonpositive_upper_excludes_strict
#print signed_sqrt_certificate_sound
end
end Patch2442SignedSqrt20261003
