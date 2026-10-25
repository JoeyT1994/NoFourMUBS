import KernelAtlas.Edge.ColumnModels

/-! Soundness of the phase-column models for the differentiated completion equation. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

def columnE (B : EBallD) (a : Fin 3 → ℝ) (ξ dξ : Fin 7 → ℝ) (j : Fin 4) : Mat3 :=
  cornerDerivative fun k => I*rho4 a (ξ 0) k*th4 (fun k => MR B k.castSucc j) (dξ 0) k

def columnB (ξ dξ : Fin 7 → ℝ) : Mat3 := sideDerivative
  (fun k => I*sx (phiOf ξ) k*dξ ⟨k+1, by omega⟩)
  (fun k => I*sy (phiOf ξ) k*dξ ⟨k+4, by omega⟩)

def rootColumn {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT} {ρ : ℕ} {ec : List ℕ}
    (r : CheckedSide B D v ph ρ ec) (u : BoxSpace D) (j : Fin 4) : Fin 7 → ℝ :=
  rootDifferential B D v u.1 (r.root u) (Pi.single j 1)

def columnPhase {B : EBallD} {D : EBoxD} (C : BoxChart B D) (u : BoxSpace D) (j : Fin 4)
    (dD : Mat3) : RMat6 :=
  rootPhase (fun k => MR B k.castSucc j) (rootColumn C.roots.H u j) (rootColumn C.roots.V u j)
    (fun a b => (dD a b / rootD (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) a b).im)

lemma has_e4_list {u : Fin 4 → ℝ} {T : List CT} {f : Fin 4 → ℝ} (hl : T.length = 4)
    (ht : ∀ k : Fin 4, (gT T k).Has u (f k : ℂ)) (k : ℕ) :
    (gT T k).Has u (e4 f k : ℂ) := by
  by_cases hk : k<4
  · simpa only [e4, dif_pos hk] using ht ⟨k, hk⟩
  · rw [gT_ge _ (by omega)]
    simp only [e4, dif_neg hk]
    exact has_zero' u

lemma has_e9_list {u : Fin 4 → ℝ} {T : List CT} {f : Fin 3 → Fin 3 → ℝ} (hl : T.length = 9)
    (ht : ∀ a b : Fin 3, (gT T (3*a+b)).Has u (f a b : ℂ)) (k : ℕ) :
    (gT T k).Has u (e9 f k : ℂ) := by
  by_cases hk : k<9
  · have H := ht ⟨k/3, by omega⟩ ⟨k%3, by omega⟩
    simpa only [e9, dif_pos hk, show 3*(k/3)+k%3=k by omega] using H
  · rw [gT_ge _ (by omega)]
    simp only [e9, dif_neg hk]
    exact has_zero' u

lemma has_rootColumn_side_list {u : Fin 4 → ℝ} {S : RootDiffD} {dξ : Fin 7 → ℝ} {j : Fin 4}
    (hs : ∀ k : Fin 7, (rootDiffT S k j).Has u (dξ k : ℂ)) (k : ℕ) :
    (gT (l6 fun k => rootDiffT S (k+1) j) k).Has u (e6 (phiOf dξ) k : ℂ) := by
  by_cases hk : k<6
  · rw [gT_l6 _ hk]
    simpa only [e6, dif_pos hk, phiOf, Fin.succ_mk] using hs ⟨k+1, by omega⟩
  · rw [gT_ge _ (by simp [l6]; omega)]
    simp only [e6, dif_neg hk]
    exact has_zero' u

set_option maxHeartbeats 2000000 in
theorem columnQT_sound {B : EBallD} {D : EBoxD} (C : BoxChart B D)
    (hok : coreOK B D = true) {H V : RootDiffD} (P : List CT)
    (hh : rootDiffOK B D false D.phH D.eH D.YH H = true)
    (hv : rootDiffOK B D true D.phV D.eV D.YV V = true)
    (u : BoxSpace D) (j : Fin 4) (dD : Mat3)
    (hz : dD * (L1.sideMat (sx (phiOf (C.roots.H.root u))) (sy (phiOf (C.roots.H.root u))))ᴴ =
      -(columnB (C.roots.V.root u) (rootColumn C.roots.V u j))ᵀ *
          (Em (rho4 (aR B (ewOf D u.1)) (C.roots.H.root u 0)))ᴴ -
        (L1.sideMat (sx (phiOf (C.roots.V.root u))) (sy (phiOf (C.roots.V.root u))))ᵀ *
          (columnE B (aR B (ewOf D u.1)) (C.roots.H.root u) (rootColumn C.roots.H u j) j)ᴴ -
        rootD (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) *
          (columnB (C.roots.H.root u) (rootColumn C.roots.H u j))ᴴ) :
    ∀ a b, (gT (columnQT B D H V P j) (ix a b)).Has u.1 (columnPhase C u j dD a b : ℂ) := by
  have hp := coreOK_parts hok
  have he := has_sideCornerT (B := B) (D := D) u.2 hp.exp_a hp.sideH (C.roots.H.error u)
  obtain ⟨hxH, hyH⟩ := has_rowsE u.2 hp.sideH (C.roots.H.error u)
  obtain ⟨hxV, hyV⟩ := has_rowsE u.2 hp.sideV (C.roots.V.error u)
  have hH (k : Fin 7) := rootDiffOK_sound C.roots.H hp.exp_a hp.sideH hh u k j
  have hV (k : Fin 7) := rootDiffOK_sound C.roots.V hp.exp_a hp.sideV hv u k j
  have hde := has_cornerDerivativeT (has_cornerVelocityT (B := B) (D := D) u.2 he hH)
  obtain ⟨hdxH, hdyH⟩ := has_sideVelocityT u.2 hxH hyH hH
  obtain ⟨hdxV, hdyV⟩ := has_sideVelocityT u.2 hxV hyV hV
  have hdb := has_sideDerivativeT hdxH hdyH
  have hdc := has_verticalDerivativeT hdxV hdyV
  have hd := forced_sound u.2 (has3_ET he) (has3_BT hxH hyH) (has3_CT3 hxV hyV)
    (forced_mul_of_invertible _ _ _ (C.roots.invertible hok u)) hp.forced
  have hdd : Has3 u.1 (columnForced B D H V P j).D dD := by
    apply forcedDerivativeT_sound u.2 (has3_ET he) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hd hde hdb hdc
    · convert hz using 1 <;>
        simp only [columnE, columnB, rootColumn, rootD, sub_eq_add_neg, Matrix.neg_mul, neg_add_rev] <;> abel
    · exact hp.forced
  have hu1 : ∀ a b, ‖rootD (aR B (ewOf D u.1)) (C.roots.H.root u) (C.roots.V.root u) a b‖ = 1 := by
    intro a b
    rw [C.phase_exp u a b]
    simp [Complex.norm_exp]
  have harg := has_phaseDerivativeT u.2 hdd hd hu1
  intro a b
  apply has_QT (has_e4_list (by simp [cornerRatesT, l3]) (has_cornerRatesT (B := B) hH))
    (has_rootColumn_side_list hH) (has_rootColumn_side_list hV)
    (has_e9_list (by simp [phaseDerivativeT, l9]) harg) (ix_lt a b)

end NoFourMUBs.KernelAtlas.Edge
