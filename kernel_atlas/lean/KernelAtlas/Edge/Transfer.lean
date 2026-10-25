import KernelAtlas.Edge.CoreRegular
import KernelAtlas.Seed.Full

/-! T1 transfers from re-centred edge phase and entry models. -/

open Complex Matrix Hadamard6 NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

structure TransferD where
  c : List ℤ
  h : List ℕ
  target : T1D
  ball : BallD
  radius : ℕ

/-- A T1 transfer inside a checked edge core box. -/
def transferOK (B : EBallD) (D : EBoxD) (s : TransferD) : Bool :=
  boxIn D.hb s.c s.h && t1OK s.h (shiftL s.c s.h (qModels B D))
    (shiftL s.c s.h (kModels B D)) s.target s.ball s.radius

lemma qModels_length (B : EBallD) (D : EBoxD) : (qModels B D).length = 36 := rfl
lemma kModels_length (B : EBallD) (D : EBoxD) : (kModels B D).length = 36 := rfl

/-- Soundness uses the model enclosures of the selected chart. It also applies on the fold. -/
theorem transferOK_sound {B : EBallD} {D : EBoxD} {s : TransferD}
    (hok : transferOK B D s = true) {v : Fin 4 → ℝ} (hv : InBox s.h v)
    {Q : RMat6} (hH : Hadamard6.IsHadamard (phaseMat Q))
    (hQ : ∀ i j, (gT (qModels B D) (ix i j)).Has (fun l => rq (gi s.c l) + v l) (Q i j : ℂ))
    (hK : ∀ i j, (gT (kModels B D) (ix i j)).Has (fun l => rq (gi s.c l) + v l) (phaseMat Q i j))
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun s.target.rows i)
    (hτ : ∀ j, τ j = permFun s.target.cols j) {kk : Fin 4} (hkk : (kk : ℕ) = s.target.g)
    {ol : ℤˣ} (hol : s.ball.o = (ol : ℤ)) (hMl : IsUnit (MthR s.ball).det) :
    (∃ w', wnorm w' < rn s.radius ∧ leadingBlock (cornerMat kk σ τ (phaseMat Q)) =
      seedCorner (seedOf (th0R s.ball + MthR s.ball *ᵥ w'))) ∧
    0 < osgn ol * (psi (rightBlock (cornerMat kk σ τ (phaseMat Q)))).im ∧
    0 < -osgn ol * (psi (lowerBlock (cornerMat kk σ τ (phaseMat Q)))).im := by
  rw [transferOK, Bool.and_eq_true] at hok
  have hQs : ∀ i j, (gT (shiftL s.c s.h (qModels B D)) (ix i j)).Has v (Q i j : ℂ) := fun i j => by
    rw [gT_shiftL (by rw [qModels_length]; exact ix_lt i j)]
    exact has_shift hv (hQ i j)
  have hKs : ∀ i j, (gT (shiftL s.c s.h (kModels B D)) (ix i j)).Has v (phaseMat Q i j) := fun i j => by
    rw [gT_shiftL (by rw [kModels_length]; exact ix_lt i j)]
    exact has_shift hv (hK i j)
  exact t1OK_sound hv hH hQs hKs hok.2 hσ hτ hkk hol hMl

/-- A core box and its outgoing T1 transfer tests. -/
def coreFull (B : EBallD) (D : EBoxD) (subs : List TransferD) : Bool :=
  coreOK B D && subs.all (transferOK B D)

end NoFourMUBs.KernelAtlas.Edge
