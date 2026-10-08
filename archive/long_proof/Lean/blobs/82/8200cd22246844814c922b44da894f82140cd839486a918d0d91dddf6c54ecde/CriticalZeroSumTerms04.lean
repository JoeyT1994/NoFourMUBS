import CriticalZeroSumCommonData
import CriticalZeroSumNormalized00
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
theorem common_term_44 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_p0_m3 X Y z r*CriticalZeroMoment20261003.value_p2_p1 X Y z r)*commonDenominator X Y z=commonTerm_44 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p2,normalized_p0_m3,normalized_p2_p1,commonDenominator,commonTerm_44]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_44
theorem common_term_45 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((6:K)*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_p0_m2 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_45 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p2,normalized_p0_m2,normalized_p2_p0,commonDenominator,commonTerm_45]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_45
theorem common_term_46 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_p0_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m4 X Y z r)*commonDenominator X Y z=commonTerm_46 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p2,normalized_p0_p2,normalized_p2_m4,commonDenominator,commonTerm_46]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_46
theorem common_term_47 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-48:K)*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r)*commonDenominator X Y z=commonTerm_47 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p2,normalized_p2_m2,commonDenominator,commonTerm_47]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_47
theorem common_term_48 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p3 X Y z r*CriticalZeroMoment20261003.value_m1_m1 X Y z r*CriticalZeroMoment20261003.value_p3_m2 X Y z r)*commonDenominator X Y z=commonTerm_48 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_m1,normalized_m2_p3,normalized_p3_m2,commonDenominator,commonTerm_48]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_48
theorem common_term_49 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p3 X Y z r*CriticalZeroMoment20261003.value_p0_m3 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_49 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p3,normalized_p0_m3,normalized_p2_p0,commonDenominator,commonTerm_49]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_49
theorem common_term_50 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m2_p3 X Y z r*CriticalZeroMoment20261003.value_p2_m3 X Y z r)*commonDenominator X Y z=commonTerm_50 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p3,normalized_p2_m3,commonDenominator,commonTerm_50]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_50
theorem common_term_51 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m2_p4 X Y z r*CriticalZeroMoment20261003.value_m1_m2 X Y z r*CriticalZeroMoment20261003.value_p3_m2 X Y z r)*commonDenominator X Y z=commonTerm_51 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_m2,normalized_m2_p4,normalized_p3_m2,commonDenominator,commonTerm_51]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_51
theorem common_term_52 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m2_p4 X Y z r*CriticalZeroMoment20261003.value_p0_m2 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r)*commonDenominator X Y z=commonTerm_52 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p4,normalized_p0_m2,normalized_p2_m2,commonDenominator,commonTerm_52]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_52
theorem common_term_53 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p4 X Y z r*CriticalZeroMoment20261003.value_p1_m2 X Y z r*CriticalZeroMoment20261003.value_p1_m2 X Y z r)*commonDenominator X Y z=commonTerm_53 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p4,normalized_p1_m2,commonDenominator,commonTerm_53]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_53
theorem common_term_54 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m1_m2 X Y z r*CriticalZeroMoment20261003.value_m1_p3 X Y z r*CriticalZeroMoment20261003.value_p2_m1 X Y z r)*commonDenominator X Y z=commonTerm_54 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_m2,normalized_m1_p3,normalized_p2_m1,commonDenominator,commonTerm_54]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_54
end
end CriticalZeroSumAssembly20261003
