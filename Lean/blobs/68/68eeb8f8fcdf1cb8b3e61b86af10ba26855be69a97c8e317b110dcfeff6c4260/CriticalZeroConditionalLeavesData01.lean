import CriticalZeroSumExprPrimitiveBindings01
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
def cond_m2_p0Qy_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.neg (.lit 12)))
def cond_m2_p0Qy_00_02_expr : HExpr := (.lit 6)
def cond_m2_p0Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_p0Qy_00_00_expr),(0 : F),(value X Y cond_m2_p0Qy_00_02_expr)]]

def cond_m2_p0Qx_00_00_expr : HExpr := (.neg (.lit 12))
def cond_m2_p0Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_p0Qx_00_00_expr)]]

def cond_m2_p0Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 36)) 1) (.lit 108))
def cond_m2_p0Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 18))
def cond_m2_p0Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 78)))
def cond_m2_p0Nf_00_05_expr : HExpr := (.neg (.lit 42))
def cond_m2_p0Nf_00_06_expr : HExpr := (.neg (.lit 6))
def cond_m2_p0Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_m2_p0Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m2_p0Nf_00_02_expr),(value X Y cond_m2_p0Nf_00_03_expr),(value X Y cond_m2_p0Nf_00_04_expr),(value X Y cond_m2_p0Nf_00_05_expr),(value X Y cond_m2_p0Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_m2_p0Nf_01_02_expr)]]

def cond_m2_p0Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_p0Nf X Y)
def cond_m2_p0Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_p0 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_p0Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_p0Qx X Y)) (cond_m2_p0Nf X Y))))
def cond_m2_p1Qy (X Y : F) : List (List F) := []

def cond_m2_p1Qx (X Y : F) : List (List F) := []

def cond_m2_p1Nf_00_00_expr : HExpr := (.neg (.lit 12))
def cond_m2_p1Nf_00_01_expr : HExpr := (.neg (.lit 6))
def cond_m2_p1Nf (X Y : F) : List (List F) := [[(value X Y cond_m2_p1Nf_00_00_expr),(value X Y cond_m2_p1Nf_00_01_expr)]]

def cond_m2_p1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_p1Nf X Y)
def cond_m2_p1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_p1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_p1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_p1Qx X Y)) (cond_m2_p1Nf X Y))))
def cond_m2_p2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 120))) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_m2_p2Qy_00_02_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 6)))
def cond_m2_p2Qy_00_03_expr : HExpr := (.neg (.lit 6))
def cond_m2_p2Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_p2Qy_00_00_expr),(0 : F),(value X Y cond_m2_p2Qy_00_02_expr),(value X Y cond_m2_p2Qy_00_03_expr)]]

def cond_m2_p2Qx_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_m2_p2Qx_00_02_expr : HExpr := (.lit 6)
def cond_m2_p2Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_p2Qx_00_00_expr),(0 : F),(value X Y cond_m2_p2Qx_00_02_expr)]]

def cond_m2_p2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 18)) 1) (.lit 54)) 1) (.add (.mulY (.lit 54) 1) (.neg (.lit 486))))
def cond_m2_p2Nf_00_03_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 6)) 1) (.lit 36)) 1) (.add (.mulY (.lit 36) 1) (.neg (.lit 324))))
def cond_m2_p2Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.lit 162)))
def cond_m2_p2Nf_00_05_expr : HExpr := (.lit 198)
def cond_m2_p2Nf_00_06_expr : HExpr := (.lit 60)
def cond_m2_p2Nf_00_07_expr : HExpr := (.lit 6)
def cond_m2_p2Nf_01_02_expr : HExpr := (.lit 12)
def cond_m2_p2Nf_01_03_expr : HExpr := (.lit 6)
def cond_m2_p2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m2_p2Nf_00_02_expr),(value X Y cond_m2_p2Nf_00_03_expr),(value X Y cond_m2_p2Nf_00_04_expr),(value X Y cond_m2_p2Nf_00_05_expr),(value X Y cond_m2_p2Nf_00_06_expr),(value X Y cond_m2_p2Nf_00_07_expr)],[(0 : F),(0 : F),(value X Y cond_m2_p2Nf_01_02_expr),(value X Y cond_m2_p2Nf_01_03_expr)]]

def cond_m2_p2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_p2Nf X Y)
def cond_m2_p2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_p2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_p2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_p2Qx X Y)) (cond_m2_p2Nf X Y))))
def cond_m2_p3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 2) 1) (.neg (.lit 6))) 1) (.add (.mulY (.neg (.lit 2)) 1) (.lit 6)))
def cond_m2_p3Qy_00_02_expr : HExpr := (.lit 6)
def cond_m2_p3Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_p3Qy_00_00_expr),(0 : F),(value X Y cond_m2_p3Qy_00_02_expr)]]

def cond_m2_p3Qx_00_00_expr : HExpr := (.add (.mulY (.neg (.lit 2)) 1) (.lit 6))
def cond_m2_p3Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_p3Qx_00_00_expr)]]

def cond_m2_p3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 36)) 1) (.lit 108))
def cond_m2_p3Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 18))
def cond_m2_p3Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 78)))
def cond_m2_p3Nf_00_05_expr : HExpr := (.neg (.lit 42))
def cond_m2_p3Nf_00_06_expr : HExpr := (.neg (.lit 6))
def cond_m2_p3Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_m2_p3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m2_p3Nf_00_02_expr),(value X Y cond_m2_p3Nf_00_03_expr),(value X Y cond_m2_p3Nf_00_04_expr),(value X Y cond_m2_p3Nf_00_05_expr),(value X Y cond_m2_p3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_m2_p3Nf_01_02_expr)]]

def cond_m2_p3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_p3Nf X Y)
def cond_m2_p3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_p3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_p3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_p3Qx X Y)) (cond_m2_p3Nf X Y))))
def cond_m2_p4Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 324)))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.lit 300)) 1) (.lit 2928))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 504))) 1) (.neg (.lit 2232))) 1) (.neg (.lit 9072)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 960))) 1) (.lit 6648)) 1) (.lit 1944)) 1) (.lit 2916))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 264)) 1) (.lit 5664)) 1) (.neg (.lit 32400))) 1) (.lit 26244)) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 456) 1) (.neg (.lit 8640))) 1) (.lit 43740)) 1) (.neg (.lit 26244))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 216)) 1) (.lit 3888)) 1) (.neg (.lit 17496))) 2))
def cond_m2_p4Qy_00_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 108))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 132)) 1) (.neg (.lit 984))) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 48)) 1) (.neg (.lit 240))) 1) (.lit 8856)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 84)) 1) (.lit 1920)) 1) (.neg (.lit 10584))) 1) (.lit 972)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 204) 1) (.neg (.lit 3888))) 1) (.lit 19440)) 1) (.neg (.lit 8748))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 108)) 1) (.lit 1944)) 1) (.neg (.lit 8748))) 2))
def cond_m2_p4Qy_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 204))) 1) (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 168))) 1) (.neg (.lit 6768)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 1320))) 1) (.lit 6552)) 1) (.lit 37152))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 528)) 1) (.lit 9480)) 1) (.neg (.lit 42336))) 1) (.neg (.lit 12636)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 912) 1) (.neg (.lit 14040))) 1) (.lit 53460)) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 432)) 1) (.lit 5832)) 1) (.neg (.lit 17496))) 1))
def cond_m2_p4Qy_00_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 24) 1) (.lit 48))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 84))) 1) (.neg (.lit 2736)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 72)) 1) (.lit 1608)) 1) (.lit 41400))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 168)) 1) (.lit 4728)) 1) (.neg (.lit 30384))) 1) (.neg (.lit 27864)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 408) 1) (.neg (.lit 9000))) 1) (.lit 49248)) 1) (.neg (.lit 5832)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 216)) 1) (.lit 4212)) 1) (.neg (.lit 20412))) 1))
def cond_m2_p4Qy_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 120)) 1) (.add (.mulY (.lit 60) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.add (.mulY (.lit 84) 1) (.neg (.lit 204))) 1) (.lit 14382))) 1) (.add (.mulY (.add (.mulY (.lit 432) 1) (.neg (.lit 3996))) 1) (.neg (.lit 42282)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1092)) 1) (.lit 8748)) 1) (.lit 44226))) 1) (.neg (.lit 17496)))
def cond_m2_p4Qy_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.add (.mulY (.lit 24) 1) (.neg (.lit 72)))) 1) (.add (.mulY (.neg (.lit 36)) 1) (.lit 702))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 36)) 1) (.lit 2280)) 1) (.neg (.lit 44676)))) 1) (.add (.mulY (.add (.mulY (.lit 108) 1) (.neg (.lit 5004))) 1) (.lit 77598))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 864)) 1) (.lit 9072)) 1) (.neg (.lit 14580))))
def cond_m2_p4Qy_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.lit 60) 1) (.neg (.lit 1050)))) 1) (.add (.mulY (.lit 714) 1) (.neg (.lit 25314)))) 1) (.add (.mulY (.add (.mulY (.lit 18) 1) (.neg (.lit 2088))) 1) (.lit 51408))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 378)) 1) (.lit 3618)) 1) (.lit 17496)))
def cond_m2_p4Qy_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 540)))) 1) (.add (.mulY (.lit 48) 1) (.neg (.lit 7308)))) 1) (.add (.mulY (.neg (.lit 150)) 1) (.lit 15912))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 54)) 1) (.neg (.lit 270))) 1) (.lit 30942)))
def cond_m2_p4Qy_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.neg (.lit 996))) 1) (.add (.mulY (.lit 18) 1) (.lit 2016))) 1) (.add (.mulY (.neg (.lit 378)) 1) (.lit 18576)))
def cond_m2_p4Qy_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 48))) 1) (.neg (.lit 18))) 1) (.add (.mulY (.neg (.lit 54)) 1) (.lit 5616)))
def cond_m2_p4Qy_00_10_expr : HExpr := (.add (.mulX (.neg (.lit 18)) 1) (.lit 864))
def cond_m2_p4Qy_00_11_expr : HExpr := (.lit 54)
def cond_m2_p4Qy_01_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 672)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 480)) 1) (.lit 3336))) 1) (.add (.mulY (.add (.mulY (.lit 264) 1) (.neg (.lit 2832))) 1) (.neg (.lit 1728)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 456)) 1) (.lit 4320)) 1) (.neg (.lit 972)))) 1) (.mulY (.add (.mulY (.lit 216) 1) (.neg (.lit 1944))) 1))
def cond_m2_p4Qy_01_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.lit 24))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 24))) 1) (.lit 1944))) 1) (.add (.mulY (.add (.mulY (.lit 84) 1) (.neg (.lit 960))) 1) (.neg (.lit 1944)))) 1) (.mulY (.add (.mulY (.neg (.lit 204)) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.lit 108) 1) (.neg (.lit 972))) 1))
def cond_m2_p4Qy_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 312))) 1) (.add (.mulY (.lit 264) 1) (.neg (.lit 5736)))) 1) (.add (.mulY (.neg (.lit 456)) 1) (.lit 9288))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 3888))))
def cond_m2_p4Qy_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 72)))) 1) (.add (.mulY (.lit 84) 1) (.neg (.lit 4944)))) 1) (.add (.mulY (.neg (.lit 204)) 1) (.lit 9576))) 1) (.add (.mulY (.lit 108) 1) (.neg (.lit 4536))))
def cond_m2_p4Qy_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 108)) 1) (.neg (.lit 1464))) 1) (.lit 3228)) 1) (.neg (.lit 1080)))
def cond_m2_p4Qy_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 132))) 1) (.lit 300)) 1) (.lit 648))
def cond_m2_p4Qy_01_06_expr : HExpr := (.add (.mulX (.neg (.lit 18)) 1) (.lit 378))
def cond_m2_p4Qy_01_07_expr : HExpr := (.lit 54)
def cond_m2_p4Qy_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 264))) 1) (.lit 456)) 1) (.neg (.lit 216)))
def cond_m2_p4Qy_02_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 84))) 1) (.lit 204)) 1) (.neg (.lit 108)))
def cond_m2_p4Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_p4Qy_00_00_expr),(value X Y cond_m2_p4Qy_00_01_expr),(value X Y cond_m2_p4Qy_00_02_expr),(value X Y cond_m2_p4Qy_00_03_expr),(value X Y cond_m2_p4Qy_00_04_expr),(value X Y cond_m2_p4Qy_00_05_expr),(value X Y cond_m2_p4Qy_00_06_expr),(value X Y cond_m2_p4Qy_00_07_expr),(value X Y cond_m2_p4Qy_00_08_expr),(value X Y cond_m2_p4Qy_00_09_expr),(value X Y cond_m2_p4Qy_00_10_expr),(value X Y cond_m2_p4Qy_00_11_expr)],[(value X Y cond_m2_p4Qy_01_00_expr),(value X Y cond_m2_p4Qy_01_01_expr),(value X Y cond_m2_p4Qy_01_02_expr),(value X Y cond_m2_p4Qy_01_03_expr),(value X Y cond_m2_p4Qy_01_04_expr),(value X Y cond_m2_p4Qy_01_05_expr),(value X Y cond_m2_p4Qy_01_06_expr),(value X Y cond_m2_p4Qy_01_07_expr)],[(value X Y cond_m2_p4Qy_02_00_expr),(value X Y cond_m2_p4Qy_02_01_expr)]]

def cond_m2_p4Qx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 324)) 1) (.neg (.lit 2916))) 1) (.lit 8748)) 3)
def cond_m2_p4Qx_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 108))) 1) (.neg (.lit 972))) 1) (.lit 8748)) 3)
def cond_m2_p4Qx_00_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 204))) 1) (.lit 6804)) 1) (.neg (.lit 37908))) 1) (.lit 17496)) 1)
def cond_m2_p4Qx_00_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 48))) 1) (.lit 2736)) 1) (.neg (.lit 41472))) 1) (.lit 29160)) 1)
def cond_m2_p4Qx_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 120) 1) (.lit 54)) 1) (.neg (.lit 14376))) 1) (.lit 42282)) 1) (.neg (.lit 43740)))
def cond_m2_p4Qx_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.lit 72)) 1) (.neg (.lit 708))) 1) (.lit 44640)) 1) (.neg (.lit 75006)))
def cond_m2_p4Qx_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 132) 1) (.lit 1050)) 1) (.lit 25266)) 1) (.neg (.lit 49680)))
def cond_m2_p4Qx_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 540)) 1) (.lit 7296)) 1) (.neg (.lit 15408)))
def cond_m2_p4Qx_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 132) 1) (.lit 996)) 1) (.neg (.lit 1962)))
def cond_m2_p4Qx_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.lit 48)) 1) (.lit 18))
def cond_m2_p4Qx_00_10_expr : HExpr := (.lit 18)
def cond_m2_p4Qx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.lit 660)) 1) (.neg (.lit 3132))) 1) (.lit 972)) 1)
def cond_m2_p4Qx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 12))) 1) (.neg (.lit 1944))) 1) (.lit 972)) 1)
def cond_m2_p4Qx_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 312))) 1) (.lit 5400)) 1) (.neg (.lit 5832)))
def cond_m2_p4Qx_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 84)) 1) (.lit 4968)) 1) (.neg (.lit 6804)))
def cond_m2_p4Qx_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 108) 1) (.lit 1524)) 1) (.neg (.lit 2508)))
def cond_m2_p4Qx_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 144)) 1) (.neg (.lit 246)))
def cond_m2_p4Qx_01_06_expr : HExpr := (.lit 18)
def cond_m2_p4Qx_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 240)) 1) (.neg (.lit 216)))
def cond_m2_p4Qx_02_01_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.lit 96)) 1) (.neg (.lit 108)))
def cond_m2_p4Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_p4Qx_00_00_expr),(value X Y cond_m2_p4Qx_00_01_expr),(value X Y cond_m2_p4Qx_00_02_expr),(value X Y cond_m2_p4Qx_00_03_expr),(value X Y cond_m2_p4Qx_00_04_expr),(value X Y cond_m2_p4Qx_00_05_expr),(value X Y cond_m2_p4Qx_00_06_expr),(value X Y cond_m2_p4Qx_00_07_expr),(value X Y cond_m2_p4Qx_00_08_expr),(value X Y cond_m2_p4Qx_00_09_expr),(value X Y cond_m2_p4Qx_00_10_expr)],[(value X Y cond_m2_p4Qx_01_00_expr),(value X Y cond_m2_p4Qx_01_01_expr),(value X Y cond_m2_p4Qx_01_02_expr),(value X Y cond_m2_p4Qx_01_03_expr),(value X Y cond_m2_p4Qx_01_04_expr),(value X Y cond_m2_p4Qx_01_05_expr),(value X Y cond_m2_p4Qx_01_06_expr)],[(value X Y cond_m2_p4Qx_02_00_expr),(value X Y cond_m2_p4Qx_02_01_expr)]]

def cond_m2_p4Nf_00_04_expr : HExpr := (.mulX (.add (.mulX (.lit 8748) 1) (.neg (.lit 78732))) 1)
def cond_m2_p4Nf_00_05_expr : HExpr := (.mulX (.add (.mulX (.neg (.lit 1458)) 1) (.lit 13122)) 1)
def cond_m2_p4Nf_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 28188)) 1) (.lit 253692)) 1) (.lit 157464))
def cond_m2_p4Nf_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 33372)) 1) (.lit 277020)) 1) (.lit 236196))
def cond_m2_p4Nf_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 18036)) 1) (.lit 110808)) 1) (.neg (.lit 52488)))
def cond_m2_p4Nf_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 5202)) 1) (.neg (.lit 324))) 1) (.neg (.lit 368874)))
def cond_m2_p4Nf_00_10_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 780)) 1) (.neg (.lit 15876))) 1) (.neg (.lit 370332)))
def cond_m2_p4Nf_00_11_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 48)) 1) (.neg (.lit 5796))) 1) (.neg (.lit 192942)))
def cond_m2_p4Nf_00_12_expr : HExpr := (.add (.mulX (.neg (.lit 900)) 1) (.neg (.lit 60048)))
def cond_m2_p4Nf_00_13_expr : HExpr := (.add (.mulX (.neg (.lit 54)) 1) (.neg (.lit 11286)))
def cond_m2_p4Nf_00_14_expr : HExpr := (.neg (.lit 1188))
def cond_m2_p4Nf_00_15_expr : HExpr := (.neg (.lit 54))
def cond_m2_p4Nf_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 660)) 1) (.lit 5832)) 1) (.lit 8748))
def cond_m2_p4Nf_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 834)) 1) (.lit 6732)) 1) (.lit 3726))
def cond_m2_p4Nf_01_06_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 348)) 1) (.lit 1452)) 1) (.neg (.lit 26352)))
def cond_m2_p4Nf_01_07_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 48)) 1) (.neg (.lit 948))) 1) (.neg (.lit 41166)))
def cond_m2_p4Nf_01_08_expr : HExpr := (.add (.mulX (.neg (.lit 480)) 1) (.neg (.lit 26748)))
def cond_m2_p4Nf_01_09_expr : HExpr := (.add (.mulX (.neg (.lit 60)) 1) (.neg (.lit 9000)))
def cond_m2_p4Nf_01_10_expr : HExpr := (.neg (.lit 1548))
def cond_m2_p4Nf_01_11_expr : HExpr := (.neg (.lit 108))
def cond_m2_p4Nf_02_04_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 564)))
def cond_m2_p4Nf_02_05_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 786)))
def cond_m2_p4Nf_02_06_expr : HExpr := (.neg (.lit 360))
def cond_m2_p4Nf_02_07_expr : HExpr := (.neg (.lit 54))
def cond_m2_p4Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_p4Nf_00_04_expr),(value X Y cond_m2_p4Nf_00_05_expr),(value X Y cond_m2_p4Nf_00_06_expr),(value X Y cond_m2_p4Nf_00_07_expr),(value X Y cond_m2_p4Nf_00_08_expr),(value X Y cond_m2_p4Nf_00_09_expr),(value X Y cond_m2_p4Nf_00_10_expr),(value X Y cond_m2_p4Nf_00_11_expr),(value X Y cond_m2_p4Nf_00_12_expr),(value X Y cond_m2_p4Nf_00_13_expr),(value X Y cond_m2_p4Nf_00_14_expr),(value X Y cond_m2_p4Nf_00_15_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_p4Nf_01_04_expr),(value X Y cond_m2_p4Nf_01_05_expr),(value X Y cond_m2_p4Nf_01_06_expr),(value X Y cond_m2_p4Nf_01_07_expr),(value X Y cond_m2_p4Nf_01_08_expr),(value X Y cond_m2_p4Nf_01_09_expr),(value X Y cond_m2_p4Nf_01_10_expr),(value X Y cond_m2_p4Nf_01_11_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_p4Nf_02_04_expr),(value X Y cond_m2_p4Nf_02_05_expr),(value X Y cond_m2_p4Nf_02_06_expr),(value X Y cond_m2_p4Nf_02_07_expr)]]

def cond_m2_p4Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_p4Nf X Y)
def cond_m2_p4Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_p4 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_p4Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_p4Qx X Y)) (cond_m2_p4Nf X Y))))
def cond_m3_p0Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 12)) 1) (.neg (.lit 6)))
def cond_m3_p0Qy (X Y : F) : List (List F) := [[(value X Y cond_m3_p0Qy_00_00_expr)]]

def cond_m3_p0Qx_00_00_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 6)))
def cond_m3_p0Qx (X Y : F) : List (List F) := [[(value X Y cond_m3_p0Qx_00_00_expr)]]

def cond_m3_p0Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.neg (.lit 60))) 1) (.lit 54))
def cond_m3_p0Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 36)) 1) (.lit 36))
def cond_m3_p0Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 6))
def cond_m3_p0Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m3_p0Nf_00_02_expr),(value X Y cond_m3_p0Nf_00_03_expr),(value X Y cond_m3_p0Nf_00_04_expr)]]

def cond_m3_p0Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m3_p0Nf X Y)
def cond_m3_p0Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m3_p0 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m3_p0Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m3_p0Qx X Y)) (cond_m3_p0Nf X Y))))
end
end CriticalZeroSumAssembly20261003.Conditional
