import KernelAtlas.Edge.MatrixDerivative

/-! The differentiated equation for the forced lower block. -/

open Complex Matrix Hadamard6 Filter Topology NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

lemma forced_mul_of_invertible (E B C : Mat3) (hi : IsUnit B.det) :
    forcedD E B C * Bᴴ = -(C*Eᴴ) := by
  have hB : IsUnit Bᴴ.det := by simpa only [Matrix.det_conjTranspose] using hi.star
  simp only [forcedD, Matrix.conjTranspose_nonsing_inv, Matrix.mul_assoc,
    Matrix.nonsing_inv_mul _ hB, Matrix.mul_one, Matrix.neg_mul]

/-- Differentiating `D B* = -C E*` produces another forced linear system, whose
enclosure can use the same checked residual correction as the completion. -/
theorem forced_derivative_equation {E B C : ℝ → Mat3} {dE dB dC : Mat3} {t : ℝ}
    (hE : ∀ i j, HasDerivAt (fun s => E s i j) (dE i j) t)
    (hB : ∀ i j, HasDerivAt (fun s => B s i j) (dB i j) t)
    (hC : ∀ i j, HasDerivAt (fun s => C s i j) (dC i j) t)
    (hi : IsUnit (B t).det) :
    ∃ dD : Mat3,
      (∀ i j, HasDerivAt (fun s => forcedD (E s) (B s) (C s) i j) (dD i j) t) ∧
      dD * (B t)ᴴ = -(dC*(E t)ᴴ + C t*dEᴴ + forcedD (E t) (B t) (C t)*dBᴴ) := by
  let D := fun s => forcedD (E s) (B s) (C s)
  let dD : Mat3 := fun i j => deriv (fun s => D s i j) t
  have hD (i j : Fin 3) : HasDerivAt (fun s => D s i j) (dD i j) t :=
    (differentiableAt_forcedD (fun i j => (hE i j).differentiableAt)
      (fun i j => (hB i j).differentiableAt) (fun i j => (hC i j).differentiableAt) hi i j).hasDerivAt
  refine ⟨dD, hD, ?_⟩
  have hn := (differentiableAt_matrix_det (fun i j => (hB i j).differentiableAt)).continuousAt.eventually_ne
    (isUnit_iff_ne_zero.mp hi)
  ext i j
  have hl := hasDerivAt_matrix_mul hD (hasDerivAt_matrix_conjTranspose hB) i j
  have hr := (hasDerivAt_matrix_mul hC (hasDerivAt_matrix_conjTranspose hE) i j).neg
  have he : (fun s => (D s * (B s)ᴴ) i j) =ᶠ[𝓝 t] fun s => -(C s * (E s)ᴴ) i j := by
    filter_upwards [hn] with s hs
    exact congrFun (congrFun (forced_mul_of_invertible (E s) (B s) (C s) (isUnit_iff_ne_zero.mpr hs)) i) j
  have h := hl.unique (hr.congr_of_eventuallyEq he)
  simp only [Matrix.add_apply, Matrix.neg_apply] at h ⊢
  change _ = -(_+_+(D t*dBᴴ) i j)
  linear_combination h

end NoFourMUBs.KernelAtlas.Edge
