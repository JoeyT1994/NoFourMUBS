import KernelAtlas.Edge.C1eSide

/-! Enclosures of the augmented root coordinates and side rows. -/

open Complex NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

lemma has_tubeE {u : Fin 4 → ℝ} {ph : List CT} {ec : List ℕ} {ξ : Fin 7 → ℝ}
    (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) (j : Fin 7) :
    (gT (tubeE ph ec) j).Has u (ξ j : ℂ) := by
  rw [tubeE, gT_l7 _ j.2]
  apply has_addRho (has_pred ph u j j.2)
  simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hd j

lemma sideE_exp {h : List ℕ} {v : Bool} {e : List CT} {y : CT}
    {ph : List CT} {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (hok : sideE h v e y ph Y ρ ec = true) :
    expOK (re (gT ph 0)) nT = true ∧
      ∀ j : Fin 6, expOK (gT (l6 fun j => re (gT ph (j + 1))) j) nT = true := by
  simp only [sideE, Bool.and_eq_true] at hok
  exact ⟨hok.1.2, fun j => all_l6 hok.2 j.2⟩

lemma has_rowsE {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {v : Bool} {e : List CT} {y : CT} {ph : List CT} {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (hok : sideE h v e y ph Y ρ ec = true) {ξ : Fin 7 → ℝ}
    (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) :
    (∀ j : Fin 3, (gT (rowsE h ph ec) j).Has u (sx (phiOf ξ) j)) ∧
    (∀ j : Fin 3, (gT (rowsE h ph ec) (j + 3)).Has u (sy (phiOf ξ) j)) := by
  have hpφ : ∀ j : Fin 6, (gT (l6 fun j => re (gT ph (j + 1))) j).Has u
      (phiOf (predR ph u) j : ℂ) := fun j => by
    rw [gT_l6 _ j.2]
    exact has_pred ph u (j + 1) (by omega)
  obtain ⟨hx, hy⟩ := has_rowsT hu (sideE_exp hok).2 hpφ
  constructor
  · intro j
    rw [rowsE, gT_l6 _ (by omega)]
    exact has_row_shift (hx j) (hd ⟨j + 1, by omega⟩)
  · intro j
    rw [rowsE, gT_l6 _ (by omega)]
    exact has_row_shift (hy j) (hd ⟨j + 4, by omega⟩)

lemma has_e3 {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {v : Bool} {e : List CT} {y : CT} {ph : List CT} {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (hok : sideE h v e y ph Y ρ ec = true) {ξ : Fin 7 → ℝ}
    (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) :
    (addRho (expI h nT (re (gT ph 0))) (gn ec 0)).Has u (exp ((ξ 0 : ℂ) * I)) :=
  has_row_shift (has_expI hu (sideE_exp hok).1 (has_pred ph u 0 (by norm_num))) (hd 0)

/-- Real points enclosed by one complex Taylor model form an interval. -/
lemma has_interval {T : CT} {u : Fin 4 → ℝ} {a b : ℝ}
    (ha : T.Has u (a : ℂ)) (hb : T.Has u (b : ℂ)) :
    ∀ t ∈ Set.uIcc a b, T.Has u (t : ℂ) := by
  have hc : Convex ℝ {t : ℝ | T.Has u (t : ℂ)} := by
    have he : {t : ℝ | T.Has u (t : ℂ)} =
        Complex.ofRealCLM.toLinearMap ⁻¹' Metric.closedBall (T.eval u) (rn T.ρ) := by
      ext t
      change (‖(t : ℂ) - T.eval u‖ ≤ rn T.ρ) ↔ dist (t : ℂ) (T.eval u) ≤ rn T.ρ
      rw [dist_eq_norm]
    rw [he]
    exact (convex_closedBall (T.eval u) (rn T.ρ)).linear_preimage Complex.ofRealCLM.toLinearMap
  exact fun _ ht => hc.ordConnected.uIcc_subset ha hb ht

/-- The common widened model contains the interval joining the two fourth angles. -/
lemma has_common_angle {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {H V : CT} {a b : ℝ} (hH : H.Has u (a : ℂ)) (hV : V.Has u (b : ℂ)) :
    ∀ t ∈ Set.uIcc a b, (addRho H (bnd h (sub H V))).Has u (t : ℂ) := by
  apply has_interval
  · exact has_addRho hH (by simpa only [sub_self, norm_zero] using rn_nonneg (bnd h (sub H V)))
  · apply has_addRho hH
    rw [norm_sub_rev]
    exact norm_le_bnd hu (has_sub hH hV)

end NoFourMUBs.KernelAtlas.Edge
