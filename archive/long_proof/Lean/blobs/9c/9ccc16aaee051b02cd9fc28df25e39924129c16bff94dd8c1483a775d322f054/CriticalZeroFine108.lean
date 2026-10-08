import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_00_25 (X Y : R) : (denRaw_00_25 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_25 X Y))+(((X+Y+9)*(denQy_00_23 X Y))+((6*(denQy_00_22 X Y))+denQy_00_21 X Y)))+((((X^3-9*X^2)*(denQx_00_25 X Y))+(((X^2+9*X)*(denQx_00_23 X Y))+(((6*X)*(denQx_00_22 X Y))+(X*(denQx_00_21 X Y)))))+(16267786333110 : R))))))=0 := by
  dsimp only [denQx_00_21,denQx_00_22,denQx_00_23,denQx_00_25,denQy_00_21,denQy_00_22,denQy_00_23,denQy_00_25,denRaw_00_25]
  ring
#print axioms denZero_00_25

theorem denZero_00_26 (X Y : R) : (denRaw_00_26 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_26 X Y))+(((X+Y+9)*(denQy_00_24 X Y))+((6*(denQy_00_23 X Y))+denQy_00_22 X Y)))+((((X^3-9*X^2)*(denQx_00_26 X Y))+(((X^2+9*X)*(denQx_00_24 X Y))+(((6*X)*(denQx_00_23 X Y))+(X*(denQx_00_22 X Y)))))+(7230127259160 : R))))))=0 := by
  dsimp only [denQx_00_22,denQx_00_23,denQx_00_24,denQx_00_26,denQy_00_22,denQy_00_23,denQy_00_24,denQy_00_26,denRaw_00_26]
  ring
#print axioms denZero_00_26

theorem denZero_00_27 (X Y : R) : (denRaw_00_27 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_27 X Y))+(((X+Y+9)*(denQy_00_25 X Y))+((6*(denQy_00_24 X Y))+denQy_00_23 X Y)))+((((X^3-9*X^2)*(denQx_00_27 X Y))+(((X^2+9*X)*(denQx_00_25 X Y))+(((6*X)*(denQx_00_24 X Y))+(X*(denQx_00_23 X Y)))))+(2651046661692 : R))))))=0 := by
  dsimp only [denQx_00_23,denQx_00_24,denQx_00_25,denQx_00_27,denQy_00_23,denQy_00_24,denQy_00_25,denQy_00_27,denRaw_00_27]
  ring
#print axioms denZero_00_27

theorem denZero_00_28 (X Y : R) : (denRaw_00_28 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_28 X Y))+(((X+Y+9)*(denQy_00_26 X Y))+((6*(denQy_00_25 X Y))+denQy_00_24 X Y)))+((((X^3-9*X^2)*(denQx_00_28 X Y))+(((X^2+9*X)*(denQx_00_26 X Y))+(((6*X)*(denQx_00_25 X Y))+(X*(denQx_00_24 X Y)))))+(803347473240 : R))))))=0 := by
  dsimp only [denQx_00_24,denQx_00_25,denQx_00_26,denQx_00_28,denQy_00_24,denQy_00_25,denQy_00_26,denQy_00_28,denRaw_00_28]
  ring
#print axioms denZero_00_28

theorem denZero_00_29 (X Y : R) : (denRaw_00_29 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_29 X Y))+(((X+Y+9)*(denQy_00_27 X Y))+((6*(denQy_00_26 X Y))+denQy_00_25 X Y)))+((((X^3-9*X^2)*(denQx_00_29 X Y))+(((X^2+9*X)*(denQx_00_27 X Y))+(((6*X)*(denQx_00_26 X Y))+(X*(denQx_00_25 X Y)))))+(200836868310 : R))))))=0 := by
  dsimp only [denQx_00_25,denQx_00_26,denQx_00_27,denQx_00_29,denQy_00_25,denQy_00_26,denQy_00_27,denQy_00_29,denRaw_00_29]
  ring
#print axioms denZero_00_29

theorem denZero_00_30 (X Y : R) : (denRaw_00_30 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_30 X Y))+(((X+Y+9)*(denQy_00_28 X Y))+((6*(denQy_00_27 X Y))+denQy_00_26 X Y)))+((((X^3-9*X^2)*(denQx_00_30 X Y))+(((X^2+9*X)*(denQx_00_28 X Y))+(((6*X)*(denQx_00_27 X Y))+(X*(denQx_00_26 X Y)))))+(41197306320 : R))))))=0 := by
  dsimp only [denQx_00_26,denQx_00_27,denQx_00_28,denQx_00_30,denQy_00_26,denQy_00_27,denQy_00_28,denQy_00_30,denRaw_00_30]
  ring
#print axioms denZero_00_30

theorem denZero_00_31 (X Y : R) : (denRaw_00_31 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_31 X Y))+(((X+Y+9)*(denQy_00_29 X Y))+((6*(denQy_00_28 X Y))+denQy_00_27 X Y)))+((((X^3-9*X^2)*(denQx_00_31 X Y))+(((X^2+9*X)*(denQx_00_29 X Y))+(((6*X)*(denQx_00_28 X Y))+(X*(denQx_00_27 X Y)))))+(6866217720 : R))))))=0 := by
  dsimp only [denQx_00_27,denQx_00_28,denQx_00_29,denQx_00_31,denQy_00_27,denQy_00_28,denQy_00_29,denQy_00_31,denRaw_00_31]
  ring
#print axioms denZero_00_31

theorem denZero_00_32 (X Y : R) : (denRaw_00_32 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_32 X Y))+(((X+Y+9)*(denQy_00_30 X Y))+((6*(denQy_00_29 X Y))+denQy_00_28 X Y)))+((((X^3-9*X^2)*(denQx_00_32 X Y))+(((X^2+9*X)*(denQx_00_30 X Y))+(((6*X)*(denQx_00_29 X Y))+(X*(denQx_00_28 X Y)))))+(915495696 : R))))))=0 := by
  dsimp only [denQx_00_28,denQx_00_29,denQx_00_30,denQx_00_32,denQy_00_28,denQy_00_29,denQy_00_30,denQy_00_32,denRaw_00_32]
  ring
#print axioms denZero_00_32

theorem denZero_00_33 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_33 X Y))+(((X+Y+9)*(denQy_00_31 X Y))+((6*(denQy_00_30 X Y))+denQy_00_29 X Y)))+((((X^2+9*X)*(denQx_00_31 X Y))+(((6*X)*(denQx_00_30 X Y))+(X*(denQx_00_29 X Y))))+(95364135 : R)))))=0 := by
  dsimp only [denQx_00_29,denQx_00_30,denQx_00_31,denQy_00_29,denQy_00_30,denQy_00_31,denQy_00_33]
  ring
#print axioms denZero_00_33

theorem denZero_00_34 (X Y : R) : (-(((((X+Y+9)*(denQy_00_32 X Y))+((6*(denQy_00_31 X Y))+denQy_00_30 X Y))+((((X^2+9*X)*(denQx_00_32 X Y))+(((6*X)*(denQx_00_31 X Y))+(X*(denQx_00_30 X Y))))+(7479540 : R)))))=0 := by
  dsimp only [denQx_00_30,denQx_00_31,denQx_00_32,denQy_00_30,denQy_00_31,denQy_00_32]
  ring
#print axioms denZero_00_34

theorem denZero_00_35 (X Y : R) : (-(((((X+Y+9)*(denQy_00_33 X Y))+((6*(denQy_00_32 X Y))+denQy_00_31 X Y))+((((6*X)*(denQx_00_32 X Y))+(X*(denQx_00_31 X Y)))+(415530 : R)))))=0 := by
  dsimp only [denQx_00_31,denQx_00_32,denQy_00_31,denQy_00_32,denQy_00_33]
  ring
#print axioms denZero_00_35

theorem denZero_00_36 (X Y : R) : (-((((6*(denQy_00_33 X Y))+denQy_00_32 X Y)+((X*(denQx_00_32 X Y))+(14580 : R)))))=0 := by
  dsimp only [denQx_00_32,denQy_00_32,denQy_00_33]
  ring
#print axioms denZero_00_36
end
end CriticalZeroSplitReduction20261003
