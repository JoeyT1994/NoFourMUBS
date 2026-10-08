import CriticalStripNewton
import CriticalPhysicalMoment66

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalLaurent20261003 CriticalNewton20261003
noncomputable section

/-- The same explicit 66-term expression after the 43 checked Newton identities
are substituted on both literal complementary blocks. -/
def newtonPolynomial66 (L R : CriticalNewton20261003.Data) : ℂ :=
  (1728 : ℂ) +
  (-1 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (2 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m3 L+newton_p2_m3 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (1 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m4_p2 L+newton_m4_p2 R) * (newton_p2_m1 L+newton_p2_m1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p1_p2 L+newton_p1_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (12 : ℂ) * (newton_m3_p0 L+newton_m3_p0 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (-2 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (12 : ℂ) * (newton_m3_p1 L+newton_m3_p1 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (2 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p1_p2 L+newton_p1_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (12 : ℂ) * (newton_m3_p2 L+newton_m3_p2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (2 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (12 : ℂ) * (newton_m3_p3 L+newton_m3_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (-1 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (2 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (1 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m2_m2 L+newton_m2_m2 R) * (newton_p1_p1 L+newton_p1_p1 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (-2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p3_m1 L+newton_p3_m1 R) +
  (-2 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (12 : ℂ) * (newton_m2_m1 L+newton_m2_m1 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (1 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (-2 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (1 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (6 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (-48 : ℂ) * (newton_m2_p0 L+newton_m2_p0 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p4_m2 L+newton_p4_m2 R) +
  (2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p3_m3 L+newton_p3_m3 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p1_m3 L+newton_p1_m3 R) * (newton_p1_p2 L+newton_p1_p2 R) +
  (-2 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-24 : ℂ) * (newton_m2_p1 L+newton_m2_p1 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (-2 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p3_p0 L+newton_p3_p0 R) +
  (-2 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p2_p1 L+newton_p2_p1 R) +
  (6 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (1 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p0_p2 L+newton_p0_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (-48 : ℂ) * (newton_m2_p2 L+newton_m2_p2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (-2 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p2_p0 L+newton_p2_p0 R) +
  (12 : ℂ) * (newton_m2_p3 L+newton_m2_p3 R) * (newton_p2_m3 L+newton_p2_m3 R) +
  (2 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p3_m2 L+newton_p3_m2 R) +
  (1 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p2_m2 L+newton_p2_m2 R) +
  (-2 : ℂ) * (newton_m2_p4 L+newton_m2_p4 R) * (newton_p1_m2 L+newton_p1_m2 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (-2 : ℂ) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (12 : ℂ) * (newton_m1_m2 L+newton_m1_m2 R) * (newton_p1_p2 L+newton_p1_p2 R) +
  (-2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p2_p2 L+newton_p2_p2 R) +
  (-2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p2_m1 L+newton_p2_m1 R) +
  (2 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p0_p3 L+newton_p0_p3 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (-24 : ℂ) * (newton_m1_m1 L+newton_m1_m1 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-2 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p2_m4 L+newton_p2_m4 R) +
  (2 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p1_p1 L+newton_p1_p1 R) +
  (-24 : ℂ) * (newton_m1_p2 L+newton_m1_p2 R) * (newton_p1_m2 L+newton_p1_m2 R) +
  (12 : ℂ) * (newton_m1_p3 L+newton_m1_p3 R) * (newton_p1_m3 L+newton_p1_m3 R) +
  (12 : ℂ) * (newton_p0_m3 L+newton_p0_m3 R) * (newton_p0_p3 L+newton_p0_p3 R) +
  (-48 : ℂ) * (newton_p0_m2 L+newton_p0_m2 R) * (newton_p0_p2 L+newton_p0_p2 R)

theorem normalized_newtonPolynomial66 {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) :
    momentPolynomial66 (stripMoment H)=newtonPolynomial66 (stripLeftData H) (stripRightData H) := by
  have h00 : stripMoment H (-4) 2 =
      newton_m4_p2 (stripLeftData H)+newton_m4_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 0
  have h01 : stripMoment H (-3) 0 =
      newton_m3_p0 (stripLeftData H)+newton_m3_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 1
  have h02 : stripMoment H (-3) 1 =
      newton_m3_p1 (stripLeftData H)+newton_m3_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 2
  have h03 : stripMoment H (-3) 2 =
      newton_m3_p2 (stripLeftData H)+newton_m3_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 3
  have h04 : stripMoment H (-3) 3 =
      newton_m3_p3 (stripLeftData H)+newton_m3_p3 (stripRightData H) :=
    normalized_strip_newton_table hH 4
  have h05 : stripMoment H (-2) (-2) =
      newton_m2_m2 (stripLeftData H)+newton_m2_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 5
  have h06 : stripMoment H (-2) (-1) =
      newton_m2_m1 (stripLeftData H)+newton_m2_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 6
  have h07 : stripMoment H (-2) 0 =
      newton_m2_p0 (stripLeftData H)+newton_m2_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 7
  have h08 : stripMoment H (-2) 1 =
      newton_m2_p1 (stripLeftData H)+newton_m2_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 8
  have h09 : stripMoment H (-2) 2 =
      newton_m2_p2 (stripLeftData H)+newton_m2_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 9
  have h10 : stripMoment H (-2) 3 =
      newton_m2_p3 (stripLeftData H)+newton_m2_p3 (stripRightData H) :=
    normalized_strip_newton_table hH 10
  have h11 : stripMoment H (-2) 4 =
      newton_m2_p4 (stripLeftData H)+newton_m2_p4 (stripRightData H) :=
    normalized_strip_newton_table hH 11
  have h12 : stripMoment H (-1) (-2) =
      newton_m1_m2 (stripLeftData H)+newton_m1_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 12
  have h13 : stripMoment H (-1) (-1) =
      newton_m1_m1 (stripLeftData H)+newton_m1_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 13
  have h14 : stripMoment H (-1) 0 =
      newton_m1_p0 (stripLeftData H)+newton_m1_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 14
  have h15 : stripMoment H (-1) 1 =
      newton_m1_p1 (stripLeftData H)+newton_m1_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 15
  have h16 : stripMoment H (-1) 2 =
      newton_m1_p2 (stripLeftData H)+newton_m1_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 16
  have h17 : stripMoment H (-1) 3 =
      newton_m1_p3 (stripLeftData H)+newton_m1_p3 (stripRightData H) :=
    normalized_strip_newton_table hH 17
  have h18 : stripMoment H 0 (-3) =
      newton_p0_m3 (stripLeftData H)+newton_p0_m3 (stripRightData H) :=
    normalized_strip_newton_table hH 18
  have h19 : stripMoment H 0 (-2) =
      newton_p0_m2 (stripLeftData H)+newton_p0_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 19
  have h20 : stripMoment H 0 (-1) =
      newton_p0_m1 (stripLeftData H)+newton_p0_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 20
  have h21 : stripMoment H 0 0 =
      newton_p0_p0 (stripLeftData H)+newton_p0_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 21
  have h22 : stripMoment H 0 1 =
      newton_p0_p1 (stripLeftData H)+newton_p0_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 22
  have h23 : stripMoment H 0 2 =
      newton_p0_p2 (stripLeftData H)+newton_p0_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 23
  have h24 : stripMoment H 0 3 =
      newton_p0_p3 (stripLeftData H)+newton_p0_p3 (stripRightData H) :=
    normalized_strip_newton_table hH 24
  have h25 : stripMoment H 1 (-3) =
      newton_p1_m3 (stripLeftData H)+newton_p1_m3 (stripRightData H) :=
    normalized_strip_newton_table hH 25
  have h26 : stripMoment H 1 (-2) =
      newton_p1_m2 (stripLeftData H)+newton_p1_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 26
  have h27 : stripMoment H 1 (-1) =
      newton_p1_m1 (stripLeftData H)+newton_p1_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 27
  have h28 : stripMoment H 1 0 =
      newton_p1_p0 (stripLeftData H)+newton_p1_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 28
  have h29 : stripMoment H 1 1 =
      newton_p1_p1 (stripLeftData H)+newton_p1_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 29
  have h30 : stripMoment H 1 2 =
      newton_p1_p2 (stripLeftData H)+newton_p1_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 30
  have h31 : stripMoment H 2 (-4) =
      newton_p2_m4 (stripLeftData H)+newton_p2_m4 (stripRightData H) :=
    normalized_strip_newton_table hH 31
  have h32 : stripMoment H 2 (-3) =
      newton_p2_m3 (stripLeftData H)+newton_p2_m3 (stripRightData H) :=
    normalized_strip_newton_table hH 32
  have h33 : stripMoment H 2 (-2) =
      newton_p2_m2 (stripLeftData H)+newton_p2_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 33
  have h34 : stripMoment H 2 (-1) =
      newton_p2_m1 (stripLeftData H)+newton_p2_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 34
  have h35 : stripMoment H 2 0 =
      newton_p2_p0 (stripLeftData H)+newton_p2_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 35
  have h36 : stripMoment H 2 1 =
      newton_p2_p1 (stripLeftData H)+newton_p2_p1 (stripRightData H) :=
    normalized_strip_newton_table hH 36
  have h37 : stripMoment H 2 2 =
      newton_p2_p2 (stripLeftData H)+newton_p2_p2 (stripRightData H) :=
    normalized_strip_newton_table hH 37
  have h38 : stripMoment H 3 (-3) =
      newton_p3_m3 (stripLeftData H)+newton_p3_m3 (stripRightData H) :=
    normalized_strip_newton_table hH 38
  have h39 : stripMoment H 3 (-2) =
      newton_p3_m2 (stripLeftData H)+newton_p3_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 39
  have h40 : stripMoment H 3 (-1) =
      newton_p3_m1 (stripLeftData H)+newton_p3_m1 (stripRightData H) :=
    normalized_strip_newton_table hH 40
  have h41 : stripMoment H 3 0 =
      newton_p3_p0 (stripLeftData H)+newton_p3_p0 (stripRightData H) :=
    normalized_strip_newton_table hH 41
  have h42 : stripMoment H 4 (-2) =
      newton_p4_m2 (stripLeftData H)+newton_p4_m2 (stripRightData H) :=
    normalized_strip_newton_table hH 42
  simp only [momentPolynomial66,newtonPolynomial66,h00,h01,h02,h03,h04,h05,h06,h07,h08,h09,h10,h11,h12,h13,h14,h15,h16,h17,h18,h19,h20,h21,h22,h23,h24,h25,h26,h27,h28,h29,h30,h31,h32,h33,h34,h35,h36,h37,h38,h39,h40,h41,h42]

/-- All-critical physical data satisfy the exact Newton polynomial before any
sheet, correlation, determinant, or scalar denominator is divided out. -/
theorem allCritical_newtonPolynomial66_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) : newtonPolynomial66 (stripLeftData H) (stripRightData H)=0 := by
  rw [← normalized_newtonPolynomial66 hH.1]
  exact allCritical_momentPolynomial66_zero hH

end
#print axioms normalized_newtonPolynomial66
#print axioms allCritical_newtonPolynomial66_zero
end CriticalStripMoments20261003
