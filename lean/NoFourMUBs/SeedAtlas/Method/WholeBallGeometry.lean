import NoFourMUBs.SeedAtlas.Method.WholeBallGerm
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

/-! The fixed 21 normal coordinates in Z §1: dephase, retain the free entries,
and horizontally project. Any nonsingular change of these coordinates has an
explicit retraction on the horizontal kernel of the seed map. -/

open Matrix Hadamard6 NoFourMUBs.Step2 Filter Topology
open scoped Matrix.Norms.Elementwise ContDiff

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

noncomputable def realDephase (Q : RMat6) : RMat6 := fun i j =>
  Q i j - Q i (.inl 0) - Q (.inl 0) j + Q (.inl 0) (.inl 0)

lemma realDephase_hor (Q : RMat6) : realDephase (hor Q) = realDephase Q := by
  ext i j
  simp only [realDephase, hor_apply]
  ring

lemma hor_realDephase (Q : RMat6) : hor (realDephase Q) = hor Q := by
  ext i j
  simp only [hor_apply, realDephase, rowMean, colMean, allMean,
    Finset.sum_add_distrib, Finset.sum_sub_distrib, sum_const_I6]
  rw [Finset.sum_comm (f := fun i j => Q i j)]
  have hs : (∑ x : I6, 6 * Q x (.inl 0)) = 6 * ∑ x : I6, Q x (.inl 0) :=
    (Finset.mul_sum _ _ _).symm
  nlinarith [hs]

lemma hor_of_horizontal {Q : RMat6} (h : IsHorizontal Q) : hor Q = Q := by
  ext i j
  simp [hor_apply, rowMean, colMean, allMean, h.1, h.2]

/-- The free entries are ordered by row, excluding the first row/column and the
four seed entries. This is the ordering in `wholeball_basis.json`. -/
noncomputable def normalRaw (z : Fin 21 → ℝ) : RMat6 := fun i j =>
  match i, j with
  | .inl _, .inl _ => 0
  | .inl a, .inr b => if ha : a.val = 0 then 0 else z ⟨3 * (a.val - 1) + b.val, by omega⟩
  | .inr a, .inl b => if hb : b.val = 0 then 0 else z ⟨6 + 5 * a.val + (b.val - 1), by omega⟩
  | .inr a, .inr b => z ⟨8 + 5 * a.val + b.val, by omega⟩

noncomputable def normalCoordinates (Q : RMat6) (k : Fin 21) : ℝ :=
  if hk : k.val < 6 then
    realDephase Q (.inl ⟨1 + k.val / 3, by omega⟩) (.inr ⟨k.val % 3, by omega⟩)
  else
    let a : Fin 3 := ⟨(k.val - 6) / 5, by omega⟩
    if hb : (k.val - 6) % 5 < 2 then
      realDephase Q (.inr a) (.inl ⟨1 + (k.val - 6) % 5, by omega⟩)
    else realDephase Q (.inr a) (.inr ⟨(k.val - 6) % 5 - 2, by omega⟩)

lemma normalRaw_coordinates {Q : RMat6} (h : cornerTheta Q 1 1 = 0) :
    normalRaw (normalCoordinates Q) = realDephase Q := by
  have h0 := congrFun h 0
  have h1 := congrFun h 1
  have h2 := congrFun h 2
  have h3 := congrFun h 3
  change realDephase Q (.inl 1) (.inl 1) = 0 at h0
  change realDephase Q (.inl 1) (.inl 2) = 0 at h1
  change realDephase Q (.inl 2) (.inl 1) = 0 at h2
  change realDephase Q (.inl 2) (.inl 2) = 0 at h3
  dsimp [realDephase] at h0 h1 h2 h3
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [normalRaw, normalCoordinates, realDephase] <;> first | assumption | linarith

lemma normalCoordinates_raw (z : Fin 21 → ℝ) : normalCoordinates (normalRaw z) = z := by
  ext k
  fin_cases k <;> simp [normalCoordinates, realDephase, normalRaw]

lemma normalCoordinates_hor (Q : RMat6) : normalCoordinates (hor Q) = normalCoordinates Q := by
  unfold normalCoordinates
  rw [realDephase_hor]

lemma normal_basis_retraction {Q : RMat6} (hh : IsHorizontal Q)
    (hL : cornerTheta Q 1 1 = 0) : hor (normalRaw (normalCoordinates Q)) = Q := by
  rw [normalRaw_coordinates hL, hor_realDephase, hor_of_horizontal hh]

/-- The exact frozen change of basis is allowed to be nonorthogonal. -/
noncomputable def frozenNormal (T : Matrix (Fin 21) (Fin 21) ℝ) (z : Fin 21 → ℝ) : RMat6 :=
  hor (normalRaw (T *ᵥ z))

noncomputable def frozenRetraction (T : Matrix (Fin 21) (Fin 21) ℝ) (Q : RMat6) : Fin 21 → ℝ :=
  T⁻¹ *ᵥ normalCoordinates Q

lemma frozenNormal_retraction (T : Matrix (Fin 21) (Fin 21) ℝ) (hT : IsUnit T.det)
    {Q : RMat6} (hh : IsHorizontal Q) (hL : cornerTheta Q 1 1 = 0) :
    frozenNormal T (frozenRetraction T Q) = Q := by
  rw [frozenNormal, frozenRetraction, Matrix.mulVec_mulVec,
    Matrix.mul_nonsing_inv _ hT, Matrix.one_mulVec]
  exact normal_basis_retraction hh hL

lemma frozenRetraction_normal (T : Matrix (Fin 21) (Fin 21) ℝ) (hT : IsUnit T.det)
    (z : Fin 21 → ℝ) : frozenRetraction T (frozenNormal T z) = z := by
  rw [frozenRetraction, frozenNormal, normalCoordinates_hor, normalCoordinates_raw,
    Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hT, Matrix.one_mulVec]


@[fun_prop] lemma contDiff_normalCoordinates : ContDiff ℝ ω normalCoordinates := by
  apply contDiff_pi.mpr
  intro k
  unfold normalCoordinates
  split_ifs <;> dsimp [realDephase] <;> fun_prop

@[fun_prop] lemma contDiff_mulVec21 (T : Matrix (Fin 21) (Fin 21) ℝ) :
    ContDiff ℝ ω (fun z : Fin 21 → ℝ => T *ᵥ z) := by
  apply contDiff_pi.mpr
  intro i
  simp only [Matrix.mulVec, dotProduct]
  fun_prop

lemma normalCoordinates_zero : normalCoordinates 0 = 0 := by
  ext k
  unfold normalCoordinates
  split_ifs <;> simp [realDephase]

noncomputable def frozenNormalE (T : Matrix (Fin 21) (Fin 21) ℝ)
    (z : EuclideanSpace ℝ (Fin 21)) : RMat6 := frozenNormal T z

noncomputable def frozenRetractionE (T : Matrix (Fin 21) (Fin 21) ℝ)
    (Q : RMat6) : EuclideanSpace ℝ (Fin 21) := WithLp.toLp 2 (frozenRetraction T Q)

@[fun_prop] lemma contDiff_frozenRetractionE (T : Matrix (Fin 21) (Fin 21) ℝ) :
    ContDiff ℝ ω (frozenRetractionE T) :=
  (PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 21 => ℝ)).symm.contDiff.comp
    ((contDiff_mulVec21 T⁻¹).comp contDiff_normalCoordinates)

/-- The concrete 21-coordinate retraction supplies the local normal germ.
Only invertibility of the fixed change of basis is needed. -/
theorem frozen_normal_germ {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (T : Matrix (Fin 21) (Fin 21) ℝ) (hT : IsUnit T.det)
    {qs qp : E → RMat6} (hs : AnalyticAt ℝ qs 0) (hp : AnalyticAt ℝ qp 0)
    (h0 : qs 0 = qp 0)
    (hker : ∀ᶠ w in 𝓝 (0 : E), IsHorizontal (qs w - qp w) ∧
      cornerTheta (qs w - qp w) 1 1 = 0) :
    ∃ zs : E → EuclideanSpace ℝ (Fin 21), AnalyticAt ℝ zs 0 ∧ zs 0 = 0 ∧
      ∀ᶠ w in 𝓝 (0 : E), qp w + frozenNormalE T (zs w) = qs w := by
  refine ⟨fun w => frozenRetractionE T (qs w - qp w),
    (contDiff_frozenRetractionE T).contDiffAt.analyticAt.comp (hs.sub hp), ?_, ?_⟩
  · simp [h0, frozenRetractionE, frozenRetraction, normalCoordinates_zero]
  · filter_upwards [hker] with w hw
    have he := frozenNormal_retraction T hT hw.1 hw.2
    change qp w + frozenNormal T (frozenRetraction T (qs w - qp w)) = qs w
    rw [he]
    abel

end NoFourMUBs.SeedAtlas.Method.WholeBall
