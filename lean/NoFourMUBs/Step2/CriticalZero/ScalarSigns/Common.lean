import NoFourMUBs.Step2.CriticalZero.ScalarSigns.PLow
import NoFourMUBs.Step2.CriticalZero.ScalarSigns.PLower1
import NoFourMUBs.Step2.CriticalZero.ScalarSigns.PLower2
import NoFourMUBs.Step2.CriticalZero.ScalarSigns.PUpper1
import NoFourMUBs.Step2.CriticalZero.ScalarSigns.PUpper2
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem quadMinus_pos (k : ℝ) : 0<quadMinus k := by
  unfold quadMinus
  nlinarith [sq_nonneg (3*k-1)]

theorem other_pos {k : ℝ} (hk : 0<k) : 0<other k := by
  have hs := mul_nonneg hk.le (sq_nonneg (3*k-1))
  unfold other
  nlinarith [sq_nonneg k]

theorem kappa_pos {k : ℝ} (hk : 1<k) : 0<kappa k := by
  have h0 : 0<k := lt_trans (by norm_num) hk
  have h3 := pow_pos h0 3
  unfold kappa
  nlinarith [sq_nonneg k]

#print axioms quadMinus_pos

#print axioms other_pos

#print axioms kappa_pos

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
