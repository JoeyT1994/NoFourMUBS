import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_25 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_25 X Y))+(((X+Y+9)*(numQy_03_23 X Y))+((6*(numQy_03_22 X Y))+(numQy_03_21 X Y+numQy_02_25 X Y))))+((((X^3-9*X^2)*(numQx_03_25 X Y))+(((X^2+9*X)*(numQx_03_23 X Y))+(((6*X)*(numQx_03_22 X Y))+((X*(numQx_03_21 X Y))+((X-1)*(numQx_02_25 X Y))))))+(-642323431872 : R)))))=0 := by
  dsimp only [numQx_02_25,numQx_03_21,numQx_03_22,numQx_03_23,numQx_03_25,numQy_02_25,numQy_03_21,numQy_03_22,numQy_03_23,numQy_03_25]
  ring
#print axioms numZero_03_25

theorem numZero_03_26 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_26 X Y))+(((X+Y+9)*(numQy_03_24 X Y))+((6*(numQy_03_23 X Y))+(numQy_03_22 X Y+numQy_02_26 X Y))))+((((X^3-9*X^2)*(numQx_03_26 X Y))+(((X^2+9*X)*(numQx_03_24 X Y))+(((6*X)*(numQx_03_23 X Y))+((X*(numQx_03_22 X Y))+((X-1)*(numQx_02_26 X Y))))))+(-145193067648 : R)))))=0 := by
  dsimp only [numQx_02_26,numQx_03_22,numQx_03_23,numQx_03_24,numQx_03_26,numQy_02_26,numQy_03_22,numQy_03_23,numQy_03_24,numQy_03_26]
  ring
#print axioms numZero_03_26

theorem numZero_03_27 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_27 X Y))+(((X+Y+9)*(numQy_03_25 X Y))+((6*(numQy_03_24 X Y))+(numQy_03_23 X Y+numQy_02_27 X Y))))+((((X^3-9*X^2)*(numQx_03_27 X Y))+(((X^2+9*X)*(numQx_03_25 X Y))+(((6*X)*(numQx_03_24 X Y))+((X*(numQx_03_23 X Y))+((X-1)*(numQx_02_27 X Y))))))+(-24768783936 : R)))))=0 := by
  dsimp only [numQx_02_27,numQx_03_23,numQx_03_24,numQx_03_25,numQx_03_27,numQy_02_27,numQy_03_23,numQy_03_24,numQy_03_25,numQy_03_27]
  ring
#print axioms numZero_03_27

theorem numZero_03_28 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_28 X Y))+(((X+Y+9)*(numQy_03_26 X Y))+((6*(numQy_03_25 X Y))+(numQy_03_24 X Y+numQy_02_28 X Y))))+((((X^3-9*X^2)*(numQx_03_28 X Y))+(((X^2+9*X)*(numQx_03_26 X Y))+(((6*X)*(numQx_03_25 X Y))+((X*(numQx_03_24 X Y))+((X-1)*(numQx_02_28 X Y))))))+(-3088720512 : R)))))=0 := by
  dsimp only [numQx_02_28,numQx_03_24,numQx_03_25,numQx_03_26,numQx_03_28,numQy_02_28,numQy_03_24,numQy_03_25,numQy_03_26,numQy_03_28]
  ring
#print axioms numZero_03_28

theorem numZero_03_29 (X Y : R) : (-(((((X+Y+9)*(numQy_03_27 X Y))+((6*(numQy_03_26 X Y))+(numQy_03_25 X Y+numQy_02_29 X Y)))+((((X^2+9*X)*(numQx_03_27 X Y))+(((6*X)*(numQx_03_26 X Y))+((X*(numQx_03_25 X Y))+((X-1)*(numQx_02_29 X Y)))))+(-265915872 : R)))))=0 := by
  dsimp only [numQx_02_29,numQx_03_25,numQx_03_26,numQx_03_27,numQy_02_29,numQy_03_25,numQy_03_26,numQy_03_27]
  ring
#print axioms numZero_03_29

theorem numZero_03_30 (X Y : R) : (-(((((X+Y+9)*(numQy_03_28 X Y))+((6*(numQy_03_27 X Y))+(numQy_03_26 X Y+numQy_02_30 X Y)))+((((X^2+9*X)*(numQx_03_28 X Y))+(((6*X)*(numQx_03_27 X Y))+((X*(numQx_03_26 X Y))+((X-1)*(numQx_02_30 X Y)))))+(-14136768 : R)))))=0 := by
  dsimp only [numQx_02_30,numQx_03_26,numQx_03_27,numQx_03_28,numQy_02_30,numQy_03_26,numQy_03_27,numQy_03_28]
  ring
#print axioms numZero_03_30

theorem numZero_03_31 (X Y : R) : (-((((6*(numQy_03_28 X Y))+(numQy_03_27 X Y+numQy_02_31 X Y))+((((6*X)*(numQx_03_28 X Y))+((X*(numQx_03_27 X Y))+((X-1)*(numQx_02_31 X Y))))+(-349920 : R)))))=0 := by
  dsimp only [numQx_02_31,numQx_03_27,numQx_03_28,numQy_02_31,numQy_03_27,numQy_03_28]
  ring
#print axioms numZero_03_31

theorem numZero_03_32 (X Y : R) : (-(((numQy_03_28 X Y+numQy_02_32 X Y)+((X*(numQx_03_28 X Y))+((X-1)*(numQx_02_32 X Y))))))=0 := by
  dsimp only [numQx_02_32,numQx_03_28,numQy_02_32,numQy_03_28]
  ring
#print axioms numZero_03_32

theorem numZero_04_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_03_00 X Y))))+((((X^3-9*X^2)*(numQx_04_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_03_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_00,numQx_04_00,numQy_03_00,numQy_04_00]
  ring
#print axioms numZero_04_00

theorem numZero_04_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_03_01 X Y))))+((((X^3-9*X^2)*(numQx_04_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_03_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_01,numQx_04_01,numQy_03_01,numQy_04_01]
  ring
#print axioms numZero_04_01
end
end CriticalZeroSplitReduction20261003
