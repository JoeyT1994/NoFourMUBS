import CriticalZeroSumCommonData
import CriticalZeroSumNormalized01
import CriticalZeroSumNormalized02
import CriticalZeroSumNormalized03
import CriticalZeroSumNormalized04
import CriticalZeroSumNormalized05
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem common_term_00 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1728:K))*commonDenominator X Y z=commonTerm_00 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [commonDenominator,commonTerm_00]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_00
theorem common_term_01 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-1:K)*CriticalZeroMoment20261003.value_m4_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m4 X Y z r*CriticalZeroMoment20261003.value_p2_p2 X Y z r)*commonDenominator X Y z=commonTerm_01 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m4_p2,normalized_p2_m4,normalized_p2_p2,commonDenominator,commonTerm_01]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_01
theorem common_term_02 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m4_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m3 X Y z r*CriticalZeroMoment20261003.value_p2_p1 X Y z r)*commonDenominator X Y z=commonTerm_02 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m4_p2,normalized_p2_m3,normalized_p2_p1,commonDenominator,commonTerm_02]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_02
theorem common_term_03 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m4_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_03 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m4_p2,normalized_p2_m2,normalized_p2_p0,commonDenominator,commonTerm_03]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_03
theorem common_term_04 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m4_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r)*commonDenominator X Y z=commonTerm_04 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m4_p2,normalized_p2_m1,commonDenominator,commonTerm_04]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_04
theorem common_term_05 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p0 X Y z r*CriticalZeroMoment20261003.value_p0_p2 X Y z r*CriticalZeroMoment20261003.value_p3_m2 X Y z r)*commonDenominator X Y z=commonTerm_05 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p0,normalized_p0_p2,normalized_p3_m2,commonDenominator,commonTerm_05]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_05
theorem common_term_06 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p0 X Y z r*CriticalZeroMoment20261003.value_p0_p3 X Y z r*CriticalZeroMoment20261003.value_p3_m3 X Y z r)*commonDenominator X Y z=commonTerm_06 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p0,normalized_p0_p3,normalized_p3_m3,commonDenominator,commonTerm_06]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_06
theorem common_term_07 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p0 X Y z r*CriticalZeroMoment20261003.value_p1_p1 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r)*commonDenominator X Y z=commonTerm_07 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p0,normalized_p1_p1,normalized_p2_m1,commonDenominator,commonTerm_07]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_07
theorem common_term_08 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p0 X Y z r*CriticalZeroMoment20261003.value_p1_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r)*commonDenominator X Y z=commonTerm_08 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p0,normalized_p1_p2,normalized_p2_m2,commonDenominator,commonTerm_08]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_08
theorem common_term_09 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m3_p0 X Y z r*CriticalZeroMoment20261003.value_p3_p0 X Y z r)*commonDenominator X Y z=commonTerm_09 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p0,normalized_p3_p0,commonDenominator,commonTerm_09]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_09
theorem common_term_10 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p1 X Y z r*CriticalZeroMoment20261003.value_p0_p2 X Y z r*CriticalZeroMoment20261003.value_p3_m3 X Y z r)*commonDenominator X Y z=commonTerm_10 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p1,normalized_p0_p2,normalized_p3_m3,commonDenominator,commonTerm_10]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_10
end
end CriticalZeroSumAssembly20261003
