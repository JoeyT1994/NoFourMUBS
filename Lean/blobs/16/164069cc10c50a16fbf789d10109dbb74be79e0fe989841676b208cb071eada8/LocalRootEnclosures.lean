import ExplicitComplexRoots
import FourierConditioning
import Mathlib.Tactic.Linarith

/-! Local root enclosures from residuals, without a principal-root continuity claim.
The radius is squared in the main contracts; component boxes require a
nonnegative radius. Every root needed for existence is supplied by the checked
explicit root construction. -/
namespace Hadamard6Extensions.LocalRootEnclosures
open Hadamard6Extensions.FourierSide
open Hadamard6Extensions.FourierConditioning
open Hadamard6Extensions.FourPhaseRoots
noncomputable section

theorem one_factor_small_two (a b r : ℝ) (hr : 0 ≤ r)
    (hprod : a*b ≤ r^2) : a ≤ r ∨ b ≤ r := by
  by_cases ha : a ≤ r
  · exact Or.inl ha
  right
  by_contra hb
  have ha' : r < a := lt_of_not_ge ha
  have hb' : r < b := lt_of_not_ge hb
  have hp : r*r < a*b := calc
    r*r ≤ r*b := mul_le_mul_of_nonneg_left hb'.le hr
    _ < a*b := mul_lt_mul_of_pos_right ha' (lt_of_le_of_lt hr hb')
  nlinarith

theorem one_factor_small_three (a b c r : ℝ) (hr : 0 ≤ r)
    (hprod : a*b*c ≤ r^3) : a ≤ r ∨ b ≤ r ∨ c ≤ r := by
  by_cases ha : a ≤ r
  · exact Or.inl ha
  by_cases hb : b ≤ r
  · exact Or.inr (Or.inl hb)
  right
  right
  by_contra hc
  have ha' : r < a := lt_of_not_ge ha
  have hb' : r < b := lt_of_not_ge hb
  have hc' : r < c := lt_of_not_ge hc
  have hab : r^2 < a*b := by
    have hp : r*r < a*b := calc
      r*r ≤ r*b := mul_le_mul_of_nonneg_left hb'.le hr
      _ < a*b := mul_lt_mul_of_pos_right ha' (lt_of_le_of_lt hr hb')
    nlinarith
  have hp : r^3 < a*b*c := calc
    r^3 = r^2*r := by ring
    _ ≤ (a*b)*r := mul_le_mul_of_nonneg_right hab.le hr
    _ < (a*b)*c := mul_lt_mul_of_pos_left hc'
      (mul_pos (lt_of_le_of_lt hr ha') (lt_of_le_of_lt hr hb'))
  exact (not_lt_of_ge hprod) hp

theorem square_root_near_sign {δ D c : ℂ} {ε : ℝ}
    (hδ : δ^2 = D) (hres : Complex.normSq (D-c^2) ≤ ε^4) :
    Complex.normSq (δ-c) ≤ ε^2 ∨ Complex.normSq (δ+c) ≤ ε^2 := by
  have hfact : (δ-c)*(δ+c) = D-c^2 := by rw [← hδ]; ring
  have hn := congrArg Complex.normSq hfact
  simp only [map_mul] at hn
  apply one_factor_small_two _ _ _ (sq_nonneg ε)
  rw [hn]
  convert hres using 1 <;> ring

theorem cube_residual_near_mode (u c w : ℂ) (ε : ℝ)
    (hw : w^2+w+1=0) (hres : Complex.normSq (u^3-c^3) ≤ ε^6) :
    Complex.normSq (u-c) ≤ ε^2 ∨
    Complex.normSq (u-c*w) ≤ ε^2 ∨
    Complex.normSq (u-c*w^2) ≤ ε^2 := by
  have hn := congrArg Complex.normSq (cubic_factor c u w hw)
  simp only [map_mul] at hn
  apply one_factor_small_three _ _ _ _ (sq_nonneg ε)
  rw [hn]
  convert hres using 1 <;> ring

theorem rotate_cube_near_mode (u c w : ℂ) (ε : ℝ)
    (hw : w^2+w+1=0) (hres : Complex.normSq (u^3-c^3) ≤ ε^6) :
    ∃ τ : ℂ, τ^3=u^3 ∧ Complex.normSq (τ-c) ≤ ε^2 := by
  have hw3 := omega_cube hw
  have hwn := omega_normSq hw
  rcases cube_residual_near_mode u c w ε hw hres with h | h | h
  · exact ⟨u, rfl, h⟩
  · refine ⟨u*w^2, ?_, ?_⟩
    · calc
        (u*w^2)^3 = u^3*(w^3)^2 := by ring
        _ = u^3 := by rw [hw3]; ring
    · have he : u*w^2-c = (u-c*w)*w^2 := by
        linear_combination c*hw3
      rw [he, map_mul, map_pow, hwn]
      simpa using h
  · refine ⟨u*w, ?_, ?_⟩
    · rw [mul_pow, hw3, mul_one]
    · have he : u*w-c = (u-c*w^2)*w := by
        linear_combination c*hw3
      rw [he, map_mul, hwn, mul_one]
      exact h

theorem exists_cube_root_near (T c : ℂ) (ε : ℝ)
    (hres : Complex.normSq (T-c^3) ≤ ε^6) :
    ∃ τ : ℂ, τ^3=T ∧ Complex.normSq (τ-c) ≤ ε^2 := by
  have hu := cubeRoot_cube T
  have hres' : Complex.normSq ((cubeRoot T)^3-c^3) ≤ ε^6 := by
    rwa [hu]
  obtain ⟨τ,hτ,hd⟩ := rotate_cube_near_mode (cubeRoot T) c omega ε
    omega_quadratic hres'
  exact ⟨τ,hτ.trans hu,hd⟩

theorem exists_square_root_near (D c : ℂ) (ε : ℝ)
    (hres : Complex.normSq (D-c^2) ≤ ε^4) :
    ∃ δ : ℂ, δ^2=D ∧ Complex.normSq (δ-c) ≤ ε^2 := by
  have hd := squareRoot_sq D
  rcases square_root_near_sign hd hres with h | h
  · exact ⟨squareRoot D,hd,h⟩
  · refine ⟨-squareRoot D,by simpa using hd,?_⟩
    have he : -squareRoot D-c = -(squareRoot D+c) := by ring
    rw [he, map_neg]
    simpa using h

theorem normSq_bound_components {z c : ℂ} {ε : ℝ} (hε : 0 ≤ ε)
    (h : Complex.normSq (z-c) ≤ ε^2) :
    c.re-ε ≤ z.re ∧ z.re ≤ c.re+ε ∧
    c.im-ε ≤ z.im ∧ z.im ≤ c.im+ε := by
  have hre := sq_nonneg (z.re-c.re)
  have him := sq_nonneg (z.im-c.im)
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.sub_im] at h
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

theorem cube_root_rectangle (T c : ℂ) (ε : ℝ) (hε : 0 ≤ ε)
    (hres : Complex.normSq (T-c^3) ≤ ε^6) :
    ∃ τ : ℂ, τ^3=T ∧ c.re-ε ≤ τ.re ∧ τ.re ≤ c.re+ε ∧
      c.im-ε ≤ τ.im ∧ τ.im ≤ c.im+ε := by
  obtain ⟨τ,ht,hd⟩ := exists_cube_root_near T c ε hres
  exact ⟨τ,ht,normSq_bound_components hε hd⟩

theorem square_root_rectangle (D c : ℂ) (ε : ℝ) (hε : 0 ≤ ε)
    (hres : Complex.normSq (D-c^2) ≤ ε^4) :
    ∃ δ : ℂ, δ^2=D ∧ c.re-ε ≤ δ.re ∧ δ.re ≤ c.re+ε ∧
      c.im-ε ≤ δ.im ∧ δ.im ≤ c.im+ε := by
  obtain ⟨δ,ht,hd⟩ := exists_square_root_near D c ε hres
  exact ⟨δ,ht,normSq_bound_components hε hd⟩

#check square_root_near_sign
#check cube_residual_near_mode
#check rotate_cube_near_mode
#check exists_cube_root_near
#check exists_square_root_near
#check normSq_bound_components
#check cube_root_rectangle
#check square_root_rectangle
#print axioms one_factor_small_two
#print axioms one_factor_small_three
#print axioms square_root_near_sign
#print axioms cube_residual_near_mode
#print axioms rotate_cube_near_mode
#print axioms exists_cube_root_near
#print axioms exists_square_root_near
#print axioms normSq_bound_components
#print axioms cube_root_rectangle
#print axioms square_root_rectangle
end
end Hadamard6Extensions.LocalRootEnclosures
