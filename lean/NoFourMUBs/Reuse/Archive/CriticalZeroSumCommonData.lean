import NoFourMUBs.Reuse.Archive.CriticalZeroSumPrimitiveData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def commonTerm_00 (X Y z : K) : K := (1728:K)*X^0*Y^0*(remainingModulus X Y z)^0*z^12*(dx X z)^5*(dy Y z)^5*(dz X Y z)^5

def commonCoefficients_00 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1728:K)*X^0*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) ([1]))))))

def commonTerm_01 (X Y z : K) : K := (-1:K)*X^0*Y^0*(remainingModulus X Y z)^0*z^0*(dx X z)^0*(dy Y z)^0*(dz X Y z)^0*primitive_m4_p2 X Y z*primitive_p2_m4 X Y z*primitive_p2_p2 X Y z

def commonCoefficients_01 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-1:K)*X^0*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 0 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m4_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m4 X Y) (Coefficients.mul (primitiveCoefficients_p2_p2 X Y) ([1])))))))))

def commonTerm_02 (X Y z : K) : K := (-2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^4*(dx X z)^3*(dy Y z)^0*(dz X Y z)^3*primitive_m4_p2 X Y z*primitive_p2_m3 X Y z*primitive_p2_p1 X Y z

def commonCoefficients_02 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m4_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m3 X Y) (Coefficients.mul (primitiveCoefficients_p2_p1 X Y) ([1])))))))))

def commonTerm_03 (X Y z : K) : K := (1:K)*X^1*Y^0*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^0*(dz X Y z)^3*primitive_m4_p2 X Y z*primitive_p2_m2 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_03 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m4_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1])))))))))

def commonTerm_04 (X Y z : K) : K := (2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^8*(dx X z)^4*(dy Y z)^0*(dz X Y z)^4*primitive_m4_p2 X Y z*primitive_p2_m1 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_04 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m4_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1])))))))))

def commonTerm_05 (X Y z : K) : K := (2:K)*X^0*Y^2*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p0 X Y z*primitive_p0_p2 X Y z*primitive_p3_m2 X Y z

def commonCoefficients_05 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^2) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p0 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m2 X Y) ([1])))))))))

def commonTerm_06 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p0 X Y z*primitive_p0_p3 X Y z*primitive_p3_m3 X Y z

def commonCoefficients_06 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p0 X Y) (Coefficients.mul (primitiveCoefficients_p0_p3 X Y) (Coefficients.mul (primitiveCoefficients_p3_m3 X Y) ([1])))))))))

def commonTerm_07 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p0 X Y z*primitive_p1_p1 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_07 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p0 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1])))))))))

def commonTerm_08 (X Y z : K) : K := (2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p0 X Y z*primitive_p1_p2 X Y z*primitive_p2_m2 X Y z

def commonCoefficients_08 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p0 X Y) (Coefficients.mul (primitiveCoefficients_p1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) ([1])))))))))

def commonTerm_09 (X Y z : K) : K := (-12:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p0 X Y z*primitive_p3_p0 X Y z

def commonCoefficients_09 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p0 X Y) (Coefficients.mul (primitiveCoefficients_p3_p0 X Y) ([1]))))))))

def commonTerm_10 (X Y z : K) : K := (-2:K)*X^1*Y^2*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p1 X Y z*primitive_p0_p2 X Y z*primitive_p3_m3 X Y z

def commonCoefficients_10 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^2) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p1 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m3 X Y) ([1])))))))))

def commonTerm_11 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^3*(dz X Y z)^0*primitive_m3_p1 X Y z*primitive_p1_m3 X Y z*primitive_p2_p2 X Y z

def commonCoefficients_11 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m3_p1 X Y) (Coefficients.mul (primitiveCoefficients_p1_m3 X Y) (Coefficients.mul (primitiveCoefficients_p2_p2 X Y) ([1])))))))))

def commonTerm_12 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^4*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p1 X Y z*primitive_p1_m2 X Y z*primitive_p2_p1 X Y z

def commonCoefficients_12 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p1 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_p1 X Y) ([1])))))))))

def commonTerm_13 (X Y z : K) : K := (12:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^8*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p1 X Y z*primitive_p3_m1 X Y z

def commonCoefficients_13 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((12:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p1 X Y) (Coefficients.mul (primitiveCoefficients_p3_m1 X Y) ([1]))))))))

def commonTerm_14 (X Y z : K) : K := (2:K)*X^0*Y^2*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p2 X Y z*primitive_p0_m2 X Y z*primitive_p3_p0 X Y z

def commonCoefficients_14 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^2) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p2 X Y) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p3_p0 X Y) ([1])))))))))

def commonTerm_15 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^4*primitive_m3_p2 X Y z*primitive_p1_p1 X Y z*primitive_p2_m3 X Y z

def commonCoefficients_15 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m3_p2 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) (Coefficients.mul (primitiveCoefficients_p2_m3 X Y) ([1])))))))))

def commonTerm_16 (X Y z : K) : K := (-2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^4*(dx X z)^0*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p2 X Y z*primitive_p1_p2 X Y z*primitive_p2_m4 X Y z

def commonCoefficients_16 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p2 X Y) (Coefficients.mul (primitiveCoefficients_p1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m4 X Y) ([1])))))))))

def commonTerm_17 (X Y z : K) : K := (-12:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m3_p2 X Y z*primitive_p3_m2 X Y z

def commonCoefficients_17 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m3_p2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m2 X Y) ([1]))))))))

def commonTerm_18 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p3 X Y z*primitive_p0_m3 X Y z*primitive_p3_p0 X Y z

def commonCoefficients_18 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p3 X Y) (Coefficients.mul (primitiveCoefficients_p0_m3 X Y) (Coefficients.mul (primitiveCoefficients_p3_p0 X Y) ([1])))))))))

def commonTerm_19 (X Y z : K) : K := (-2:K)*X^1*Y^2*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p3 X Y z*primitive_p0_m2 X Y z*primitive_p3_m1 X Y z

def commonCoefficients_19 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^2) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p3 X Y) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m1 X Y) ([1])))))))))

def commonTerm_20 (X Y z : K) : K := (-2:K)*X^2*Y^1*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m3_p3 X Y z*primitive_p1_m3 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_20 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^2*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m3_p3 X Y) (Coefficients.mul (primitiveCoefficients_p1_m3 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1])))))))))

def commonTerm_21 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m3_p3 X Y z*primitive_p1_m2 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_21 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m3_p3 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1])))))))))

def commonTerm_22 (X Y z : K) : K := (12:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m3_p3 X Y z*primitive_p3_m3 X Y z

def commonCoefficients_22 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((12:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m3_p3 X Y) (Coefficients.mul (primitiveCoefficients_p3_m3 X Y) ([1]))))))))

def commonTerm_23 (X Y z : K) : K := (-1:K)*X^0*Y^0*(remainingModulus X Y z)^0*z^0*(dx X z)^0*(dy Y z)^0*(dz X Y z)^0*primitive_m2_m2 X Y z*primitive_m2_p4 X Y z*primitive_p4_m2 X Y z

def commonCoefficients_23 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-1:K)*X^0*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 0 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m2_m2 X Y) (Coefficients.mul (primitiveCoefficients_m2_p4 X Y) (Coefficients.mul (primitiveCoefficients_p4_m2 X Y) ([1])))))))))

def commonTerm_24 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^3*(dz X Y z)^0*primitive_m2_m2 X Y z*primitive_m1_p3 X Y z*primitive_p3_m1 X Y z

def commonCoefficients_24 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m2_m2 X Y) (Coefficients.mul (primitiveCoefficients_m1_p3 X Y) (Coefficients.mul (primitiveCoefficients_p3_m1 X Y) ([1])))))))))

def commonTerm_25 (X Y z : K) : K := (1:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^3*(dz X Y z)^0*primitive_m2_m2 X Y z*primitive_p0_p2 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_25 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m2_m2 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1])))))))))

def commonTerm_26 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^8*(dx X z)^4*(dy Y z)^4*(dz X Y z)^0*primitive_m2_m2 X Y z*primitive_p1_p1 X Y z*primitive_p1_p1 X Y z

def commonCoefficients_26 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m2_m2 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) ([1])))))))))

def commonTerm_27 (X Y z : K) : K := (-2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^4*(dx X z)^3*(dy Y z)^0*(dz X Y z)^3*primitive_m2_m1 X Y z*primitive_m2_p3 X Y z*primitive_p4_m2 X Y z

def commonCoefficients_27 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_m1 X Y) (Coefficients.mul (primitiveCoefficients_m2_p3 X Y) (Coefficients.mul (primitiveCoefficients_p4_m2 X Y) ([1])))))))))

def commonTerm_28 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^4*(dy Y z)^3*(dz X Y z)^3*primitive_m2_m1 X Y z*primitive_m1_p2 X Y z*primitive_p3_m1 X Y z

def commonCoefficients_28 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_m1 X Y) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m1 X Y) ([1])))))))))

def commonTerm_29 (X Y z : K) : K := (2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_m1 X Y z*primitive_p0_p3 X Y z*primitive_p2_m2 X Y z

def commonCoefficients_29 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_m1 X Y) (Coefficients.mul (primitiveCoefficients_p0_p3 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) ([1])))))))))

def commonTerm_30 (X Y z : K) : K := (-12:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^8*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m2_m1 X Y z*primitive_p2_p1 X Y z

def commonCoefficients_30 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_m1 X Y) (Coefficients.mul (primitiveCoefficients_p2_p1 X Y) ([1]))))))))

def commonTerm_31 (X Y z : K) : K := (1:K)*X^1*Y^0*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^0*(dz X Y z)^3*primitive_m2_p0 X Y z*primitive_m2_p2 X Y z*primitive_p4_m2 X Y z

def commonCoefficients_31 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_p4_m2 X Y) ([1])))))))))

def commonTerm_32 (X Y z : K) : K := (-2:K)*X^2*Y^1*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p0 X Y z*primitive_m1_p3 X Y z*primitive_p3_m3 X Y z

def commonCoefficients_32 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^2*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_m1_p3 X Y) (Coefficients.mul (primitiveCoefficients_p3_m3 X Y) ([1])))))))))

def commonTerm_33 (X Y z : K) : K := (1:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^3*(dy Y z)^3*(dz X Y z)^0*primitive_m2_p0 X Y z*primitive_p0_m2 X Y z*primitive_p2_p2 X Y z

def commonCoefficients_33 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_p2 X Y) ([1])))))))))

def commonTerm_34 (X Y z : K) : K := (6:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p0 X Y z*primitive_p0_p2 X Y z*primitive_p2_m2 X Y z

def commonCoefficients_34 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((6:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) ([1])))))))))

def commonTerm_35 (X Y z : K) : K := (2:K)*X^2*Y^0*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p0 X Y z*primitive_p0_p3 X Y z*primitive_p2_m3 X Y z

def commonCoefficients_35 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^2*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_p0_p3 X Y) (Coefficients.mul (primitiveCoefficients_p2_m3 X Y) ([1])))))))))

def commonTerm_36 (X Y z : K) : K := (-48:K)*X^2*Y^0*(remainingModulus X Y z)^0*z^8*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p0 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_36 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-48:K)*X^2*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p0 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1]))))))))

def commonTerm_37 (X Y z : K) : K := (2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^8*(dx X z)^4*(dy Y z)^0*(dz X Y z)^4*primitive_m2_p1 X Y z*primitive_m2_p1 X Y z*primitive_p4_m2 X Y z

def commonCoefficients_37 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_p4_m2 X Y) ([1])))))))))

def commonTerm_38 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^5*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p1 X Y z*primitive_m1_m1 X Y z*primitive_p3_p0 X Y z

def commonCoefficients_38 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_p3_p0 X Y) ([1])))))))))

def commonTerm_39 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m2_p1 X Y z*primitive_m1_p2 X Y z*primitive_p3_m3 X Y z

def commonCoefficients_39 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m3 X Y) ([1])))))))))

def commonTerm_40 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^4*(dz X Y z)^3*primitive_m2_p1 X Y z*primitive_p1_m3 X Y z*primitive_p1_p2 X Y z

def commonCoefficients_40 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_p1_m3 X Y) (Coefficients.mul (primitiveCoefficients_p1_p2 X Y) ([1])))))))))

def commonTerm_41 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^12*(dx X z)^4*(dy Y z)^4*(dz X Y z)^4*primitive_m2_p1 X Y z*primitive_p1_m2 X Y z*primitive_p1_p1 X Y z

def commonCoefficients_41 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) ([1])))))))))

def commonTerm_42 (X Y z : K) : K := (24:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^12*(dx X z)^5*(dy Y z)^3*(dz X Y z)^5*primitive_m2_p1 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_42 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((24:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m2_p1 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1]))))))))

def commonTerm_43 (X Y z : K) : K := (2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p2 X Y z*primitive_m1_m2 X Y z*primitive_p3_p0 X Y z

def commonCoefficients_43 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_m1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p3_p0 X Y) ([1])))))))))

def commonTerm_44 (X Y z : K) : K := (2:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p2 X Y z*primitive_p0_m3 X Y z*primitive_p2_p1 X Y z

def commonCoefficients_44 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_p0_m3 X Y) (Coefficients.mul (primitiveCoefficients_p2_p1 X Y) ([1])))))))))

def commonTerm_45 (X Y z : K) : K := (6:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p2 X Y z*primitive_p0_m2 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_45 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((6:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1])))))))))

def commonTerm_46 (X Y z : K) : K := (1:K)*X^0*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^0*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p2 X Y z*primitive_p0_p2 X Y z*primitive_p2_m4 X Y z

def commonCoefficients_46 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m4 X Y) ([1])))))))))

def commonTerm_47 (X Y z : K) : K := (-48:K)*X^0*Y^0*(remainingModulus X Y z)^0*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m2_p2 X Y z*primitive_p2_m2 X Y z

def commonCoefficients_47 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-48:K)*X^0*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m2_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) ([1]))))))))

def commonTerm_48 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^4*primitive_m2_p3 X Y z*primitive_m1_m1 X Y z*primitive_p3_m2 X Y z

def commonCoefficients_48 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m2_p3 X Y) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_p3_m2 X Y) ([1])))))))))

def commonTerm_49 (X Y z : K) : K := (2:K)*X^2*Y^0*(remainingModulus X Y z)^1*z^6*(dx X z)^3*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p3 X Y z*primitive_p0_m3 X Y z*primitive_p2_p0 X Y z

def commonCoefficients_49 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^2*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 6 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p3 X Y) (Coefficients.mul (primitiveCoefficients_p0_m3 X Y) (Coefficients.mul (primitiveCoefficients_p2_p0 X Y) ([1])))))))))

def commonTerm_50 (X Y z : K) : K := (-12:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^3*(dz X Y z)^5*primitive_m2_p3 X Y z*primitive_p2_m3 X Y z

def commonCoefficients_50 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m2_p3 X Y) (Coefficients.mul (primitiveCoefficients_p2_m3 X Y) ([1]))))))))

def commonTerm_51 (X Y z : K) : K := (-2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^4*(dx X z)^0*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p4 X Y z*primitive_m1_m2 X Y z*primitive_p3_m2 X Y z

def commonCoefficients_51 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p4 X Y) (Coefficients.mul (primitiveCoefficients_m1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p3_m2 X Y) ([1])))))))))

def commonTerm_52 (X Y z : K) : K := (1:K)*X^0*Y^1*(remainingModulus X Y z)^0*z^4*(dx X z)^0*(dy Y z)^3*(dz X Y z)^3*primitive_m2_p4 X Y z*primitive_p0_m2 X Y z*primitive_p2_m2 X Y z

def commonCoefficients_52 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((1:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 4 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m2_p4 X Y) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m2 X Y) ([1])))))))))

def commonTerm_53 (X Y z : K) : K := (2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^0*(dy Y z)^4*(dz X Y z)^4*primitive_m2_p4 X Y z*primitive_p1_m2 X Y z*primitive_p1_m2 X Y z

def commonCoefficients_53 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m2_p4 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) ([1])))))))))

def commonTerm_54 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^4*(dz X Y z)^3*primitive_m1_m2 X Y z*primitive_m1_p3 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_54 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_m2 X Y) (Coefficients.mul (primitiveCoefficients_m1_p3 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1])))))))))

def commonTerm_55 (X Y z : K) : K := (-12:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_m1_m2 X Y z*primitive_p1_p2 X Y z

def commonCoefficients_55 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_m2 X Y) (Coefficients.mul (primitiveCoefficients_p1_p2 X Y) ([1]))))))))

def commonTerm_56 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^8*(dx X z)^4*(dy Y z)^4*(dz X Y z)^0*primitive_m1_m1 X Y z*primitive_m1_m1 X Y z*primitive_p2_p2 X Y z

def commonCoefficients_56 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 0) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_p2_p2 X Y) ([1])))))))))

def commonTerm_57 (X Y z : K) : K := (2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^12*(dx X z)^4*(dy Y z)^4*(dz X Y z)^4*primitive_m1_m1 X Y z*primitive_m1_p2 X Y z*primitive_p2_m1 X Y z

def commonCoefficients_57 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m1 X Y) ([1])))))))))

def commonTerm_58 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_m1_m1 X Y z*primitive_p0_p3 X Y z*primitive_p1_m2 X Y z

def commonCoefficients_58 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_p0_p3 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) ([1])))))))))

def commonTerm_59 (X Y z : K) : K := (-24:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^12*(dx X z)^5*(dy Y z)^5*(dz X Y z)^3*primitive_m1_m1 X Y z*primitive_p1_p1 X Y z

def commonCoefficients_59 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-24:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_m1 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) ([1]))))))))

def commonTerm_60 (X Y z : K) : K := (2:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^8*(dx X z)^0*(dy Y z)^4*(dz X Y z)^4*primitive_m1_p2 X Y z*primitive_m1_p2 X Y z*primitive_p2_m4 X Y z

def commonCoefficients_60 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((2:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 0) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 4) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 4) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p2_m4 X Y) ([1])))))))))

def commonTerm_61 (X Y z : K) : K := (-2:K)*X^1*Y^1*(remainingModulus X Y z)^1*z^10*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_m1_p2 X Y z*primitive_p0_m3 X Y z*primitive_p1_p1 X Y z

def commonCoefficients_61 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-2:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 10 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p0_m3 X Y) (Coefficients.mul (primitiveCoefficients_p1_p1 X Y) ([1])))))))))

def commonTerm_62 (X Y z : K) : K := (24:K)*X^0*Y^1*(remainingModulus X Y z)^1*z^12*(dx X z)^3*(dy Y z)^5*(dz X Y z)^5*primitive_m1_p2 X Y z*primitive_p1_m2 X Y z

def commonCoefficients_62 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((24:K)*X^0*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 12 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 5) (Coefficients.mul (primitiveCoefficients_m1_p2 X Y) (Coefficients.mul (primitiveCoefficients_p1_m2 X Y) ([1]))))))))

def commonTerm_63 (X Y z : K) : K := (12:K)*X^1*Y^1*(remainingModulus X Y z)^0*z^8*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_m1_p3 X Y z*primitive_p1_m3 X Y z

def commonCoefficients_63 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((12:K)*X^1*Y^1) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_m1_p3 X Y) (Coefficients.mul (primitiveCoefficients_p1_m3 X Y) ([1]))))))))

def commonTerm_64 (X Y z : K) : K := (-12:K)*X^1*Y^0*(remainingModulus X Y z)^1*z^8*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_p0_m3 X Y z*primitive_p0_p3 X Y z

def commonCoefficients_64 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-12:K)*X^1*Y^0) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 1) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_p0_m3 X Y) (Coefficients.mul (primitiveCoefficients_p0_p3 X Y) ([1]))))))))

def commonTerm_65 (X Y z : K) : K := (-48:K)*X^0*Y^2*(remainingModulus X Y z)^0*z^8*(dx X z)^3*(dy Y z)^5*(dz X Y z)^3*primitive_p0_m2 X Y z*primitive_p0_p2 X Y z

def commonCoefficients_65 (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.scale ((-48:K)*X^0*Y^2) (CriticalZeroSplitReduction20261003.Coefficients.shift 8 (Coefficients.mul (Coefficients.pow ([9-X-Y,0,-1]) 0) (Coefficients.mul (Coefficients.pow ([X-9,-3]) 3) (Coefficients.mul (Coefficients.pow ([Y-9,-3]) 5) (Coefficients.mul (Coefficients.pow ([X+Y,3,1]) 3) (Coefficients.mul (primitiveCoefficients_p0_m2 X Y) (Coefficients.mul (primitiveCoefficients_p0_p2 X Y) ([1]))))))))

def allCommonCoefficients (X Y : K) : List K := CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_00 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_01 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_02 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_03 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_04 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_05 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_06 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_07 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_08 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_09 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_10 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_11 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_12 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_13 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_14 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_15 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_16 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_17 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_18 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_19 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_20 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_21 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_22 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_23 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_24 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_25 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_26 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_27 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_28 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_29 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_30 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_31 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_32 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_33 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_34 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_35 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_36 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_37 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_38 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_39 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_40 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_41 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_42 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_43 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_44 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_45 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_46 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_47 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_48 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_49 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_50 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_51 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_52 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_53 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_54 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_55 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_56 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_57 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_58 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_59 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_60 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_61 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_62 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_63 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_64 X Y) (CriticalZeroSplitReduction20261003.Coefficients.add (commonCoefficients_65 X Y) ([]))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
end
end CriticalZeroSumAssembly20261003
