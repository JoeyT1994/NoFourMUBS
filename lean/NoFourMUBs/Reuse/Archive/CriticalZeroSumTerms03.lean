import NoFourMUBs.Reuse.Archive.CriticalZeroSumCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized01
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumNormalized05
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem common_term_33 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_p0_m2 X Y z r*CriticalZeroMoment20261003.value_p2_p2 X Y z r)*commonDenominator X Y z=commonTerm_33 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p0,normalized_p0_m2,normalized_p2_p2,commonDenominator,commonTerm_33]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_33
theorem common_term_34 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((6:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_p0_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r)*commonDenominator X Y z=commonTerm_34 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p0,normalized_p0_p2,normalized_p2_m2,commonDenominator,commonTerm_34]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_34
theorem common_term_35 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_p0_p3 X Y z r*CriticalZeroMoment20261003.value_p2_m3 X Y z r)*commonDenominator X Y z=commonTerm_35 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p0,normalized_p0_p3,normalized_p2_m3,commonDenominator,commonTerm_35]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_35
theorem common_term_36 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-48:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_36 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p0,normalized_p2_p0,commonDenominator,commonTerm_36]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_36
theorem common_term_37 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_p4_m2 X Y z r)*commonDenominator X Y z=commonTerm_37 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p1,normalized_p4_m2,commonDenominator,commonTerm_37]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_37
theorem common_term_38 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_m1_m1 X Y z r*CriticalZeroMoment20261003.value_p3_p0 X Y z r)*commonDenominator X Y z=commonTerm_38 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_m1,normalized_m2_p1,normalized_p3_p0,commonDenominator,commonTerm_38]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_38
theorem common_term_39 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_m1_p2 X Y z r*CriticalZeroMoment20261003.value_p3_m3 X Y z r)*commonDenominator X Y z=commonTerm_39 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_p2,normalized_m2_p1,normalized_p3_m3,commonDenominator,commonTerm_39]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_39
theorem common_term_40 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_p1_m3 X Y z r*CriticalZeroMoment20261003.value_p1_p2 X Y z r)*commonDenominator X Y z=commonTerm_40 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p1,normalized_p1_m3,normalized_p1_p2,commonDenominator,commonTerm_40]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_40
theorem common_term_41 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_p1_m2 X Y z r*CriticalZeroMoment20261003.value_p1_p1 X Y z r)*commonDenominator X Y z=commonTerm_41 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p1,normalized_p1_m2,normalized_p1_p1,commonDenominator,commonTerm_41]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_41
theorem common_term_42 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-24:K)*CriticalZeroMoment20261003.value_m2_p1 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r)*commonDenominator X Y z=commonTerm_42 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p1,normalized_p2_m1,commonDenominator,commonTerm_42]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_42
theorem common_term_43 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_m1_m2 X Y z r*CriticalZeroMoment20261003.value_p3_p0 X Y z r)*commonDenominator X Y z=commonTerm_43 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_m2,normalized_m2_p2,normalized_p3_p0,commonDenominator,commonTerm_43]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_43
end
end CriticalZeroSumAssembly20261003
