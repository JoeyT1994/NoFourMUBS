import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_29 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_29 X Y))+(((X+Y+9)*(numQy_02_27 X Y))+((6*(numQy_02_26 X Y))+(numQy_02_25 X Y+numQy_01_29 X Y))))+((((X^3-9*X^2)*(numQx_02_29 X Y))+(((X^2+9*X)*(numQx_02_27 X Y))+(((6*X)*(numQx_02_26 X Y))+((X*(numQx_02_25 X Y))+((X-1)*(numQx_01_29 X Y))))))+(-2465919202464 : R)))))=0 := by
  dsimp only [numQx_01_29,numQx_02_25,numQx_02_26,numQx_02_27,numQx_02_29,numQy_01_29,numQy_02_25,numQy_02_26,numQy_02_27,numQy_02_29]
  ring
#print axioms numZero_02_29

theorem numZero_02_30 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_30 X Y))+(((X+Y+9)*(numQy_02_28 X Y))+((6*(numQy_02_27 X Y))+(numQy_02_26 X Y+numQy_01_30 X Y))))+((((X^3-9*X^2)*(numQx_02_30 X Y))+(((X^2+9*X)*(numQx_02_28 X Y))+(((6*X)*(numQx_02_27 X Y))+((X*(numQx_02_26 X Y))+((X-1)*(numQx_01_30 X Y))))))+(-428247943488 : R)))))=0 := by
  dsimp only [numQx_01_30,numQx_02_26,numQx_02_27,numQx_02_28,numQx_02_30,numQy_01_30,numQy_02_26,numQy_02_27,numQy_02_28,numQy_02_30]
  ring
#print axioms numZero_02_30

theorem numZero_02_31 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_31 X Y))+(((X+Y+9)*(numQy_02_29 X Y))+((6*(numQy_02_28 X Y))+(numQy_02_27 X Y+numQy_01_31 X Y))))+((((X^3-9*X^2)*(numQx_02_31 X Y))+(((X^2+9*X)*(numQx_02_29 X Y))+(((6*X)*(numQx_02_28 X Y))+((X*(numQx_02_27 X Y))+((X-1)*(numQx_01_31 X Y))))))+(-57203311968 : R)))))=0 := by
  dsimp only [numQx_01_31,numQx_02_27,numQx_02_28,numQx_02_29,numQx_02_31,numQy_01_31,numQy_02_27,numQy_02_28,numQy_02_29,numQy_02_31]
  ring
#print axioms numZero_02_31

theorem numZero_02_32 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_32 X Y))+(((X+Y+9)*(numQy_02_30 X Y))+((6*(numQy_02_29 X Y))+(numQy_02_28 X Y+numQy_01_32 X Y))))+((((X^3-9*X^2)*(numQx_02_32 X Y))+(((X^2+9*X)*(numQx_02_30 X Y))+(((6*X)*(numQx_02_29 X Y))+((X*(numQx_02_28 X Y))+((X-1)*(numQx_01_32 X Y))))))+(-5676355584 : R)))))=0 := by
  dsimp only [numQx_01_32,numQx_02_28,numQx_02_29,numQx_02_30,numQx_02_32,numQy_01_32,numQy_02_28,numQy_02_29,numQy_02_30,numQy_02_32]
  ring
#print axioms numZero_02_32

theorem numZero_02_33 (X Y : R) : (-(((((X+Y+9)*(numQy_02_31 X Y))+((6*(numQy_02_30 X Y))+(numQy_02_29 X Y+numQy_01_33 X Y)))+((((X^2+9*X)*(numQx_02_31 X Y))+(((6*X)*(numQx_02_30 X Y))+((X*(numQx_02_29 X Y))+((X-1)*(numQx_01_33 X Y)))))+(-394328736 : R)))))=0 := by
  dsimp only [numQx_01_33,numQx_02_29,numQx_02_30,numQx_02_31,numQy_01_33,numQy_02_29,numQy_02_30,numQy_02_31]
  ring
#print axioms numZero_02_33

theorem numZero_02_34 (X Y : R) : (-(((((X+Y+9)*(numQy_02_32 X Y))+((6*(numQy_02_31 X Y))+(numQy_02_30 X Y+numQy_01_34 X Y)))+((((X^2+9*X)*(numQx_02_32 X Y))+(((6*X)*(numQx_02_31 X Y))+((X*(numQx_02_30 X Y))+((X-1)*(numQx_01_34 X Y)))))+(-17122752 : R)))))=0 := by
  dsimp only [numQx_01_34,numQx_02_30,numQx_02_31,numQx_02_32,numQy_01_34,numQy_02_30,numQy_02_31,numQy_02_32]
  ring
#print axioms numZero_02_34

theorem numZero_02_35 (X Y : R) : (-((((6*(numQy_02_32 X Y))+(numQy_02_31 X Y+numQy_01_35 X Y))+((((6*X)*(numQx_02_32 X Y))+((X*(numQx_02_31 X Y))+((X-1)*(numQx_01_35 X Y))))+(-349920 : R)))))=0 := by
  dsimp only [numQx_01_35,numQx_02_31,numQx_02_32,numQy_01_35,numQy_02_31,numQy_02_32]
  ring
#print axioms numZero_02_35

theorem numZero_02_36 (X Y : R) : (-(((numQy_02_32 X Y+numQy_01_36 X Y)+((X*(numQx_02_32 X Y))+((X-1)*(numQx_01_36 X Y))))))=0 := by
  dsimp only [numQx_01_36,numQx_02_32,numQy_01_36,numQy_02_32]
  ring
#print axioms numZero_02_36

theorem numZero_03_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_02_00 X Y))))+((((X^3-9*X^2)*(numQx_03_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_00,numQx_03_00,numQy_02_00,numQy_03_00]
  ring
#print axioms numZero_03_00
end
end CriticalZeroSplitReduction20261003
