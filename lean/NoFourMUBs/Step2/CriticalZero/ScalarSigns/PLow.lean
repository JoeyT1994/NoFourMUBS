import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem pLow_neg {k : ℝ} (hk : 0<k) (hu : k<1) : pLow k<0 := by
  have h1 : 0<1-k := sub_pos.mpr hu
  have he : -(pLow k) = 81 * k^0 * (1-k)^26 +
      4698 * k^1 * (1-k)^25 +
      113226 * k^2 * (1-k)^24 +
      1619904 * k^3 * (1-k)^23 +
      15933576 * k^4 * (1-k)^22 +
      116586096 * k^5 * (1-k)^21 +
      665941952 * k^6 * (1-k)^20 +
      3066019360 * k^7 * (1-k)^19 +
      11635573088 * k^8 * (1-k)^18 +
      36993386496 * k^9 * (1-k)^17 +
      99718953600 * k^10 * (1-k)^16 +
      229909761024 * k^11 * (1-k)^15 +
      456205939712 * k^12 * (1-k)^14 +
      782227436032 * k^13 * (1-k)^13 +
      1161309498880 * k^14 * (1-k)^12 +
      1492914167808 * k^15 * (1-k)^11 +
      1658633375744 * k^16 * (1-k)^10 +
      1585963958272 * k^17 * (1-k)^9 +
      1296408993792 * k^18 * (1-k)^8 +
      896975831040 * k^19 * (1-k)^7 +
      517898403840 * k^20 * (1-k)^6 +
      244539195392 * k^21 * (1-k)^5 +
      91687616512 * k^22 * (1-k)^4 +
      26102726656 * k^23 * (1-k)^3 +
      5241831424 * k^24 * (1-k)^2 +
      645922816 * k^25 * (1-k)^1 +
      33554432 * k^26 * (1-k)^0 := by
    unfold pLow
    ring
  have hp : 0 < -(pLow k) := by
    rw [he]
    positivity
  exact neg_pos.mp hp

#print axioms pLow_neg

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
