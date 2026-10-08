import CriticalZeroSumExprPrimitiveBindings00
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
def cond_m1_m1Qy (X Y : F) : List (List F) := []

def cond_m1_m1Qx (X Y : F) : List (List F) := []

def cond_m1_m1Nf_00_00_expr : HExpr := (.lit 12)
def cond_m1_m1Nf_00_01_expr : HExpr := (.lit 6)
def cond_m1_m1Nf (X Y : F) : List (List F) := [[(value X Y cond_m1_m1Nf_00_00_expr),(value X Y cond_m1_m1Nf_00_01_expr)]]

def cond_m1_m1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m1_m1Nf X Y)
def cond_m1_m1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m1_m1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m1_m1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m1_m1Qx X Y)) (cond_m1_m1Nf X Y))))
def cond_m1_m2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 2) 1) (.neg (.lit 8))) 1) (.lit 6))
def cond_m1_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_m1_m2Qy_00_00_expr)]]

def cond_m1_m2Qx_00_00_expr : HExpr := (.add (.mulX (.neg (.lit 2)) 1) (.lit 6))
def cond_m1_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_m1_m2Qx_00_00_expr)]]

def cond_m1_m2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 6)) 1) (.lit 18)) 1) (.add (.mulY (.lit 18) 1) (.neg (.lit 54))))
def cond_m1_m2Nf_00_03_expr : HExpr := (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 36))))
def cond_m1_m2Nf_00_04_expr : HExpr := (.neg (.lit 6))
def cond_m1_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m1_m2Nf_00_02_expr),(value X Y cond_m1_m2Nf_00_03_expr),(value X Y cond_m1_m2Nf_00_04_expr)]]

def cond_m1_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m1_m2Nf X Y)
def cond_m1_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m1_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m1_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m1_m2Qx X Y)) (cond_m1_m2Nf X Y))))
def cond_m1_p2Qy (X Y : F) : List (List F) := []

def cond_m1_p2Qx (X Y : F) : List (List F) := []

def cond_m1_p2Nf_00_00_expr : HExpr := (.neg (.lit 12))
def cond_m1_p2Nf_00_01_expr : HExpr := (.neg (.lit 6))
def cond_m1_p2Nf (X Y : F) : List (List F) := [[(value X Y cond_m1_p2Nf_00_00_expr),(value X Y cond_m1_p2Nf_00_01_expr)]]

def cond_m1_p2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m1_p2Nf X Y)
def cond_m1_p2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m1_p2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m1_p2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m1_p2Qx X Y)) (cond_m1_p2Nf X Y))))
def cond_m1_p3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 2)) 1) (.add (.mulY (.neg (.lit 2)) 1) (.lit 14))) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_m1_p3Qy_00_02_expr : HExpr := (.add (.mulX (.neg (.lit 2)) 1) (.lit 8))
def cond_m1_p3Qy (X Y : F) : List (List F) := [[(value X Y cond_m1_p3Qy_00_00_expr),(0 : F),(value X Y cond_m1_p3Qy_00_02_expr)]]

def cond_m1_p3Qx_00_00_expr : HExpr := (.add (.mulX (.lit 2) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_m1_p3Qx_00_02_expr : HExpr := (.lit 2)
def cond_m1_p3Qx (X Y : F) : List (List F) := [[(value X Y cond_m1_p3Qx_00_00_expr),(0 : F),(value X Y cond_m1_p3Qx_00_02_expr)]]

def cond_m1_p3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 36)) 1) (.lit 108))
def cond_m1_p3Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 18))
def cond_m1_p3Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.neg (.lit 78)))
def cond_m1_p3Nf_00_05_expr : HExpr := (.neg (.lit 42))
def cond_m1_p3Nf_00_06_expr : HExpr := (.neg (.lit 6))
def cond_m1_p3Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_m1_p3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m1_p3Nf_00_02_expr),(value X Y cond_m1_p3Nf_00_03_expr),(value X Y cond_m1_p3Nf_00_04_expr),(value X Y cond_m1_p3Nf_00_05_expr),(value X Y cond_m1_p3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_m1_p3Nf_01_02_expr)]]

def cond_m1_p3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m1_p3Nf X Y)
def cond_m1_p3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m1_p3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m1_p3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m1_p3Qx X Y)) (cond_m1_p3Nf X Y))))
def cond_m2_m1Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulY (.neg (.lit 2)) 1) (.lit 6)) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 6))))
def cond_m2_m1Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_m1Qy_00_00_expr)]]

def cond_m2_m1Qx_00_00_expr : HExpr := (.add (.mulY (.lit 2) 1) (.neg (.lit 6)))
def cond_m2_m1Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_m1Qx_00_00_expr)]]

def cond_m2_m1Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 6) 1) (.neg (.lit 18))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 54)))
def cond_m2_m1Nf_00_03_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 36)))
def cond_m2_m1Nf_00_04_expr : HExpr := (.lit 6)
def cond_m2_m1Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m2_m1Nf_00_02_expr),(value X Y cond_m2_m1Nf_00_03_expr),(value X Y cond_m2_m1Nf_00_04_expr)]]

def cond_m2_m1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_m1Nf X Y)
def cond_m2_m1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_m1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_m1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_m1Qx X Y)) (cond_m2_m1Nf X Y))))
def cond_m2_m2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 216))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 132))) 1) (.neg (.lit 960)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 264))) 1) (.lit 456)) 1) (.neg (.lit 216)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 372))) 1) (.lit 1872)) 1) (.neg (.lit 2484))) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 264))) 1) (.lit 1872)) 1) (.neg (.lit 4536))) 1) (.lit 2916)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 456)) 1) (.neg (.lit 2484))) 1) (.lit 2916)) 2)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 216))) 1) (.lit 972)) 3))
def cond_m2_m2Qy_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 216)))) 1) (.add (.mulY (.lit 324) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 240))) 1) (.neg (.lit 1932))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 372))) 1) (.lit 2616)) 1) (.neg (.lit 324))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 672)) 1) (.neg (.lit 4320))) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 324))) 1) (.lit 1944)) 2)) 1)
def cond_m2_m2Qy_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 36) 1) (.lit 204))) 1) (.add (.mulY (.neg (.lit 156)) 1) (.lit 348))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 348))) 1) (.lit 564)) 1) (.neg (.lit 2268)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 468))) 1) (.lit 2724)) 1) (.neg (.lit 3348))) 1) (.lit 972))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 48)) 1) (.lit 780)) 1) (.neg (.lit 3348))) 1) (.lit 1944)) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 324))) 1) (.lit 972)) 2))
def cond_m2_m2Qy_00_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 24)))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.lit 288)) 1) (.neg (.lit 1800)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 648))) 1) (.lit 2232)) 1) (.lit 576))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 168)) 1) (.lit 2220)) 1) (.neg (.lit 6120))) 1) (.lit 648))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 216) 1) (.neg (.lit 2232))) 1) (.lit 3240)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 72)) 1) (.lit 648)) 2))
def cond_m2_m2Qy_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 120) 1) (.add (.mulY (.neg (.lit 36)) 1) (.neg (.lit 1278)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 96)) 1) (.lit 1596)) 1) (.lit 1764))) 1) (.add (.mulY (.add (.mulY (.lit 42) 1) (.neg (.lit 672))) 1) (.neg (.lit 702)))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 6) 1) (.neg (.lit 12))) 1) (.neg (.lit 2268))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 18)) 1) (.lit 162)) 1) (.lit 972)) 1))
def cond_m2_m2Qy_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 36)))) 1) (.add (.mulY (.lit 264) 1) (.lit 2010))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 132)) 1) (.lit 2190)) 1) (.neg (.lit 2970)))) 1) (.mulY (.add (.mulY (.lit 198) 1) (.neg (.lit 4464))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 18))) 1) (.lit 1782)) 1))
def cond_m2_m2Qy_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 132) 1) (.add (.mulY (.neg (.lit 48)) 1) (.lit 1602))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 1128)) 1) (.neg (.lit 2682)))) 1) (.mulY (.add (.mulY (.lit 30) 1) (.neg (.lit 2148))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 30)) 1) (.lit 1296)) 1))
def cond_m2_m2Qy_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 684))) 1) (.add (.mulY (.lit 204) 1) (.neg (.lit 1026)))) 1) (.mulY (.neg (.lit 426)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.lit 468)) 1))
def cond_m2_m2Qy_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 144) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 180)))) 1) (.mulY (.neg (.lit 30)) 1)) 1) (.mulY (.lit 84) 1))
def cond_m2_m2Qy_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 12))) 2) (.mulY (.lit 6) 1))
def cond_m2_m2Qy_01_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 132))) 1) (.add (.mulY (.neg (.lit 12)) 2) (.neg (.lit 228)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 132)) 1) (.neg (.lit 228))) 1) (.lit 108))) 1) (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 228))) 1) (.lit 216)) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 108)) 2))
def cond_m2_m2Qy_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 240)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 240)) 1) (.lit 216))) 1) (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 444))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 216)) 1)) 1)
def cond_m2_m2Qy_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 24) 1) (.lit 120))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 288)) 1) (.neg (.lit 108)))) 1) (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 528))) 1)) 1) (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 216)) 1))
def cond_m2_m2Qy_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 240))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 480)))) 1) (.add (.mulY (.neg (.lit 348)) 1) (.lit 216))) 1) (.mulY (.lit 144) 1))
def cond_m2_m2Qy_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 144) 1) (.add (.mulY (.lit 24) 1) (.neg (.lit 252)))) 1) (.add (.mulY (.neg (.lit 54)) 1) (.lit 108))) 1) (.mulY (.lit 42) 1))
def cond_m2_m2Qy_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 36))) 1) (.lit 12)) 1) (.mulY (.lit 6) 1))
def cond_m2_m2Qy_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.mulY (.lit 12) 1) 1) (.mulY (.neg (.lit 24)) 1)) 1) (.mulY (.lit 12) 1))
def cond_m2_m2Qy_02_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 24))) 1) (.lit 12)) 1)
def cond_m2_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_m2_m2Qy_00_00_expr),(value X Y cond_m2_m2Qy_00_01_expr),(value X Y cond_m2_m2Qy_00_02_expr),(value X Y cond_m2_m2Qy_00_03_expr),(value X Y cond_m2_m2Qy_00_04_expr),(value X Y cond_m2_m2Qy_00_05_expr),(value X Y cond_m2_m2Qy_00_06_expr),(value X Y cond_m2_m2Qy_00_07_expr),(value X Y cond_m2_m2Qy_00_08_expr),(value X Y cond_m2_m2Qy_00_09_expr)],[(value X Y cond_m2_m2Qy_01_00_expr),(value X Y cond_m2_m2Qy_01_01_expr),(value X Y cond_m2_m2Qy_01_02_expr),(value X Y cond_m2_m2Qy_01_03_expr),(value X Y cond_m2_m2Qy_01_04_expr),(value X Y cond_m2_m2Qy_01_05_expr)],[(value X Y cond_m2_m2Qy_02_00_expr),(value X Y cond_m2_m2Qy_02_01_expr)]]

def cond_m2_m2Qx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 216))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972))) 1) (.mulY (.lit 972) 1)) 3)
def cond_m2_m2Qx_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 216)) 1) (.add (.mulY (.neg (.lit 108)) 1) (.neg (.lit 972)))) 1) (.mulY (.lit 972) 1)) 3)
def cond_m2_m2Qx_00_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 204)))) 1) (.add (.mulY (.neg (.lit 204)) 1) (.neg (.lit 324)))) 1) (.add (.mulY (.lit 864) 1) (.lit 1944))) 1) (.mulY (.lit 1944) 1)) 1)
def cond_m2_m2Qx_00_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 24)) 1) (.add (.mulY (.neg (.lit 228)) 1) (.lit 1800))) 1) (.add (.mulY (.neg (.lit 540)) 1) (.neg (.lit 648)))) 1) (.mulY (.lit 3240) 1)) 1)
def cond_m2_m2Qx_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 120)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 1278))) 1) (.add (.mulY (.neg (.lit 960)) 1) (.neg (.lit 1782)))) 1) (.add (.mulY (.neg (.lit 258)) 1) (.lit 864))) 1) (.add (.mulY (.lit 2808) 1) (.lit 972)))
def cond_m2_m2Qx_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.lit 36)) 1) (.add (.mulY (.neg (.lit 300)) 1) (.neg (.lit 2016)))) 1) (.add (.mulY (.neg (.lit 2028)) 1) (.lit 2952))) 1) (.add (.mulY (.lit 3600) 1) (.lit 1782)))
def cond_m2_m2Qx_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 1602)))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 2652))) 1) (.add (.mulY (.lit 1734) 1) (.lit 1296)))
def cond_m2_m2Qx_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 684))) 1) (.add (.mulY (.neg (.lit 192)) 1) (.lit 1020))) 1) (.add (.mulY (.lit 372) 1) (.lit 468)))
def cond_m2_m2Qx_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 144)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 180))) 1) (.add (.mulY (.lit 30) 1) (.lit 84)))
def cond_m2_m2Qx_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 12)) 1) (.lit 6))
def cond_m2_m2Qx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 120)))) 1) (.lit 108)) 1) (.mulY (.lit 108) 1)) 1)
def cond_m2_m2Qx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 228)) 1) (.add (.mulY (.neg (.lit 108)) 1) (.neg (.lit 108)))) 1) (.mulY (.lit 108) 1)) 1)
def cond_m2_m2Qx_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 108)))) 1) (.mulY (.neg (.lit 300)) 1)) 1) (.mulY (.lit 324) 1))
def cond_m2_m2Qx_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.neg (.lit 252))) 1) (.add (.mulY (.neg (.lit 192)) 1) (.lit 324))) 1) (.mulY (.lit 216) 1))
def cond_m2_m2Qx_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 144)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 180))) 1) (.add (.mulY (.lit 42) 1) (.lit 12)))
def cond_m2_m2Qx_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 24)) 1) (.lit 6))
def cond_m2_m2Qx_02_00_expr : HExpr := (.add (.mulX (.mulY (.neg (.lit 12)) 1) 1) (.mulY (.lit 12) 1))
def cond_m2_m2Qx_02_01_expr : HExpr := (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 12)) 1)
def cond_m2_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_m2_m2Qx_00_00_expr),(value X Y cond_m2_m2Qx_00_01_expr),(value X Y cond_m2_m2Qx_00_02_expr),(value X Y cond_m2_m2Qx_00_03_expr),(value X Y cond_m2_m2Qx_00_04_expr),(value X Y cond_m2_m2Qx_00_05_expr),(value X Y cond_m2_m2Qx_00_06_expr),(value X Y cond_m2_m2Qx_00_07_expr),(value X Y cond_m2_m2Qx_00_08_expr),(value X Y cond_m2_m2Qx_00_09_expr)],[(value X Y cond_m2_m2Qx_01_00_expr),(value X Y cond_m2_m2Qx_01_01_expr),(value X Y cond_m2_m2Qx_01_02_expr),(value X Y cond_m2_m2Qx_01_03_expr),(value X Y cond_m2_m2Qx_01_04_expr),(value X Y cond_m2_m2Qx_01_05_expr)],[(value X Y cond_m2_m2Qx_02_00_expr),(value X Y cond_m2_m2Qx_02_01_expr)]]

def cond_m2_m2Nf_00_04_expr : HExpr := (.mulX (.mulY (.neg (.lit 8748)) 1) 1)
def cond_m2_m2Nf_00_05_expr : HExpr := (.mulX (.mulY (.lit 1458) 1) 1)
def cond_m2_m2Nf_00_06_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 28188) 1) (.neg (.lit 8748))) 1) (.mulY (.neg (.lit 8748)) 1))
def cond_m2_m2Nf_00_07_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 33372) 1) (.neg (.lit 21870))) 1) (.mulY (.neg (.lit 21870)) 1))
def cond_m2_m2Nf_00_08_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 18036) 1) (.neg (.lit 23328))) 1) (.mulY (.neg (.lit 23328)) 1))
def cond_m2_m2Nf_00_09_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 5202) 1) (.neg (.lit 13770))) 1) (.mulY (.neg (.lit 13770)) 1))
def cond_m2_m2Nf_00_10_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 780) 1) (.neg (.lit 4860))) 1) (.mulY (.neg (.lit 4860)) 1))
def cond_m2_m2Nf_00_11_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 48) 1) (.neg (.lit 1026))) 1) (.mulY (.neg (.lit 1026)) 1))
def cond_m2_m2Nf_00_12_expr : HExpr := (.add (.mulX (.neg (.lit 120)) 1) (.mulY (.neg (.lit 120)) 1))
def cond_m2_m2Nf_00_13_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.mulY (.neg (.lit 6)) 1))
def cond_m2_m2Nf_01_04_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 660) 1) (.neg (.lit 108))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972)))
def cond_m2_m2Nf_01_05_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 834) 1) (.neg (.lit 774))) 1) (.add (.mulY (.neg (.lit 774)) 1) (.lit 1782)))
def cond_m2_m2Nf_01_06_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 348) 1) (.neg (.lit 1020))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 1296)))
def cond_m2_m2Nf_01_07_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 48) 1) (.neg (.lit 546))) 1) (.add (.mulY (.neg (.lit 546)) 1) (.lit 468)))
def cond_m2_m2Nf_01_08_expr : HExpr := (.add (.mulX (.neg (.lit 132)) 1) (.add (.mulY (.neg (.lit 132)) 1) (.lit 84)))
def cond_m2_m2Nf_01_09_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 6)))
def cond_m2_m2Nf_02_04_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 12)))
def cond_m2_m2Nf_02_05_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 6)))
def cond_m2_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_m2Nf_00_04_expr),(value X Y cond_m2_m2Nf_00_05_expr),(value X Y cond_m2_m2Nf_00_06_expr),(value X Y cond_m2_m2Nf_00_07_expr),(value X Y cond_m2_m2Nf_00_08_expr),(value X Y cond_m2_m2Nf_00_09_expr),(value X Y cond_m2_m2Nf_00_10_expr),(value X Y cond_m2_m2Nf_00_11_expr),(value X Y cond_m2_m2Nf_00_12_expr),(value X Y cond_m2_m2Nf_00_13_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_m2Nf_01_04_expr),(value X Y cond_m2_m2Nf_01_05_expr),(value X Y cond_m2_m2Nf_01_06_expr),(value X Y cond_m2_m2Nf_01_07_expr),(value X Y cond_m2_m2Nf_01_08_expr),(value X Y cond_m2_m2Nf_01_09_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_m2_m2Nf_02_04_expr),(value X Y cond_m2_m2Nf_02_05_expr)]]

def cond_m2_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m2_m2Nf X Y)
def cond_m2_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m2_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m2_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m2_m2Qx X Y)) (cond_m2_m2Nf X Y))))
end
end CriticalZeroSumAssembly20261003.Conditional
