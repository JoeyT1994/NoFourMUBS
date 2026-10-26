import KernelAtlas.WholeBall.ShiftedBall

/-! Boundary regressions for the exact off-grid translation adapter. -/

open Matrix NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall.ShiftRegression

def origin : BallD where
  th0 := [0, 0, 0, 0]
  Mth := []
  P := []
  U := []
  n := 0
  o := 1

def shift : Fin 4 → ℚ := ![1 / 2^65, 0, 0, 0]
def frame : Matrix (Fin 36) (Fin 4) ℚ := fun a j => if a.val = j.val then 1 else 0
def translated : Matrix (Fin 36) (Fin 1) ℚ := -(frame * offsetColumn shift)

theorem contained_at_equality :
    shiftCheck origin 1 translated 0 frame shift shift (1/10) (1/10 + 1/2^65) (1/2^65) = true := by
  decide +kernel

theorem wrong_record_rejected :
    shiftCheck origin 1 0 0 frame shift shift (1/10) (1/10 + 1/2^65) (1/2^65) = false := by
  decide +kernel

theorem missing_radius_inflation_rejected :
    shiftCheck origin 1 translated 0 frame shift shift (1/10) (1/10) (1/2^65) = false := by
  decide +kernel

theorem small_shift_norm_rejected :
    shiftCheck origin 1 translated 0 frame shift shift (1/10) (1/10 + 1/2^65) 0 = false := by
  decide +kernel

theorem wrong_seed_rejected :
    shiftCheck origin 1 translated 0 frame 0 shift (1/10) (1/10 + 1/2^65) (1/2^65) = false := by
  decide +kernel

theorem zero_radius_rejected :
    shiftCheck origin 1 translated 0 frame shift shift 0 (1/2^65) (1/2^65) = false := by
  decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.ShiftRegression
