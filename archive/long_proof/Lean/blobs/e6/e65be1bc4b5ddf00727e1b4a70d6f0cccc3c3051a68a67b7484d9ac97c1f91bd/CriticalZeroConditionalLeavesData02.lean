import CriticalZeroSumExprPrimitiveBindings02
import CriticalZeroSumExprPrimitiveBindings03
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
def cond_m3_p1Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.neg (.lit 2)) 1) (.add (.mulY (.neg (.lit 2)) 1) (.lit 14))) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_m3_p1Qy_00_02_expr : HExpr := (.add (.mulX (.neg (.lit 2)) 1) (.lit 2))
def cond_m3_p1Qy (X Y : F) : List (List F) := [[(value X Y cond_m3_p1Qy_00_00_expr),(0 : F),(value X Y cond_m3_p1Qy_00_02_expr)]]

def cond_m3_p1Qx_00_00_expr : HExpr := (.add (.mulX (.lit 2) 1) (.add (.mulY (.lit 2) 1) (.neg (.lit 12))))
def cond_m3_p1Qx_00_02_expr : HExpr := (.lit 2)
def cond_m3_p1Qx (X Y : F) : List (List F) := [[(value X Y cond_m3_p1Qx_00_00_expr),(0 : F),(value X Y cond_m3_p1Qx_00_02_expr)]]

def cond_m3_p1Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 108)))
def cond_m3_p1Nf_00_03_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 18))
def cond_m3_p1Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 24)))
def cond_m3_p1Nf_00_05_expr : HExpr := (.neg (.lit 6))
def cond_m3_p1Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m3_p1Nf_00_02_expr),(value X Y cond_m3_p1Nf_00_03_expr),(value X Y cond_m3_p1Nf_00_04_expr),(value X Y cond_m3_p1Nf_00_05_expr)]]

def cond_m3_p1Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m3_p1Nf X Y)
def cond_m3_p1Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m3_p1 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m3_p1Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m3_p1Qx X Y)) (cond_m3_p1Nf X Y))))
def cond_m3_p2Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 2) 1) (.neg (.lit 8))) 1) (.lit 6))
def cond_m3_p2Qy (X Y : F) : List (List F) := [[(value X Y cond_m3_p2Qy_00_00_expr)]]

def cond_m3_p2Qx_00_00_expr : HExpr := (.add (.mulX (.neg (.lit 2)) 1) (.lit 6))
def cond_m3_p2Qx (X Y : F) : List (List F) := [[(value X Y cond_m3_p2Qx_00_00_expr)]]

def cond_m3_p2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 108)))
def cond_m3_p2Nf_00_03_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 18))
def cond_m3_p2Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 24)))
def cond_m3_p2Nf_00_05_expr : HExpr := (.neg (.lit 6))
def cond_m3_p2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m3_p2Nf_00_02_expr),(value X Y cond_m3_p2Nf_00_03_expr),(value X Y cond_m3_p2Nf_00_04_expr),(value X Y cond_m3_p2Nf_00_05_expr)]]

def cond_m3_p2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m3_p2Nf X Y)
def cond_m3_p2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m3_p2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m3_p2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m3_p2Qx X Y)) (cond_m3_p2Nf X Y))))
def cond_m3_p3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 48)))
def cond_m3_p3Qy_00_02_expr : HExpr := (.mulX (.lit 6) 1)
def cond_m3_p3Qy (X Y : F) : List (List F) := [[(value X Y cond_m3_p3Qy_00_00_expr),(0 : F),(value X Y cond_m3_p3Qy_00_02_expr)]]

def cond_m3_p3Qx_00_00_expr : HExpr := (.add (.mulX (.neg (.lit 6)) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 48)))
def cond_m3_p3Qx_00_02_expr : HExpr := (.neg (.lit 6))
def cond_m3_p3Qx (X Y : F) : List (List F) := [[(value X Y cond_m3_p3Qx_00_00_expr),(0 : F),(value X Y cond_m3_p3Qx_00_02_expr)]]

def cond_m3_p3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 6) 1) (.lit 6)) 1) (.mulY (.lit 6) 1))
def cond_m3_p3Nf_00_03_expr : HExpr := (.add (.mulX (.lit 36) 1) (.add (.mulY (.lit 36) 1) (.neg (.lit 288))))
def cond_m3_p3Nf_00_04_expr : HExpr := (.add (.mulX (.lit 12) 1) (.add (.mulY (.lit 12) 1) (.neg (.lit 150))))
def cond_m3_p3Nf_00_06_expr : HExpr := (.lit 6)
def cond_m3_p3Nf_01_02_expr : HExpr := (.neg (.lit 6))
def cond_m3_p3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_m3_p3Nf_00_02_expr),(value X Y cond_m3_p3Nf_00_03_expr),(value X Y cond_m3_p3Nf_00_04_expr),(0 : F),(value X Y cond_m3_p3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_m3_p3Nf_01_02_expr)]]

def cond_m3_p3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_m3_p3Nf X Y)
def cond_m3_p3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_m3_p3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_m3_p3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_m3_p3Qx X Y)) (cond_m3_p3Nf X Y))))
def cond_p0_m2Qy_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.neg (.lit 12)))
def cond_p0_m2Qy (X Y : F) : List (List F) := [[(value X Y cond_p0_m2Qy_00_00_expr)]]

def cond_p0_m2Qx_00_00_expr : HExpr := (.neg (.lit 12))
def cond_p0_m2Qx (X Y : F) : List (List F) := [[(value X Y cond_p0_m2Qx_00_00_expr)]]

def cond_p0_m2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 108)))
def cond_p0_m2Nf_00_03_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 18))
def cond_p0_m2Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 24)))
def cond_p0_m2Nf_00_05_expr : HExpr := (.neg (.lit 6))
def cond_p0_m2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p0_m2Nf_00_02_expr),(value X Y cond_p0_m2Nf_00_03_expr),(value X Y cond_p0_m2Nf_00_04_expr),(value X Y cond_p0_m2Nf_00_05_expr)]]

def cond_p0_m2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p0_m2Nf X Y)
def cond_p0_m2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p0_m2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p0_m2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p0_m2Qx X Y)) (cond_p0_m2Nf X Y))))
def cond_p0_m3Qy_00_00_expr : HExpr := (.add (.mulX (.add (.mulY (.lit 6) 1) (.neg (.lit 6))) 1) (.add (.mulY (.neg (.lit 6)) 1) (.lit 6)))
def cond_p0_m3Qy_00_02_expr : HExpr := (.neg (.lit 6))
def cond_p0_m3Qy (X Y : F) : List (List F) := [[(value X Y cond_p0_m3Qy_00_00_expr),(0 : F),(value X Y cond_p0_m3Qy_00_02_expr)]]

def cond_p0_m3Qx_00_00_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 6))
def cond_p0_m3Qx (X Y : F) : List (List F) := [[(value X Y cond_p0_m3Qx_00_00_expr)]]

def cond_p0_m3Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54))))
def cond_p0_m3Nf_00_03_expr : HExpr := (.add (.mulY (.lit 36) 1) (.neg (.lit 36)))
def cond_p0_m3Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 12) 1) (.lit 48)))
def cond_p0_m3Nf_00_05_expr : HExpr := (.lit 36)
def cond_p0_m3Nf_00_06_expr : HExpr := (.lit 6)
def cond_p0_m3Nf_01_02_expr : HExpr := (.lit 6)
def cond_p0_m3Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p0_m3Nf_00_02_expr),(value X Y cond_p0_m3Nf_00_03_expr),(value X Y cond_p0_m3Nf_00_04_expr),(value X Y cond_p0_m3Nf_00_05_expr),(value X Y cond_p0_m3Nf_00_06_expr)],[(0 : F),(0 : F),(value X Y cond_p0_m3Nf_01_02_expr)]]

def cond_p0_m3Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p0_m3Nf X Y)
def cond_p0_m3Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p0_m3 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p0_m3Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p0_m3Qx X Y)) (cond_p0_m3Nf X Y))))
def cond_p0_p2Qy_00_00_expr : HExpr := (.add (.mulX (.lit 12) 1) (.neg (.lit 12)))
def cond_p0_p2Qy (X Y : F) : List (List F) := [[(value X Y cond_p0_p2Qy_00_00_expr)]]

def cond_p0_p2Qx_00_00_expr : HExpr := (.neg (.lit 12))
def cond_p0_p2Qx (X Y : F) : List (List F) := [[(value X Y cond_p0_p2Qx_00_00_expr)]]

def cond_p0_p2Nf_00_02_expr : HExpr := (.add (.mulX (.add (.mulX (.lit 6) 1) (.add (.mulY (.lit 6) 1) (.neg (.lit 54)))) 1) (.add (.mulY (.neg (.lit 18)) 1) (.lit 108)))
def cond_p0_p2Nf_00_03_expr : HExpr := (.add (.mulY (.neg (.lit 6)) 1) (.lit 18))
def cond_p0_p2Nf_00_04_expr : HExpr := (.add (.mulX (.lit 6) 1) (.neg (.lit 24)))
def cond_p0_p2Nf_00_05_expr : HExpr := (.neg (.lit 6))
def cond_p0_p2Nf (X Y : F) : List (List F) := [[(0 : F),(0 : F),(value X Y cond_p0_p2Nf_00_02_expr),(value X Y cond_p0_p2Nf_00_03_expr),(value X Y cond_p0_p2Nf_00_04_expr),(value X Y cond_p0_p2Nf_00_05_expr)]]

def cond_p0_p2Normal (X Y z K : F) : F :=
  CriticalZeroSplitReduction20261003.Coefficients.eval2 K z (cond_p0_p2Nf X Y)
def cond_p0_p2Certificate (X Y : F) : List (List F) :=
  CriticalZeroSplitReduction20261003.Coefficients.add2 [primitiveCoefficients_p0_p2 X Y]
    (CriticalZeroSplitReduction20261003.Coefficients.neg2
      (CriticalZeroSplitReduction20261003.Coefficients.add2
        (CriticalZeroSplitReduction20261003.Coefficients.mulFy X Y (cond_p0_p2Qy X Y))
        (CriticalZeroSplitReduction20261003.Coefficients.add2
          (CriticalZeroSplitReduction20261003.Coefficients.mulFx X (cond_p0_p2Qx X Y)) (cond_p0_p2Nf X Y))))
end
end CriticalZeroSumAssembly20261003.Conditional
