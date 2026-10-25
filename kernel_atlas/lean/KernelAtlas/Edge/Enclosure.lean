import KernelAtlas.Edge.Chart

/-! The affine residual enclosure retained by the edge-ball certificate. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

structure EnclosureD where
  P : List ℤ
  U : List ℤ
  wind : List ℤ
  n : ℕ

def EnclosureD.ball (R : EnclosureD) : Seed.BallD := ⟨[], [], R.P, R.U, R.n, 1⟩

def EnclosureD.box (R : EnclosureD) (D : EBoxD) : Seed.BoxD :=
  ⟨D.wc, D.hb, [], [], [], [], 0, 0, [], [], [], R.wind⟩

def EnclosureD.Pm (R : EnclosureD) : RMat6 := Seed.Pm R.ball

def EnclosureD.Um (R : EnclosureD) : Fin 4 → RMat6 := Seed.Um R.ball

def EnclosureD.Nm (R : EnclosureD) : Matrix I6 I6 ℤ := fun i j => gi R.wind (ix i j)

def enclosureOK (B : EBallD) (D : EBoxD) (R : EnclosureD) : Bool :=
  boundOK D.hb R.n (resQ D.hb R.ball (R.box D) (qModels B D))

/-- The seed residual checker applies to the edge phase models without any strict-seed hypothesis. -/
theorem enclosureOK_sound {B : EBallD} {D : EBoxD} {R : EnclosureD}
    (hok : enclosureOK B D R = true) {u : Fin 4 → ℝ} (hu : InBox D.hb u) {Q : RMat6}
    (hq : ∀ i j, (gT (qModels B D) (ix i j)).Has u (Q i j : ℂ)) :
    frob (Q - R.Pm - tang R.Um (ewOf D u) - wind R.Nm) ≤ rn R.n := by
  apply boundOK_sound hu (n := R.n) (res := resQ D.hb R.ball (R.box D) (qModels B D)) ?_ hok
  intro i j
  rw [resQ, gT_l36 _ (ix_lt i j)]
  dsimp only [EnclosureD.ball, EnclosureD.box]
  have H := has_resQ1 (hq i j) (gi R.P (ix i j))
    (fun l => gi R.U (4 * ix i j + l)) (fun l => gi D.wc l) (gi R.wind (ix i j))
  convert H using 2
  simp only [Matrix.sub_apply, EnclosureD.Pm, EnclosureD.Um, EnclosureD.Nm,
    EnclosureD.ball, Seed.Pm, Seed.Um, tang, wind, Matrix.sum_apply, Matrix.smul_apply,
    smul_eq_mul, Matrix.map_apply, ewOf]
  rw [Fin.sum_univ_four, Fin.sum_univ_four]
  ring

/-- All local C1e conclusions, including the residual enclosure and continuity. -/
theorem chart_enclosure_sound {B : EBallD} {D : EBoxD} {R : EnclosureD}
    (hc : chartOK B D = true) (he : enclosureOK B D R = true) :
    ∃ Q : BoxSpace D → RMat6, Continuous Q ∧ ∀ u,
      Hadamard6.IsHadamard (phaseMat (Q u)) ∧
      frob (Q u - R.Pm - tang R.Um (ewOf D u.1) - wind R.Nm) ≤ rn R.n ∧
      frob (hor (Q u - F6phase)) ≤ rn B.nX / 36 := by
  obtain ⟨Q, hQ, h⟩ := chartOK_sound hc
  exact ⟨Q, hQ, fun u => ⟨(h u).1, enclosureOK_sound he u.2 (h u).2.1, (h u).2.2.2⟩⟩

end NoFourMUBs.KernelAtlas.Edge
