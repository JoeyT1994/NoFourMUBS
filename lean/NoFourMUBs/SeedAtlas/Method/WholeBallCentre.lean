import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic

/-!
# Exact centre identities for Z's quadratic predictor

Return Z, THEOREM.md §2 (0)–(1). These are exact identities, not estimates of
small floating-point residuals. The Gram inverse is the specified inverse
`(Aᵀ A)⁻¹ Aᵀ`; an arbitrary approximate left inverse is not substituted.

For `secondJet`, the `30 × 16` matrix `B` is the flattened tensor
`D²Phi(q0)[U,U]`. The tensor's derivative interpretation is a separate calculus
obligation; this file proves the exact cancellation once that interpretation
has been established.
-/

open Matrix

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

noncomputable section

abbrev PhaseSeed := Matrix (Fin 36) (Fin 4) ℝ
abbrev NormalBasis := Matrix (Fin 36) (Fin 21) ℝ
abbrev ResidualJac := Matrix (Fin 30) (Fin 36) ℝ
abbrev Projection := Matrix (Fin 21) (Fin 30) ℝ
abbrev SeedMap := Matrix (Fin 4) (Fin 36) ℝ

def gramLeftInverse (A : Matrix (Fin 30) (Fin 21) ℝ) : Projection :=
  (Aᵀ * A)⁻¹ * Aᵀ

/-- Z (0): the specified Gram inverse is an exact left inverse. -/
theorem gramLeftInverse_mul (A : Matrix (Fin 30) (Fin 21) ℝ) (hA : IsUnit (Aᵀ * A).det) :
    gramLeftInverse A * A = 1 := by
  rw [gramLeftInverse, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hA]

def centreProjection (J : ResidualJac) (X : NormalBasis) : Projection := gramLeftInverse (J * X)

theorem centreProjection_identity (J : ResidualJac) (X : NormalBasis)
    (hA : IsUnit ((J * X)ᵀ * (J * X)).det) : centreProjection J X * J * X = 1 := by
  rw [Matrix.mul_assoc]
  exact gramLeftInverse_mul (J * X) hA

def tangentPredictor (V : PhaseSeed) (X : NormalBasis) (W : Projection) (J : ResidualJac)
    (M : Matrix (Fin 4) (Fin 4) ℝ) : PhaseSeed := (V - X * W * J * V) * M

/-- `W J U = 0` exactly, so the predictor's projected linear jet vanishes. -/
theorem projected_tangent (V : PhaseSeed) (X : NormalBasis) (W : Projection) (J : ResidualJac)
    (M : Matrix (Fin 4) (Fin 4) ℝ) (hW : W * J * X = 1) :
    W * J * tangentPredictor V X W J M = 0 := by
  have hc : W * J * (X * W * J * V) = W * J * V := by
    calc
      _ = (W * J * X) * (W * J * V) := by simp only [Matrix.mul_assoc]
      _ = W * J * V := by rw [hW, Matrix.one_mul]
  rw [tangentPredictor, ← Matrix.mul_assoc, Matrix.mul_sub, hc, sub_self, Matrix.zero_mul]

/-- `L U = M` exactly: the corrected tangent still has the prescribed seed frame. -/
theorem seed_tangent (L : SeedMap) (V : PhaseSeed) (X : NormalBasis) (W : Projection)
    (J : ResidualJac) (M : Matrix (Fin 4) (Fin 4) ℝ) (hV : L * V = 1) (hX : L * X = 0) :
    L * tangentPredictor V X W J M = M := by
  have hc : L * (X * W * J * V) = 0 := by
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hX]
    simp
  rw [tangentPredictor, ← Matrix.mul_assoc, Matrix.mul_sub, hV, hc, sub_zero, Matrix.one_mul]

/-- The phase-valued quadratic jet, flattened by the two four-dimensional inputs. -/
def secondJet (X : NormalBasis) (W : Projection) (B : Matrix (Fin 30) (Fin 16) ℝ) :
    Matrix (Fin 36) (Fin 16) ℝ := -(X * (W * B))

theorem seed_secondJet (L : SeedMap) (X : NormalBasis) (W : Projection)
    (B : Matrix (Fin 30) (Fin 16) ℝ) (hX : L * X = 0) : L * secondJet X W B = 0 := by
  rw [secondJet, Matrix.mul_neg, ← Matrix.mul_assoc, hX, Matrix.zero_mul, neg_zero]

/-- The projected quadratic jet cancels exactly. Combined with the chain rule,
this is `D²p(0) = 0` in Z (1). -/
theorem projected_secondJet (J : ResidualJac) (X : NormalBasis) (W : Projection)
    (B : Matrix (Fin 30) (Fin 16) ℝ) (hW : W * J * X = 1) :
    W * (J * secondJet X W B + B) = 0 := by
  have hc : W * (J * (X * (W * B))) = W * B := by
    calc
      _ = (W * J * X) * (W * B) := by simp only [Matrix.mul_assoc]
      _ = W * B := by rw [hW, Matrix.one_mul]
  rw [secondJet, Matrix.mul_add, Matrix.mul_neg, Matrix.mul_neg, hc, neg_add_cancel]

end

end NoFourMUBs.SeedAtlas.Method.WholeBall
