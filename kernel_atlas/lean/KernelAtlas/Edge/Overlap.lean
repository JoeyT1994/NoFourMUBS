import KernelAtlas.Edge.Chart
import KernelAtlas.Edge.Glue

/-! Checked compatibility of the selected box charts on their overlaps. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas Set Metric

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- Shift from the first box's local coordinates to the second's. -/
def boxShift (D D' : EBoxD) : List ℤ := l4 fun k => gi D.wc k - gi D'.wc k

def overlapOK (D D' : EBoxD) : Bool :=
  predNear D.hb D.phH D'.phH (boxShift D D') D.eH D'.rhoH &&
  predNear D.hb D.phV D'.phV (boxShift D D') D.eV D'.rhoV

lemma boxShift_eq {D D' : EBoxD} {u : BoxSpace D} {u' : BoxSpace D'}
    (hw : ewOf D u.1 = ewOf D' u'.1) :
    (fun l : Fin 4 => rq (gi (boxShift D D') l) + u.1 l) = u'.1 := by
  funext l
  have h := congrFun hw l
  have hg : gi (boxShift D D') l = gi D.wc l - gi D'.wc l := by
    fin_cases l <;> rfl
  dsimp only [ewOf] at h
  rw [hg]
  unfold rq at *
  push_cast
  rw [sub_div]
  linarith

theorem CheckedSide.unique {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT}
    {Y : List ℤ} {ρ : ℕ} {ec : List ℕ} (r : CheckedSide B D v ph ρ ec)
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    (u : BoxSpace D) {ξ : Fin 7 → ℝ} (hξ : ξ ∈ closedBall (predR ph u.1) (rn ρ))
    (hz : edgeF v (aR B (ewOf D u.1)) (yR B (ewOf D u.1)) ξ = 0) : ξ = r.root u := by
  exact (sideE_sound u.2 v (by simp [l3]) (has_e012 B D u.2 hexp) (has_yT B D) hok).2.2
    ξ hξ (r.root u) (r.mem u) hz (r.zero u)

theorem BoxRoots.overlap {B : EBallD} {D D' : EBoxD} (r : BoxRoots B D) (r' : BoxRoots B D')
    (hk' : coreOK B D' = true) (ho : overlapOK D D' = true)
    {u : BoxSpace D} {u' : BoxSpace D'} (hw : ewOf D u.1 = ewOf D' u'.1) :
    r.H.root u = r'.H.root u' ∧ r.V.root u = r'.V.root u' := by
  have hp := coreOK_parts hk'
  have hs := boxShift_eq hw
  simp only [overlapOK, Bool.and_eq_true] at ho
  constructor
  · apply r'.H.unique hp.exp_a hp.sideH u'
    · have h := predNear_sound u.2 ho.1 (r.H.error u)
      rwa [hs] at h
    · rw [← hw]; exact r.H.zero u
  · apply r'.V.unique hp.exp_a hp.sideV u'
    · have h := predNear_sound u.2 ho.2 (r.V.error u)
      rwa [hs] at h
    · rw [← hw]; exact r.V.zero u

/-- All box argument windows are centered at the same ball-wide anchor, so equality of
complex lower blocks identifies the real lifts without winding ambiguity. -/
theorem BoxChart.overlap {B : EBallD} {D D' : EBoxD} (C : BoxChart B D) (C' : BoxChart B D')
    (hk : coreOK B D = true) (hk' : coreOK B D' = true) (ho : overlapOK D D' = true)
    {u : BoxSpace D} {u' : BoxSpace D'} (hw : ewOf D u.1 = ewOf D' u'.1) : C.Q u = C'.Q u' := by
  obtain ⟨hH, hV⟩ := C.roots.overlap C'.roots hk' ho hw
  have hφ : C.phase u = C'.phase u' := by
    funext a b
    have hi : 3 * (a : ℕ) + b < 9 := by omega
    have ha := all_l9 (coreOK_parts hk).arg hi
    have ha' := all_l9 (coreOK_parts hk').arg hi
    simp only [Bool.and_eq_true] at ha ha'
    let c := rq (gi B.Pa (3 * a + b))
    let r := max (rn (argRadius D.hb (gi B.Pa (3 * a + b)) (gT (argModels B D) (3 * a + b))))
      (rn (argRadius D'.hb (gi B.Pa (3 * a + b)) (gT (argModels B D') (3 * a + b))))
    have hr : r < Real.pi := max_lt (argRadius_lt_pi ha.2) (argRadius_lt_pi ha'.2)
    have hm : |C.phase u a b - c| ≤ r :=
      (has_argRadius u.2 (C.phase_models u a b) (gi B.Pa (3 * a + b))).trans (le_max_left _ _)
    have hm' : |C'.phase u' a b - c| ≤ r :=
      (has_argRadius u'.2 (C'.phase_models u' a b) (gi B.Pa (3 * a + b))).trans (le_max_right _ _)
    have hi0 : C.phase u a b ∈ Icc (c - r) (c + r) := by rw [abs_le] at hm; constructor <;> linarith
    have hi1 : C'.phase u' a b ∈ Icc (c - r) (c + r) := by rw [abs_le] at hm'; constructor <;> linarith
    apply Circle.exp_injOn_Icc (a := c-r) (b := c+r) (by linarith) hi0 hi1
    apply Subtype.ext
    change exp ((C.phase u a b : ℂ) * I) = exp ((C'.phase u' a b : ℂ) * I)
    rw [← C.phase_exp, ← C'.phase_exp, hw, hH, hV]
  simp only [BoxChart.Q, hw, hH, hV, hφ]

end NoFourMUBs.KernelAtlas.Edge
