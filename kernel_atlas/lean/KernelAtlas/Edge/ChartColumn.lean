import KernelAtlas.Edge.ChartDerivative
import KernelAtlas.Edge.ColumnSound

/-! The checked completion columns enclose the differential of the actual continuous chart. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas Filter Topology

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

lemma hasDerivAt_affineLine {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]
    (u v : X) : HasDerivAt (fun t : ℝ => u+t • v) v 0 := by
  simpa using ((hasDerivAt_id (0 : ℝ)).smul_const v).const_add u

lemma hasDerivAt_line_apply {X Z : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]
    [NormedAddCommGroup Z] [NormedSpace ℝ Z] {f : X → Z} {df : X →L[ℝ] Z} {u : X}
    (hf : HasFDerivAt f df u) (v : X) :
    HasDerivAt (fun t : ℝ => f (u+t • v)) (df v) 0 :=
  hf.comp_hasDerivAt_of_eq 0 (hasDerivAt_affineLine u v) (by simp)

lemma hasDerivAt_aR_column (B : EBallD) (D : EBoxD) (u : Fin 4 → ℝ) (j : Fin 4) (k : Fin 3) :
    HasDerivAt (fun t : ℝ => aR B (ewOf D (u+t • Pi.single j 1)) k) (MR B k.castSucc j) 0 := by
  have he : (fun t : ℝ => aR B (ewOf D (u+t • Pi.single j 1)) k) =
      fun t => aR B (ewOf D u) k+t*MR B k.castSucc j := by
    funext t
    simp [aR_line, angleRate, Pi.single_apply]
  rw [he]
  simpa using ((hasDerivAt_id (0 : ℝ)).mul_const (MR B k.castSucc j)).const_add (aR B (ewOf D u) k)

lemma hasDerivAt_rootPhase {a : ℝ → Fin 3 → ℝ} {h v : ℝ → Fin 7 → ℝ}
    {p : ℝ → Fin 3 → Fin 3 → ℝ} {da : Fin 3 → ℝ} {dh dv : Fin 7 → ℝ}
    {dp : Fin 3 → Fin 3 → ℝ} {t : ℝ}
    (ha : ∀ k, HasDerivAt (fun s => a s k) (da k) t)
    (hh : ∀ k, HasDerivAt (fun s => h s k) (dh k) t)
    (hv : ∀ k, HasDerivAt (fun s => v s k) (dv k) t)
    (hp : ∀ i j, HasDerivAt (fun s => p s i j) (dp i j) t) (i j : I6) :
    HasDerivAt (fun s => rootPhase (a s) (h s) (v s) (p s) i j)
      (rootPhase da dh dv dp i j) t := by
  have ht (k : Fin 4) : HasDerivAt (fun s => th4 (a s) (h s 0) k) (th4 da (dh 0) k) t := by
    fin_cases k <;> dsimp [th4] <;> first | exact ha _ | exact hh 0
  unfold rootPhase Qf e4 e6 e9
  simp only [Matrix.of_apply]
  split_ifs <;> simp -failIfUnchanged only [phiOf] <;>
    first | exact ht _ | exact hh _ | exact hv _ | exact hp _ _ | exact hasDerivAt_const t 0

/-- Actual phase Jacobian columns, evaluated on coordinate directions. -/
def BoxChart.jacQ {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : Fin 4 → ℝ) (j : Fin 4) : RMat6 :=
  fun a b => fderiv ℝ (fun w => C.extendQ w a b) u (Pi.single j 1)

set_option maxHeartbeats 2000000 in
theorem BoxChart.column_differential {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1) (j : Fin 4) :
    ∃ dD : Mat3,
      dD * (L1.sideMat (sx (phiOf (C.roots.H.root u))) (sy (phiOf (C.roots.H.root u))))ᴴ =
        -(columnB (C.roots.V.root u) (rootColumn C.roots.V u j))ᵀ *
            (Em (rho4 (aR B (ewOf D u.1)) (C.roots.H.root u 0)))ᴴ -
          (L1.sideMat (sx (phiOf (C.roots.V.root u))) (sy (phiOf (C.roots.V.root u))))ᵀ *
            (columnE B (aR B (ewOf D u.1)) (C.roots.H.root u) (rootColumn C.roots.H u j) j)ᴴ -
          rootD (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) *
            (columnB (C.roots.H.root u) (rootColumn C.roots.H u j))ᴴ ∧
      C.jacQ u.1 j = columnPhase C u j dD := by
  let line := fun t : ℝ => u.1+t • Pi.single j 1
  have hline : HasDerivAt line (Pi.single j 1) 0 := hasDerivAt_affineLine _ _
  have hline0 : line 0 = u.1 := by simp [line]
  have hp := coreOK_parts hok
  have hH := hasDerivAt_line_apply (C.roots.H.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideH u hu).hasFDerivAt (Pi.single j 1)
  have hV := hasDerivAt_line_apply (C.roots.V.hasStrictFDerivAt_rootDifferential hp.exp_a hp.sideV u hu).hasFDerivAt (Pi.single j 1)
  have hh (k : Fin 7) : HasDerivAt (fun t => C.roots.H.extend (line t) k) (rootColumn C.roots.H u j k) 0 :=
    hasDerivAt_pi.mp hH k
  have hv (k : Fin 7) : HasDerivAt (fun t => C.roots.V.extend (line t) k) (rootColumn C.roots.V u j k) 0 :=
    hasDerivAt_pi.mp hV k
  have ha := hasDerivAt_aR_column B D u.1 j
  have he := hasDerivAt_corner (hasDerivAt_rho4 ha hh)
  have hb := hasDerivAt_side (hasDerivAt_sx hh) (hasDerivAt_sy hh)
  have hc (a b : Fin 3) := hasDerivAt_side (hasDerivAt_sx hv) (hasDerivAt_sy hv) b a
  have hi : IsUnit (L1.sideMat (sx (phiOf (C.roots.H.extend (line 0))))
      (sy (phiOf (C.roots.H.extend (line 0))))).det := by
    rw [hline0, C.roots.H.extend_eq u]
    exact C.roots.invertible hok u
  obtain ⟨dD, hd, hz⟩ := forced_derivative_equation he hb hc hi
  have hd' (a b : Fin 3) : HasDerivAt
      (fun t => rootD (aR B (ewOf D (line t))) (C.roots.H.extend (line t)) (C.roots.V.extend (line t)) a b)
      (dD a b) 0 := hd a b
  have hmem : ∀ᶠ t in 𝓝 (0 : ℝ), InBox D.hb (line t) := by
    apply hline.continuousAt.tendsto.eventually
    change {w | InBox D.hb w} ∈ 𝓝 (line 0)
    rwa [hline0]
  have hphase (a b : Fin 3) : HasDerivAt (fun t => C.extendPhase (line t) a b)
      ((dD a b / rootD (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) a b).im) 0 := by
    have hcont : ContinuousAt (fun t => C.extendPhase (line t) a b) 0 := by
      have h := (C.continuousAt_extendPhase u hu).comp_of_eq hline.continuousAt hline0
      exact (continuous_apply b).continuousAt.comp ((continuous_apply a).continuousAt.comp h)
    have hexp : ∀ᶠ t in 𝓝 (0 : ℝ), exp ((C.extendPhase (line t) a b : ℂ)*I) =
        rootD (aR B (ewOf D (line t))) (C.roots.H.extend (line t)) (C.roots.V.extend (line t)) a b := by
      filter_upwards [hmem] with t ht
      rw [C.extendPhase_eq ⟨line t, ht⟩, C.roots.H.extend_eq ⟨line t, ht⟩,
        C.roots.V.extend_eq ⟨line t, ht⟩]
      exact (C.phase_exp ⟨line t, ht⟩ a b).symm
    have H := hasDerivAt_phase_lift (z := fun t => rootD (aR B (ewOf D (line t)))
      (C.roots.H.extend (line t)) (C.roots.V.extend (line t)) a b) hcont (hd' a b) hexp
    simpa only [hline0, C.roots.H.extend_eq u, C.roots.V.extend_eq u] using H
  refine ⟨dD, ?_, ?_⟩
  · simp only [hline0, C.roots.H.extend_eq u, C.roots.V.extend_eq u, zero_smul, add_zero] at hz
    have hn (A B C : Mat3) : -(A+B+C) = -A-B-C := by abel
    rw [hn] at hz
    have htrans (A : Mat3) : Aᵀ = fun i j => A j i := by ext i j; rfl
    rw [Matrix.neg_mul]
    simpa only [columnB, columnE, rootD, htrans] using hz
  · ext a b
    exact (hasDerivAt_line_apply (C.differentiableAt_Q hok u hu a b).hasFDerivAt (Pi.single j 1)).unique
      (hasDerivAt_rootPhase ha hh hv hphase a b)

/-- Every checked phase-column model encloses the actual chart differential on the box interior. -/
theorem BoxChart.jacQ_models {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) {H V : RootDiffD} (P : List CT)
    (hh : rootDiffOK B D false D.phH D.eH D.YH H = true)
    (hv : rootDiffOK B D true D.phV D.eV D.YV V = true)
    (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1) (j : Fin 4) (a b : I6) :
    (gT (columnQT B D H V P j) (ix a b)).Has u.1 (C.jacQ u.1 j a b : ℂ) := by
  obtain ⟨dD, hz, he⟩ := C.column_differential hok u hu j
  rw [he]
  exact columnQT_sound C hok P hh hv u j dD hz a b

end NoFourMUBs.KernelAtlas.Edge
