import KernelAtlas.Edge.C1eSide

/-! Nonsingularity of the augmented Jacobian throughout a passing Krawczyk tube. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas Metric

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed NoFourMUBs.Side

set_option maxHeartbeats 2000000 in
theorem sideE_jacobian_invertible {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    (v : Bool) {e012 : List CT} {a : Fin 3 → ℝ}
    (he : ∀ k : Fin 3, (gT e012 k).Has u (exp ((a k : ℂ) * I)))
    {yM : CT} {ph : List CT} {Y : List ℤ} {ρt : ℕ} {ec : List ℕ}
    (hok : sideE h v e012 yM ph Y ρt ec = true)
    (ξ0 : Fin 7 → ℝ) (hξ0 : ξ0 ∈ closedBall (predR ph u) (rn ρt)) :
    IsUnit (edgeJ v a ξ0).det := by
  set t := re (gT ph 0) with ht
  set e3 := expI h nT t with he3
  set φr := l6 fun j => re (gT ph (j + 1)) with hφr
  set xy := rowsT h φr with hxy
  set bL := (matT7 h Y (FE h v (e012 ++ [e3]) yM xy)).map (bnd h) with hbL
  set g := l6 fun j => addRho (gT xy j) ρt with hg
  set qL := qRowsH h Y (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1))
    (ivc h (gT e012 2))) (jLT (dpsiT h g)) with hqL
  set numL := l7 fun i => gn bL i * 2 ^ pp + gn qL i * ρt with hnumL
  have hK : sideE h v e012 yM ph Y ρt ec = ((l7 fun i => decide (gn numL i < ρt * 2 ^ pp) &&
      decide (cdivN (gn numL i) pp ≤ gn ec i)).all id && expOK t nT && (l6 fun i => expOK (gT φr i) nT).all id) := rfl
  rw [hK] at hok
  simp only [Bool.and_eq_true] at hok
  obtain ⟨⟨hc0, hexpt⟩, hexp0⟩ := hok
  have hc : ∀ i : Fin 7, gn bL i * 2 ^ pp + gn qL i * ρt < ρt * 2 ^ pp ∧
      cdivN (gn bL i * 2 ^ pp + gn qL i * ρt) pp ≤ gn ec i := fun i => by
    have := all_l7 hc0 i.2
    simp only [Bool.and_eq_true, decide_eq_true_eq] at this
    rw [hnumL, gn_l7 _ i.2] at this; exact this
  have hexp : ∀ j : Fin 6, expOK (gT φr j) nT = true := fun j => all_l6 hexp0 j.2
  -- the predictor
  set p := predR ph u with hp
  have hpφ : ∀ j : Fin 6, (gT φr j).Has u (phiOf p j : ℂ) := fun j => by
    rw [hφr, gT_l6 _ j.2]; exact has_pred ph u (j + 1) (by omega)
  obtain ⟨hx0, hy0⟩ := has_rowsT hu hexp hpφ
  have h3 : e3.Has u (Complex.exp ((p 0 : ℂ) * I)) := has_expI hu hexpt (has_pred ph u 0 (by norm_num))
  have hq : ∀ ξ ∈ closedBall p (rn ρt), ∀ i : Fin 7, ∑ j, |(1 - Ymat7 Y * edgeJ v a ξ) i j| ≤ rn (gn qL i) :=
    fun ξ hξ i => by
      have hd : ∀ j : Fin 7, |ξ j - p j| ≤ rn ρt := fun j => by
        rw [← Real.dist_eq]; exact (dist_le_pi_dist ξ p j).trans (mem_closedBall.1 hξ)
      have gx : ∀ j : Fin 3, (gT g j).Has u (sx (phiOf ξ) j) := fun j => by
        rw [hg, gT_l6 _ (by omega)]
        exact has_row_shift (hx0 j) (hd ⟨j + 1, by omega⟩)
      have gy : ∀ j : Fin 3, (gT g (j + 3)).Has u (sy (phiOf ξ) j) := fun j => by
        rw [hg, gT_l6 _ (by omega)]
        exact has_row_shift (hy0 j) (hd ⟨j + 4, by omega⟩)
      have r4 := rho4_eq a (ξ 0)
      have i3 : IvH (ivc h (addRho e3 ρt)) (rho4 a (ξ 0) 3) := by
        refine ivH_ivc hu ?_; rw [r4]; exact has_row_shift h3 (hd 0)
      have i1 : IvH (ivc h (gT e012 1)) (rho4 a (ξ 0) 1) := by
        refine ivH_ivc hu ?_; rw [r4]; exact he 1
      have i2 : IvH (ivc h (gT e012 2)) (rho4 a (ξ 0) 2) := by
        refine ivH_ivc hu ?_; rw [r4]; exact he 2
      have hJG : ∀ (l : Fin 6) (m : Fin 7), |edgeJ v a ξ ⟨l.1, by omega⟩ m -
          rq (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1)) (ivc h (gT e012 2)) l m).1| ≤
          rn (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1)) (ivc h (gT e012 2)) l m).2 :=
        fun l m => jGI_sound (v := v) (g := fun j => ivc h (gT g j)) (g3 := ivc h (addRho e3 ρt))
          (g1 := ivc h (gT e012 1)) (g2 := ivc h (gT e012 2)) (fun j => ivH_ivc hu (gx j))
          (fun j => ivH_ivc hu (gy j)) i3 i1 i2 l m
      have hJL : ∀ m : Fin 7, (jLT (dpsiT h g) m).Has u (edgeJ v a ξ 6 m : ℂ) := fun m => by
        by_cases hm : m.1 = 0
        · have e0 : edgeJ v a ξ 6 m = 0 := by simp [edgeJ, hm]
          rw [e0, jLT, if_pos hm]; exact has_zero' u
        · rw [jLT, if_neg hm]
          have hd' := has_dpsiT hu gx gy ⟨m.1 - 1, by omega⟩
          rw [show (gT (dpsiT h g) ((⟨m.1 - 1, by omega⟩ : Fin 6) : ℕ)) = gT (dpsiT h g) (m.1 - 1) from rfl] at hd'
          have e6 : edgeJ v a ξ 6 m = (dpsi (phiOf ξ) ⟨m.1 - 1, by omega⟩).im := by
            simp [edgeJ, hm]
          rw [e6]
          have := has_im hd'
          exact this
      have H := qRowsH_sound (Y := Y) hu hJG hJL i
      rw [hqL]; exact H
  have hcr : ∀ i : Fin 7, rn (gn bL i) + rn (gn qL i) * rn ρt < rn ρt := fun i => hc_of (hc i).1
  have hqi := Method.q_lt_one (b := fun i : Fin 7 => rn (gn bL i))
    (q := fun i : Fin 7 => rn (gn qL i)) (fun _ => rn_nonneg _)
    (fun _ => rn_nonneg _) (rn_nonneg ρt) hcr
  obtain ⟨K, _, hK1, hqK⟩ := Method.exists_max_lt_one _ hqi
  have hprod := Method.isUnit_det_of_rowsum (Ymat7 Y * edgeJ v a ξ0) 1 hK1 hqK
    (by simpa only [Matrix.mul_one] using hq ξ0 hξ0)
  rw [Matrix.det_mul] at hprod
  exact isUnit_of_mul_isUnit_right hprod

end NoFourMUBs.KernelAtlas.Edge
