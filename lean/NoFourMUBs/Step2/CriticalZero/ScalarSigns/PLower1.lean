import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem pLower1_pos {k : ℝ} (hk : 1<k) : 0<pLower1 k := by
  have h1 : 0<k-1 := sub_pos.mpr hk
  have he : pLower1 k = 147456 * (k - 1)^0 +
      2334720 * (k - 1)^1 +
      16955392 * (k - 1)^2 +
      76072960 * (k - 1)^3 +
      238576128 * (k - 1)^4 +
      559151104 * (k - 1)^5 +
      1019819520 * (k - 1)^6 +
      1485033472 * (k - 1)^7 +
      1754383616 * (k - 1)^8 +
      1696779648 * (k - 1)^9 +
      1348115040 * (k - 1)^10 +
      878366592 * (k - 1)^11 +
      465999912 * (k - 1)^12 +
      198608760 * (k - 1)^13 +
      66511044 * (k - 1)^14 +
      16889472 * (k - 1)^15 +
      3063258 * (k - 1)^16 +
      354294 * (k - 1)^17 +
      19683 * (k - 1)^18 := by
    unfold pLower1
    ring
  rw [he]
  positivity

#print axioms pLower1_pos

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
