import CriticalZeroSumExprPrimitiveBindings04
import CriticalZeroSumExprPrimitiveBindings05
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
def cond_p2_m2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 120))) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_p2_m2Qy_00_02_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 6)))
def cond_p2_m2Qy_00_03_expr : HExpr := (.neg (.lit 6))
def cond_p2_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_m2Qy_00_00_expr),(0 : F),(value X Y cond_p2_m2Qy_00_02_expr),(value X Y cond_p2_m2Qy_00_03_expr)]]

def cond_p2_m2Qx_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_p2_m2Qx_00_02_expr : HExpr := (.lit 6)
def cond_p2_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_m2Qx_00_00_expr),(0 : F),(value X Y cond_p2_m2Qx_00_02_expr)]]

def cond_p2_m2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 18)) 1) (.lit 54)) 1) (.add (.mulY (.lit 54) 1) (.neg (.lit 486))))
def cond_p2_m2Nf_00_03_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 6)) 1) (.lit 36)) 1) (.add (.mulY (.lit 36) 1) (.neg (.lit 324))))
def cond_p2_m2Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.lit 162)))
def cond_p2_m2Nf_00_05_expr : HExpr := (.lit 198)
def cond_p2_m2Nf_00_06_expr : HExpr := (.lit 60)
def cond_p2_m2Nf_00_07_expr : HExpr := (.lit 6)
def cond_p2_m2Nf_01_02_expr : HExpr := (.lit 12)
def cond_p2_m2Nf_01_03_expr : HExpr := (.lit 6)
def cond_p2_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p2_m2Nf_00_02_expr),(value X Y cond_p2_m2Nf_00_03_expr),(value X Y cond_p2_m2Nf_00_04_expr),(value X Y cond_p2_m2Nf_00_05_expr),(value X Y cond_p2_m2Nf_00_06_expr),(value X Y cond_p2_m2Nf_00_07_expr)],[(0 : F),(0 : F),(value X Y cond_p2_m2Nf_01_02_expr),(value X Y cond_p2_m2Nf_01_03_expr)]]

def cond_p2_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_m2Nf X Y)
def cond_p2_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_m2Qx X Y)) (cond_p2_m2Nf X Y))))
def cond_p2_m3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 2)) 1) (.lit 6)) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 6))))
def cond_p2_m3Qy_00_02_expr : HExpr := (.neg (.lit 6))
def cond_p2_m3Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_m3Qy_00_00_expr),(0 : F),(value X Y cond_p2_m3Qy_00_02_expr)]]

def cond_p2_m3Qx_00_00_expr : HExpr := (.add (.mulY (.lit 2) 1) (.neg (.lit 6)))
def cond_p2_m3Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_m3Qx_00_00_expr)]]

def cond_p2_m3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.neg (.lit 36))) 1) (.neg (.lit 108)))
def cond_p2_m3Nf_00_03_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 18)))
def cond_p2_m3Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.lit 78))
def cond_p2_m3Nf_00_05_expr : HExpr := (.lit 42)
def cond_p2_m3Nf_00_06_expr : HExpr := (.lit 6)
def cond_p2_m3Nf_01_02_expr : HExpr := (.lit 6)
def cond_p2_m3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p2_m3Nf_00_02_expr),(value X Y cond_p2_m3Nf_00_03_expr),(value X Y cond_p2_m3Nf_00_04_expr),(value X Y cond_p2_m3Nf_00_05_expr),(value X Y cond_p2_m3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_p2_m3Nf_01_02_expr)]]

def cond_p2_m3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_m3Nf X Y)
def cond_p2_m3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_m3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_m3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_m3Qx X Y)) (cond_p2_m3Nf X Y))))
def cond_p2_m4Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 324)))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.lit 300)) 1) (.lit 2928))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 504))) 1) (.neg (.lit 2232))) 1) (.neg (.lit 9072)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 960))) 1) (.lit 6648)) 1) (.lit 1944)) 1) (.lit 2916))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 264)) 1) (.lit 5664)) 1) (.neg (.lit 32400))) 1) (.lit 26244)) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 456) 1) (.neg (.lit 8640))) 1) (.lit 43740)) 1) (.neg (.lit 26244))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 216)) 1) (.lit 3888)) 1) (.neg (.lit 17496))) 2))
def cond_p2_m4Qy_00_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 108))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 132)) 1) (.neg (.lit 984))) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 48)) 1) (.neg (.lit 240))) 1) (.lit 8856)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 84)) 1) (.lit 1920)) 1) (.neg (.lit 10584))) 1) (.lit 972)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 204) 1) (.neg (.lit 3888))) 1) (.lit 19440)) 1) (.neg (.lit 8748))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 108)) 1) (.lit 1944)) 1) (.neg (.lit 8748))) 2))
def cond_p2_m4Qy_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 204))) 1) (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 168))) 1) (.neg (.lit 6768)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 1320))) 1) (.lit 6552)) 1) (.lit 37152))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 528)) 1) (.lit 9480)) 1) (.neg (.lit 42336))) 1) (.neg (.lit 12636)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 912) 1) (.neg (.lit 14040))) 1) (.lit 53460)) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 432)) 1) (.lit 5832)) 1) (.neg (.lit 17496))) 1))
def cond_p2_m4Qy_00_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 24) 1) (.lit 48))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 84))) 1) (.neg (.lit 2736)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 72)) 1) (.lit 1608)) 1) (.lit 41400))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 168)) 1) (.lit 4728)) 1) (.neg (.lit 30384))) 1) (.neg (.lit 27864)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 408) 1) (.neg (.lit 9000))) 1) (.lit 49248)) 1) (.neg (.lit 5832)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 216)) 1) (.lit 4212)) 1) (.neg (.lit 20412))) 1))
def cond_p2_m4Qy_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 120)) 1) (.add (.mulY (.lit 60) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.add (.mulY (.lit 84) 1) (.neg (.lit 204))) 1) (.lit 14382))) 1) (.add (.mulY (.add (.mulY (.lit 432) 1) (.neg (.lit 3996))) 1) (.neg (.lit 42282)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 1092)) 1) (.lit 8748)) 1) (.lit 44226))) 1) (.neg (.lit 17496)))
def cond_p2_m4Qy_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.add (.mulY (.lit 24) 1) (.neg (.lit 72)))) 1) (.add (.mulY (.neg (.lit 36)) 1) (.lit 702))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 36)) 1) (.lit 2280)) 1) (.neg (.lit 44676)))) 1) (.add (.mulY (.add (.mulY (.lit 108) 1) (.neg (.lit 5004))) 1) (.lit 77598))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 864)) 1) (.lit 9072)) 1) (.neg (.lit 14580))))
def cond_p2_m4Qy_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.lit 60) 1) (.neg (.lit 1050)))) 1) (.add (.mulY (.lit 714) 1) (.neg (.lit 25314)))) 1) (.add (.mulY (.add (.mulY (.lit 18) 1) (.neg (.lit 2088))) 1) (.lit 51408))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 378)) 1) (.lit 3618)) 1) (.lit 17496)))
def cond_p2_m4Qy_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 540)))) 1) (.add (.mulY (.lit 48) 1) (.neg (.lit 7308)))) 1) (.add (.mulY (.neg (.lit 150)) 1) (.lit 15912))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 54)) 1) (.neg (.lit 270))) 1) (.lit 30942)))
def cond_p2_m4Qy_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.neg (.lit 996))) 1) (.add (.mulY (.lit 18) 1) (.lit 2016))) 1) (.add (.mulY (.neg (.lit 378)) 1) (.lit 18576)))
def cond_p2_m4Qy_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 48))) 1) (.neg (.lit 18))) 1) (.add (.mulY (.neg (.lit 54)) 1) (.lit 5616)))
def cond_p2_m4Qy_00_10_expr : HExpr := (.add (.mulX (.neg (.lit 18)) 1) (.lit 864))
def cond_p2_m4Qy_00_11_expr : HExpr := (.lit 54)
def cond_p2_m4Qy_01_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 672)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 480)) 1) (.lit 3336))) 1) (.add (.mulY (.add (.mulY (.lit 264) 1) (.neg (.lit 2832))) 1) (.neg (.lit 1728)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 456)) 1) (.lit 4320)) 1) (.neg (.lit 972)))) 1) (.mulY (.add (.mulY (.lit 216) 1) (.neg (.lit 1944))) 1))
def cond_p2_m4Qy_01_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.lit 24))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 24))) 1) (.lit 1944))) 1) (.add (.mulY (.add (.mulY (.lit 84) 1) (.neg (.lit 960))) 1) (.neg (.lit 1944)))) 1) (.mulY (.add (.mulY (.neg (.lit 204)) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.lit 108) 1) (.neg (.lit 972))) 1))
def cond_p2_m4Qy_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 312))) 1) (.add (.mulY (.lit 264) 1) (.neg (.lit 5736)))) 1) (.add (.mulY (.neg (.lit 456)) 1) (.lit 9288))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 3888))))
def cond_p2_m4Qy_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 72)))) 1) (.add (.mulY (.lit 84) 1) (.neg (.lit 4944)))) 1) (.add (.mulY (.neg (.lit 204)) 1) (.lit 9576))) 1) (.add (.mulY (.lit 108) 1) (.neg (.lit 4536))))
def cond_p2_m4Qy_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 108)) 1) (.neg (.lit 1464))) 1) (.lit 3228)) 1) (.neg (.lit 1080)))
def cond_p2_m4Qy_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 132))) 1) (.lit 300)) 1) (.lit 648))
def cond_p2_m4Qy_01_06_expr : HExpr := (.add (.mulX (.neg (.lit 18)) 1) (.lit 378))
def cond_p2_m4Qy_01_07_expr : HExpr := (.lit 54)
def cond_p2_m4Qy_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 264))) 1) (.lit 456)) 1) (.neg (.lit 216)))
def cond_p2_m4Qy_02_01_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 84))) 1) (.lit 204)) 1) (.neg (.lit 108)))
def cond_p2_m4Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_m4Qy_00_00_expr),(value X Y cond_p2_m4Qy_00_01_expr),(value X Y cond_p2_m4Qy_00_02_expr),(value X Y cond_p2_m4Qy_00_03_expr),(value X Y cond_p2_m4Qy_00_04_expr),(value X Y cond_p2_m4Qy_00_05_expr),(value X Y cond_p2_m4Qy_00_06_expr),(value X Y cond_p2_m4Qy_00_07_expr),(value X Y cond_p2_m4Qy_00_08_expr),(value X Y cond_p2_m4Qy_00_09_expr),(value X Y cond_p2_m4Qy_00_10_expr),(value X Y cond_p2_m4Qy_00_11_expr)],[(value X Y cond_p2_m4Qy_01_00_expr),(value X Y cond_p2_m4Qy_01_01_expr),(value X Y cond_p2_m4Qy_01_02_expr),(value X Y cond_p2_m4Qy_01_03_expr),(value X Y cond_p2_m4Qy_01_04_expr),(value X Y cond_p2_m4Qy_01_05_expr),(value X Y cond_p2_m4Qy_01_06_expr),(value X Y cond_p2_m4Qy_01_07_expr)],[(value X Y cond_p2_m4Qy_02_00_expr),(value X Y cond_p2_m4Qy_02_01_expr)]]

def cond_p2_m4Qx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 324)) 1) (.neg (.lit 2916))) 1) (.lit 8748)) 3)
def cond_p2_m4Qx_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 108))) 1) (.neg (.lit 972))) 1) (.lit 8748)) 3)
def cond_p2_m4Qx_00_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 204))) 1) (.lit 6804)) 1) (.neg (.lit 37908))) 1) (.lit 17496)) 1)
def cond_p2_m4Qx_00_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 48))) 1) (.lit 2736)) 1) (.neg (.lit 41472))) 1) (.lit 29160)) 1)
def cond_p2_m4Qx_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 120) 1) (.lit 54)) 1) (.neg (.lit 14376))) 1) (.lit 42282)) 1) (.neg (.lit 43740)))
def cond_p2_m4Qx_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.lit 72)) 1) (.neg (.lit 708))) 1) (.lit 44640)) 1) (.neg (.lit 75006)))
def cond_p2_m4Qx_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 132) 1) (.lit 1050)) 1) (.lit 25266)) 1) (.neg (.lit 49680)))
def cond_p2_m4Qx_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 540)) 1) (.lit 7296)) 1) (.neg (.lit 15408)))
def cond_p2_m4Qx_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 132) 1) (.lit 996)) 1) (.neg (.lit 1962)))
def cond_p2_m4Qx_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.lit 48)) 1) (.lit 18))
def cond_p2_m4Qx_00_10_expr : HExpr := (.lit 18)
def cond_p2_m4Qx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.lit 660)) 1) (.neg (.lit 3132))) 1) (.lit 972)) 1)
def cond_p2_m4Qx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 12))) 1) (.neg (.lit 1944))) 1) (.lit 972)) 1)
def cond_p2_m4Qx_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 312))) 1) (.lit 5400)) 1) (.neg (.lit 5832)))
def cond_p2_m4Qx_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 84)) 1) (.lit 4968)) 1) (.neg (.lit 6804)))
def cond_p2_m4Qx_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 108) 1) (.lit 1524)) 1) (.neg (.lit 2508)))
def cond_p2_m4Qx_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 144)) 1) (.neg (.lit 246)))
def cond_p2_m4Qx_01_06_expr : HExpr := (.lit 18)
def cond_p2_m4Qx_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 240)) 1) (.neg (.lit 216)))
def cond_p2_m4Qx_02_01_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.lit 96)) 1) (.neg (.lit 108)))
def cond_p2_m4Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_m4Qx_00_00_expr),(value X Y cond_p2_m4Qx_00_01_expr),(value X Y cond_p2_m4Qx_00_02_expr),(value X Y cond_p2_m4Qx_00_03_expr),(value X Y cond_p2_m4Qx_00_04_expr),(value X Y cond_p2_m4Qx_00_05_expr),(value X Y cond_p2_m4Qx_00_06_expr),(value X Y cond_p2_m4Qx_00_07_expr),(value X Y cond_p2_m4Qx_00_08_expr),(value X Y cond_p2_m4Qx_00_09_expr),(value X Y cond_p2_m4Qx_00_10_expr)],[(value X Y cond_p2_m4Qx_01_00_expr),(value X Y cond_p2_m4Qx_01_01_expr),(value X Y cond_p2_m4Qx_01_02_expr),(value X Y cond_p2_m4Qx_01_03_expr),(value X Y cond_p2_m4Qx_01_04_expr),(value X Y cond_p2_m4Qx_01_05_expr),(value X Y cond_p2_m4Qx_01_06_expr)],[(value X Y cond_p2_m4Qx_02_00_expr),(value X Y cond_p2_m4Qx_02_01_expr)]]

def cond_p2_m4Nf_00_04_expr : HExpr := (.mulX (.add (.mulX (.lit 8748) 1) (.neg (.lit 78732))) 1)
def cond_p2_m4Nf_00_05_expr : HExpr := (.mulX (.add (.mulX (.neg (.lit 1458)) 1) (.lit 13122)) 1)
def cond_p2_m4Nf_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 28188)) 1) (.lit 253692)) 1) (.lit 157464))
def cond_p2_m4Nf_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 33372)) 1) (.lit 277020)) 1) (.lit 236196))
def cond_p2_m4Nf_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 18036)) 1) (.lit 110808)) 1) (.neg (.lit 52488)))
def cond_p2_m4Nf_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 5202)) 1) (.neg (.lit 324))) 1) (.neg (.lit 368874)))
def cond_p2_m4Nf_00_10_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 780)) 1) (.neg (.lit 15876))) 1) (.neg (.lit 370332)))
def cond_p2_m4Nf_00_11_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 48)) 1) (.neg (.lit 5796))) 1) (.neg (.lit 192942)))
def cond_p2_m4Nf_00_12_expr : HExpr := (.add (.mulX (.neg (.lit 900)) 1) (.neg (.lit 60048)))
def cond_p2_m4Nf_00_13_expr : HExpr := (.add (.mulX (.neg (.lit 54)) 1) (.neg (.lit 11286)))
def cond_p2_m4Nf_00_14_expr : HExpr := (.neg (.lit 1188))
def cond_p2_m4Nf_00_15_expr : HExpr := (.neg (.lit 54))
def cond_p2_m4Nf_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 660)) 1) (.lit 5832)) 1) (.lit 8748))
def cond_p2_m4Nf_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 834)) 1) (.lit 6732)) 1) (.lit 3726))
def cond_p2_m4Nf_01_06_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 348)) 1) (.lit 1452)) 1) (.neg (.lit 26352)))
def cond_p2_m4Nf_01_07_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 48)) 1) (.neg (.lit 948))) 1) (.neg (.lit 41166)))
def cond_p2_m4Nf_01_08_expr : HExpr := (.add (.mulX (.neg (.lit 480)) 1) (.neg (.lit 26748)))
def cond_p2_m4Nf_01_09_expr : HExpr := (.add (.mulX (.neg (.lit 60)) 1) (.neg (.lit 9000)))
def cond_p2_m4Nf_01_10_expr : HExpr := (.neg (.lit 1548))
def cond_p2_m4Nf_01_11_expr : HExpr := (.neg (.lit 108))
def cond_p2_m4Nf_02_04_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.neg (.lit 564)))
def cond_p2_m4Nf_02_05_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 786)))
def cond_p2_m4Nf_02_06_expr : HExpr := (.neg (.lit 360))
def cond_p2_m4Nf_02_07_expr : HExpr := (.neg (.lit 54))
def cond_p2_m4Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_m4Nf_00_04_expr),(value X Y cond_p2_m4Nf_00_05_expr),(value X Y cond_p2_m4Nf_00_06_expr),(value X Y cond_p2_m4Nf_00_07_expr),(value X Y cond_p2_m4Nf_00_08_expr),(value X Y cond_p2_m4Nf_00_09_expr),(value X Y cond_p2_m4Nf_00_10_expr),(value X Y cond_p2_m4Nf_00_11_expr),(value X Y cond_p2_m4Nf_00_12_expr),(value X Y cond_p2_m4Nf_00_13_expr),(value X Y cond_p2_m4Nf_00_14_expr),(value X Y cond_p2_m4Nf_00_15_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_m4Nf_01_04_expr),(value X Y cond_p2_m4Nf_01_05_expr),(value X Y cond_p2_m4Nf_01_06_expr),(value X Y cond_p2_m4Nf_01_07_expr),(value X Y cond_p2_m4Nf_01_08_expr),(value X Y cond_p2_m4Nf_01_09_expr),(value X Y cond_p2_m4Nf_01_10_expr),(value X Y cond_p2_m4Nf_01_11_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_m4Nf_02_04_expr),(value X Y cond_p2_m4Nf_02_05_expr),(value X Y cond_p2_m4Nf_02_06_expr),(value X Y cond_p2_m4Nf_02_07_expr)]]

def cond_p2_m4Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_m4Nf X Y)
def cond_p2_m4Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_m4 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_m4Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_m4Qx X Y)) (cond_p2_m4Nf X Y))))
def cond_p2_p0Qy_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.neg (.lit 12)))
def cond_p2_p0Qy_00_02_expr : HExpr := (.lit 6)
def cond_p2_p0Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_p0Qy_00_00_expr),(0 : F),(value X Y cond_p2_p0Qy_00_02_expr)]]

def cond_p2_p0Qx_00_00_expr : HExpr := (.neg (.lit 12))
def cond_p2_p0Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_p0Qx_00_00_expr)]]

def cond_p2_p0Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 36)) 1) (.lit 108))
def cond_p2_p0Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 18))
def cond_p2_p0Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 78)))
def cond_p2_p0Nf_00_05_expr : HExpr := (.neg (.lit 42))
def cond_p2_p0Nf_00_06_expr : HExpr := (.neg (.lit 6))
def cond_p2_p0Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_p2_p0Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p2_p0Nf_00_02_expr),(value X Y cond_p2_p0Nf_00_03_expr),(value X Y cond_p2_p0Nf_00_04_expr),(value X Y cond_p2_p0Nf_00_05_expr),(value X Y cond_p2_p0Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_p2_p0Nf_01_02_expr)]]

def cond_p2_p0Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_p0Nf X Y)
def cond_p2_p0Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_p0 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_p0Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_p0Qx X Y)) (cond_p2_p0Nf X Y))))
def cond_p2_p1Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 2) 1) (.neg (.lit 6))) 1) (.add (.mulY (.neg (.lit 2)) 1) (.lit 6)))
def cond_p2_p1Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_p1Qy_00_00_expr)]]

def cond_p2_p1Qx_00_00_expr : HExpr := (.add (.mulY (.neg (.lit 2)) 1) (.lit 6))
def cond_p2_p1Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_p1Qx_00_00_expr)]]

def cond_p2_p1Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 6)) 1) (.lit 18)) 1) (.add (.mulY (.lit 18) 1) (.neg (.lit 54))))
def cond_p2_p1Nf_00_03_expr : HExpr := (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 36))))
def cond_p2_p1Nf_00_04_expr : HExpr := (.neg (.lit 6))
def cond_p2_p1Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p2_p1Nf_00_02_expr),(value X Y cond_p2_p1Nf_00_03_expr),(value X Y cond_p2_p1Nf_00_04_expr)]]

def cond_p2_p1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_p1Nf X Y)
def cond_p2_p1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_p1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_p1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_p1Qx X Y)) (cond_p2_p1Nf X Y))))
def cond_p2_p2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 216))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 132))) 1) (.neg (.lit 960)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 264))) 1) (.lit 456)) 1) (.neg (.lit 216)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 372))) 1) (.lit 1872)) 1) (.neg (.lit 2484))) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 264))) 1) (.lit 1872)) 1) (.neg (.lit 4536))) 1) (.lit 2916)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 456)) 1) (.neg (.lit 2484))) 1) (.lit 2916)) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 216))) 1) (.lit 972)) 3))
def cond_p2_p2Qy_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 216)))) 1) (.add (.mulY (.lit 324) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 240))) 1) (.neg (.lit 1932))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 372))) 1) (.lit 2616)) 1) (.neg (.lit 324))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 672)) 1) (.neg (.lit 4320))) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 324))) 1) (.lit 1944)) 2)) 1)
def cond_p2_p2Qy_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 36) 1) (.lit 204))) 1) (.add (.mulY (.neg (.lit 156)) 1) (.lit 348))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 348))) 1) (.lit 564)) 1) (.neg (.lit 2268)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 468))) 1) (.lit 2724)) 1) (.neg (.lit 3348))) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 48)) 1) (.lit 780)) 1) (.neg (.lit 3348))) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 324))) 1) (.lit 972)) 2))
def cond_p2_p2Qy_00_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 24)))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.lit 288)) 1) (.neg (.lit 1800)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 648))) 1) (.lit 2232)) 1) (.lit 576))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 168)) 1) (.lit 2220)) 1) (.neg (.lit 6120))) 1) (.lit 648))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 216) 1) (.neg (.lit 2232))) 1) (.lit 3240)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 72)) 1) (.lit 648)) 2))
def cond_p2_p2Qy_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 120) 1) (.add (.mulY (.neg (.lit 36)) 1) (.neg (.lit 1278)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 96)) 1) (.lit 1596)) 1) (.lit 1764))) 1) (.add (.mulY (.add (.mulY (.lit 42) 1) (.neg (.lit 672))) 1) (.neg (.lit 702)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 6) 1) (.neg (.lit 12))) 1) (.neg (.lit 2268))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 18)) 1) (.lit 162)) 1) (.lit 972)) 1))
def cond_p2_p2Qy_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 36)))) 1) (.add (.mulY (.lit 264) 1) (.lit 2010))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 132)) 1) (.lit 2190)) 1) (.neg (.lit 2970)))) 1) (.mulY (.add (.mulY (.lit 198) 1) (.neg (.lit 4464))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 18))) 1) (.lit 1782)) 1))
def cond_p2_p2Qy_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 132) 1) (.add (.mulY (.neg (.lit 48)) 1) (.lit 1602))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 1128)) 1) (.neg (.lit 2682)))) 1) (.mulY (.add (.mulY (.lit 30) 1) (.neg (.lit 2148))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 30)) 1) (.lit 1296)) 1))
def cond_p2_p2Qy_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 684))) 1) (.add (.mulY (.lit 204) 1) (.neg (.lit 1026)))) 1) (.mulY (.neg (.lit 426)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.lit 468)) 1))
def cond_p2_p2Qy_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 144) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 180)))) 1) (.mulY (.neg (.lit 30)) 1)) 1) (.mulY (.lit 84) 1))
def cond_p2_p2Qy_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 12))) 2) (.mulY (.lit 6) 1))
def cond_p2_p2Qy_01_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 132))) 1) (.add (.mulY (.neg (.lit 12)) 2) (.neg (.lit 228)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 132)) 1) (.neg (.lit 228))) 1) (.lit 108))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 228))) 1) (.lit 216)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 108)) 2))
def cond_p2_p2Qy_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 240)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 240)) 1) (.lit 216))) 1) (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 444))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 216)) 1)) 1)
def cond_p2_p2Qy_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 24) 1) (.lit 120))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 288)) 1) (.neg (.lit 108)))) 1) (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 528))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 216)) 1))
def cond_p2_p2Qy_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 240))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 480)))) 1) (.add (.mulY (.neg (.lit 348)) 1) (.lit 216))) 1) (.mulY (.lit 144) 1))
def cond_p2_p2Qy_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 144) 1) (.add (.mulY (.lit 24) 1) (.neg (.lit 252)))) 1) (.add (.mulY (.neg (.lit 54)) 1) (.lit 108))) 1) (.mulY (.lit 42) 1))
def cond_p2_p2Qy_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 36))) 1) (.lit 12)) 1) (.mulY (.lit 6) 1))
def cond_p2_p2Qy_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.mulY (.lit 12) 1) 1) (.mulY (.neg (.lit 24)) 1)) 1) (.mulY (.lit 12) 1))
def cond_p2_p2Qy_02_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 24))) 1) (.lit 12)) 1)
def cond_p2_p2Qy (X Y : F) : List (List F) := [[(value X Y cond_p2_p2Qy_00_00_expr),(value X Y cond_p2_p2Qy_00_01_expr),(value X Y cond_p2_p2Qy_00_02_expr),(value X Y cond_p2_p2Qy_00_03_expr),(value X Y cond_p2_p2Qy_00_04_expr),(value X Y cond_p2_p2Qy_00_05_expr),(value X Y cond_p2_p2Qy_00_06_expr),(value X Y cond_p2_p2Qy_00_07_expr),(value X Y cond_p2_p2Qy_00_08_expr),(value X Y cond_p2_p2Qy_00_09_expr)],[(value X Y cond_p2_p2Qy_01_00_expr),(value X Y cond_p2_p2Qy_01_01_expr),(value X Y cond_p2_p2Qy_01_02_expr),(value X Y cond_p2_p2Qy_01_03_expr),(value X Y cond_p2_p2Qy_01_04_expr),(value X Y cond_p2_p2Qy_01_05_expr)],[(value X Y cond_p2_p2Qy_02_00_expr),(value X Y cond_p2_p2Qy_02_01_expr)]]

def cond_p2_p2Qx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 216))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972))) 1) (.mulY (.lit 972) 1)) 3)
def cond_p2_p2Qx_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 216)) 1) (.add (.mulY (.neg (.lit 108)) 1) (.neg (.lit 972)))) 1) (.mulY (.lit 972) 1)) 3)
def cond_p2_p2Qx_00_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 204)))) 1) (.add (.mulY (.neg (.lit 204)) 1) (.neg (.lit 324)))) 1) (.add (.mulY (.lit 864) 1) (.lit 1944))) 1) (.mulY (.lit 1944) 1)) 1)
def cond_p2_p2Qx_00_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 24)) 1) (.add (.mulY (.neg (.lit 228)) 1) (.lit 1800))) 1) (.add (.mulY (.neg (.lit 540)) 1) (.neg (.lit 648)))) 1) (.mulY (.lit 3240) 1)) 1)
def cond_p2_p2Qx_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 120)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 1278))) 1) (.add (.mulY (.neg (.lit 960)) 1) (.neg (.lit 1782)))) 1) (.add (.mulY (.neg (.lit 258)) 1) (.lit 864))) 1) (.add (.mulY (.lit 2808) 1) (.lit 972)))
def cond_p2_p2Qx_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.lit 36)) 1) (.add (.mulY (.neg (.lit 300)) 1) (.neg (.lit 2016)))) 1) (.add (.mulY (.neg (.lit 2028)) 1) (.lit 2952))) 1) (.add (.mulY (.lit 3600) 1) (.lit 1782)))
def cond_p2_p2Qx_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 1602)))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 2652))) 1) (.add (.mulY (.lit 1734) 1) (.lit 1296)))
def cond_p2_p2Qx_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 684))) 1) (.add (.mulY (.neg (.lit 192)) 1) (.lit 1020))) 1) (.add (.mulY (.lit 372) 1) (.lit 468)))
def cond_p2_p2Qx_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 144)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 180))) 1) (.add (.mulY (.lit 30) 1) (.lit 84)))
def cond_p2_p2Qx_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 12)) 1) (.lit 6))
def cond_p2_p2Qx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 120)))) 1) (.lit 108)) 1) (.mulY (.lit 108) 1)) 1)
def cond_p2_p2Qx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 228)) 1) (.add (.mulY (.neg (.lit 108)) 1) (.neg (.lit 108)))) 1) (.mulY (.lit 108) 1)) 1)
def cond_p2_p2Qx_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 108)))) 1) (.mulY (.neg (.lit 300)) 1)) 1) (.mulY (.lit 324) 1))
def cond_p2_p2Qx_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 252))) 1) (.add (.mulY (.neg (.lit 192)) 1) (.lit 324))) 1) (.mulY (.lit 216) 1))
def cond_p2_p2Qx_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 144)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 180))) 1) (.add (.mulY (.lit 42) 1) (.lit 12)))
def cond_p2_p2Qx_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 24)) 1) (.lit 6))
def cond_p2_p2Qx_02_00_expr : HExpr := (.add (.mulX (.mulY (.neg (.lit 12)) 1) 1) (.mulY (.lit 12) 1))
def cond_p2_p2Qx_02_01_expr : HExpr := (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 12)) 1)
def cond_p2_p2Qx (X Y : F) : List (List F) := [[(value X Y cond_p2_p2Qx_00_00_expr),(value X Y cond_p2_p2Qx_00_01_expr),(value X Y cond_p2_p2Qx_00_02_expr),(value X Y cond_p2_p2Qx_00_03_expr),(value X Y cond_p2_p2Qx_00_04_expr),(value X Y cond_p2_p2Qx_00_05_expr),(value X Y cond_p2_p2Qx_00_06_expr),(value X Y cond_p2_p2Qx_00_07_expr),(value X Y cond_p2_p2Qx_00_08_expr),(value X Y cond_p2_p2Qx_00_09_expr)],[(value X Y cond_p2_p2Qx_01_00_expr),(value X Y cond_p2_p2Qx_01_01_expr),(value X Y cond_p2_p2Qx_01_02_expr),(value X Y cond_p2_p2Qx_01_03_expr),(value X Y cond_p2_p2Qx_01_04_expr),(value X Y cond_p2_p2Qx_01_05_expr)],[(value X Y cond_p2_p2Qx_02_00_expr),(value X Y cond_p2_p2Qx_02_01_expr)]]

def cond_p2_p2Nf_00_04_expr : HExpr := (.mulX (.mulY (.neg (.lit 8748)) 1) 1)
def cond_p2_p2Nf_00_05_expr : HExpr := (.mulX (.mulY (.lit 1458) 1) 1)
def cond_p2_p2Nf_00_06_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 28188) 1) (.neg (.lit 8748))) 1) (.mulY (.neg (.lit 8748)) 1))
def cond_p2_p2Nf_00_07_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 33372) 1) (.neg (.lit 21870))) 1) (.mulY (.neg (.lit 21870)) 1))
def cond_p2_p2Nf_00_08_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 18036) 1) (.neg (.lit 23328))) 1) (.mulY (.neg (.lit 23328)) 1))
def cond_p2_p2Nf_00_09_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 5202) 1) (.neg (.lit 13770))) 1) (.mulY (.neg (.lit 13770)) 1))
def cond_p2_p2Nf_00_10_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 780) 1) (.neg (.lit 4860))) 1) (.mulY (.neg (.lit 4860)) 1))
def cond_p2_p2Nf_00_11_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 48) 1) (.neg (.lit 1026))) 1) (.mulY (.neg (.lit 1026)) 1))
def cond_p2_p2Nf_00_12_expr : HExpr := (.add (.mulX (.neg (.lit 120)) 1) (.mulY (.neg (.lit 120)) 1))
def cond_p2_p2Nf_00_13_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.mulY (.neg (.lit 6)) 1))
def cond_p2_p2Nf_01_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 660) 1) (.neg (.lit 108))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972)))
def cond_p2_p2Nf_01_05_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 834) 1) (.neg (.lit 774))) 1) (.add (.mulY (.neg (.lit 774)) 1) (.lit 1782)))
def cond_p2_p2Nf_01_06_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 348) 1) (.neg (.lit 1020))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 1296)))
def cond_p2_p2Nf_01_07_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 48) 1) (.neg (.lit 546))) 1) (.add (.mulY (.neg (.lit 546)) 1) (.lit 468)))
def cond_p2_p2Nf_01_08_expr : HExpr := (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.neg (.lit 132)) 1) (.lit 84)))
def cond_p2_p2Nf_01_09_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 6)))
def cond_p2_p2Nf_02_04_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 12)))
def cond_p2_p2Nf_02_05_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 6)))
def cond_p2_p2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_p2Nf_00_04_expr),(value X Y cond_p2_p2Nf_00_05_expr),(value X Y cond_p2_p2Nf_00_06_expr),(value X Y cond_p2_p2Nf_00_07_expr),(value X Y cond_p2_p2Nf_00_08_expr),(value X Y cond_p2_p2Nf_00_09_expr),(value X Y cond_p2_p2Nf_00_10_expr),(value X Y cond_p2_p2Nf_00_11_expr),(value X Y cond_p2_p2Nf_00_12_expr),(value X Y cond_p2_p2Nf_00_13_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_p2Nf_01_04_expr),(value X Y cond_p2_p2Nf_01_05_expr),(value X Y cond_p2_p2Nf_01_06_expr),(value X Y cond_p2_p2Nf_01_07_expr),(value X Y cond_p2_p2Nf_01_08_expr),(value X Y cond_p2_p2Nf_01_09_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p2_p2Nf_02_04_expr),(value X Y cond_p2_p2Nf_02_05_expr)]]

def cond_p2_p2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p2_p2Nf X Y)
def cond_p2_p2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p2_p2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p2_p2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p2_p2Qx X Y)) (cond_p2_p2Nf X Y))))
end
end CriticalZeroSumAssembly20261003.Conditional
