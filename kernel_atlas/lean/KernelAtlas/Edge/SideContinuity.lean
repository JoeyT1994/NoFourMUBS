import KernelAtlas.Edge.Continuity

/-! Continuity of the augmented side equations and their unique roots on a checked box. -/

open Complex NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas Metric

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

@[fun_prop] lemma continuous_eval (T : CT) : Continuous T.eval := by
  unfold CT.eval
  apply continuous_finsetSum
  intro m _
  have huv (j : ℕ) : Continuous (fun u : Fin 4 → ℝ => uv u j) := by
    unfold uv
    split_ifs <;> fun_prop
  have hm : Continuous (Seed.mono m) := by
    unfold Seed.mono
    split_ifs <;> fun_prop
  fun_prop

@[fun_prop] lemma continuous_predR (ph : List CT) : Continuous (predR ph) := by
  apply continuous_pi
  intro j
  exact Complex.continuous_re.comp (continuous_eval _)

@[fun_prop] lemma continuous_phiOf : Continuous phiOf := by
  exact continuous_pi fun j => continuous_apply j.succ

@[fun_prop] lemma continuous_sx : Continuous sx := by
  apply continuous_pi
  intro j
  unfold sx
  fun_prop

@[fun_prop] lemma continuous_sy : Continuous sy := by
  apply continuous_pi
  intro j
  unfold sy
  fun_prop

@[fun_prop] lemma continuous_sideMat : Continuous (fun z : (Fin 3 → ℂ) × (Fin 3 → ℂ) => L1.sideMat z.1 z.2) := by
  apply continuous_pi
  intro i
  fin_cases i <;> simp only [L1.sideMat, Matrix.of_apply, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two] <;> fun_prop

@[fun_prop] lemma continuous_rho4 : Continuous (fun z : (Fin 3 → ℝ) × ℝ => rho4 z.1 z.2) := by
  apply continuous_pi
  intro k
  simp only [rho4_apply]
  fin_cases k <;> simp only [th4, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.cons_val_three] <;> fun_prop

@[fun_prop] lemma continuous_sideG :
    Continuous (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideG z.1.1 z.1.2.1 z.1.2.2 z.2) := by
  apply continuous_pi
  intro k
  fin_cases k <;> simp only [sideG, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, sS, rS] <;> fun_prop

@[fun_prop] lemma continuous_sideF :
    Continuous (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideF z.1.1 z.1.2.1 z.1.2.2 z.2) := by
  apply continuous_pi
  intro i
  unfold sideF
  split_ifs <;> fun_prop

@[fun_prop] lemma continuous_edgeF (v : Bool) :
    Continuous (fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => edgeF v z.1.1 z.1.2 z.2) := by
  have hg : Continuous (fun r : Fin 4 → ℂ => (gs v r, gt v r, gr v r)) := by
    cases v <;> simp only [gs, gt, gr, Bool.false_eq_true, ↓reduceIte, sh, th, rh, sv, tv, rv] <;> fun_prop
  have hp : Continuous (fun ξ : Fin 7 → ℝ => psiS (phiOf ξ)) := by
    unfold psiS
    fun_prop
  apply continuous_pi
  intro i
  unfold edgeF
  split_ifs with hi
  · have hr : Continuous (fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => rho4 z.1.1 (z.2 0)) :=
      continuous_rho4.comp (f := fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => (z.1.1, z.2 0))
        (by fun_prop)
    exact (continuous_apply (⟨i.1, hi⟩ : Fin 6)).comp (continuous_sideF.comp
      ((hg.comp hr).prodMk (continuous_phiOf.comp continuous_snd)))
  · exact (Complex.continuous_im.comp (hp.comp continuous_snd)).add
      ((continuous_const.mul (continuous_snd.comp continuous_fst)).div_const 2)

@[fun_prop] lemma continuous_parameters (B : EBallD) (D : EBoxD) :
    Continuous (fun u => (aR B (ewOf D u), yR B (ewOf D u))) := by
  unfold aR yR ewOf
  fun_prop

set_option maxHeartbeats 2000000 in
/-- On a checked box any choice of the augmented tube root is continuous. -/
theorem continuous_checked_side {B : EBallD} {D : EBoxD} {v : Bool}
    {ph : List CT} {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    (f : {u : Fin 4 → ℝ // InBox D.hb u} → (Fin 7 → ℝ))
    (hmem : ∀ u, f u ∈ closedBall (predR ph u.1) (rn ρ))
    (hz : ∀ u, edgeF v (aR B (ewOf D u.1)) (yR B (ewOf D u.1)) (f u) = 0) :
    Continuous f := by
  let F := fun (u : {u : Fin 4 → ℝ // InBox D.hb u}) ξ =>
    edgeF v (aR B (ewOf D u.1)) (yR B (ewOf D u.1)) ξ
  have hp : Continuous (fun u : {u : Fin 4 → ℝ // InBox D.hb u} =>
      (aR B (ewOf D u.1), yR B (ewOf D u.1))) :=
    (continuous_parameters B D).comp continuous_subtype_val
  have hF : Continuous (Function.uncurry F) := by
    have hG : Continuous (fun z : {u : Fin 4 → ℝ // InBox D.hb u} × (Fin 7 → ℝ) =>
        ((aR B (ewOf D z.1.1), yR B (ewOf D z.1.1)), z.2)) :=
      (hp.comp continuous_fst).prodMk continuous_snd
    exact (continuous_edgeF v).comp
      (f := fun z : {u : Fin 4 → ℝ // InBox D.hb u} × (Fin 7 → ℝ) =>
        ((aR B (ewOf D z.1.1), yR B (ewOf D z.1.1)), z.2)) hG
  apply continuous_tube_zero F hF (fun u => predR ph u.1) f
    ((continuous_predR ph).comp continuous_subtype_val) (rn ρ) hmem hz
  intro u ξ hξ hzero
  have he := has_e012 B D u.2 hexp
  have hel : ((l3 (aT B D)).map (expI D.hb nT)).length = 3 := by simp [l3]
  exact (sideE_sound u.2 v hel he (has_yT B D) hok).2.2 ξ hξ (f u) (hmem u) hzero (hz u)

end NoFourMUBs.KernelAtlas.Edge
