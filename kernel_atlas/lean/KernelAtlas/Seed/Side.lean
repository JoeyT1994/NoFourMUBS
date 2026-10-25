import NoFourMUBs.Step2.SideAlg
import NoFourMUBs.SeedAtlas.Method.Krawczyk
import Mathlib.Analysis.SpecialFunctions.Complex.Circle

/-!
# The side Gram residual and its Jacobian (`proof/seed_atlas/SPEC.md` §2, step 2)

A side is `B = (1; x; y)` with `x_j = e^{iφ_j}`, `y_j = e^{iφ_{3+j}}`.  For Gram data `(s, t, r)` the residual
`F(φ) ∈ ℝ⁶` is the real and imaginary parts of `sS x − s`, `sS y − t`, `rS x y − r` (`Step2.SideAlg`: `sS x = Σ x_j`,
`rS x y = Σ y_j x̄_j`), so `F(φ) = 0` says that `B` realises the Gram data (`sideF_zero`).  Its Jacobian (`sideJ`):
`∂(sS x)/∂φ_j = i x_j`, `∂(sS y)/∂φ_{3+j} = i y_j`, `∂(rS x y)/∂φ_j = −i y_j x̄_j`, `∂(rS x y)/∂φ_{3+j} = i y_j x̄_j`,
entered as directional derivatives (`hasDerivAt_sideF`), the form `Method.krawczyk` takes.
-/

open Complex NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- The first and second rows of the side. -/
def sx (φ : Fin 6 → ℝ) : Fin 3 → ℂ := fun j => Complex.exp ((φ ⟨j.1, by omega⟩ : ℂ) * I)
def sy (φ : Fin 6 → ℝ) : Fin 3 → ℂ := fun j => Complex.exp ((φ ⟨j.1 + 3, by omega⟩ : ℂ) * I)

/-- The three complex Gram residuals. -/
def sideG (s t r : ℂ) (φ : Fin 6 → ℝ) : Fin 3 → ℂ :=
  ![sS (sx φ) - s, sS (sy φ) - t, rS (sx φ) (sy φ) - r]

/-- The real residual `F(φ)`: real parts, then imaginary parts. -/
def sideF (s t r : ℂ) (φ : Fin 6 → ℝ) : Fin 6 → ℝ :=
  fun i => if h : i.1 < 3 then (sideG s t r φ ⟨i.1, h⟩).re else (sideG s t r φ ⟨i.1 - 3, by omega⟩).im

lemma sideF_zero {s t r : ℂ} {φ : Fin 6 → ℝ} (h : sideF s t r φ = 0) :
    sS (sx φ) = s ∧ sS (sy φ) = t ∧ rS (sx φ) (sy φ) = r := by
  have hc : ∀ k : Fin 3, sideG s t r φ k = 0 := by
    intro k
    have h1 := congrFun h ⟨k.1, by omega⟩
    have h2 := congrFun h ⟨k.1 + 3, by omega⟩
    simp only [sideF, Pi.zero_apply] at h1 h2
    rw [dif_pos k.2] at h1
    rw [dif_neg (by omega)] at h2
    simp only [Nat.add_sub_cancel] at h2
    exact Complex.ext h1 h2
  refine ⟨?_, ?_, ?_⟩
  · have := hc 0; simp [sideG] at this; linear_combination this
  · have := hc 1; simp [sideG] at this; linear_combination this
  · have := hc 2; simp [sideG] at this; linear_combination this

/-- The complex Jacobian rows. -/
def sideJc (φ : Fin 6 → ℝ) (k : Fin 3) (m : Fin 6) : ℂ :=
  match k with
  | 0 => if h : m.1 < 3 then I * sx φ ⟨m.1, h⟩ else 0
  | 1 => if h : m.1 < 3 then 0 else I * sy φ ⟨m.1 - 3, by omega⟩
  | _ => if h : m.1 < 3 then -(I * sy φ ⟨m.1, h⟩ * (starRingEnd ℂ) (sx φ ⟨m.1, h⟩))
         else I * sy φ ⟨m.1 - 3, by omega⟩ * (starRingEnd ℂ) (sx φ ⟨m.1 - 3, by omega⟩)

/-- The real Jacobian. -/
def sideJ (φ : Fin 6 → ℝ) : Matrix (Fin 6) (Fin 6) ℝ :=
  fun i m => if h : i.1 < 3 then (sideJc φ ⟨i.1, h⟩ m).re else (sideJc φ ⟨i.1 - 3, by omega⟩ m).im

/-! ### The directional derivative -/

lemma hasDerivAt_cexp_line (a b : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (((a + t * b : ℝ) : ℂ) * I)) (I * b * Complex.exp ((a : ℂ) * I)) 0 := by
  have h1 : HasDerivAt (fun t : ℝ => (((a + t * b : ℝ) : ℂ) * I)) ((b : ℂ) * I) 0 := by
    have := ((hasDerivAt_id (0 : ℝ)).mul_const b).const_add a
    have := this.ofReal_comp.mul_const I
    simpa using this
  have := h1.cexp
  simp only [zero_mul, add_zero] at this
  convert this using 1; ring

lemma sx_line (φ v : Fin 6 → ℝ) (t : ℝ) (j : Fin 3) :
    sx (φ + t • v) j = Complex.exp (((φ ⟨j.1, by omega⟩ + t * v ⟨j.1, by omega⟩ : ℝ) : ℂ) * I) := by
  simp [sx]

lemma sy_line (φ v : Fin 6 → ℝ) (t : ℝ) (j : Fin 3) :
    sy (φ + t • v) j = Complex.exp (((φ ⟨j.1 + 3, by omega⟩ + t * v ⟨j.1 + 3, by omega⟩ : ℝ) : ℂ) * I) := by
  simp [sy]

lemma hasDerivAt_sx (φ v : Fin 6 → ℝ) (j : Fin 3) :
    HasDerivAt (fun t : ℝ => sx (φ + t • v) j) (I * v ⟨j.1, by omega⟩ * sx φ j) 0 := by
  simp only [sx_line]; exact hasDerivAt_cexp_line _ _

lemma hasDerivAt_sy (φ v : Fin 6 → ℝ) (j : Fin 3) :
    HasDerivAt (fun t : ℝ => sy (φ + t • v) j) (I * v ⟨j.1 + 3, by omega⟩ * sy φ j) 0 := by
  simp only [sy_line]; exact hasDerivAt_cexp_line _ _

lemma hasDerivAt_conj_sx (φ v : Fin 6 → ℝ) (j : Fin 3) :
    HasDerivAt (fun t : ℝ => (starRingEnd ℂ) (sx (φ + t • v) j))
      ((starRingEnd ℂ) (I * v ⟨j.1, by omega⟩ * sx φ j)) 0 :=
  (hasDerivAt_sx φ v j).star

/-- The complex residuals along a line. -/
lemma hasDerivAt_sideG (s t r : ℂ) (φ v : Fin 6 → ℝ) (k : Fin 3) :
    HasDerivAt (fun τ : ℝ => sideG s t r (φ + τ • v) k) (∑ m, sideJc φ k m * v m) 0 := by
  fin_cases k
  · have := (((hasDerivAt_sx φ v 0).add (hasDerivAt_sx φ v 1)).add (hasDerivAt_sx φ v 2)).sub_const s
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp [Fin.sum_univ_six, sideJc]; ring
    · simp [sideG, sS]
  · have := (((hasDerivAt_sy φ v 0).add (hasDerivAt_sy φ v 1)).add (hasDerivAt_sy φ v 2)).sub_const t
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp [Fin.sum_univ_six, sideJc]; ring
    · simp [sideG, sS]
  · have d := fun j : Fin 3 => (hasDerivAt_sy φ v j).mul (hasDerivAt_conj_sx φ v j)
    have := (((d 0).add (d 1)).add (d 2)).sub_const r
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp [Fin.sum_univ_six, sideJc, map_mul, Complex.conj_I]; ring
    · simp [sideG, rS]

/-- **The directional derivative of the residual** (the `hF` of `Method.krawczyk`). -/
theorem hasDerivAt_sideF (s t r : ℂ) (φ v : Fin 6 → ℝ) :
    HasDerivAt (fun τ : ℝ => sideF s t r (φ + τ • v)) ((sideJ φ).mulVec v) 0 := by
  rw [hasDerivAt_pi]
  intro i
  by_cases h : i.1 < 3
  · have := (Complex.reCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ) (hasDerivAt_sideG s t r φ v ⟨i.1, h⟩))
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [Matrix.mulVec, dotProduct, sideJ, dif_pos h, Function.comp_apply, Complex.reCLM_apply,
        Complex.re_sum, Complex.re_mul_ofReal]
    · simp only [sideF, dif_pos h, Function.comp_apply, Complex.reCLM_apply]
  · have := (Complex.imCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ)
      (hasDerivAt_sideG s t r φ v ⟨i.1 - 3, by omega⟩))
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [Matrix.mulVec, dotProduct, sideJ, dif_neg h, Function.comp_apply, Complex.imCLM_apply,
        Complex.im_sum, Complex.im_mul_ofReal]
    · simp only [sideF, dif_neg h, Function.comp_apply, Complex.imCLM_apply]

end NoFourMUBs.KernelAtlas.Seed
