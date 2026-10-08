import PhysicalSideRational
import FourierOrientation

/-! Side moments recovered from its three Gram coordinates and one Boolean. -/
namespace Hadamard6Extensions.FourPhaseGram
open FourierGramNumerators Hadamard6Extensions.FourierSide
noncomputable section

def R (s t r : ℂ) : ℝ := FourierRadicalGuards.radicand (g s t r) (chi s t r) (eta s t r)
def sheetParameter (s t r : ℂ) (negative : Bool) : ℝ :=
  if negative then -Real.sqrt (R s t r) else Real.sqrt (R s t r)
def zeta (s t r : ℂ) (negative : Bool) : ℂ :=
  FourierRadicalGuards.sheet (g s t r) (chi s t r) (sheetParameter s t r negative)
def denominator (s t r : ℂ) (negative : Bool) (i : Fin 3) : ℂ :=
  (g s t r : ℂ)+zeta s t r negative*(q s t r i : ℂ)
def lambda (s t r : ℂ) (negative : Bool) (i : Fin 3) : ℂ :=
  numerator s t r i / denominator s t r negative i
def momentU (s t r : ℂ) (negative : Bool) : ℂ := lambda s t r negative 0/lambda s t r negative 1
def momentV (s t r : ℂ) (negative : Bool) : ℂ := lambda s t r negative 0/lambda s t r negative 2
def momentW (s t r : ℂ) (negative : Bool) : ℂ := zeta s t r negative*lambda s t r negative 0
def NoPoles (s t r : ℂ) : Prop := ∀ negative i, denominator s t r negative i≠0

theorem strict_noPoles {s t r : ℂ} (hR : 0<R s t r) : NoPoles s t r := by
  intro negative i
  have hw : sheetParameter s t r negative ^ 2 = R s t r := by
    cases negative <;> simp [sheetParameter,Real.sq_sqrt (le_of_lt hR)]
  have hn : sheetParameter s t r negative ≠ 0 := by
    intro hz
    rw [hz] at hw
    norm_num at hw
    linarith
  exact FourierRadicalGuards.denominator_ne_zero_of_nonzero_sheet
    (g s t r) (chi s t r) (eta s t r) (sheetParameter s t r negative) (q s t r i) hw hn

theorem scalar_side_eq (x y : Fin 3 → ℂ) :
    FourierPhysicalSide.side (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)=actualSide x y := by
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem scalar_permanent_eq (x y : Fin 3 → ℂ) :
    FourierPhysicalSide.permanent (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)=permanentSide x y := by
  unfold FourierPhysicalSide.permanent permanentSide
  ring

/-- The existing physical side determines one of the two explicit Gram sheets. -/
theorem actual_sheet_choice (x y : Fin 3 → ℂ) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hD : (actualSide x y).det≠0) :
    ∃ negative : Bool,
      FourierPhysicalSide.physicalSheet (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)=
        zeta (sum3 x) (sum3 y) (cross3 x y) negative := by
  have hd : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,scalar_side_eq] using hD
  have hh := FourierPhysicalSide.physicalSheet_two_sqrt
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  rcases hh.2 with hp | hm
  · exact ⟨false,hp⟩
  · exact ⟨true,hm⟩

/-- On the explicitly nonpole Gram domain, the recovered moments are the
actual two row products and permanent. The coalescing sheet is allowed. -/
theorem actual_side_data (x y : Fin 3 → ℂ) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hD : (actualSide x y).det≠0) (hNP : NoPoles (sum3 x) (sum3 y) (cross3 x y)) :
    ∃ negative : Bool,
      momentU (sum3 x) (sum3 y) (cross3 x y) negative=prod3 x ∧
      momentV (sum3 x) (sum3 y) (cross3 x y) negative=prod3 y ∧
      momentW (sum3 x) (sum3 y) (cross3 x y) negative=permanentSide x y := by
  have hd : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,scalar_side_eq] using hD
  obtain ⟨negative,hz⟩ := actual_sheet_choice x y hx hy hD
  have hl (i : Fin 3) : lambda (sum3 x) (sum3 y) (cross3 x y) negative i =
      FourierPhysicalSide.physicalLambda (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) i := by
    unfold lambda denominator
    rw [← hz]
    apply FourierPhysicalSide.rational_lambda_matches_physical
      (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) i
      (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
    change (g (sum3 x) (sum3 y) (cross3 x y) : ℂ)+
      FourierPhysicalSide.physicalSheet (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)*
      (q (sum3 x) (sum3 y) (cross3 x y) i : ℂ)≠0
    rw [hz]
    exact hNP negative i
  have huv := FourierPhysicalSide.physicalLambda_row_products
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  have hp := FourierPhysicalSide.physicalSheet_lambda0_permanent
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  refine ⟨negative,?_,?_,?_⟩
  · simpa only [momentU,hl,prod3,FourierPhysicalSide.rowProduct] using huv.1
  · simpa only [momentV,hl,prod3,FourierPhysicalSide.rowProduct] using huv.2
  · rw [momentW,hl,← hz,hp,scalar_permanent_eq]

theorem actual_side_data_strict (x y : Fin 3 → ℂ) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hD : (actualSide x y).det≠0) (hR : 0<R (sum3 x) (sum3 y) (cross3 x y)) :
    ∃ negative : Bool,
      momentU (sum3 x) (sum3 y) (cross3 x y) negative=prod3 x ∧
      momentV (sum3 x) (sum3 y) (cross3 x y) negative=prod3 y ∧
      momentW (sum3 x) (sum3 y) (cross3 x y) negative=permanentSide x y :=
  actual_side_data x y hx hy hD (strict_noPoles hR)

#print axioms strict_noPoles
#print axioms scalar_side_eq
#print axioms scalar_permanent_eq
#print axioms actual_sheet_choice
#print axioms actual_side_data
#print axioms actual_side_data_strict
end
end Hadamard6Extensions.FourPhaseGram
