import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_36 (X Y : R) : (numRaw_00_36 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_36 X Y))+(((X+Y+9)*(numQy_00_34 X Y))+((6*(numQy_00_33 X Y))+numQy_00_32 X Y)))+((((X^3-9*X^2)*(numQx_00_36 X Y))+(((X^2+9*X)*(numQx_00_34 X Y))+(((6*X)*(numQx_00_33 X Y))+(X*(numQx_00_32 X Y)))))+(-12983452255296 : R))))))=0 := by
  dsimp only [numQx_00_32,numQx_00_33,numQx_00_34,numQx_00_36,numQy_00_32,numQy_00_33,numQy_00_34,numQy_00_36,numRaw_00_36]
  ring
#print axioms numZero_00_36

theorem numZero_00_37 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_37 X Y))+(((X+Y+9)*(numQy_00_35 X Y))+((6*(numQy_00_34 X Y))+numQy_00_33 X Y)))+((((X^3-9*X^2)*(numQx_00_37 X Y))+(((X^2+9*X)*(numQx_00_35 X Y))+(((6*X)*(numQx_00_34 X Y))+(X*(numQx_00_33 X Y)))))+(-1898289301104 : R)))))=0 := by
  dsimp only [numQx_00_33,numQx_00_34,numQx_00_35,numQx_00_37,numQy_00_33,numQy_00_34,numQy_00_35,numQy_00_37]
  ring
#print axioms numZero_00_37

theorem numZero_00_38 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_38 X Y))+(((X+Y+9)*(numQy_00_36 X Y))+((6*(numQy_00_35 X Y))+numQy_00_34 X Y)))+((((X^3-9*X^2)*(numQx_00_38 X Y))+(((X^2+9*X)*(numQx_00_36 X Y))+(((6*X)*(numQx_00_35 X Y))+(X*(numQx_00_34 X Y)))))+(-223654937184 : R)))))=0 := by
  dsimp only [numQx_00_34,numQx_00_35,numQx_00_36,numQx_00_38,numQy_00_34,numQy_00_35,numQy_00_36,numQy_00_38]
  ring
#print axioms numZero_00_38

theorem numZero_00_39 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_39 X Y))+(((X+Y+9)*(numQy_00_37 X Y))+((6*(numQy_00_36 X Y))+numQy_00_35 X Y)))+((((X^3-9*X^2)*(numQx_00_39 X Y))+(((X^2+9*X)*(numQx_00_37 X Y))+(((6*X)*(numQx_00_36 X Y))+(X*(numQx_00_35 X Y)))))+(-20724466896 : R)))))=0 := by
  dsimp only [numQx_00_35,numQx_00_36,numQx_00_37,numQx_00_39,numQy_00_35,numQy_00_36,numQy_00_37,numQy_00_39]
  ring
#print axioms numZero_00_39

theorem numZero_00_40 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_40 X Y))+(((X+Y+9)*(numQy_00_38 X Y))+((6*(numQy_00_37 X Y))+numQy_00_36 X Y)))+((((X^3-9*X^2)*(numQx_00_40 X Y))+(((X^2+9*X)*(numQx_00_38 X Y))+(((6*X)*(numQx_00_37 X Y))+(X*(numQx_00_36 X Y)))))+(-1454827392 : R)))))=0 := by
  dsimp only [numQx_00_36,numQx_00_37,numQx_00_38,numQx_00_40,numQy_00_36,numQy_00_37,numQy_00_38,numQy_00_40]
  ring
#print axioms numZero_00_40

theorem numZero_00_41 (X Y : R) : (-(((((X+Y+9)*(numQy_00_39 X Y))+((6*(numQy_00_38 X Y))+numQy_00_37 X Y))+((((X^2+9*X)*(numQx_00_39 X Y))+(((6*X)*(numQx_00_38 X Y))+(X*(numQx_00_37 X Y))))+(-72748368 : R)))))=0 := by
  dsimp only [numQx_00_37,numQx_00_38,numQx_00_39,numQy_00_37,numQy_00_38,numQy_00_39]
  ring
#print axioms numZero_00_41

theorem numZero_00_42 (X Y : R) : (-(((((X+Y+9)*(numQy_00_40 X Y))+((6*(numQy_00_39 X Y))+numQy_00_38 X Y))+((((X^2+9*X)*(numQx_00_40 X Y))+(((6*X)*(numQx_00_39 X Y))+(X*(numQx_00_38 X Y))))+(-2309472 : R)))))=0 := by
  dsimp only [numQx_00_38,numQx_00_39,numQx_00_40,numQy_00_38,numQy_00_39,numQy_00_40]
  ring
#print axioms numZero_00_42

theorem numZero_00_43 (X Y : R) : (-((((6*(numQy_00_40 X Y))+numQy_00_39 X Y)+((((6*X)*(numQx_00_40 X Y))+(X*(numQx_00_39 X Y)))+(-34992 : R)))))=0 := by
  dsimp only [numQx_00_39,numQx_00_40,numQy_00_39,numQy_00_40]
  ring
#print axioms numZero_00_43

theorem numZero_00_44 (X Y : R) : (-((numQy_00_40 X Y+(X*(numQx_00_40 X Y)))))=0 := by
  dsimp only [numQx_00_40,numQy_00_40]
  ring
#print axioms numZero_00_44

theorem numZero_01_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_00_00 X Y))))+((((X^3-9*X^2)*(numQx_01_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_00_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_00,numQx_01_00,numQy_00_00,numQy_01_00]
  ring
#print axioms numZero_01_00
end
end CriticalZeroSplitReduction20261003
