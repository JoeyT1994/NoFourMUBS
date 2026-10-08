import FourCircleTightResidualEnclosures

/-! Recenter an already certified scaled residual by the exact identity
R(c) = R(c₀) + (c₀-c)D. Existing seed signs, scale, sheet, and shift stay shared.
These are algebraic/program interfaces; automatic CLI support or narrower
intervals are not asserted. -/
namespace Mub6.Classification.FourCircleResidualSubstitution
open MvPolynomial
open Mub6.Numerical
open Mub6.Classification.RadicalIntervals Mub6.Classification.FourPhase
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals Mub6.Classification.ShiftedPolynomialIntervals
noncomputable section

def CircleComplexPoly.recenter (R D : CircleComplexPoly) (a₀ b₀ a b : ℚ) : CircleComplexPoly :=
  ⟨R.re + C (a₀-a) * D.re - C (b₀-b) * D.im,
    R.im + C (a₀-a) * D.im + C (b₀-b) * D.re⟩

theorem rationalCenter_sub (a₀ b₀ a b : ℚ) :
    rationalCenter (a₀-a) (b₀-b) = rationalCenter a₀ b₀ - rationalCenter a b := by
  apply Complex.ext <;> simp [rationalCenter]

theorem CircleComplexPoly.eval_recenter (R D : CircleComplexPoly) (a₀ b₀ a b : ℚ)
    (p : CircleVariable → ℝ) :
    (R.recenter D a₀ b₀ a b).eval p =
      R.eval p + (rationalCenter a₀ b₀-rationalCenter a b) * D.eval p := by
  rw [← rationalCenter_sub]
  apply Complex.ext <;>
    simp [CircleComplexPoly.recenter,CircleComplexPoly.eval,evalCircle,rationalCenter,
      Complex.mul_re,Complex.mul_im] <;> ring

/-- The old residual and denominator must have the SAME scale polynomial.
The result is globally bound to the actual new-center residual before a cell
or a physical matrix point is chosen. -/
theorem Scales.recenter {s : SeedSigns} {Q : CirclePoly} {R D : CircleComplexPoly}
    (side : Side) (i : Fin 3) (a₀ b₀ a b : ℚ)
    (hR : Scales s Q R (residualPoly side a₀ b₀ i))
    (hD : Scales s Q D (denominatorPoly side i)) :
    Scales s Q (R.recenter D a₀ b₀ a b) (residualPoly side a b i) := by
  intro t z
  rw [CircleComplexPoly.eval_recenter,hR t z,hD t z]
  simp only [SharedResidualPolynomials.eval_residual,SharedResidualPolynomials.eval_denominator]
  ring

def scaleProgram {σ : Type*} (q : ℚ) (S : Program σ) : Program σ :=
  S.map (fun term => ⟨q * term.coefficient,term.powers⟩)

theorem programPolynomial_append {σ : Type*} (S T : Program σ) :
    programPolynomial (S ++ T) = programPolynomial S + programPolynomial T := by
  induction S with
  | nil => simp [programPolynomial]
  | cons term rest ih => simp [programPolynomial,ih,add_assoc]

theorem programPolynomial_scaleProgram {σ : Type*} (q : ℚ) (S : Program σ) :
    programPolynomial (scaleProgram q S) = C q * programPolynomial S := by
  induction S with
  | nil => simp [scaleProgram,programPolynomial]
  | cons term rest ih =>
      simp only [scaleProgram,List.map_cons,programPolynomial,termPolynomial,map_mul]
      change C q * C term.coefficient * powersPolynomial term.powers +
        programPolynomial (scaleProgram q rest) = _
      rw [ih]
      ring

def CircleComplexProgram.recenter (R D : CircleComplexProgram) (a₀ b₀ a b : ℚ) :
    CircleComplexProgram :=
  ⟨R.re ++ scaleProgram (a₀-a) D.re ++ scaleProgram (-(b₀-b)) D.im,
    R.im ++ scaleProgram (a₀-a) D.im ++ scaleProgram (b₀-b) D.re⟩

theorem CircleComplexProgram.recenter_represents (R D : CircleComplexProgram)
    (A E : CircleComplexPoly) (a₀ b₀ a b : ℚ)
    (hR : R.Represents A) (hD : D.Represents E) :
    (R.recenter D a₀ b₀ a b).Represents (A.recenter E a₀ b₀ a b) := by
  rcases hR with ⟨hRr,hRi⟩
  rcases hD with ⟨hDr,hDi⟩
  simp only [CircleComplexProgram.Represents,CircleComplexProgram.recenter,
    CircleComplexPoly.recenter,programPolynomial_append,programPolynomial_scaleProgram,
    hRr,hRi,hDr,hDi,map_neg]
  simp [sub_eq_add_neg] <;> ring

def ShiftedCircleComplexProgram.recenter {c : CircleVariable → ℚ}
    (R D : ShiftedCircleComplexProgram c) (a₀ b₀ a b : ℚ) : ShiftedCircleComplexProgram c :=
  ⟨R.re ++ scaleProgram (a₀-a) D.re ++ scaleProgram (-(b₀-b)) D.im,
    R.im ++ scaleProgram (a₀-a) D.im ++ scaleProgram (b₀-b) D.re⟩

theorem ShiftedCircleComplexProgram.recenter_represents {c : CircleVariable → ℚ}
    (R D : ShiftedCircleComplexProgram c) (A E : CircleComplexPoly) (a₀ b₀ a b : ℚ)
    (hR : R.Represents A) (hD : D.Represents E) :
    (R.recenter D a₀ b₀ a b).Represents (A.recenter E a₀ b₀ a b) := by
  rcases hR with ⟨hRr,hRi⟩
  rcases hD with ⟨hDr,hDi⟩
  simp only [ShiftedCircleComplexProgram.Represents,ShiftedCircleComplexProgram.recenter,
    CircleComplexPoly.recenter,programPolynomial_append,programPolynomial_scaleProgram,
    hRr,hRi,hDr,hDi,map_neg,shiftedPolynomial,eval₂_add,eval₂_sub,eval₂_mul,eval₂_C]
  simp [sub_eq_add_neg] <;> ring

#print axioms Mub6.Classification.FourCircleResidualSubstitution.rationalCenter_sub
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexPoly.eval_recenter
#print axioms Mub6.Classification.FourCircleResidualSubstitution.Scales.recenter
#print axioms Mub6.Classification.FourCircleResidualSubstitution.programPolynomial_append
#print axioms Mub6.Classification.FourCircleResidualSubstitution.programPolynomial_scaleProgram
#print axioms Mub6.Classification.FourCircleResidualSubstitution.CircleComplexProgram.recenter_represents
#print axioms Mub6.Classification.FourCircleResidualSubstitution.ShiftedCircleComplexProgram.recenter_represents
end
end Mub6.Classification.FourCircleResidualSubstitution
