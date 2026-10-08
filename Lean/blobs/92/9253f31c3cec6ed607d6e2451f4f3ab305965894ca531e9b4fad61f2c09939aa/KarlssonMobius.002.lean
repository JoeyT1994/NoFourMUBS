import Hadamard6.IntrinsicKarlssonSeam
import Mathlib.Tactic

namespace Mub6.Classification.KarlssonCover

open Complex
noncomputable section

/-- The polynomial equation is retained even when a quotient is undefined. -/
def Rel (a b x y : ℂ) : Prop :=
  (star b * x - star a) * y = a * x - b

def forward (a b x : ℂ) : ℂ := (a*x-b)/(star b*x-star a)
def backward (a b y : ℂ) : ℂ := (star a*y-b)/(star b*y-a)
def singularInput (a b : ℂ) : ℂ := star a / star b
def singularOutput (a b : ℂ) : ℂ := a / star b

theorem forward_den_ne {a b x : ℂ}
    (h : normSq a ≠ normSq b) (hx : normSq x = 1) :
    star b*x-star a ≠ 0 := by
  intro hz
  have he := congrArg normSq (sub_eq_zero.mp hz)
  simp only [normSq_mul, Complex.star_def, normSq_conj, hx, mul_one] at he
  exact h he.symm

theorem backward_den_ne {a b y : ℂ}
    (h : normSq a ≠ normSq b) (hy : normSq y = 1) :
    star b*y-a ≠ 0 := by
  intro hz
  have he := congrArg normSq (sub_eq_zero.mp hz)
  simp only [normSq_mul, Complex.star_def, normSq_conj, hy, mul_one] at he
  exact h he.symm

theorem solve_forward {a b x y : ℂ}
    (h : normSq a ≠ normSq b) (hx : normSq x = 1) (hr : Rel a b x y) :
    y = forward a b x := by
  unfold forward
  apply (eq_div_iff (forward_den_ne h hx)).mpr
  simpa only [Rel, mul_comm] using hr

theorem solve_backward {a b x y : ℂ}
    (h : normSq a ≠ normSq b) (hy : normSq y = 1) (hr : Rel a b x y) :
    x = backward a b y := by
  unfold backward
  apply (eq_div_iff (backward_den_ne h hy)).mpr
  simp only [Rel, Complex.star_def] at hr ⊢
  linear_combination hr

theorem singular_factor {a b x y : ℂ}
    (h : normSq a = normSq b) (hb : b ≠ 0) (hr : Rel a b x y) :
    x = singularInput a b ∨ y = singularOutput a b := by
  have hb' : star b ≠ 0 := star_ne_zero.mpr hb
  have hab : star a*a = star b*b := by
    simpa only [Complex.star_def, ← Complex.normSq_eq_conj_mul_self] using
      congrArg (fun r : ℝ => (r : ℂ)) h
  have hprod : (star b*x-star a)*(star b*y-a) = 0 := by
    simp only [Rel, Complex.star_def] at hr hab ⊢
    linear_combination (starRingEnd ℂ) b * hr + hab
  rcases mul_eq_zero.mp hprod with hx | hy
  · left
    unfold singularInput
    apply (eq_div_iff hb').mpr
    simpa only [mul_comm] using sub_eq_zero.mp hx
  · right
    unfold singularOutput
    apply (eq_div_iff hb').mpr
    simpa only [mul_comm] using sub_eq_zero.mp hy

/-- Squared phase constraints on the four physical 2×2 blocks. -/
structure SquareConstraints (a b c d x₁ x₂ x₃ x₄ : ℂ) : Prop where
  A13 : Rel a b x₁ x₃
  B23 : Rel c d x₂ x₃
  B14 : Rel c d x₁ x₄
  A24 : Rel a b x₂ x₄

/-- Five chart types; each uses one free squared phase in addition to the core.
The three output coordinates are functions, never new free variables. -/
inductive Chart
  | regular | singularAInput | singularAOutput | singularBInput | singularBOutput
  deriving DecidableEq, Repr

def phaseSquares (chart : Chart) (a b c d free : ℂ) : Fin 4 → ℂ :=
  match chart with
  | .regular => ![free, backward a b (forward c d free), forward a b free, forward c d free]
  | .singularAInput => ![singularInput a b, free, forward c d free,
      forward c d (singularInput a b)]
  | .singularAOutput => ![free, backward c d (singularOutput a b),
      singularOutput a b, forward c d free]
  | .singularBInput => ![singularInput c d, free, forward a b (singularInput c d),
      forward a b free]
  | .singularBOutput => ![free, backward a b (singularOutput c d),
      forward a b free, singularOutput c d]

/-- This is a necessary cover, deliberately allowing extra nonphysical points.
Every actual solution of all four equations is in one of the five charts. -/
theorem five_chart_cover {a b c d x₁ x₂ x₃ x₄ : ℂ}
    (h : SquareConstraints a b c d x₁ x₂ x₃ x₄)
    (h₁ : normSq x₁ = 1) (h₂ : normSq x₂ = 1)
    (h₃ : normSq x₃ = 1) (h₄ : normSq x₄ = 1)
    (hnot : normSq a ≠ normSq b ∨ normSq c ≠ normSq d)
    (hb : normSq a = normSq b → b ≠ 0)
    (hd : normSq c = normSq d → d ≠ 0) :
    ∃ chart : Chart, ∃ free : ℂ,
      (free = x₁ ∨ free = x₂) ∧
      phaseSquares chart a b c d free = ![x₁,x₂,x₃,x₄] := by
  by_cases hA : normSq a = normSq b
  · have hB : normSq c ≠ normSq d := hnot.resolve_left (not_not.mpr hA)
    rcases singular_factor hA (hb hA) h.A13 with hin | hout
    · refine ⟨.singularAInput, x₂, Or.inr rfl, ?_⟩
      have h3 := solve_forward hB h₁ h.B14
      have hf3 := solve_forward hB h₂ h.B23
      simp only [phaseSquares]
      rw [← hin, ← hf3, ← h3]
    · refine ⟨.singularAOutput, x₁, Or.inl rfl, ?_⟩
      have h2 := solve_backward hB h₃ h.B23
      have h4 := solve_forward hB h₁ h.B14
      simp only [phaseSquares]
      rw [← hout, ← h2, ← h4]
  · by_cases hB : normSq c = normSq d
    · rcases singular_factor hB (hd hB) h.B14 with hin | hout
      · refine ⟨.singularBInput, x₂, Or.inr rfl, ?_⟩
        have h3 := solve_forward hA h₁ h.A13
        have h4 := solve_forward hA h₂ h.A24
        simp only [phaseSquares]
        rw [← hin, ← h3, ← h4]
      · refine ⟨.singularBOutput, x₁, Or.inl rfl, ?_⟩
        have h2 := solve_backward hA h₄ h.A24
        have h3 := solve_forward hA h₁ h.A13
        simp only [phaseSquares]
        rw [← hout, ← h2, ← h3]
    · refine ⟨.regular, x₁, Or.inl rfl, ?_⟩
      have h3 := solve_forward hA h₁ h.A13
      have h4 := solve_forward hB h₁ h.B14
      have h2 := solve_backward hA h₄ h.A24
      simp only [phaseSquares]
      rw [← h3, ← h4, ← h2]

end
end Mub6.Classification.KarlssonCover
