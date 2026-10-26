import KernelAtlas.Seed.Core

/-!
# Certified exact centre from the existing side Krawczyk computation

This is a centre leaf only. It supplies a strict matched Hadamard centre and
enclosures of its phases and entries; it makes no assertion about a ball of
positive radius.
-/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

def centreCheck (B : BallD) (D : BoxD) : Bool :=
  coreOK B D && decide (D.wc = [0, 0, 0, 0])

theorem centreCheck_sound {B : BallD} {D : BoxD} {o : ℤˣ}
    (h : centreCheck B D = true) (ho : B.o = (o : ℤ)) :
    0 < seedR (seedOf (th0R B)) ∧ ∃ Q : RMat6,
      Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO o (seedOf (th0R B)) (phaseMat Q) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has 0 (Q i j : ℂ)) ∧
      ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j) := by
  simp only [centreCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  have hw : wOf D (0 : Fin 4 → ℝ) = 0 := by
    ext j
    fin_cases j <;> simp [wOf, h.2, gi, rq]
  have hh := core_sound h.1 ho hu
  simpa only [hw, Matrix.mulVec_zero, add_zero] using hh

end NoFourMUBs.KernelAtlas.WholeBall
