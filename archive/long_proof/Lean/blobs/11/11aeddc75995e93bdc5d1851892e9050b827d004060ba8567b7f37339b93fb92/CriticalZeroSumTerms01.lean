import CriticalZeroSumCommonData
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
theorem common_term_11 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p1 X Y z r*CriticalZeroMoment20261003.value_p1_m3 X Y z r*CriticalZeroMoment20261003.value_p2_p2 X Y z r)*commonDenominator X Y z=commonTerm_11 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p1,normalized_p1_m3,normalized_p2_p2,commonDenominator,commonTerm_11]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_11
theorem common_term_12 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p1 X Y z r*CriticalZeroMoment20261003.value_p1_m2 X Y z r*CriticalZeroMoment20261003.value_p2_p1 X Y z r)*commonDenominator X Y z=commonTerm_12 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p1,normalized_p1_m2,normalized_p2_p1,commonDenominator,commonTerm_12]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_12
theorem common_term_13 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m3_p1 X Y z r*CriticalZeroMoment20261003.value_p3_m1 X Y z r)*commonDenominator X Y z=commonTerm_13 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p1,normalized_p3_m1,commonDenominator,commonTerm_13]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_13
theorem common_term_14 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p2 X Y z r*CriticalZeroMoment20261003.value_p0_m2 X Y z r*CriticalZeroMoment20261003.value_p3_p0 X Y z r)*commonDenominator X Y z=commonTerm_14 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p2,normalized_p0_m2,normalized_p3_p0,commonDenominator,commonTerm_14]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_14
theorem common_term_15 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p2 X Y z r*CriticalZeroMoment20261003.value_p1_p1 X Y z r*CriticalZeroMoment20261003.value_p2_m3 X Y z r)*commonDenominator X Y z=commonTerm_15 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p2,normalized_p1_p1,normalized_p2_m3,commonDenominator,commonTerm_15]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_15
theorem common_term_16 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p2 X Y z r*CriticalZeroMoment20261003.value_p1_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m4 X Y z r)*commonDenominator X Y z=commonTerm_16 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p2,normalized_p1_p2,normalized_p2_m4,commonDenominator,commonTerm_16]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_16
theorem common_term_17 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m3_p2 X Y z r*CriticalZeroMoment20261003.value_p3_m2 X Y z r)*commonDenominator X Y z=commonTerm_17 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p2,normalized_p3_m2,commonDenominator,commonTerm_17]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_17
theorem common_term_18 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p3 X Y z r*CriticalZeroMoment20261003.value_p0_m3 X Y z r*CriticalZeroMoment20261003.value_p3_p0 X Y z r)*commonDenominator X Y z=commonTerm_18 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p3,normalized_p0_m3,normalized_p3_p0,commonDenominator,commonTerm_18]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_18
theorem common_term_19 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p3 X Y z r*CriticalZeroMoment20261003.value_p0_m2 X Y z r*CriticalZeroMoment20261003.value_p3_m1 X Y z r)*commonDenominator X Y z=commonTerm_19 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p3,normalized_p0_m2,normalized_p3_m1,commonDenominator,commonTerm_19]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_19
theorem common_term_20 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m3_p3 X Y z r*CriticalZeroMoment20261003.value_p1_m3 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_20 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p3,normalized_p1_m3,normalized_p2_p0,commonDenominator,commonTerm_20]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_20
theorem common_term_21 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m3_p3 X Y z r*CriticalZeroMoment20261003.value_p1_m2 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r)*commonDenominator X Y z=commonTerm_21 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p3,normalized_p1_m2,normalized_p2_m1,commonDenominator,commonTerm_21]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_21
end
end CriticalZeroSumAssembly20261003
