import Mathlib.Data.Complex.Basic
import Mathlib.Data.Matrix.Notation
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Adjugate
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Linarith
import LiftedSheetGuards

/-! Concrete bindings for the dephased four-phase seed. -/

namespace FourierSeedBinding

open Matrix
noncomputable section

def seed (a b c d : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  ![![1,1,1], ![1,a,b], ![1,c,d]]

def gramH (a b c d : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ) -
    seed a b c d * (seed a b c d)ᴴ

def gramV (a b c d : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  (6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ) -
    (seed a b c d)ᵀ * ((seed a b c d)ᵀ)ᴴ

def detE (a b c d : ℂ) : ℂ := (seed a b c d).det

def permE (a b c d : ℂ) : ℂ :=
  a*d + b*c + a + b + c + d

def g (a b c d : ℂ) : ℝ := (gramH a b c d).det.re

def q (a b c d : ℂ) (i : Fin 3) : ℝ :=
  ((gramH a b c d).adjugate i i).re

def sigma (a b c d : ℂ) : ℝ :=
  q a b c d 0 + q a b c d 1 + q a b c d 2

def eta (a b c d : ℂ) : ℝ := g a b c d + 36 - 2 * sigma a b c d

def sigmaC (a b c d : ℂ) : ℂ :=
  (gramH a b c d).adjugate 0 0 +
  (gramH a b c d).adjugate 1 1 +
  (gramH a b c d).adjugate 2 2

def etaC (a b c d : ℂ) : ℂ :=
  (gramH a b c d).det + 36 - 2 * sigmaC a b c d

def IsPhase (z : ℂ) : Prop := Complex.normSq z = 1

theorem detE_formula (a b c d : ℂ) :
    detE a b c d = a*d-b*c-d+b+c-a := by
  simp [detE, seed, Matrix.det_fin_three]

theorem phase_ne_zero {z : ℂ} (hz : IsPhase z) : z ≠ 0 := by
  intro h
  simp [IsPhase, h] at hz

theorem phase_star {z : ℂ} (hz : IsPhase z) : star z = z⁻¹ := by
  have hn : star z * z = 1 := by
    calc
      star z * z = (Complex.normSq z : ℂ) :=
        (Complex.normSq_eq_conj_mul_self (z := z)).symm
      _ = 1 := by exact_mod_cast hz
  exact (eq_inv_of_mul_eq_one_left hn)

theorem phase_conj {z : ℂ} (hz : IsPhase z) : (starRingEnd ℂ) z = z⁻¹ := by
  simpa only [Complex.star_def] using phase_star hz

theorem phase_mul_conj {z : ℂ} (hz : IsPhase z) :
    z * (starRingEnd ℂ) z = 1 := by
  calc
    z * (starRingEnd ℂ) z = (starRingEnd ℂ) z * z := mul_comm _ _
    _ = (Complex.normSq z : ℂ) := (Complex.normSq_eq_conj_mul_self (z := z)).symm
    _ = 1 := by exact_mod_cast hz

set_option maxHeartbeats 0 in
theorem gramH_det_complex (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    (gramH a b c d).det =
      ((2 * Complex.normSq (detE a b c d) -
        3 * Complex.normSq (permE a b c d) : ℝ) : ℂ) := by
  have hA := phase_mul_conj ha
  have hB := phase_mul_conj hb
  have hC := phase_mul_conj hc
  have hD := phase_mul_conj hd
  simp [gramH, seed, Matrix.det_fin_three, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply, smul_eq_mul,
    detE_formula, permE, Complex.normSq_eq_conj_mul_self,
    star_add, star_sub, StarMul.star_mul]
  linear_combination
    (6*d*(starRingEnd ℂ) d + 6*d + 6*(starRingEnd ℂ) d - 18)*hA +
    (6*c*(starRingEnd ℂ) c + 6*c + 6*(starRingEnd ℂ) c - 18)*hB +
    (6*b + 6*(starRingEnd ℂ) b - 12)*hC +
    (6*a + 6*(starRingEnd ℂ) a - 12)*hD

set_option maxHeartbeats 0 in
theorem etaC_binding (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    etaC a b c d =
      ((Complex.normSq (detE a b c d) -
        2 * Complex.normSq (permE a b c d) : ℝ) : ℂ) := by
  have hA := phase_mul_conj ha
  have hB := phase_mul_conj hb
  have hC := phase_mul_conj hc
  have hD := phase_mul_conj hd
  simp [etaC, sigmaC, gramH, seed, Matrix.det_fin_three,
    Matrix.adjugate_fin_three, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply, smul_eq_mul,
    detE_formula, permE, Complex.normSq_eq_conj_mul_self,
    star_add, star_sub, StarMul.star_mul]
  linear_combination
    (4*d*(starRingEnd ℂ) d + 4*d + 4*(starRingEnd ℂ) d)*hA +
    (4*c*(starRingEnd ℂ) c + 4*c + 4*(starRingEnd ℂ) c)*hB +
    (4*b + 4*(starRingEnd ℂ) b + 4)*hC +
    (4*a + 4*(starRingEnd ℂ) a + 4)*hD

end
end FourierSeedBinding
