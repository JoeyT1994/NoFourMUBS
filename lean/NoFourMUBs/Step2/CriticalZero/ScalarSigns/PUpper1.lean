import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem pUpper1_pos {k : ℝ} (hk : 1<k) : 0<pUpper1 k := by
  have h1 : 0<k-1 := sub_pos.mpr hk
  have he : pUpper1 k = 114688 * (k - 1)^0 +
      1474560 * (k - 1)^1 +
      9029632 * (k - 1)^2 +
      34896896 * (k - 1)^3 +
      95351808 * (k - 1)^4 +
      195874048 * (k - 1)^5 +
      314111360 * (k - 1)^6 +
      402949120 * (k - 1)^7 +
      420147392 * (k - 1)^8 +
      359595936 * (k - 1)^9 +
      253864560 * (k - 1)^10 +
      147857040 * (k - 1)^11 +
      70698336 * (k - 1)^12 +
      27445068 * (k - 1)^13 +
      8480538 * (k - 1)^14 +
      2017872 * (k - 1)^15 +
      349191 * (k - 1)^16 +
      39366 * (k - 1)^17 +
      2187 * (k - 1)^18 := by
    unfold pUpper1
    ring
  rw [he]
  positivity

#print axioms pUpper1_pos

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
