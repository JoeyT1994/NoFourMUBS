import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Data
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem pUpper2_pos {k : ℝ} (hk : 1<k) : 0<pUpper2 k := by
  have h1 : 0<k-1 := sub_pos.mpr hk
  have he : pUpper2 k = 268435456 * (k - 1)^0 +
      7851737088 * (k - 1)^1 +
      108204654592 * (k - 1)^2 +
      943089254400 * (k - 1)^3 +
      5873553375232 * (k - 1)^4 +
      27958390030336 * (k - 1)^5 +
      106134055682048 * (k - 1)^6 +
      330807850172416 * (k - 1)^7 +
      864560310583296 * (k - 1)^8 +
      1924515739729920 * (k - 1)^9 +
      3692791395729408 * (k - 1)^10 +
      6164849213661184 * (k - 1)^11 +
      9019020685459456 * (k - 1)^12 +
      11627736320739328 * (k - 1)^13 +
      13267247692119040 * (k - 1)^14 +
      13439217054859264 * (k - 1)^15 +
      12111385631111680 * (k - 1)^16 +
      9721937304580608 * (k - 1)^17 +
      6952927734195456 * (k - 1)^18 +
      4427433602150400 * (k - 1)^19 +
      2506043883803904 * (k - 1)^20 +
      1257417866315520 * (k - 1)^21 +
      557016115478400 * (k - 1)^22 +
      216630547925760 * (k - 1)^23 +
      73409586979680 * (k - 1)^24 +
      21457286925984 * (k - 1)^25 +
      5336780700528 * (k - 1)^26 +
      1108625606928 * (k - 1)^27 +
      187362004608 * (k - 1)^28 +
      24775779420 * (k - 1)^29 +
      2407427730 * (k - 1)^30 +
      153055008 * (k - 1)^31 +
      4782969 * (k - 1)^32 := by
    unfold pUpper2
    ring
  rw [he]
  positivity

#print axioms pUpper2_pos

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
