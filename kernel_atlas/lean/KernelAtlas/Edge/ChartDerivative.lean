import KernelAtlas.Edge.ColumnModels

/-! Differentiability of the continuous checked chart on the interior of its box. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas Filter Topology

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

def BoxChart.extendPhase {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : Fin 4 → ℝ) :
    Fin 3 → Fin 3 → ℝ := by
  classical exact if h : InBox D.hb u then C.phase ⟨u, h⟩ else 0

lemma BoxChart.extendPhase_eq {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : BoxSpace D) :
    C.extendPhase u.1 = C.phase u := by simp only [BoxChart.extendPhase, dif_pos u.2]

def BoxChart.extendQ {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : Fin 4 → ℝ) : RMat6 :=
  rootPhase (aR B (ewOf D u)) (C.roots.H.extend u) (C.roots.V.extend u) (C.extendPhase u)

lemma BoxChart.extendQ_eq {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : BoxSpace D) :
    C.extendQ u.1 = C.Q u := by
  simp only [BoxChart.extendQ, BoxChart.Q, CheckedSide.extend_eq, C.extendPhase_eq]

theorem BoxChart.continuousAt_extendPhase {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1) : ContinuousAt C.extendPhase u.1 := by
  apply ContinuousOn.continuousAt (s := {w | InBox D.hb w}) ?_ hu
  rw [continuousOn_iff_continuous_restrict]
  exact C.continuous_phase.congr (fun w => (C.extendPhase_eq w).symm)

theorem differentiableAt_rootD {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]
    {a : X → Fin 3 → ℝ} {h v : X → Fin 7 → ℝ} {u : X}
    (ha : DifferentiableAt ℝ a u) (hh : DifferentiableAt ℝ h u) (hv : DifferentiableAt ℝ v u)
    (hi : IsUnit (L1.sideMat (sx (phiOf (h u))) (sy (phiOf (h u)))).det) (i j : Fin 3) :
    DifferentiableAt ℝ (fun w => rootD (a w) (h w) (v w) i j) u := by
  have he (k l : Fin 3) : DifferentiableAt ℝ (fun w => Em (rho4 (a w) (h w 0)) k l) u := by
    fin_cases k <;> fin_cases l <;> simp [Em, corner, rho4_apply, th4] <;> fun_prop
  have hb (k l : Fin 3) : DifferentiableAt ℝ
      (fun w => L1.sideMat (sx (phiOf (h w))) (sy (phiOf (h w))) k l) u := by
    fin_cases k <;> simp [L1.sideMat, sx, sy, phiOf] <;> fun_prop
  have hc (k l : Fin 3) : DifferentiableAt ℝ
      (fun w => (L1.sideMat (sx (phiOf (v w))) (sy (phiOf (v w))))ᵀ k l) u := by
    fin_cases l <;> simp [L1.sideMat, sx, sy, phiOf, Matrix.transpose_apply] <;> fun_prop
  exact differentiableAt_forcedD he hb hc hi i j

theorem BoxChart.differentiableAt_phase {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1)
    (i j : Fin 3) : DifferentiableAt ℝ (fun w => C.extendPhase w i j) u.1 := by
  have hp := coreOK_parts hok
  have hh := (C.roots.H.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideH u hu).hasFDerivAt.differentiableAt
  have hv := (C.roots.V.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideV u hu).hasFDerivAt.differentiableAt
  have ha : DifferentiableAt ℝ (fun w => aR B (ewOf D w)) u.1 := by
    have H := (contDiff_parameters B D).differentiable (by simp)
    exact H.differentiableAt.fst
  have hi : IsUnit (L1.sideMat (sx (phiOf (C.roots.H.extend u.1)))
      (sy (phiOf (C.roots.H.extend u.1)))).det := by
    rw [C.roots.H.extend_eq u]
    exact C.roots.invertible hok u
  have hd := differentiableAt_rootD ha hh hv hi i j
  have hc := (continuous_apply j).continuousAt.comp
    ((continuous_apply i).continuousAt.comp (C.continuousAt_extendPhase u hu))
  apply differentiableAt_phase_lift hc hd
  filter_upwards [hu] with w hw
  change exp ((C.extendPhase w i j : ℂ)*I) = _
  rw [C.extendPhase_eq ⟨w, hw⟩, C.roots.H.extend_eq ⟨w, hw⟩, C.roots.V.extend_eq ⟨w, hw⟩]
  exact (C.phase_exp ⟨w, hw⟩ i j).symm

theorem BoxChart.differentiableAt_Q {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1)
    (i j : I6) : DifferentiableAt ℝ (fun w => C.extendQ w i j) u.1 := by
  have hp := coreOK_parts hok
  have hh := (C.roots.H.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideH u hu).hasFDerivAt.differentiableAt
  have hv := (C.roots.V.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideV u hu).hasFDerivAt.differentiableAt
  have ha : DifferentiableAt ℝ (fun w => aR B (ewOf D w)) u.1 := by
    exact ((contDiff_parameters B D).differentiable (by simp)).differentiableAt.fst
  have hd := C.differentiableAt_phase hok u hu
  have ht (k : Fin 4) : DifferentiableAt ℝ
      (fun w => th4 (aR B (ewOf D w)) (C.roots.H.extend w 0) k) u.1 := by
    fin_cases k <;> dsimp [th4] <;> fun_prop
  unfold BoxChart.extendQ rootPhase Qf e4 e6 e9
  simp only [Matrix.of_apply]
  split_ifs <;> simp -failIfUnchanged only [phiOf] <;> first | exact ht _ | fun_prop

end NoFourMUBs.KernelAtlas.Edge
