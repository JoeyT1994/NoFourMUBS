import KernelAtlas.Edge.Models
import KernelAtlas.Edge.SideModels
import KernelAtlas.Edge.R4
import KernelAtlas.Edge.Fold

/-! The continuous augmented roots selected by a passing edge core box. -/

open Complex Metric Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

abbrev BoxSpace (D : EBoxD) := {u : Fin 4 → ℝ // InBox D.hb u}

structure CheckedSide (B : EBallD) (D : EBoxD) (v : Bool) (ph : List CT) (ρ : ℕ) (ec : List ℕ) where
  root : BoxSpace D → (Fin 7 → ℝ)
  continuous : Continuous root
  mem : ∀ u, root u ∈ closedBall (predR ph u.1) (rn ρ)
  zero : ∀ u, edgeF v (aR B (ewOf D u.1)) (yR B (ewOf D u.1)) (root u) = 0
  error : ∀ u (j : Fin 7), |root u j - predR ph u.1 j| ≤ rn (gn ec j)

def checkedSide {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT}
    {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true) :
    CheckedSide B D v ph ρ ec := by
  have H (u : BoxSpace D) := sideE_sound u.2 v (by simp [l3])
    (has_e012 B D u.2 hexp) (has_yT B D) hok
  choose f hm hz using fun u => (H u).1
  exact ⟨f, continuous_checked_side hexp hok f hm hz, hm, hz,
    fun u => (H u).2.1 (f u) (hm u) (hz u)⟩

structure BoxRoots (B : EBallD) (D : EBoxD) where
  H : CheckedSide B D false D.phH D.rhoH D.eH
  V : CheckedSide B D true D.phV D.rhoV D.eV

def boxRoots {B : EBallD} {D : EBoxD} (hok : coreOK B D = true) : BoxRoots B D :=
  let h := coreOK_parts hok
  ⟨checkedSide h.exp_a h.sideH, checkedSide h.exp_a h.sideV⟩

theorem BoxRoots.equal_fourth {B : EBallD} {D : EBoxD} (r : BoxRoots B D)
    (hok : coreOK B D = true) (u : BoxSpace D) (hy : yR B (ewOf D u.1) ≠ 0) :
    r.H.root u 0 = r.V.root u 0 := by
  have h := coreOK_parts hok
  have he := has_e012 B D u.2 h.exp_a
  have hS := has_common_angle u.2 (has_tubeE (r.H.error u) 0) (has_tubeE (r.V.error u) 0)
  have hmono := strictMonoOn_edgeR u.2 (convex_uIcc _ _) (he 0) (he 1) (he 2) hS h.exp_angle h.positive
  exact Edge.equal_fourth (r.H.zero u) (r.V.zero u) hy hmono Set.left_mem_uIcc Set.right_mem_uIcc

theorem BoxRoots.invertible {B : EBallD} {D : EBoxD} (r : BoxRoots B D)
    (hok : coreOK B D = true) (u : BoxSpace D) :
    IsUnit (L1.sideMat (sx (phiOf (r.H.root u))) (sy (phiOf (r.H.root u)))).det := by
  have h := coreOK_parts hok
  obtain ⟨hx, hy⟩ := has_rowsE u.2 h.sideH (r.H.error u)
  exact forced_invertible u.2 (has3_BT hx hy) h.forced

theorem BoxRoots.hadamard {B : EBallD} {D : EBoxD} (r : BoxRoots B D)
    (hok : coreOK B D = true) (hd : Dense {u : BoxSpace D | yR B (ewOf D u.1) ≠ 0}) :
    ∀ u : BoxSpace D, Hadamard6.IsHadamard
      (rootCompletion (aR B (ewOf D u.1)) (r.H.root u) (r.V.root u)) := by
  apply rootCompletion_hadamard_of_dense
    (fun u : BoxSpace D => aR B (ewOf D u.1)) (fun u => yR B (ewOf D u.1))
    r.H.root r.V.root ?_ r.H.continuous r.V.continuous (r.invertible hok) hd
    r.H.zero r.V.zero (r.equal_fourth hok)
  exact continuous_fst.comp ((continuous_parameters B D).comp continuous_subtype_val)

end NoFourMUBs.KernelAtlas.Edge
