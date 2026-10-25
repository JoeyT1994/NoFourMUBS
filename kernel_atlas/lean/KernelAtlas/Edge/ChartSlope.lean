import KernelAtlas.Edge.ChartColumn
import KernelAtlas.Edge.EtaJacModels

/-! Openness of the actual checked chart from its rational frame-coordinate slope check. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas Filter Topology Metric Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def BoxChart.etaChart {B : EBallD} {D : EBoxD} (C : BoxChart B D) (F : QFrame) (q : FrameQ)
    (PF : RMat6) (u : Fin 4 → ℝ) : Fin 4 → ℝ := frameEta F q (C.extendQ u-PF)

def BoxChart.etaJac {B : EBallD} {D : EBoxD} (C : BoxChart B D) (F : QFrame) (q : FrameQ)
    (u : Fin 4 → ℝ) : Matrix (Fin 4) (Fin 4) ℝ := fun i j => frameEta F q (C.jacQ u j) i

lemma clm_columns (L : (Fin 4 → ℝ) →L[ℝ] (Fin 4 → ℝ)) (v : Fin 4 → ℝ) :
    (Matrix.of fun i j => L (Pi.single j 1) i).mulVec v = L v := by
  have he : v = ∑ j : Fin 4, v j • Pi.single j 1 := by
    ext i
    simp [Pi.single_apply, Finset.sum_apply]
  conv_rhs => rw [he]
  ext i
  simp only [map_sum, map_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul,
    Matrix.mulVec, dotProduct, Matrix.of_apply]
  apply Finset.sum_congr rfl
  intro j _
  ring

set_option maxHeartbeats 1000000 in
theorem BoxChart.etaChart_hasDerivAt {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (F : QFrame) (q : FrameQ) (PF : RMat6)
    (u : BoxSpace D) (hu : {w | Seed.InBox D.hb w} ∈ 𝓝 u.1) (v : Fin 4 → ℝ) :
    HasDerivAt (fun t : ℝ => C.etaChart F q PF (u.1+t • v)) ((C.etaJac F q u.1).mulVec v) 0 := by
  have hη : DifferentiableAt ℝ (C.etaChart F q PF) u.1 := by
    apply differentiableAt_pi.mpr
    intro i
    have hQ := C.differentiableAt_Q hok u hu
    simp only [BoxChart.etaChart, frameEta_apply, Matrix.sub_apply]
    fun_prop
  have he : (Matrix.of fun i j => (fderiv ℝ (C.etaChart F q PF) u.1) (Pi.single j 1) i) =
      C.etaJac F q u.1 := by
    ext i j
    have hd (a b : I6) : HasDerivAt
        (fun t : ℝ => C.extendQ (u.1+t • Pi.single j 1) a b-PF a b) (C.jacQ u.1 j a b) 0 :=
      (hasDerivAt_line_apply (C.differentiableAt_Q hok u hu a b).hasFDerivAt (Pi.single j 1)).sub_const _
    have hs : HasDerivAt (fun t : ℝ => C.etaChart F q PF (u.1+t • Pi.single j 1) i)
        (C.etaJac F q u.1 i j) 0 := by
      unfold BoxChart.etaChart BoxChart.etaJac
      simp only [frameEta_apply, Matrix.sub_apply]
      apply HasDerivAt.fun_sum
      intro k _
      apply HasDerivAt.const_mul
      apply HasDerivAt.fun_sum
      intro a _
      apply HasDerivAt.fun_sum
      intro b _
      exact (hd a b).const_mul _
    exact (hasDerivAt_pi.mp (hasDerivAt_line_apply hη.hasFDerivAt (Pi.single j 1)) i).unique hs
  rw [← he, clm_columns]
  exact hasDerivAt_line_apply hη.hasFDerivAt v

theorem BoxChart.etaJac_models {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (F : QFrame) (q : FrameQ) {H V : RootDiffD} (P : List Seed.CT)
    (hh : rootDiffOK B D false D.phH D.eH D.YH H = true)
    (hv : rootDiffOK B D true D.phV D.eV D.YV V = true)
    (u : BoxSpace D) (hu : {w | Seed.InBox D.hb w} ∈ 𝓝 u.1) (i j : Fin 4) :
    (gT (etaJacT B D F q H V P) (4*i+j)).Has u.1 (C.etaJac F q u.1 i j : ℂ) := by
  rw [gT_etaJacT]
  exact has_etaT u.2 F q (C.jacQ_models hok P hh hv u hu j) i

/-- The passing slope check proves that every sufficiently small ball has a neighbourhood image. -/
theorem BoxChart.etaChart_open {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (F : QFrame) (q : FrameQ) (PF : RMat6)
    {H V : RootDiffD} (P : List Seed.CT)
    (hh : rootDiffOK B D false D.phH D.eH D.YH H = true)
    (hv : rootDiffOK B D true D.phV D.eV D.YV V = true)
    {Y : List ℤ} {s : ℕ} (hs : slopeOK D.hb Y (etaJacT B D F q H V P) s = true)
    {w : Fin 4 → ℝ} {r : ℝ} (hr : 0 < r)
    (hb : closedBall w r ⊆ interior {u | Seed.InBox D.hb u}) :
    (C.etaChart F q PF) '' closedBall w r ∈ 𝓝 (C.etaChart F q PF w) := by
  apply slopeOK_open_interior hs (C.etaChart F q PF) (C.etaJac F q)
    (fun u hu v => C.etaChart_hasDerivAt hok F q PF ⟨u, interior_subset hu⟩ (mem_interior_iff_mem_nhds.mp hu) v)
    (fun u hu i j => C.etaJac_models hok F q P hh hv ⟨u, interior_subset hu⟩ (mem_interior_iff_mem_nhds.mp hu) i j) hr hb

end NoFourMUBs.KernelAtlas.Edge
