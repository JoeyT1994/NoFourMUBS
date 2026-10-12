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
theorem common_term_22 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m3_p3 X Y z r*CriticalZeroMoment20261003.value_p3_m3 X Y z r)*commonDenominator X Y z=commonTerm_22 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m3_p3,normalized_p3_m3,commonDenominator,commonTerm_22]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_22
theorem common_term_23 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-1:K)*CriticalZeroMoment20261003.value_m2_m2 X Y z r*CriticalZeroMoment20261003.value_m2_p4 X Y z r*CriticalZeroMoment20261003.value_p4_m2 X Y z r)*commonDenominator X Y z=commonTerm_23 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m2,normalized_m2_p4,normalized_p4_m2,commonDenominator,commonTerm_23]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_23
theorem common_term_24 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m2_m2 X Y z r*CriticalZeroMoment20261003.value_m1_p3 X Y z r*CriticalZeroMoment20261003.value_p3_m1 X Y z r)*commonDenominator X Y z=commonTerm_24 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_p3,normalized_m2_m2,normalized_p3_m1,commonDenominator,commonTerm_24]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_24
theorem common_term_25 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m2_m2 X Y z r*CriticalZeroMoment20261003.value_p0_p2 X Y z r*CriticalZeroMoment20261003.value_p2_p0 X Y z r)*commonDenominator X Y z=commonTerm_25 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m2,normalized_p0_p2,normalized_p2_p0,commonDenominator,commonTerm_25]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_25
theorem common_term_26 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_m2 X Y z r*CriticalZeroMoment20261003.value_p1_p1 X Y z r*CriticalZeroMoment20261003.value_p1_p1 X Y z r)*commonDenominator X Y z=commonTerm_26 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m2,normalized_p1_p1,commonDenominator,commonTerm_26]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_26
theorem common_term_27 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((2:K)*CriticalZeroMoment20261003.value_m2_m1 X Y z r*CriticalZeroMoment20261003.value_m2_p3 X Y z r*CriticalZeroMoment20261003.value_p4_m2 X Y z r)*commonDenominator X Y z=commonTerm_27 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m1,normalized_m2_p3,normalized_p4_m2,commonDenominator,commonTerm_27]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_27
theorem common_term_28 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_m1 X Y z r*CriticalZeroMoment20261003.value_m1_p2 X Y z r*CriticalZeroMoment20261003.value_p3_m1 X Y z r)*commonDenominator X Y z=commonTerm_28 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_p2,normalized_m2_m1,normalized_p3_m1,commonDenominator,commonTerm_28]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_28
theorem common_term_29 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_m1 X Y z r*CriticalZeroMoment20261003.value_p0_p3 X Y z r*CriticalZeroMoment20261003.value_p2_m2 X Y z r)*commonDenominator X Y z=commonTerm_29 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m1,normalized_p0_p3,normalized_p2_m2,commonDenominator,commonTerm_29]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_29
theorem common_term_30 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((12:K)*CriticalZeroMoment20261003.value_m2_m1 X Y z r*CriticalZeroMoment20261003.value_p2_p1 X Y z r)*commonDenominator X Y z=commonTerm_30 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_m1,normalized_p2_p1,commonDenominator,commonTerm_30]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_30
theorem common_term_31 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((1:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_m2_p2 X Y z r*CriticalZeroMoment20261003.value_p4_m2 X Y z r)*commonDenominator X Y z=commonTerm_31 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m2_p0,normalized_m2_p2,normalized_p4_m2,commonDenominator,commonTerm_31]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_31
theorem common_term_32 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    ((-2:K)*CriticalZeroMoment20261003.value_m2_p0 X Y z r*CriticalZeroMoment20261003.value_m1_p3 X Y z r*CriticalZeroMoment20261003.value_p3_m3 X Y z r)*commonDenominator X Y z=commonTerm_32 X Y z := by
  have hx : dx X z≠0 := hDx
  have hy : dy Y z≠0 := hDy
  have hd : dz X Y z≠0 := hDz
  have hr : r^2= -X*remainingModulus X Y z/Y := by
    apply (eq_div_iff hY).mpr
    simpa only [remainingModulus,mul_comm] using hq
  simp only [normalized_m1_p3,normalized_m2_p0,normalized_p3_m3,commonDenominator,commonTerm_32]
  field_simp [hX,hY,hz,hx,hy,hd]
  <;> ring_nf
  <;> rw [hr]
  <;> field_simp [hY]
  <;> ring
#print axioms common_term_32
end
end CriticalZeroSumAssembly20261003
