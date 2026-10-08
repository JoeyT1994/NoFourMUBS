import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_33 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_33 X Y))+(((X+Y+9)*(numQy_01_31 X Y))+((6*(numQy_01_30 X Y))+(numQy_01_29 X Y+numQy_00_33 X Y))))+((((X^3-9*X^2)*(numQx_01_33 X Y))+(((X^2+9*X)*(numQx_01_31 X Y))+(((6*X)*(numQx_01_30 X Y))+((X*(numQx_01_29 X Y))+((X-1)*(numQx_00_33 X Y))))))+(-3722023597248 : R)))))=0 := by
  dsimp only [numQx_00_33,numQx_01_29,numQx_01_30,numQx_01_31,numQx_01_33,numQy_00_33,numQy_01_29,numQy_01_30,numQy_01_31,numQy_01_33]
  ring
#print axioms numZero_01_33

theorem numZero_01_34 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_34 X Y))+(((X+Y+9)*(numQy_01_32 X Y))+((6*(numQy_01_31 X Y))+(numQy_01_30 X Y+numQy_00_34 X Y))))+((((X^3-9*X^2)*(numQx_01_34 X Y))+(((X^2+9*X)*(numQx_01_32 X Y))+(((6*X)*(numQx_01_31 X Y))+((X*(numQx_01_30 X Y))+((X-1)*(numQx_00_34 X Y))))))+(-523074692736 : R)))))=0 := by
  dsimp only [numQx_00_34,numQx_01_30,numQx_01_31,numQx_01_32,numQx_01_34,numQy_00_34,numQy_01_30,numQy_01_31,numQy_01_32,numQy_01_34]
  ring
#print axioms numZero_01_34

theorem numZero_01_35 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_35 X Y))+(((X+Y+9)*(numQy_01_33 X Y))+((6*(numQy_01_32 X Y))+(numQy_01_31 X Y+numQy_00_35 X Y))))+((((X^3-9*X^2)*(numQx_01_35 X Y))+(((X^2+9*X)*(numQx_01_33 X Y))+(((6*X)*(numQx_01_32 X Y))+((X*(numQx_01_31 X Y))+((X-1)*(numQx_00_35 X Y))))))+(-57276398592 : R)))))=0 := by
  dsimp only [numQx_00_35,numQx_01_31,numQx_01_32,numQx_01_33,numQx_01_35,numQy_00_35,numQy_01_31,numQy_01_32,numQy_01_33,numQy_01_35]
  ring
#print axioms numZero_01_35

theorem numZero_01_36 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_36 X Y))+(((X+Y+9)*(numQy_01_34 X Y))+((6*(numQy_01_33 X Y))+(numQy_01_32 X Y+numQy_00_36 X Y))))+((((X^3-9*X^2)*(numQx_01_36 X Y))+(((X^2+9*X)*(numQx_01_34 X Y))+(((6*X)*(numQx_01_33 X Y))+((X*(numQx_01_32 X Y))+((X-1)*(numQx_00_36 X Y))))))+(-4712022720 : R)))))=0 := by
  dsimp only [numQx_00_36,numQx_01_32,numQx_01_33,numQx_01_34,numQx_01_36,numQy_00_36,numQy_01_32,numQy_01_33,numQy_01_34,numQy_01_36]
  ring
#print axioms numZero_01_36

theorem numZero_01_37 (X Y : R) : (-(((((X+Y+9)*(numQy_01_35 X Y))+((6*(numQy_01_34 X Y))+(numQy_01_33 X Y+numQy_00_37 X Y)))+((((X^2+9*X)*(numQx_01_35 X Y))+(((6*X)*(numQx_01_34 X Y))+((X*(numQx_01_33 X Y))+((X-1)*(numQx_00_37 X Y)))))+(-274092336 : R)))))=0 := by
  dsimp only [numQx_00_37,numQx_01_33,numQx_01_34,numQx_01_35,numQy_00_37,numQy_01_33,numQy_01_34,numQy_01_35]
  ring
#print axioms numZero_01_37

theorem numZero_01_38 (X Y : R) : (-(((((X+Y+9)*(numQy_01_36 X Y))+((6*(numQy_01_35 X Y))+(numQy_01_34 X Y+numQy_00_38 X Y)))+((((X^2+9*X)*(numQx_01_36 X Y))+(((6*X)*(numQx_01_35 X Y))+((X*(numQx_01_34 X Y))+((X-1)*(numQx_00_38 X Y)))))+(-10054368 : R)))))=0 := by
  dsimp only [numQx_00_38,numQx_01_34,numQx_01_35,numQx_01_36,numQy_00_38,numQy_01_34,numQy_01_35,numQy_01_36]
  ring
#print axioms numZero_01_38

theorem numZero_01_39 (X Y : R) : (-((((6*(numQy_01_36 X Y))+(numQy_01_35 X Y+numQy_00_39 X Y))+((((6*X)*(numQx_01_36 X Y))+((X*(numQx_01_35 X Y))+((X-1)*(numQx_00_39 X Y))))+(-174960 : R)))))=0 := by
  dsimp only [numQx_00_39,numQx_01_35,numQx_01_36,numQy_00_39,numQy_01_35,numQy_01_36]
  ring
#print axioms numZero_01_39

theorem numZero_01_40 (X Y : R) : (-(((numQy_01_36 X Y+numQy_00_40 X Y)+((X*(numQx_01_36 X Y))+((X-1)*(numQx_00_40 X Y))))))=0 := by
  dsimp only [numQx_00_40,numQx_01_36,numQy_00_40,numQy_01_36]
  ring
#print axioms numZero_01_40

theorem numZero_02_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_01_00 X Y))))+((((X^3-9*X^2)*(numQx_02_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_01_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_00,numQx_02_00,numQy_01_00,numQy_02_00]
  ring
#print axioms numZero_02_00
end
end CriticalZeroSplitReduction20261003
