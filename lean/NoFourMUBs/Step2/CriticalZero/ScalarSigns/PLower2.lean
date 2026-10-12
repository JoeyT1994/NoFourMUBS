import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem pLower2_pos {k : ℝ} (hk : 1<k) : 0<pLower2 k := by
  have h1 : 0<k-1 := sub_pos.mpr hk
  have he : pLower2 k = 268435456 * (k - 1)^0 +
      9059696640 * (k - 1)^1 +
      135081754624 * (k - 1)^2 +
      1230445215744 * (k - 1)^3 +
      7841042661376 * (k - 1)^4 +
      37655393861632 * (k - 1)^5 +
      142779304116224 * (k - 1)^6 +
      441183882969088 * (k - 1)^7 +
      1136288234864640 * (k - 1)^8 +
      2480251124711424 * (k - 1)^9 +
      4645919306170368 * (k - 1)^10 +
      7539309897809920 * (k - 1)^11 +
      10675297848414208 * (k - 1)^12 +
      13259005178761216 * (k - 1)^13 +
      14499069705975808 * (k - 1)^14 +
      13992340350533632 * (k - 1)^15 +
      11930044603612672 * (k - 1)^16 +
      8985779872538112 * (k - 1)^17 +
      5971296083588352 * (k - 1)^18 +
      3491918317334016 * (k - 1)^19 +
      1789824647350656 * (k - 1)^20 +
      799573259308032 * (k - 1)^21 +
      308943318333312 * (k - 1)^22 +
      102191223545856 * (k - 1)^23 +
      28541457916704 * (k - 1)^24 +
      6605338293216 * (k - 1)^25 +
      1233565260264 * (k - 1)^26 +
      178742740176 * (k - 1)^27 +
      18867218382 * (k - 1)^28 +
      1291401630 * (k - 1)^29 +
      43046721 * (k - 1)^30 := by
    unfold pLower2
    ring
  rw [he]
  positivity

#print axioms pLower2_pos

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
