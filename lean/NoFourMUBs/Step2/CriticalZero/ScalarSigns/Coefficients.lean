import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Common
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 5000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
noncomputable section

theorem low01_0_neg {k : ℝ} (hk : 0<k) (hkap : kappa k≠0) : low01_0 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap
  have hp : 0< (1 / ((1 + (k)^2))^4) * ((1 + (3 * (k)^2)))^5 * ((quadMinus k))^2 * ((3 + (2 * k) + (3 * (k)^2)))^2 * ((other k))^4 * (((kappa k))^2)^2 * ((27 + (26 * (k)^2) + (27 * (k)^4))) := by positivity
  have he : -(low01_0 k) = (1 / ((1 + (k)^2))^4) * ((1 + (3 * (k)^2)))^5 * ((quadMinus k))^2 * ((3 + (2 * k) + (3 * (k)^2)))^2 * ((other k))^4 * (((kappa k))^2)^2 * ((27 + (26 * (k)^2) + (27 * (k)^4))) := by
    unfold low01_0
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low01_1_neg {k : ℝ} (hk : 0<k) (hkap : kappa k≠0) : low01_1 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap
  have hp : 0< (1 / ((1 + (k)^2))^3) * ((1 + (3 * (k)^2)))^3 * ((quadMinus k))^2 * ((other k))^2 * (((kappa k))^2)^2 * ((3 + (2 * k) + (3 * (k)^2))) * ((27 + (81 * (k)^12) + (216 * k) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1720 * (k)^3) + (1944 * (k)^11) + (2891 * (k)^4) + (4425 * (k)^8) + (4912 * (k)^5) + (5112 * (k)^9) + (5653 * (k)^6) + (6576 * (k)^7))) := by positivity
  have he : -(low01_1 k) = (1 / ((1 + (k)^2))^3) * ((1 + (3 * (k)^2)))^3 * ((quadMinus k))^2 * ((other k))^2 * (((kappa k))^2)^2 * ((3 + (2 * k) + (3 * (k)^2))) * ((27 + (81 * (k)^12) + (216 * k) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1720 * (k)^3) + (1944 * (k)^11) + (2891 * (k)^4) + (4425 * (k)^8) + (4912 * (k)^5) + (5112 * (k)^9) + (5653 * (k)^6) + (6576 * (k)^7))) := by
    unfold low01_1
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low01_2_neg {k : ℝ} (hk : 0<k) (hkap : kappa k≠0) (hu : k<1) : low01_2 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap
  have hu1 : 0<1-k := sub_pos.mpr hu
  have hpLow : 0< -(pLow k) := neg_pos.mpr (pLow_neg hk hu)
  have hp : 0< (1 / ((6 + (6 * (k)^2)))^1) * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((1 + (3 * (k)^2))) * ((-(pLow k))) := by positivity
  have he : -(low01_2 k) = (1 / ((6 + (6 * (k)^2)))^1) * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((1 + (3 * (k)^2))) * ((-(pLow k))) := by
    unfold low01_2
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low01_3_neg {k : ℝ} (hk : 0<k) (hkap : kappa k≠0) (hu : k<1) : low01_3 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap
  have hu1 : 0<1-k := sub_pos.mpr hu
  have hp : 0< (4) * (k) * ((1 + (3 * k)))^3 * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((1 + (k)^2)) * ((1 + (3 * (k)^2))) * ((1-k)) * ((27 + (81 * (k)^12) + (288 * k) + (288 * (k)^11) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1824 * (k)^3) + (1824 * (k)^9) + (2891 * (k)^4) + (4032 * (k)^5) + (4032 * (k)^7) + (4425 * (k)^8) + (5653 * (k)^6))) := by positivity
  have he : -(low01_3 k) = (4) * (k) * ((1 + (3 * k)))^3 * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((1 + (k)^2)) * ((1 + (3 * (k)^2))) * ((1-k)) * ((27 + (81 * (k)^12) + (288 * k) + (288 * (k)^11) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1824 * (k)^3) + (1824 * (k)^9) + (2891 * (k)^4) + (4032 * (k)^5) + (4032 * (k)^7) + (4425 * (k)^8) + (5653 * (k)^6))) := by
    unfold low01_3
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low01_4_neg {k : ℝ} (hk : 0<k) (hkap : kappa k≠0) (hne1 : k≠1) : low01_4 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hks : 0<(kappa k)^2 := sq_pos_of_ne_zero hkap
  have hn1 : k-1≠0 := sub_ne_zero.mpr hne1
  have hs1 : 0<(k-1)^2 := sq_pos_of_ne_zero hn1
  have hp : 0< (192) * (k)^2 * ((1 + (k)^2))^6 * ((1 + (3 * k)))^6 * (((k-1))^2) * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((3 + (k)^2)) := by positivity
  have he : -(low01_4 k) = (192) * (k)^2 * ((1 + (k)^2))^6 * ((1 + (3 * k)))^6 * (((k-1))^2) * ((quadMinus k))^2 * (((kappa k))^2)^2 * ((3 + (k)^2)) := by
    unfold low01_4
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low1inf_1_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : low1inf_1 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpLower1 := pLower1_pos hl
  have hp : 0< (1 / ((1 + (k)^2))^3) * ((1 + (3 * (k)^2)))^5 * ((other k))^2 * ((kappa k))^2 * ((quadMinus k)) * ((3 + (2 * k) + (3 * (k)^2))) * ((pLower1 k)) := by positivity
  have he : -(low1inf_1 k) = (1 / ((1 + (k)^2))^3) * ((1 + (3 * (k)^2)))^5 * ((other k))^2 * ((kappa k))^2 * ((quadMinus k)) * ((3 + (2 * k) + (3 * (k)^2))) * ((pLower1 k)) := by
    unfold low1inf_1
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low1inf_2_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : low1inf_2 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpLower2 := pLower2_pos hl
  have hp : 0< ((1 + (3 * (k)^2)))^5 * (1 / ((3 + (3 * (k)^2)))^1) * ((pLower2 k)) := by positivity
  have he : -(low1inf_2 k) = ((1 + (3 * (k)^2)))^5 * (1 / ((3 + (3 * (k)^2)))^1) * ((pLower2 k)) := by
    unfold low1inf_2
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low1inf_3_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : low1inf_3 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpLower1 := pLower1_pos hl
  have hp : 0< ((1 + (3 * k)))^3 * ((1 + (3 * (k)^2)))^5 * ((3*k-1))^3 * ((1 + k)) * ((1 + (k)^2)) * ((k-1)) * ((pLower1 k)) := by positivity
  have he : -(low1inf_3 k) = ((1 + (3 * k)))^3 * ((1 + (3 * (k)^2)))^5 * ((3*k-1))^3 * ((1 + k)) * ((1 + (k)^2)) * ((k-1)) * ((pLower1 k)) := by
    unfold low1inf_3
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem low1inf_4_neg {k : ℝ} (hk : 0<k) (hne1 : k≠1) (hneThird : k≠1/3) : low1inf_4 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hn1 : k-1≠0 := sub_ne_zero.mpr hne1
  have hs1 : 0<(k-1)^2 := sq_pos_of_ne_zero hn1
  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith
  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3
  have hp : 0< ((1 + k))^2 * ((1 + (k)^2))^4 * ((1 + (3 * k)))^6 * ((1 + (3 * (k)^2)))^5 * (((k-1))^2) * (((3*k-1))^2)^3 * ((27 + (26 * (k)^2) + (27 * (k)^4))) := by positivity
  have he : -(low1inf_4 k) = ((1 + k))^2 * ((1 + (k)^2))^4 * ((1 + (3 * k)))^6 * ((1 + (3 * (k)^2)))^5 * (((k-1))^2) * (((3*k-1))^2)^3 * ((27 + (26 * (k)^2) + (27 * (k)^4))) := by
    unfold low1inf_4
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high013_0_neg {k : ℝ} (hk : 0<k) (hneThird : k≠1/3) : high013_0 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith
  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3
  have hp : 0< (192) * (k)^2 * ((1 + k))^2 * ((1 + (k)^2))^6 * (((3*k-1))^2)^3 * ((3 + (2 * k) + (3 * (k)^2)))^2 * ((other k))^4 * ((3 + (k)^2)) := by positivity
  have he : -(high013_0 k) = (192) * (k)^2 * ((1 + k))^2 * ((1 + (k)^2))^6 * (((3*k-1))^2)^3 * ((3 + (2 * k) + (3 * (k)^2)))^2 * ((other k))^4 * ((3 + (k)^2)) := by
    unfold high013_0
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high013_1_neg {k : ℝ} (hk : 0<k) (hneThird : k≠1/3) : high013_1 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith
  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3
  have hp : 0< (4) * (k) * ((1 + k))^2 * ((1 + (k)^2))^3 * (((3*k-1))^2)^3 * ((other k))^2 * ((1 + (3 * (k)^2))) * ((3 + (2 * k) + (3 * (k)^2))) * ((27 + (81 * (k)^12) + (288 * k) + (288 * (k)^11) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1824 * (k)^3) + (1824 * (k)^9) + (2891 * (k)^4) + (4032 * (k)^5) + (4032 * (k)^7) + (4425 * (k)^8) + (5653 * (k)^6))) := by positivity
  have he : -(high013_1 k) = (4) * (k) * ((1 + k))^2 * ((1 + (k)^2))^3 * (((3*k-1))^2)^3 * ((other k))^2 * ((1 + (3 * (k)^2))) * ((3 + (2 * k) + (3 * (k)^2))) * ((27 + (81 * (k)^12) + (288 * k) + (288 * (k)^11) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1824 * (k)^3) + (1824 * (k)^9) + (2891 * (k)^4) + (4032 * (k)^5) + (4032 * (k)^7) + (4425 * (k)^8) + (5653 * (k)^6))) := by
    unfold high013_1
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high013_2_neg {k : ℝ} (hk : 0<k) (hu : k<1) (hneThird : k≠1/3) : high013_2 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hu1 : 0<1-k := sub_pos.mpr hu
  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith
  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3
  have hpLow : 0< -(pLow k) := neg_pos.mpr (pLow_neg hk hu)
  have hp : 0< ((1 / 6)) * ((1 + k))^2 * ((1 + (k)^2))^3 * (((3*k-1))^2)^3 * ((1 + (3 * (k)^2))) * ((-(pLow k))) := by positivity
  have he : -(high013_2 k) = ((1 / 6)) * ((1 + k))^2 * ((1 + (k)^2))^3 * (((3*k-1))^2)^3 * ((1 + (3 * (k)^2))) * ((-(pLow k))) := by
    unfold high013_2
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high013_3_neg {k : ℝ} (hk : 0<k) (hu : k<1) (hneThird : k≠1/3) : high013_3 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hu1 : 0<1-k := sub_pos.mpr hu
  have hn3 : 3*k-1≠0 := by intro he; apply hneThird; linarith
  have hs3 : 0<(3*k-1)^2 := sq_pos_of_ne_zero hn3
  have hp : 0< ((1 + k))^2 * ((1 + (k)^2))^3 * ((1 + (3 * k)))^3 * ((1 + (3 * (k)^2)))^3 * (((3*k-1))^2)^3 * ((1-k)) * ((27 + (81 * (k)^12) + (216 * k) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1720 * (k)^3) + (1944 * (k)^11) + (2891 * (k)^4) + (4425 * (k)^8) + (4912 * (k)^5) + (5112 * (k)^9) + (5653 * (k)^6) + (6576 * (k)^7))) := by positivity
  have he : -(high013_3 k) = ((1 + k))^2 * ((1 + (k)^2))^3 * ((1 + (3 * k)))^3 * ((1 + (3 * (k)^2)))^3 * (((3*k-1))^2)^3 * ((1-k)) * ((27 + (81 * (k)^12) + (216 * k) + (893 * (k)^2) + (1199 * (k)^10) + (1215 * (k)^14) + (1720 * (k)^3) + (1944 * (k)^11) + (2891 * (k)^4) + (4425 * (k)^8) + (4912 * (k)^5) + (5112 * (k)^9) + (5653 * (k)^6) + (6576 * (k)^7))) := by
    unfold high013_3
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high1inf_1_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : high1inf_1 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpUpper1 := pUpper1_pos hl
  have hp : 0< (64) * (k)^4 * ((1 + (k)^2))^3 * ((1 + (3 * k)))^3 * ((kappa k))^2 * ((k-1)) * ((quadMinus k)) * ((pUpper1 k)) := by positivity
  have he : -(high1inf_1 k) = (64) * (k)^4 * ((1 + (k)^2))^3 * ((1 + (3 * k)))^3 * ((kappa k))^2 * ((k-1)) * ((quadMinus k)) * ((pUpper1 k)) := by
    unfold high1inf_1
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high1inf_2_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : high1inf_2 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpUpper2 := pUpper2_pos hl
  have hp : 0< ((64 / 3)) * (k)^2 * ((1 + (k)^2))^3 * ((pUpper2 k)) := by positivity
  have he : -(high1inf_2 k) = ((64 / 3)) * (k)^2 * ((1 + (k)^2))^3 * ((pUpper2 k)) := by
    unfold high1inf_2
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

theorem high1inf_3_neg {k : ℝ} (hk : 0<k) (hl : 1<k) : high1inf_3 k<0 := by
  have hqm := quadMinus_pos k
  have ho := other_pos hk
  have hl1 : 0<k-1 := sub_pos.mpr hl
  have hkappa := kappa_pos hl
  have ht : 0<3*k-1 := by linarith
  have hpUpper1 := pUpper1_pos hl
  have hp : 0< (64) * (k)^4 * ((1 + (k)^2))^3 * ((3*k-1))^3 * ((other k))^2 * ((1 + k)) * ((3 + (2 * k) + (3 * (k)^2))) * ((pUpper1 k)) := by positivity
  have he : -(high1inf_3 k) = (64) * (k)^4 * ((1 + (k)^2))^3 * ((3*k-1))^3 * ((other k))^2 * ((1 + k)) * ((3 + (2 * k) + (3 * (k)^2))) * ((pUpper1 k)) := by
    unfold high1inf_3
    ring
  apply neg_pos.mp
  rw [he]
  exact hp

#print axioms low01_0_neg

#print axioms low01_1_neg

#print axioms low01_2_neg

#print axioms low01_3_neg

#print axioms low01_4_neg

#print axioms low1inf_1_neg

#print axioms low1inf_2_neg

#print axioms low1inf_3_neg

#print axioms low1inf_4_neg

#print axioms high013_0_neg

#print axioms high013_1_neg

#print axioms high013_2_neg

#print axioms high013_3_neg

#print axioms high1inf_1_neg

#print axioms high1inf_2_neg

#print axioms high1inf_3_neg

end
end NoFourMUBs.Step2.Critical.NonzeroScalar
