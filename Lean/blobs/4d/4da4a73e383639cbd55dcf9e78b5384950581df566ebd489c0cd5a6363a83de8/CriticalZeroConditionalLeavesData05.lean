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
def cond_p3_m1Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 2)) 1) (.add (.mulY (.neg (.lit 2)) 1) (.lit 14))) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_p3_m1Qy_00_02_expr : HExpr := (.add (.mulX (.neg (.lit 2)) 1) (.lit 2))
def cond_p3_m1Qy (X Y : F) : List (List F) := [[(value X Y cond_p3_m1Qy_00_00_expr),(0 : F),(value X Y cond_p3_m1Qy_00_02_expr)]]

def cond_p3_m1Qx_00_00_expr : HExpr := (.add (.mulX (.lit 2) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_p3_m1Qx_00_02_expr : HExpr := (.lit 2)
def cond_p3_m1Qx (X Y : F) : List (List F) := [[(value X Y cond_p3_m1Qx_00_00_expr),(0 : F),(value X Y cond_p3_m1Qx_00_02_expr)]]

def cond_p3_m1Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 108)))
def cond_p3_m1Nf_00_03_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 18))
def cond_p3_m1Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 24)))
def cond_p3_m1Nf_00_05_expr : HExpr := (.neg (.lit 6))
def cond_p3_m1Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p3_m1Nf_00_02_expr),(value X Y cond_p3_m1Nf_00_03_expr),(value X Y cond_p3_m1Nf_00_04_expr),(value X Y cond_p3_m1Nf_00_05_expr)]]

def cond_p3_m1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p3_m1Nf X Y)
def cond_p3_m1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p3_m1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p3_m1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p3_m1Qx X Y)) (cond_p3_m1Nf X Y))))
def cond_p3_m2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 2)) 1) (.lit 8)) 1) (.neg (.lit 6)))
def cond_p3_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_p3_m2Qy_00_00_expr)]]

def cond_p3_m2Qx_00_00_expr : HExpr := (.add (.mulX (.lit 2) 1) (.neg (.lit 6)))
def cond_p3_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_p3_m2Qx_00_00_expr)]]

def cond_p3_m2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 54))) 1) (.add (.mulY (.lit 18) 1) (.neg (.lit 108))))
def cond_p3_m2Nf_00_03_expr : HExpr := (.add (.mulY (.lit 6) 1) (.neg (.lit 18)))
def cond_p3_m2Nf_00_04_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 24))
def cond_p3_m2Nf_00_05_expr : HExpr := (.lit 6)
def cond_p3_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p3_m2Nf_00_02_expr),(value X Y cond_p3_m2Nf_00_03_expr),(value X Y cond_p3_m2Nf_00_04_expr),(value X Y cond_p3_m2Nf_00_05_expr)]]

def cond_p3_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p3_m2Nf X Y)
def cond_p3_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p3_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p3_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p3_m2Qx X Y)) (cond_p3_m2Nf X Y))))
def cond_p3_m3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 48)))
def cond_p3_m3Qy_00_02_expr : HExpr := (.mulX (.lit 6) 1)
def cond_p3_m3Qy (X Y : F) : List (List F) := [[(value X Y cond_p3_m3Qy_00_00_expr),(0 : F),(value X Y cond_p3_m3Qy_00_02_expr)]]

def cond_p3_m3Qx_00_00_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 48)))
def cond_p3_m3Qx_00_02_expr : HExpr := (.neg (.lit 6))
def cond_p3_m3Qx (X Y : F) : List (List F) := [[(value X Y cond_p3_m3Qx_00_00_expr),(0 : F),(value X Y cond_p3_m3Qx_00_02_expr)]]

def cond_p3_m3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 6) 1) (.lit 6)) 1) (.mulY (.lit 6) 1))
def cond_p3_m3Nf_00_03_expr : HExpr := (.add (.mulX (.lit 36) 1) (.add (.mulY (.lit 36) 1) (.neg (.lit 288))))
def cond_p3_m3Nf_00_04_expr : HExpr := (.add (.mulX (.lit 12) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 150))))
def cond_p3_m3Nf_00_06_expr : HExpr := (.lit 6)
def cond_p3_m3Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_p3_m3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p3_m3Nf_00_02_expr),(value X Y cond_p3_m3Nf_00_03_expr),(value X Y cond_p3_m3Nf_00_04_expr),(0 : F),(value X Y cond_p3_m3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_p3_m3Nf_01_02_expr)]]

def cond_p3_m3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p3_m3Nf X Y)
def cond_p3_m3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p3_m3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p3_m3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p3_m3Qx X Y)) (cond_p3_m3Nf X Y))))
def cond_p3_p0Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.neg (.lit 12))) 1) (.lit 6))
def cond_p3_p0Qy (X Y : F) : List (List F) := [[(value X Y cond_p3_p0Qy_00_00_expr)]]

def cond_p3_p0Qx_00_00_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.lit 6))
def cond_p3_p0Qx (X Y : F) : List (List F) := [[(value X Y cond_p3_p0Qx_00_00_expr)]]

def cond_p3_p0Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 6)) 1) (.lit 60)) 1) (.neg (.lit 54)))
def cond_p3_p0Nf_00_03_expr : HExpr := (.add (.mulX (.lit 36) 1) (.neg (.lit 36)))
def cond_p3_p0Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 6)))
def cond_p3_p0Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p3_p0Nf_00_02_expr),(value X Y cond_p3_p0Nf_00_03_expr),(value X Y cond_p3_p0Nf_00_04_expr)]]

def cond_p3_p0Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p3_p0Nf X Y)
def cond_p3_p0Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p3_p0 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p3_p0Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p3_p0Qx X Y)) (cond_p3_p0Nf X Y))))
def cond_p4_m2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 108)))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 972)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 36) 1) (.neg (.lit 480))) 1) (.lit 456)) 1) (.lit 8532))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 36) 1) (.neg (.lit 852))) 1) (.lit 6636)) 1) (.neg (.lit 17388))) 1) (.lit 3888))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 396))) 1) (.lit 4704)) 1) (.neg (.lit 23652))) 1) (.lit 43740)) 1) (.neg (.lit 17496)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 684)) 1) (.neg (.lit 6804))) 1) (.lit 26244)) 1) (.neg (.lit 26244))) 1)) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 324))) 1) (.lit 2916)) 1) (.neg (.lit 8748))) 2))
def cond_p4_m2Qy_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.lit 12) 1) (.lit 324))) 1) (.add (.mulY (.neg (.lit 216)) 1) (.neg (.lit 2916)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 84))) 1) (.lit 2148)) 1) (.lit 8640))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 156)) 1) (.lit 948)) 1) (.neg (.lit 12636))) 1) (.lit 1944))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 240))) 1) (.neg (.lit 1836))) 1) (.lit 19440)) 1) (.neg (.lit 8748)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 108)) 1) (.lit 972)) 1) (.neg (.lit 8748))) 1)) 1)
def cond_p4_m2Qy_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.mulY (.neg (.lit 24)) 1)) 1) (.add (.mulY (.lit 312) 1) (.neg (.lit 3996)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 60) 1) (.neg (.lit 1056))) 1) (.lit 4044)) 1) (.lit 7344))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 36) 1) (.neg (.lit 996))) 1) (.lit 9372)) 1) (.neg (.lit 32508))) 1) (.lit 23328))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 72)) 1) (.lit 1692)) 1) (.neg (.lit 13176))) 1) (.lit 35964)) 1) (.neg (.lit 17496)))) 1) (.mulY (.add (.mulY (.add (.mulY (.add (.mulY (.lit 36) 1) (.neg (.lit 756))) 1) (.lit 4860)) 1) (.neg (.lit 8748))) 1))
def cond_p4_m2Qy_00_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 24) 1) (.lit 360))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 168))) 1) (.neg (.lit 684)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 36))) 1) (.lit 3576)) 1) (.neg (.lit 8964)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 72)) 1) (.lit 2244)) 1) (.neg (.lit 18072))) 1) (.lit 33372))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 168) 1) (.neg (.lit 3492))) 1) (.lit 20088)) 1) (.neg (.lit 20412)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 72)) 1) (.lit 1296)) 1) (.neg (.lit 5832))) 1))
def cond_p4_m2Qy_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 84)) 1) (.add (.mulY (.lit 48) 1) (.lit 2226))) 1) (.add (.mulY (.add (.mulY (.lit 60) 1) (.lit 246)) 1) (.neg (.lit 11028)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 636))) 1) (.lit 4362)) 1) (.neg (.lit 6210)))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 42)) 1) (.lit 768)) 1) (.neg (.lit 6318))) 1) (.lit 26244))) 1) (.add (.mulY (.add (.mulY (.lit 6) 2) (.lit 486)) 1) (.neg (.lit 8748))))
def cond_p4_m2Qy_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.add (.mulY (.lit 24) 1) (.lit 564))) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 2148)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 228)) 1) (.lit 4608)) 1) (.neg (.lit 23004)))) 1) (.add (.mulY (.add (.mulY (.lit 360) 1) (.neg (.lit 7848))) 1) (.lit 43254))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 36))) 1) (.lit 2592)) 1) (.neg (.lit 16038))))
def cond_p4_m2Qy_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 84)) 1) (.add (.mulY (.lit 60) 1) (.lit 162))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 984)) 1) (.neg (.lit 8382)))) 1) (.add (.mulY (.add (.mulY (.lit 36) 1) (.neg (.lit 2352))) 1) (.lit 17712))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 48)) 1) (.lit 1728)) 1) (.neg (.lit 10692))))
def cond_p4_m2Qy_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 192)))) 1) (.add (.mulY (.lit 60) 1) (.lit 894))) 1) (.add (.mulY (.neg (.lit 246)) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 504)) 1) (.neg (.lit 2430))))
def cond_p4_m2Qy_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 108)) 1) (.lit 1062)) 1) (.neg (.lit 1758))) 1) (.add (.mulY (.lit 54) 1) (.lit 540)))
def cond_p4_m2Qy_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 204)) 1) (.neg (.lit 420))) 1) (.lit 414))
def cond_p4_m2Qy_00_10_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 30))) 1) (.lit 84))
def cond_p4_m2Qy_00_11_expr : HExpr := (.lit 6)
def cond_p4_m2Qy_01_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 240))) 1) (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 240)) 1)) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 264)) 1) (.neg (.lit 1644))) 1) (.lit 2160))) 1) (.add (.mulY (.add (.mulY (.add (.mulY (.lit 24) 1) (.neg (.lit 456))) 1) (.lit 2376)) 1) (.neg (.lit 1944)))) 1) (.mulY (.add (.mulY (.add (.mulY (.neg (.lit 12)) 1) (.lit 216)) 1) (.neg (.lit 972))) 1))
def cond_p4_m2Qy_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.lit 348))) 1) (.add (.mulY (.add (.mulY (.lit 12) 1) (.neg (.lit 24))) 1) (.neg (.lit 1404)))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 12)) 1) (.lit 2052))) 1) (.add (.mulY (.lit 12) 2) (.neg (.lit 972)))) 1)
def cond_p4_m2Qy_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 48) 1) (.neg (.lit 48))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 552)) 1) (.neg (.lit 3240)))) 1) (.add (.mulY (.add (.mulY (.lit 48) 1) (.neg (.lit 984))) 1) (.lit 5184))) 1) (.add (.mulY (.add (.mulY (.neg (.lit 24)) 1) (.lit 432)) 1) (.neg (.lit 1944))))
def cond_p4_m2Qy_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.lit 12) 1) (.lit 60))) 1) (.add (.mulY (.lit 168) 1) (.neg (.lit 1800)))) 1) (.add (.mulY (.neg (.lit 324)) 1) (.lit 3060))) 1) (.add (.mulY (.lit 144) 1) (.neg (.lit 1296))))
def cond_p4_m2Qy_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 96)) 1) (.add (.mulY (.lit 12) 1) (.lit 270))) 1) (.add (.mulY (.neg (.lit 30)) 1) (.neg (.lit 108)))) 1) (.add (.mulY (.lit 30) 1) (.neg (.lit 162))))
def cond_p4_m2Qy_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.lit 228)) 1) (.neg (.lit 342))) 1) (.add (.mulY (.lit 6) 1) (.lit 90)))
def cond_p4_m2Qy_01_06_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 54))) 1) (.lit 42))
def cond_p4_m2Qy_01_07_expr : HExpr := (.lit 6)
def cond_p4_m2Qy_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 132)))) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 228))) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_p4_m2Qy_02_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 24)) 1) (.neg (.lit 12))) 1)
def cond_p4_m2Qy_02_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 24))) 1) (.lit 12))
def cond_p4_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_p4_m2Qy_00_00_expr),(value X Y cond_p4_m2Qy_00_01_expr),(value X Y cond_p4_m2Qy_00_02_expr),(value X Y cond_p4_m2Qy_00_03_expr),(value X Y cond_p4_m2Qy_00_04_expr),(value X Y cond_p4_m2Qy_00_05_expr),(value X Y cond_p4_m2Qy_00_06_expr),(value X Y cond_p4_m2Qy_00_07_expr),(value X Y cond_p4_m2Qy_00_08_expr),(value X Y cond_p4_m2Qy_00_09_expr),(value X Y cond_p4_m2Qy_00_10_expr),(value X Y cond_p4_m2Qy_00_11_expr)],[(value X Y cond_p4_m2Qy_01_00_expr),(value X Y cond_p4_m2Qy_01_01_expr),(value X Y cond_p4_m2Qy_01_02_expr),(value X Y cond_p4_m2Qy_01_03_expr),(value X Y cond_p4_m2Qy_01_04_expr),(value X Y cond_p4_m2Qy_01_05_expr),(value X Y cond_p4_m2Qy_01_06_expr),(value X Y cond_p4_m2Qy_01_07_expr)],[(value X Y cond_p4_m2Qy_02_00_expr),(value X Y cond_p4_m2Qy_02_01_expr),(value X Y cond_p4_m2Qy_02_02_expr)]]

def cond_p4_m2Qx_00_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.lit 108)) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 972))) 1) (.add (.mulY (.lit 972) 1) (.neg (.lit 8748)))) 3)
def cond_p4_m2Qx_00_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 324))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 2916))) 1) (.add (.mulY (.lit 972) 1) (.neg (.lit 8748)))) 3)
def cond_p4_m2Qx_00_02_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 36)) 1) (.mulY (.neg (.lit 12)) 1)) 1) (.add (.mulY (.neg (.lit 204)) 1) (.lit 3996))) 1) (.add (.mulY (.lit 864) 1) (.neg (.lit 7776)))) 1) (.add (.mulY (.lit 1944) 1) (.neg (.lit 17496)))) 1)
def cond_p4_m2Qx_00_03_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 360))) 1) (.add (.mulY (.neg (.lit 228)) 1) (.lit 684))) 1) (.add (.mulY (.neg (.lit 540)) 1) (.lit 8748))) 1) (.add (.mulY (.lit 3240) 1) (.neg (.lit 29160)))) 1)
def cond_p4_m2Qx_00_04_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 84) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 2226)))) 1) (.add (.mulY (.neg (.lit 960)) 1) (.lit 11028))) 1) (.add (.mulY (.neg (.lit 258)) 1) (.lit 6210))) 1) (.add (.mulY (.lit 2808) 1) (.neg (.lit 26244))))
def cond_p4_m2Qx_00_05_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 36) 1) (.neg (.lit 564))) 1) (.add (.mulY (.neg (.lit 300)) 1) (.lit 2148))) 1) (.add (.mulY (.neg (.lit 2028)) 1) (.lit 22140))) 1) (.add (.mulY (.lit 3600) 1) (.neg (.lit 34182))))
def cond_p4_m2Qx_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 84) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 162)))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 8004))) 1) (.add (.mulY (.lit 1734) 1) (.neg (.lit 14094))))
def cond_p4_m2Qx_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.lit 192)) 1) (.add (.mulY (.neg (.lit 192)) 1) (.neg (.lit 948)))) 1) (.add (.mulY (.lit 372) 1) (.neg (.lit 216))))
def cond_p4_m2Qx_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 108) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 1062)))) 1) (.add (.mulY (.lit 30) 1) (.lit 1380)))
def cond_p4_m2Qx_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 204))) 1) (.lit 366))
def cond_p4_m2Qx_00_10_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.lit 30))
def cond_p4_m2Qx_01_00_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 24)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 228))) 2) (.add (.mulY (.lit 108) 1) (.neg (.lit 972)))) 1)
def cond_p4_m2Qx_01_01_expr : HExpr := (.mulX (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 336))) 1) (.add (.mulY (.neg (.lit 108)) 1) (.lit 1188))) 1) (.add (.mulY (.lit 108) 1) (.neg (.lit 972)))) 1)
def cond_p4_m2Qx_01_02_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.neg (.lit 48)) 1) (.add (.mulY (.neg (.lit 24)) 1) (.lit 24))) 1) (.add (.mulY (.neg (.lit 300)) 1) (.lit 3132))) 1) (.add (.mulY (.lit 324) 1) (.neg (.lit 2916))))
def cond_p4_m2Qx_01_03_expr : HExpr := (.add (.mulX (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 48))) 1) (.add (.mulY (.neg (.lit 192)) 1) (.lit 1728))) 1) (.add (.mulY (.lit 216) 1) (.neg (.lit 1944))))
def cond_p4_m2Qx_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 96) 1) (.add (.mulY (.neg (.lit 24)) 1) (.neg (.lit 222)))) 1) (.add (.mulY (.lit 42) 1) (.neg (.lit 66))))
def cond_p4_m2Qx_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 24) 1) (.neg (.lit 216))) 1) (.lit 210))
def cond_p4_m2Qx_01_06_expr : HExpr := (.add (.mulX (.neg (.lit 24)) 1) (.lit 42))
def cond_p4_m2Qx_02_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 12)) 1) (.add (.mulY (.neg (.lit 12)) 1) (.lit 120))) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 108))))
def cond_p4_m2Qx_02_01_expr : HExpr := (.mulX (.add (.mulX (.lit 12) 1) (.neg (.lit 12))) 1)
def cond_p4_m2Qx_02_02_expr : HExpr := (.add (.mulX (.neg (.lit 12)) 1) (.lit 12))
def cond_p4_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_p4_m2Qx_00_00_expr),(value X Y cond_p4_m2Qx_00_01_expr),(value X Y cond_p4_m2Qx_00_02_expr),(value X Y cond_p4_m2Qx_00_03_expr),(value X Y cond_p4_m2Qx_00_04_expr),(value X Y cond_p4_m2Qx_00_05_expr),(value X Y cond_p4_m2Qx_00_06_expr),(value X Y cond_p4_m2Qx_00_07_expr),(value X Y cond_p4_m2Qx_00_08_expr),(value X Y cond_p4_m2Qx_00_09_expr),(value X Y cond_p4_m2Qx_00_10_expr)],[(value X Y cond_p4_m2Qx_01_00_expr),(value X Y cond_p4_m2Qx_01_01_expr),(value X Y cond_p4_m2Qx_01_02_expr),(value X Y cond_p4_m2Qx_01_03_expr),(value X Y cond_p4_m2Qx_01_04_expr),(value X Y cond_p4_m2Qx_01_05_expr),(value X Y cond_p4_m2Qx_01_06_expr)],[(value X Y cond_p4_m2Qx_02_00_expr),(value X Y cond_p4_m2Qx_02_01_expr),(value X Y cond_p4_m2Qx_02_02_expr)]]

def cond_p4_m2Nf_00_04_expr : HExpr := (.mulX (.add (.mulX (.neg (.lit 8748)) 1) (.add (.mulY (.neg (.lit 8748)) 1) (.lit 78732))) 1)
def cond_p4_m2Nf_00_05_expr : HExpr := (.mulX (.add (.mulX (.lit 1458) 1) (.add (.mulY (.lit 1458) 1) (.neg (.lit 13122)))) 1)
def cond_p4_m2Nf_00_06_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 28188) 1) (.add (.mulY (.lit 28188) 1) (.neg (.lit 262440)))) 1) (.add (.mulY (.neg (.lit 8748)) 1) (.lit 78732)))
def cond_p4_m2Nf_00_07_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 33372) 1) (.add (.mulY (.lit 33372) 1) (.neg (.lit 298890)))) 1) (.add (.mulY (.neg (.lit 21870)) 1) (.lit 196830)))
def cond_p4_m2Nf_00_08_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 18036) 1) (.add (.mulY (.lit 18036) 1) (.neg (.lit 134136)))) 1) (.add (.mulY (.neg (.lit 23328)) 1) (.lit 201204)))
def cond_p4_m2Nf_00_09_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 5202) 1) (.add (.mulY (.lit 5202) 1) (.neg (.lit 13446)))) 1) (.add (.mulY (.neg (.lit 13770)) 1) (.lit 102060)))
def cond_p4_m2Nf_00_10_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 780) 1) (.add (.mulY (.lit 780) 1) (.lit 11016))) 1) (.add (.mulY (.neg (.lit 4860)) 1) (.lit 20412)))
def cond_p4_m2Nf_00_11_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 48) 1) (.add (.mulY (.lit 48) 1) (.lit 4770))) 1) (.add (.mulY (.neg (.lit 1026)) 1) (.neg (.lit 4536))))
def cond_p4_m2Nf_00_12_expr : HExpr := (.add (.mulX (.lit 780) 1) (.add (.mulY (.neg (.lit 120)) 1) (.neg (.lit 3780))))
def cond_p4_m2Nf_00_13_expr : HExpr := (.add (.mulX (.lit 48) 1) (.add (.mulY (.neg (.lit 6)) 1) (.neg (.lit 972))))
def cond_p4_m2Nf_00_14_expr : HExpr := (.neg (.lit 120))
def cond_p4_m2Nf_00_15_expr : HExpr := (.neg (.lit 6))
def cond_p4_m2Nf_01_04_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 660) 1) (.add (.mulY (.lit 660) 1) (.neg (.lit 5940)))) 1) (.mulY (.neg (.lit 108)) 1))
def cond_p4_m2Nf_01_05_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 834) 1) (.add (.mulY (.lit 834) 1) (.neg (.lit 7506)))) 1) (.add (.mulY (.neg (.lit 774)) 1) (.lit 5184)))
def cond_p4_m2Nf_01_06_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 348) 1) (.add (.mulY (.lit 348) 1) (.neg (.lit 2472)))) 1) (.add (.mulY (.neg (.lit 1020)) 1) (.lit 7776)))
def cond_p4_m2Nf_01_07_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 48) 1) (.add (.mulY (.lit 48) 1) (.lit 402))) 1) (.add (.mulY (.neg (.lit 546)) 1) (.lit 3672)))
def cond_p4_m2Nf_01_08_expr : HExpr := (.add (.mulX (.lit 348) 1) (.add (.mulY (.neg (.lit 132)) 1) (.lit 84)))
def cond_p4_m2Nf_01_09_expr : HExpr := (.add (.mulX (.lit 48) 1) (.add (.mulY (.neg (.lit 12)) 1) (.neg (.lit 444))))
def cond_p4_m2Nf_01_10_expr : HExpr := (.neg (.lit 132))
def cond_p4_m2Nf_01_11_expr : HExpr := (.neg (.lit 12))
def cond_p4_m2Nf_02_04_expr : HExpr := (.add (.mulY (.neg (.lit 12)) 1) (.lit 96))
def cond_p4_m2Nf_02_05_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 48))
def cond_p4_m2Nf_02_06_expr : HExpr := (.neg (.lit 12))
def cond_p4_m2Nf_02_07_expr : HExpr := (.neg (.lit 6))
def cond_p4_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p4_m2Nf_00_04_expr),(value X Y cond_p4_m2Nf_00_05_expr),(value X Y cond_p4_m2Nf_00_06_expr),(value X Y cond_p4_m2Nf_00_07_expr),(value X Y cond_p4_m2Nf_00_08_expr),(value X Y cond_p4_m2Nf_00_09_expr),(value X Y cond_p4_m2Nf_00_10_expr),(value X Y cond_p4_m2Nf_00_11_expr),(value X Y cond_p4_m2Nf_00_12_expr),(value X Y cond_p4_m2Nf_00_13_expr),(value X Y cond_p4_m2Nf_00_14_expr),(value X Y cond_p4_m2Nf_00_15_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p4_m2Nf_01_04_expr),(value X Y cond_p4_m2Nf_01_05_expr),(value X Y cond_p4_m2Nf_01_06_expr),(value X Y cond_p4_m2Nf_01_07_expr),(value X Y cond_p4_m2Nf_01_08_expr),(value X Y cond_p4_m2Nf_01_09_expr),(value X Y cond_p4_m2Nf_01_10_expr),(value X Y cond_p4_m2Nf_01_11_expr)],[(0 : F),(0 : F),(0 : F),(0 : F),(value X Y cond_p4_m2Nf_02_04_expr),(value X Y cond_p4_m2Nf_02_05_expr),(value X Y cond_p4_m2Nf_02_06_expr),(value X Y cond_p4_m2Nf_02_07_expr)]]

def cond_p4_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p4_m2Nf X Y)
def cond_p4_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p4_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p4_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p4_m2Qx X Y)) (cond_p4_m2Nf X Y))))
end
end CriticalZeroSumAssembly20261003.Conditional
