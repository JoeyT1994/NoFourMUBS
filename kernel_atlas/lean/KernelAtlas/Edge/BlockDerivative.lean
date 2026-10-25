import KernelAtlas.Edge.MatrixDerivative

/-! Explicit entry derivatives of the corner and two side blocks. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open L1.FlatCircuits Seed

def cornerDerivative (de : Fin 4 → ℂ) : Mat3 := Em de - Em 0

def sideDerivative (dx dy : Fin 3 → ℂ) : Mat3 := L1.sideMat dx dy - L1.sideMat 0 0

lemma hasDerivAt_phase_entry {φ : ℝ → ℝ} {dφ t : ℝ}
    (hφ : HasDerivAt φ dφ t) :
    HasDerivAt (fun s => exp ((φ s : ℂ)*I)) (I * exp ((φ t : ℂ)*I) * dφ) t := by
  have hc := (Complex.ofRealCLM.hasFDerivAt.comp_hasDerivAt t hφ).mul_const I
  have H := hc.cexp
  refine (H.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
  · simp only [Complex.ofRealCLM_apply, Function.comp_apply]; ring
  · rfl

theorem hasDerivAt_corner {e : ℝ → Fin 4 → ℂ} {de : Fin 4 → ℂ} {t : ℝ}
    (he : ∀ k, HasDerivAt (fun s => e s k) (de k) t) (i j : Fin 3) :
    HasDerivAt (fun s => Em (e s) i j) (cornerDerivative de i j) t := by
  fin_cases i <;> fin_cases j <;>
    simp [Em, corner, cornerDerivative, Matrix.of_apply, Matrix.sub_apply] <;>
    first | exact hasDerivAt_const t 1 | exact he _

theorem hasDerivAt_side {x y : ℝ → Fin 3 → ℂ} {dx dy : Fin 3 → ℂ} {t : ℝ}
    (hx : ∀ j, HasDerivAt (fun s => x s j) (dx j) t)
    (hy : ∀ j, HasDerivAt (fun s => y s j) (dy j) t) (i j : Fin 3) :
    HasDerivAt (fun s => L1.sideMat (x s) (y s) i j) (sideDerivative dx dy i j) t := by
  fin_cases i <;> simp [L1.sideMat, sideDerivative, Matrix.of_apply, Matrix.sub_apply] <;>
    first | exact hasDerivAt_const t 1 | exact hx j | exact hy j

theorem hasDerivAt_rho4 {a : ℝ → Fin 3 → ℝ} {ξ : ℝ → Fin 7 → ℝ}
    {da : Fin 3 → ℝ} {dξ : Fin 7 → ℝ} {t : ℝ}
    (ha : ∀ k, HasDerivAt (fun s => a s k) (da k) t)
    (hξ : ∀ k, HasDerivAt (fun s => ξ s k) (dξ k) t) (k : Fin 4) :
    HasDerivAt (fun s => rho4 (a s) (ξ s 0) k)
      (I * rho4 (a t) (ξ t 0) k * th4 da (dξ 0) k) t := by
  simp only [rho4_apply]
  apply hasDerivAt_phase_entry
  fin_cases k <;> simp [th4] <;> first | exact ha _ | exact hξ 0

theorem hasDerivAt_sx {ξ : ℝ → Fin 7 → ℝ} {dξ : Fin 7 → ℝ} {t : ℝ}
    (hξ : ∀ k, HasDerivAt (fun s => ξ s k) (dξ k) t) (j : Fin 3) :
    HasDerivAt (fun s => sx (phiOf (ξ s)) j)
      (I * sx (phiOf (ξ t)) j * dξ ⟨j+1, by omega⟩) t := by
  exact hasDerivAt_phase_entry (hξ ⟨j+1, by omega⟩)

theorem hasDerivAt_sy {ξ : ℝ → Fin 7 → ℝ} {dξ : Fin 7 → ℝ} {t : ℝ}
    (hξ : ∀ k, HasDerivAt (fun s => ξ s k) (dξ k) t) (j : Fin 3) :
    HasDerivAt (fun s => sy (phiOf (ξ s)) j)
      (I * sy (phiOf (ξ t)) j * dξ ⟨j+4, by omega⟩) t := by
  exact hasDerivAt_phase_entry (hξ ⟨j+4, by omega⟩)

end NoFourMUBs.KernelAtlas.Edge
