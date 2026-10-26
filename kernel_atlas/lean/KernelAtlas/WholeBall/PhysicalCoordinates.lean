import KernelAtlas.WholeBall.PhaseResidual
import KernelAtlas.WholeBall.MatrixForms
import NoFourMUBs.SeedAtlas.Method.WholeBallGeometry

/-! The physical 36 phase coordinates and the Frobenius norm used by C1. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall
open scoped Matrix.Norms.Elementwise ContDiff

set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

noncomputable def unflatPhase (v : Fin 36 → ℝ) : RMat6 := fun i j =>
  v (finProdFinEquiv (phaseUnindex i, phaseUnindex j))

lemma unflat_flatPhase (Q : RMat6) : unflatPhase (flatPhase Q) = Q := by
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

lemma flat_unflatPhase (v : Fin 36 → ℝ) : flatPhase (unflatPhase v) = v := by
  ext k
  fin_cases k <;> rfl

noncomputable def phaseVector (Q : RMat6) : EuclideanSpace ℝ (Fin 36) :=
  WithLp.toLp 2 (flatPhase Q)

lemma frob_eq_norm_phaseVector (Q : RMat6) : frob Q = ‖phaseVector Q‖ := by
  rw [frob_eq_sqrt, ← Real.sqrt_sq (norm_nonneg (phaseVector Q)),
    EuclideanSpace.real_norm_sq_eq]
  congr 1
  change (∑ i : I6, ∑ j : I6, Q i j ^ 2) = ∑ k : Fin 36, flatPhase Q k ^ 2
  unfold flatPhase
  rw [sum_phase_grid (fun i j => Q (phaseIndex i) (phaseIndex j) ^ 2)]
  rw [sum_phaseIndex (fun i => ∑ j : Fin 6, Q i (phaseIndex j) ^ 2)]
  apply Finset.sum_congr rfl
  intro i _
  exact (sum_phaseIndex (fun j => Q i j ^ 2)).symm

@[fun_prop] lemma contDiff_unflatPhase : ContDiff ℝ ω unflatPhase := by
  apply contDiff_pi.mpr
  intro i
  apply contDiff_pi.mpr
  intro j
  unfold unflatPhase
  fun_prop

@[fun_prop] lemma contDiff_flatPhase : ContDiff ℝ ω flatPhase := by
  apply contDiff_pi.mpr
  intro k
  unfold flatPhase
  fun_prop

noncomputable def phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (v : EuclideanSpace ℝ (Fin n)) : RMat6 := unflatPhase (A *ᵥ v)

lemma phaseVector_phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (v : EuclideanSpace ℝ (Fin n)) : phaseVector (phaseMap A v) = eucMap A v := by
  rw [phaseVector, phaseMap, flat_unflatPhase]
  rfl

lemma frob_phaseMap_le {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ) {b : ℝ}
    (h : ‖eucMap A‖ ≤ b) (v : EuclideanSpace ℝ (Fin n)) :
    frob (phaseMap A v) ≤ b * ‖v‖ := by
  rw [frob_eq_norm_phaseVector, phaseVector_phaseMap]
  exact ((eucMap A).le_opNorm v).trans (by gcongr)

@[fun_prop] lemma contDiff_phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ) :
    ContDiff ℝ ω (phaseMap A) := by
  apply contDiff_unflatPhase.comp
  apply contDiff_pi.mpr
  intro i
  simp only [Matrix.mulVec, dotProduct]
  fun_prop

lemma phaseMap_add {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (v w : EuclideanSpace ℝ (Fin n)) : phaseMap A (v + w) = phaseMap A v + phaseMap A w := by
  ext i j
  simp [phaseMap, unflatPhase, Matrix.mulVec_add]

lemma phaseMap_smul {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (c : ℝ) (v : EuclideanSpace ℝ (Fin n)) : phaseMap A (c • v) = c • phaseMap A v := by
  ext i j
  simp [phaseMap, unflatPhase, Matrix.mulVec_smul]

lemma flatPhase_add (Q R : RMat6) : flatPhase (Q + R) = flatPhase Q + flatPhase R := rfl
lemma flatPhase_smul (c : ℝ) (Q : RMat6) : flatPhase (c • Q) = c • flatPhase Q := rfl
lemma flatPhase_phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (v : EuclideanSpace ℝ (Fin n)) : flatPhase (phaseMap A v) = A *ᵥ v :=
  flat_unflatPhase _

noncomputable def predictorIncrement (U : Matrix (Fin 36) (Fin 4) ℝ)
    (H : Matrix (Fin 36) (Fin 16) ℝ) (X : Matrix (Fin 36) (Fin 21) ℝ)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) : RMat6 :=
  phaseMap U w + (1 / 2 : ℝ) • phaseMap H (tensorPair w w) + phaseMap X z

@[fun_prop] lemma contDiff_tensorSquare :
    ContDiff ℝ ω (fun w : EuclideanSpace ℝ (Fin 4) => tensorPair w w) := by
  apply (PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 16 => ℝ)).symm.contDiff.comp
  apply contDiff_pi.mpr
  intro j
  change ContDiff ℝ ω (fun w : EuclideanSpace ℝ (Fin 4) =>
    w ((finProdFinEquiv (m := 4) (n := 4)).symm j).1 *
    w ((finProdFinEquiv (m := 4) (n := 4)).symm j).2)
  fun_prop

@[fun_prop] lemma contDiff_predictorIncrement (U : Matrix (Fin 36) (Fin 4) ℝ)
    (H : Matrix (Fin 36) (Fin 16) ℝ) (X : Matrix (Fin 36) (Fin 21) ℝ) :
    ContDiff ℝ ω (fun p : EuclideanSpace ℝ (Fin 4) × EuclideanSpace ℝ (Fin 21) =>
      predictorIncrement U H X p.1 p.2) := by
  unfold predictorIncrement
  exact ((contDiff_phaseMap U).comp contDiff_fst |>.add
    (((contDiff_phaseMap H).comp (contDiff_tensorSquare.comp contDiff_fst)).const_smul (1/2 : ℝ))).add
      ((contDiff_phaseMap X).comp contDiff_snd)

lemma predictorIncrement_zero (U : Matrix (Fin 36) (Fin 4) ℝ)
    (H : Matrix (Fin 36) (Fin 16) ℝ) (X : Matrix (Fin 36) (Fin 21) ℝ) :
    predictorIncrement U H X 0 0 = 0 := by
  ext i j
  simp [predictorIncrement, phaseMap, unflatPhase, tensorPair, Matrix.mulVec, dotProduct]

/-- Exact rational matrix of the horizontal projection. -/
def horizontalMatrix : Matrix (Fin 36) (Fin 36) ℚ := fun a b =>
  (if phaseRow a = phaseRow b ∧ phaseCol a = phaseCol b then 1 else 0) -
  (if phaseRow a = phaseRow b then 1 / 6 else 0) -
  (if phaseCol a = phaseCol b then 1 / 6 else 0) + 1 / 36

lemma horizontalMatrix_apply (Q : RMat6) :
    realMatrix horizontalMatrix *ᵥ flatPhase Q = flatPhase (hor Q) := by
  ext a
  change (∑ b, (horizontalMatrix a b : ℝ) * flatPhase Q b) = _
  simp only [horizontalMatrix, Rat.cast_add, Rat.cast_sub, apply_ite (fun x : ℚ => (x : ℝ)),
    Rat.cast_one, Rat.cast_zero, Rat.cast_div, Rat.cast_ofNat, flatPhase]
  rw [sum_phase_grid (fun i j =>
    ((if phaseRow a = i ∧ phaseCol a = j then 1 else 0) -
      (if phaseRow a = i then 1 / 6 else 0) -
      (if phaseCol a = j then 1 / 6 else 0) + (1 / 36 : ℝ)) *
      Q (phaseIndex i) (phaseIndex j))]
  simp only [sub_mul, add_mul, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  have h1 : (∑ i : Fin 6, ∑ j : Fin 6,
      (if phaseRow a = i ∧ phaseCol a = j then (1 : ℝ) else 0) *
        Q (phaseIndex i) (phaseIndex j)) = Q (phaseIndex (phaseRow a)) (phaseIndex (phaseCol a)) := by
    simp only [ite_and, ite_mul, one_mul, zero_mul]
    simp
  have h2 : (∑ i : Fin 6, ∑ j : Fin 6,
      (if phaseRow a = i then (1 / 6 : ℝ) else 0) * Q (phaseIndex i) (phaseIndex j)) =
        (∑ j : I6, Q (phaseIndex (phaseRow a)) j) / 6 := by
    simp only [← Finset.mul_sum]
    simp only [ite_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    rw [sum_phaseIndex]
    ring
  have h3 : (∑ i : Fin 6, ∑ j : Fin 6,
      (if phaseCol a = j then (1 / 6 : ℝ) else 0) * Q (phaseIndex i) (phaseIndex j)) =
        (∑ i : I6, Q i (phaseIndex (phaseCol a))) / 6 := by
    simp only [ite_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true,
      ← Finset.mul_sum]
    rw [sum_phaseIndex (fun i => Q i (phaseIndex (phaseCol a)))]
    ring
  have h4 : (∑ i : Fin 6, ∑ j : Fin 6,
      (1 / 36 : ℝ) * Q (phaseIndex i) (phaseIndex j)) =
        (∑ i : I6, ∑ j : I6, Q i j) / 36 := by
    simp only [← Finset.mul_sum]
    rw [sum_phaseIndex (fun i => ∑ j : Fin 6, Q i (phaseIndex j))]
    have he : (∑ i : I6, ∑ j : Fin 6, Q i (phaseIndex j)) = ∑ i : I6, ∑ j : I6, Q i j := by
      apply Finset.sum_congr rfl
      intro i _
      exact sum_phaseIndex (Q i)
    rw [he]
    ring
  rw [h1, h2, h3, h4]
  rfl

end NoFourMUBs.KernelAtlas.WholeBall
