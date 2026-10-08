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

def IsPhase (z : ℂ) : Prop := Complex.normSq z = 1

theorem detE_formula (a b c d : ℂ) :
    detE a b c d = a*d-b*c-d+b+c-a := by
  simp [detE, seed, Matrix.det_fin_three]

theorem phase_ne_zero {z : ℂ} (hz : IsPhase z) : z ≠ 0 := by
  intro h
  simp [IsPhase, h] at hz

theorem phase_star {z : ℂ} (hz : IsPhase z) : star z = z⁻¹ := by
  have hn : star z * z = 1 := by
    rw [← Complex.normSq_eq_conj_mul_self]
    simpa [IsPhase] using hz.symm
  exact (eq_inv_of_mul_eq_one_left hn)

end
end FourierSeedBinding
