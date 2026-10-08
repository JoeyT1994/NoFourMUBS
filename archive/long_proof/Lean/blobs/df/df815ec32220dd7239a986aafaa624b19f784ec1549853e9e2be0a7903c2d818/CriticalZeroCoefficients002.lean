import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_25 (X Y : R) : (numRaw_00_25 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_25 X Y))+(((X+Y+9)*(numQy_00_23 X Y))+((6*(numQy_00_22 X Y))+numQy_00_21 X Y)))+((((X^3-9*X^2)*(numQx_00_25 X Y))+(((X^2+9*X)*(numQx_00_23 X Y))+(((6*X)*(numQx_00_22 X Y))+(X*(numQx_00_21 X Y)))))+(9816497542648944 : R))))))=0 := by
  dsimp only [numQx_00_21,numQx_00_22,numQx_00_23,numQx_00_25,numQy_00_21,numQy_00_22,numQy_00_23,numQy_00_25,numRaw_00_25]
  ring

theorem numZero_00_26 (X Y : R) : (numRaw_00_26 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_26 X Y))+(((X+Y+9)*(numQy_00_24 X Y))+((6*(numQy_00_23 X Y))+numQy_00_22 X Y)))+((((X^3-9*X^2)*(numQx_00_26 X Y))+(((X^2+9*X)*(numQx_00_24 X Y))+(((6*X)*(numQx_00_23 X Y))+(X*(numQx_00_22 X Y)))))+(-41154878910580704 : R))))))=0 := by
  dsimp only [numQx_00_22,numQx_00_23,numQx_00_24,numQx_00_26,numQy_00_22,numQy_00_23,numQy_00_24,numQy_00_26,numRaw_00_26]
  ring

theorem numZero_00_27 (X Y : R) : (numRaw_00_27 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_27 X Y))+(((X+Y+9)*(numQy_00_25 X Y))+((6*(numQy_00_24 X Y))+numQy_00_23 X Y)))+((((X^3-9*X^2)*(numQx_00_27 X Y))+(((X^2+9*X)*(numQx_00_25 X Y))+(((6*X)*(numQx_00_24 X Y))+(X*(numQx_00_23 X Y)))))+(-66979231532495856 : R))))))=0 := by
  dsimp only [numQx_00_23,numQx_00_24,numQx_00_25,numQx_00_27,numQy_00_23,numQy_00_24,numQy_00_25,numQy_00_27,numRaw_00_27]
  ring

theorem numZero_00_28 (X Y : R) : (numRaw_00_28 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_28 X Y))+(((X+Y+9)*(numQy_00_26 X Y))+((6*(numQy_00_25 X Y))+numQy_00_24 X Y)))+((((X^3-9*X^2)*(numQx_00_28 X Y))+(((X^2+9*X)*(numQx_00_26 X Y))+(((6*X)*(numQx_00_25 X Y))+(X*(numQx_00_24 X Y)))))+(-63765718047616896 : R))))))=0 := by
  dsimp only [numQx_00_24,numQx_00_25,numQx_00_26,numQx_00_28,numQy_00_24,numQy_00_25,numQy_00_26,numQy_00_28,numRaw_00_28]
  ring

theorem numZero_00_29 (X Y : R) : (numRaw_00_29 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_29 X Y))+(((X+Y+9)*(numQy_00_27 X Y))+((6*(numQy_00_26 X Y))+numQy_00_25 X Y)))+((((X^3-9*X^2)*(numQx_00_29 X Y))+(((X^2+9*X)*(numQx_00_27 X Y))+(((6*X)*(numQx_00_26 X Y))+(X*(numQx_00_25 X Y)))))+(-44772952366893024 : R))))))=0 := by
  dsimp only [numQx_00_25,numQx_00_26,numQx_00_27,numQx_00_29,numQy_00_25,numQy_00_26,numQy_00_27,numQy_00_29,numRaw_00_29]
  ring

theorem numZero_00_30 (X Y : R) : (numRaw_00_30 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_30 X Y))+(((X+Y+9)*(numQy_00_28 X Y))+((6*(numQy_00_27 X Y))+numQy_00_26 X Y)))+((((X^3-9*X^2)*(numQx_00_30 X Y))+(((X^2+9*X)*(numQx_00_28 X Y))+(((6*X)*(numQx_00_27 X Y))+(X*(numQx_00_26 X Y)))))+(-24835153437033408 : R))))))=0 := by
  dsimp only [numQx_00_26,numQx_00_27,numQx_00_28,numQx_00_30,numQy_00_26,numQy_00_27,numQy_00_28,numQy_00_30,numRaw_00_30]
  ring

theorem numZero_00_31 (X Y : R) : (numRaw_00_31 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_31 X Y))+(((X+Y+9)*(numQy_00_29 X Y))+((6*(numQy_00_28 X Y))+numQy_00_27 X Y)))+((((X^3-9*X^2)*(numQx_00_31 X Y))+(((X^2+9*X)*(numQx_00_29 X Y))+(((6*X)*(numQx_00_28 X Y))+(X*(numQx_00_27 X Y)))))+(-11215373404408992 : R))))))=0 := by
  dsimp only [numQx_00_27,numQx_00_28,numQx_00_29,numQx_00_31,numQy_00_27,numQy_00_28,numQy_00_29,numQy_00_31,numRaw_00_31]
  ring

theorem numZero_00_32 (X Y : R) : (numRaw_00_32 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_32 X Y))+(((X+Y+9)*(numQy_00_30 X Y))+((6*(numQy_00_29 X Y))+numQy_00_28 X Y)))+((((X^3-9*X^2)*(numQx_00_32 X Y))+(((X^2+9*X)*(numQx_00_30 X Y))+(((6*X)*(numQx_00_29 X Y))+(X*(numQx_00_28 X Y)))))+(-4185909984872448 : R))))))=0 := by
  dsimp only [numQx_00_28,numQx_00_29,numQx_00_30,numQx_00_32,numQy_00_28,numQy_00_29,numQy_00_30,numQy_00_32,numRaw_00_32]
  ring

theorem numZero_00_33 (X Y : R) : (numRaw_00_33 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_33 X Y))+(((X+Y+9)*(numQy_00_31 X Y))+((6*(numQy_00_30 X Y))+numQy_00_29 X Y)))+((((X^3-9*X^2)*(numQx_00_33 X Y))+(((X^2+9*X)*(numQx_00_31 X Y))+(((6*X)*(numQx_00_30 X Y))+(X*(numQx_00_29 X Y)))))+(-1300533044832288 : R))))))=0 := by
  dsimp only [numQx_00_29,numQx_00_30,numQx_00_31,numQx_00_33,numQy_00_29,numQy_00_30,numQy_00_31,numQy_00_33,numRaw_00_33]
  ring

theorem numZero_00_34 (X Y : R) : (numRaw_00_34 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_34 X Y))+(((X+Y+9)*(numQy_00_32 X Y))+((6*(numQy_00_31 X Y))+numQy_00_30 X Y)))+((((X^3-9*X^2)*(numQx_00_34 X Y))+(((X^2+9*X)*(numQx_00_32 X Y))+(((6*X)*(numQx_00_31 X Y))+(X*(numQx_00_30 X Y)))))+(-337059881387712 : R))))))=0 := by
  dsimp only [numQx_00_30,numQx_00_31,numQx_00_32,numQx_00_34,numQy_00_30,numQy_00_31,numQy_00_32,numQy_00_34,numRaw_00_34]
  ring

theorem numZero_00_35 (X Y : R) : (numRaw_00_35 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_35 X Y))+(((X+Y+9)*(numQy_00_33 X Y))+((6*(numQy_00_32 X Y))+numQy_00_31 X Y)))+((((X^3-9*X^2)*(numQx_00_35 X Y))+(((X^2+9*X)*(numQx_00_33 X Y))+(((6*X)*(numQx_00_32 X Y))+(X*(numQx_00_31 X Y)))))+(-72721485116064 : R))))))=0 := by
  dsimp only [numQx_00_31,numQx_00_32,numQx_00_33,numQx_00_35,numQy_00_31,numQy_00_32,numQy_00_33,numQy_00_35,numRaw_00_35]
  ring

theorem numZero_00_36 (X Y : R) : (numRaw_00_36 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_36 X Y))+(((X+Y+9)*(numQy_00_34 X Y))+((6*(numQy_00_33 X Y))+numQy_00_32 X Y)))+((((X^3-9*X^2)*(numQx_00_36 X Y))+(((X^2+9*X)*(numQx_00_34 X Y))+(((6*X)*(numQx_00_33 X Y))+(X*(numQx_00_32 X Y)))))+(-12983452255296 : R))))))=0 := by
  dsimp only [numQx_00_32,numQx_00_33,numQx_00_34,numQx_00_36,numQy_00_32,numQy_00_33,numQy_00_34,numQy_00_36,numRaw_00_36]
  ring
#print axioms numZero_00_25
#print axioms numZero_00_26
#print axioms numZero_00_27
#print axioms numZero_00_28
#print axioms numZero_00_29
#print axioms numZero_00_30
#print axioms numZero_00_31
#print axioms numZero_00_32
#print axioms numZero_00_33
#print axioms numZero_00_34
#print axioms numZero_00_35
#print axioms numZero_00_36
end
end CriticalZeroSplitReduction20261003
