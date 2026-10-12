import NoFourMUBs.Step2.SOS.Merge41

/-! Generated from the existing exact SOS equations. The arithmetic
is kernel-checked; actual-Hadamard semantics are a separate obligation. -/
set_option maxRecDepth 10000
set_option maxHeartbeats 800000
namespace NoFourMUBs.Step2.SOS.Arithmetic
open OAI.MUB6.Certificate

theorem target_eq : target = merged1336 := by decide +kernel

/-- Only the arithmetic implication: the actual moment equations must
still be proved before this yields the conditional SOS identity. -/
theorem consequence (x : Fin 1400 → ℝ)
    (h : ∀ k, Integer.Sparse.eval (rows k) x = 0) :
    Integer.Sparse.eval target x = 0 := by
  rw [target_eq]
  exact zero1336 x h

end NoFourMUBs.Step2.SOS.Arithmetic
