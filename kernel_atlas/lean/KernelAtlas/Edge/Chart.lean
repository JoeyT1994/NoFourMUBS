import KernelAtlas.Edge.PhaseModels

/-! A continuous phase chart with complete C1e model soundness on a checked closed box. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

@[fun_prop] theorem continuous_rootPhase {P : Type*} [TopologicalSpace P]
    (a : P → (Fin 3 → ℝ)) (ξH ξV : P → (Fin 7 → ℝ)) (Φ : P → Fin 3 → Fin 3 → ℝ)
    (ha : Continuous a) (hH : Continuous ξH) (hV : Continuous ξV) (hΦ : Continuous Φ) :
    Continuous (fun p => rootPhase (a p) (ξH p) (ξV p) (Φ p)) := by
  have ht : Continuous (fun p => th4 (a p) (ξH p 0)) := by
    apply continuous_pi
    intro i
    fin_cases i <;> simp only [th4, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.cons_val_three] <;> fun_prop
  have hθ (k : ℕ) : Continuous (fun p => e4 (th4 (a p) (ξH p 0)) k) := by
    unfold e4
    split_ifs <;> fun_prop
  have hφH (k : ℕ) : Continuous (fun p => e6 (phiOf (ξH p)) k) := by
    unfold e6
    split_ifs <;> fun_prop
  have hφV (k : ℕ) : Continuous (fun p => e6 (phiOf (ξV p)) k) := by
    unfold e6
    split_ifs <;> fun_prop
  have hφD (k : ℕ) : Continuous (fun p => e9 (Φ p) k) := by
    unfold e9
    split_ifs <;> fun_prop
  apply continuous_pi
  intro i
  apply continuous_pi
  intro j
  simp only [rootPhase, Matrix.of_apply, Qf]
  split_ifs
  all_goals first | exact continuous_const | exact hθ _ | exact hφH _ | exact hφV _ | exact hφD _

/-- The checked fixed argument windows force any selected lower-block lifts to be continuous. -/
theorem BoxRoots.phase_continuous {B : EBallD} {D : EBoxD} (r : BoxRoots B D)
    (hok : coreOK B D = true) (Φ : BoxSpace D → Fin 3 → Fin 3 → ℝ)
    (hexp : ∀ u a b, rootD (aR B (ewOf D u.1)) (r.H.root u) (r.V.root u) a b =
      exp ((Φ u a b : ℂ) * I))
    (hm : ∀ u (a b : Fin 3), (gT (argModels B D) (3 * a + b)).Has u.1 (Φ u a b : ℂ)) :
    Continuous Φ := by
  have ha : Continuous (fun u : BoxSpace D => aR B (ewOf D u.1)) :=
    continuous_fst.comp ((continuous_parameters B D).comp continuous_subtype_val)
  have hK := continuous_rootCompletion _ r.H.root r.V.root ha r.H.continuous r.V.continuous
    (r.invertible hok)
  apply continuous_pi
  intro a
  apply continuous_pi
  intro b
  have hz : Continuous (fun u : BoxSpace D =>
      rootD (aR B (ewOf D u.1)) (r.H.root u) (r.V.root u) a b) := by
    exact (continuous_apply (.inr b)).comp ((continuous_apply (.inr a)).comp hK)
  have hk : 3 * (a : ℕ) + b < 9 := by omega
  have hw := all_l9 (coreOK_parts hok).arg hk
  simp only [Bool.and_eq_true] at hw
  apply continuous_phase_lift _ hz (fun u => Φ u a b) (rq (gi B.Pa (3 * a + b)))
    (rn (argRadius D.hb (gi B.Pa (3 * a + b)) (gT (argModels B D) (3 * a + b))))
    (argRadius_lt_pi hw.2) ?_ (fun u => (hexp u a b).symm)
  intro u
  have H := has_argRadius u.2 (hm u a b) (gi B.Pa (3 * a + b))
  rw [abs_le] at H
  constructor <;> linarith

/-- A chart retains its augmented roots and argument windows so overlap checks can identify it. -/
structure BoxChart (B : EBallD) (D : EBoxD) where
  roots : BoxRoots B D
  phase : BoxSpace D → Fin 3 → Fin 3 → ℝ
  phase_exp : ∀ u a b, rootD (aR B (ewOf D u.1)) (roots.H.root u) (roots.V.root u) a b =
    exp ((phase u a b : ℂ) * I)
  phase_models : ∀ u (a b : Fin 3), (gT (argModels B D) (3 * a + b)).Has u.1 (phase u a b : ℂ)
  continuous_phase : Continuous phase
  entry_eq : ∀ u, phaseMat (rootPhase (aR B (ewOf D u.1)) (roots.H.root u) (roots.V.root u) (phase u)) =
    rootCompletion (aR B (ewOf D u.1)) (roots.H.root u) (roots.V.root u)
  q_models : ∀ u i j, (gT (qModels B D) (ix i j)).Has u.1
    (rootPhase (aR B (ewOf D u.1)) (roots.H.root u) (roots.V.root u) (phase u) i j : ℂ)
  k_models : ∀ u i j, (gT (kModels B D) (ix i j)).Has u.1
    (phaseMat (rootPhase (aR B (ewOf D u.1)) (roots.H.root u) (roots.V.root u) (phase u)) i j)

def boxChart {B : EBallD} {D : EBoxD} (hok : coreOK B D = true) (hl : labelOK B D = true) :
    BoxChart B D := by
  let r := boxRoots hok
  have hHad := r.hadamard hok (labelOK_dense hl)
  choose Φ he hm hp hq hk using fun u => r.phase_models hok u (hHad u)
  exact ⟨r, Φ, he, hm, r.phase_continuous hok Φ he hm, hp, hq, hk⟩

def BoxChart.Q {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : BoxSpace D) : RMat6 :=
  rootPhase (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) (C.phase u)

theorem BoxChart.continuous {B : EBallD} {D : EBoxD} (C : BoxChart B D) : Continuous C.Q := by
  apply continuous_rootPhase _ _ _ _ ?_ C.roots.H.continuous C.roots.V.continuous C.continuous_phase
  exact continuous_fst.comp ((continuous_parameters B D).comp continuous_subtype_val)

theorem BoxChart.hadamard {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) (hl : labelOK B D = true) (u : BoxSpace D) :
    Hadamard6.IsHadamard (phaseMat (C.Q u)) := by
  rw [BoxChart.Q, C.entry_eq]
  exact C.roots.hadamard hok (labelOK_dense hl) u

/-- The full local C1e check, including density of the regular part. -/
def chartOK (B : EBallD) (D : EBoxD) : Bool := c1eBox B D && labelOK B D

/-- A passing box has one continuous phase chart, Hadamard also at the fold, with both models
and the checked horizontal X-image bound. -/
theorem chartOK_sound {B : EBallD} {D : EBoxD} (hok : chartOK B D = true) :
    ∃ Q : BoxSpace D → RMat6, Continuous Q ∧ ∀ u,
      Hadamard6.IsHadamard (phaseMat (Q u)) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has u.1 (Q u i j : ℂ)) ∧
      (∀ i j, (gT (kModels B D) (ix i j)).Has u.1 (phaseMat (Q u) i j)) ∧
      frob (hor (Q u - F6phase)) ≤ rn B.nX / 36 := by
  simp only [chartOK, c1eBox_eq, Bool.and_eq_true] at hok
  let C := boxChart hok.1.1 hok.2
  exact ⟨C.Q, C.continuous, fun u => ⟨C.hadamard hok.1.1 hok.2 u,
    C.q_models u, C.k_models u, image_bound u.2 (C.q_models u) hok.1.2⟩⟩

end NoFourMUBs.KernelAtlas.Edge
