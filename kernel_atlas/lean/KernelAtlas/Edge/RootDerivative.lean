import KernelAtlas.Edge.Smooth
import KernelAtlas.Edge.SideJacobian

/-! Differential of the selected augmented root at interior points of a checked box. -/

open Matrix Filter Topology Metric NoFourMUBs.SeedAtlas
open scoped ContDiff

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def matrixCLM {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ) :=
  A.toLin'.toContinuousLinearMap

lemma matrixCLM_apply {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) (v : Fin n → ℝ) :
    matrixCLM A v = A.mulVec v := rfl

theorem matrixCLM_invertible {m : ℕ} {A : Matrix (Fin m) (Fin m) ℝ} (hA : IsUnit A.det) :
    (matrixCLM A).IsInvertible := by
  apply ContinuousLinearMap.IsInvertible.of_inverse (g := matrixCLM A⁻¹)
  · ext v : 1
    change A.mulVec (A⁻¹.mulVec v) = v
    rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hA, Matrix.one_mulVec]
  · ext v : 1
    change A⁻¹.mulVec (A.mulVec v) = v
    rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hA, Matrix.one_mulVec]

def edgeParam (B : EBallD) (D : EBoxD) (v : Bool) :
    (Fin 4 → ℝ) × (Fin 7 → ℝ) → (Fin 7 → ℝ) :=
  fun z => edgeF v (aR B (ewOf D z.1)) (yR B (ewOf D z.1)) z.2

@[fun_prop] theorem contDiff_edgeParam (B : EBallD) (D : EBoxD) (v : Bool) :
    ContDiff ℝ ∞ (edgeParam B D v) :=
  (contDiff_edgeF v).comp
    (f := fun z : (Fin 4 → ℝ) × (Fin 7 → ℝ) =>
      ((aR B (ewOf D z.1), yR B (ewOf D z.1)), z.2))
    (((contDiff_parameters B D).comp contDiff_fst).prodMk contDiff_snd)

/-- The partial Fréchet derivative in the seven unknowns is the previously audited Jacobian. -/
theorem edgeParam_partial_root (B : EBallD) (D : EBoxD) (v : Bool)
    (u : Fin 4 → ℝ) (ξ : Fin 7 → ℝ) :
    fderiv ℝ (edgeParam B D v) (u, ξ) ∘L ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 7 → ℝ) =
      matrixCLM (edgeJ v (aR B (ewOf D u)) ξ) := by
  ext w : 1
  have hd := ((contDiff_edgeParam B D v).differentiable (by simp)).differentiableAt.hasFDerivAt (x := (u, ξ))
  have hc : HasDerivAt (fun t : ℝ => (u, ξ + t • w)) (0, w) 0 := by
    simpa using (hasDerivAt_const (0 : ℝ) u).prodMk (((hasDerivAt_id (0 : ℝ)).smul_const w).const_add ξ)
  have h := hd.comp_hasDerivAt_of_eq (0 : ℝ) hc (by simp)
  have h' := hasDerivAt_edgeF v (aR B (ewOf D u)) (yR B (ewOf D u)) ξ w
  exact h.unique h'

/-- Extend a selected box root to a function on parameter space; its values outside the box
are irrelevant to every local derivative and enclosure statement. -/
def CheckedSide.extend {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT} {ρ : ℕ} {ec : List ℕ}
    (r : CheckedSide B D v ph ρ ec) (u : Fin 4 → ℝ) : Fin 7 → ℝ :=
  by classical exact if h : InBox D.hb u then r.root ⟨u, h⟩ else 0

theorem CheckedSide.extend_eq {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT} {ρ : ℕ} {ec : List ℕ}
    (r : CheckedSide B D v ph ρ ec) (u : BoxSpace D) : r.extend u.1 = r.root u := by
  simp only [CheckedSide.extend, dif_pos u.2]

theorem CheckedSide.hasStrictFDerivAt {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT}
    {Y : List ℤ} {ρ : ℕ} {ec : List ℕ} (r : CheckedSide B D v ph ρ ec)
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1) :
    HasStrictFDerivAt r.extend
      (-(matrixCLM (edgeJ v (aR B (ewOf D u.1)) (r.root u))).inverse ∘L
        (fderiv ℝ (edgeParam B D v) (u.1, r.root u) ∘L
          ContinuousLinearMap.inl ℝ (Fin 4 → ℝ) (Fin 7 → ℝ))) u.1 := by
  have hi := sideE_jacobian_invertible u.2 v (has_e012 B D u.2 hexp) hok (r.root u) (r.mem u)
  have hpartial : (fderiv ℝ (edgeParam B D v) (u.1, r.root u) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 7 → ℝ)).IsInvertible := by
    rw [edgeParam_partial_root]
    exact matrixCLM_invertible hi
  have hc : ContinuousAt r.extend u.1 := by
    apply ContinuousOn.continuousAt (s := {w | InBox D.hb w}) ?_ hu
    rw [continuousOn_iff_continuous_restrict]
    exact r.continuous.congr (fun w => (r.extend_eq w).symm)
  have hz : ∀ᶠ w in 𝓝 u.1, edgeParam B D v (w, r.extend w) = edgeParam B D v (u.1, r.extend u.1) := by
    filter_upwards [hu] with w hw
    rw [r.extend_eq ⟨w, hw⟩, r.extend_eq u]
    exact (r.zero ⟨w, hw⟩).trans (r.zero u).symm
  have hF := ((contDiff_edgeParam B D v).contDiffAt (x := (u.1, r.root u))).hasStrictFDerivAt (by simp : (∞ : ℕ∞ω) ≠ 0)
  have h := hasStrictFDerivAt_selected_root (F := edgeParam B D v) (f := r.extend)
    (by simpa only [r.extend_eq u] using hF) (by simpa only [r.extend_eq u] using hpartial) hc hz
  simpa only [r.extend_eq u, edgeParam_partial_root] using h

end NoFourMUBs.KernelAtlas.Edge
