import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_04_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_04_15 X Y))+(((X+Y+9)*(denQy_04_13 X Y))+((6*(denQy_04_12 X Y))+(0+denQy_03_15 X Y))))+((((X^3-9*X^2)*(denQx_04_15 X Y))+(((X^2+9*X)*(denQx_04_13 X Y))+(((6*X)*(denQx_04_12 X Y))+((X*(0))+((X-1)*(denQx_03_15 X Y))))))+(17470080 : R)))))=0 := by
  dsimp only [denQx_03_15,denQx_04_12,denQx_04_13,denQx_04_15,denQy_03_15,denQy_04_12,denQy_04_13,denQy_04_15]
  ring
#print axioms denZero_04_15

theorem denZero_04_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_04_16 X Y))+(((X+Y+9)*(denQy_04_14 X Y))+((6*(denQy_04_13 X Y))+(denQy_04_12 X Y+denQy_03_16 X Y))))+((((X^3-9*X^2)*(denQx_04_16 X Y))+(((X^2+9*X)*(denQx_04_14 X Y))+(((6*X)*(denQx_04_13 X Y))+((X*(denQx_04_12 X Y))+((X-1)*(denQx_03_16 X Y))))))+(12362400 : R)))))=0 := by
  dsimp only [denQx_03_16,denQx_04_12,denQx_04_13,denQx_04_14,denQx_04_16,denQy_03_16,denQy_04_12,denQy_04_13,denQy_04_14,denQy_04_16]
  ring
#print axioms denZero_04_16

theorem denZero_04_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_04_17 X Y))+(((X+Y+9)*(denQy_04_15 X Y))+((6*(denQy_04_14 X Y))+(denQy_04_13 X Y+denQy_03_17 X Y))))+((((X^2+9*X)*(denQx_04_15 X Y))+(((6*X)*(denQx_04_14 X Y))+((X*(denQx_04_13 X Y))+((X-1)*(denQx_03_17 X Y)))))+(5464815 : R)))))=0 := by
  dsimp only [denQx_03_17,denQx_04_13,denQx_04_14,denQx_04_15,denQy_03_17,denQy_04_13,denQy_04_14,denQy_04_15,denQy_04_17]
  ring
#print axioms denZero_04_17

theorem denZero_04_18 (X Y : R) : (-(((((X+Y+9)*(denQy_04_16 X Y))+((6*(denQy_04_15 X Y))+(denQy_04_14 X Y+denQy_03_18 X Y)))+((((X^2+9*X)*(denQx_04_16 X Y))+(((6*X)*(denQx_04_15 X Y))+((X*(denQx_04_14 X Y))+((X-1)*(denQx_03_18 X Y)))))+(1545300 : R)))))=0 := by
  dsimp only [denQx_03_18,denQx_04_14,denQx_04_15,denQx_04_16,denQy_03_18,denQy_04_14,denQy_04_15,denQy_04_16]
  ring
#print axioms denZero_04_18

theorem denZero_04_19 (X Y : R) : (-(((((X+Y+9)*(denQy_04_17 X Y))+((6*(denQy_04_16 X Y))+(denQy_04_15 X Y+denQy_03_19 X Y)))+((((6*X)*(denQx_04_16 X Y))+((X*(denQx_04_15 X Y))+((X-1)*(denQx_03_19 X Y))))+(272970 : R)))))=0 := by
  dsimp only [denQx_03_19,denQx_04_15,denQx_04_16,denQy_03_19,denQy_04_15,denQy_04_16,denQy_04_17]
  ring
#print axioms denZero_04_19

theorem denZero_04_20 (X Y : R) : (-((((6*(denQy_04_17 X Y))+(denQy_04_16 X Y+denQy_03_20 X Y))+(((X*(denQx_04_16 X Y))+((X-1)*(denQx_03_20 X Y)))+(27540 : R)))))=0 := by
  dsimp only [denQx_03_20,denQx_04_16,denQy_03_20,denQy_04_16,denQy_04_17]
  ring
#print axioms denZero_04_20

theorem denZero_04_21 (X Y : R) : (-(((denQy_04_17 X Y+denQy_03_21 X Y)+(1215 : R))))=0 := by
  dsimp only [denQy_03_21,denQy_04_17]
  ring
#print axioms denZero_04_21

theorem denZero_05_00 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  ring
#print axioms denZero_05_00

theorem denZero_05_01 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  ring
#print axioms denZero_05_01

theorem denZero_05_02 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  ring
#print axioms denZero_05_02

theorem denZero_05_03 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  ring
#print axioms denZero_05_03

theorem denZero_05_04 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  ring
#print axioms denZero_05_04
end
end CriticalZeroSplitReduction20261003
