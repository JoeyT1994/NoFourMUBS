import CriticalZeroSumCoefficientOps
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def dx (X z : K) : K := X-3*z-9
def dy (Y z : K) : K := Y-3*z-9
def dz (X Y z : K) : K := X+Y+z^2+3*z
def remainingModulus (X Y z : K) : K := 9-z^2-X-Y
def commonDenominator (X Y z : K) : K := z^12*(dx X z)^5*(dy Y z)^5*(dz X Y z)^5
def primitive_m4_p2_coefficient_00 (X Y : K) : K := ((((((((((24 : K)*Y+(-264 : K))*Y+(456 : K))*Y+(-216 : K))*X+(((((72 : K)*Y+(-1440 : K))*Y+(8496 : K))*Y+(-12960 : K))*Y+(5832 : K)))*X+((((((84 : K)*Y+(-2376 : K))*Y+(23784 : K))*Y+(-96336 : K))*Y+(127332 : K))*Y+(-52488 : K)))*X+(((((((48 : K)*Y+(-1704 : K))*Y+(23256 : K))*Y+(-149904 : K))*Y+(443232 : K))*Y+(-472392 : K))*Y+(157464 : K)))*X+((((((((12 : K)*Y+(-528 : K))*Y+(9180 : K))*Y+(-79272 : K))*Y+(347004 : K))*Y+(-682344 : K))*Y+(393660 : K))*Y))*X+(((((((-24 : K)*Y+(912 : K))*Y+(-13392 : K))*Y+(93312 : K))*Y+(-297432 : K))*Y+(314928 : K))*Y^2))*X+((((((12 : K)*Y+(-432 : K))*Y+(5832 : K))*Y+(-34992 : K))*Y+(78732 : K))*Y^3))

def primitive_m4_p2_coefficient_01 (X Y : K) : K := ((((((((((-12 : K)*Y+(-84 : K))*Y+(204 : K))*Y+(-108 : K))*X+(((((-36 : K)*Y+(72 : K))*Y+(2880 : K))*Y+(-5832 : K))*Y+(2916 : K)))*X+((((((-36 : K)*Y+(420 : K))*Y+(2208 : K))*Y+(-33696 : K))*Y+(57348 : K))*Y+(-26244 : K)))*X+(((((((-12 : K)*Y+(288 : K))*Y+(-924 : K))*Y+(-20736 : K))*Y+(152604 : K))*Y+(-209952 : K))*Y+(78732 : K)))*X+(((((((24 : K)*Y+(-468 : K))*Y+(540 : K))*Y+(35964 : K))*Y+(-201204 : K))*Y+(157464 : K))*Y))*X+(((((-12 : K)*Y+(216 : K))*Y^2+(-17496 : K))*Y+(78732 : K))*Y^2))*X)

def primitive_m4_p2_coefficient_02 (X Y : K) : K := (((((((((72 : K)*Y+(-792 : K))*Y+(1368 : K))*Y+(-648 : K))*X+(((((168 : K)*Y+(-3288 : K))*Y+(18888 : K))*Y+(-27432 : K))*Y+(11664 : K)))*X+((((((144 : K)*Y+(-3912 : K))*Y+(37248 : K))*Y+(-140400 : K))*Y+(159408 : K))*Y+(-52488 : K)))*X+(((((((48 : K)*Y+(-1704 : K))*Y+(22536 : K))*Y+(-134136 : K))*Y+(332424 : K))*Y+(-209952 : K))*Y))*X+((((((-96 : K)*Y+(2856 : K))*Y+(-30456 : K))*Y+(134136 : K))*Y+(-192456 : K))*Y^2))*X+(((((48 : K)*Y+(-1296 : K))*Y+(11664 : K))*Y+(-34992 : K))*Y^3))

def primitive_m4_p2_coefficient_03 (X Y : K) : K := (((((((((-36 : K)*Y+(-252 : K))*Y+(612 : K))*Y+(-324 : K))*X+(((((-72 : K)*Y+(120 : K))*Y+(6432 : K))*Y+(-12312 : K))*Y+(5832 : K)))*X+((((((-36 : K)*Y+(396 : K))*Y+(3960 : K))*Y+(-49032 : K))*Y+(70956 : K))*Y+(-26244 : K)))*X+((((((24 : K)*Y+(648 : K))*Y+(-19008 : K))*Y+(110808 : K))*Y+(-87480 : K))*Y))*X+(((((12 : K)*Y+(-972 : K))*Y+(14580 : K))*Y+(-61236 : K))*Y^2))*X)

def primitive_m4_p2_coefficient_04 (X Y : K) : K := ((((((((84 : K)*Y+(-864 : K))*Y+(1500 : K))*Y+(-1296 : K))*X+(((((144 : K)*Y+(-2616 : K))*Y+(13848 : K))*Y+(-19656 : K))*Y+(17496 : K)))*X+((((((72 : K)*Y+(-1890 : K))*Y+(16602 : K))*Y+(-54702 : K))*Y+(58806 : K))*Y+(-52488 : K)))*X+((((((-138 : K)*Y+(2844 : K))*Y+(-18144 : K))*Y+(37908 : K))*Y+(-39366 : K))*Y))*X+(((((54 : K)*Y+(-810 : K))*Y+(1458 : K))*Y+(13122 : K))*Y^2))

def primitive_m4_p2_coefficient_05 (X Y : K) : K := ((((((((-36 : K)*Y+(-288 : K))*Y+(720 : K))*Y+(-1188 : K))*X+(((((-36 : K)*Y+(-48 : K))*Y+(5088 : K))*Y+(-10800 : K))*Y+(18468 : K)))*X+(((((-60 : K)*Y+(2562 : K))*Y+(-22572 : K))*Y+(47142 : K))*Y+(-52488 : K)))*X+(((((78 : K)*Y+(-2862 : K))*Y+(28674 : K))*Y+(-65610 : K))*Y+(-157464 : K)))*X+((((((-6 : K)*Y+(162 : K))*Y+(-972 : K))*Y+(-4374 : K))*Y+(39366 : K))*Y))

def primitive_m4_p2_coefficient_06 (X Y : K) : K := ((((((18 : K)*Y+(-378 : K))*X+((((48 : K)*Y+(-372 : K))*Y+(-360 : K))*Y+(5292 : K)))*X+(((((48 : K)*Y+(-762 : K))*Y+(2280 : K))*Y+(8100 : K))*Y+(16038 : K)))*X+(((((-78 : K)*Y+(372 : K))*Y+(7506 : K))*Y+(-5832 : K))*Y+(-314928 : K)))*X+(((((-6 : K)*Y+(1026 : K))*Y+(-13122 : K))*Y+(39366 : K))*Y))

def primitive_m4_p2_coefficient_07 (X Y : K) : K := (((((-54 : K)*X+((((-12 : K)*Y+(-156 : K))*Y+(312 : K))*Y+(-864 : K)))*X+((((-96 : K)*Y+(1440 : K))*Y+(-2970 : K))*Y+(38880 : K)))*X+((((12 : K)*Y+(-756 : K))*Y+(33534 : K))*Y+(-231822 : K)))*X+(((((-18 : K)*Y+(486 : K))*Y+(-3402 : K))*Y+(4374 : K))*Y))

def primitive_m4_p2_coefficient_08 (X Y : K) : K := (((((36 : K)*Y+(-756 : K))*X+((((12 : K)*Y+(-30 : K))*Y+(-1272 : K))*Y+(17010 : K)))*X+((((-6 : K)*Y+(-852 : K))*Y+(18792 : K))*Y+(-62694 : K)))*X+((((-24 : K)*Y+(1134 : K))*Y+(-7290 : K))*Y))

def primitive_m4_p2_coefficient_09 (X Y : K) : K := ((((-108 : K)*X+(((-36 : K)*Y+(-60 : K))*Y+(2214 : K)))*X+(((-102 : K)*Y+(3024 : K))*Y+(8748 : K)))*X+((((-18 : K)*Y+(486 : K))*Y+(-2430 : K))*Y))

def primitive_m4_p2_coefficient_10 (X Y : K) : K := ((((18 : K)*Y+(-216 : K))*X+(((6 : K)*Y+(-162 : K))*Y+(9396 : K)))*X+(((18 : K)*Y+(162 : K))*Y))

def primitive_m4_p2_coefficient_11 (X Y : K) : K := (((-54 : K)*X+((-60 : K)*Y+(2106 : K)))*X+(((-6 : K)*Y+(162 : K))*Y))

def primitive_m4_p2_coefficient_12 (X Y : K) : K := ((162 : K)*X+((18 : K)*Y))

def primitiveCoefficients_m4_p2 (X Y : K) : List K := [primitive_m4_p2_coefficient_00 X Y,primitive_m4_p2_coefficient_01 X Y,primitive_m4_p2_coefficient_02 X Y,primitive_m4_p2_coefficient_03 X Y,primitive_m4_p2_coefficient_04 X Y,primitive_m4_p2_coefficient_05 X Y,primitive_m4_p2_coefficient_06 X Y,primitive_m4_p2_coefficient_07 X Y,primitive_m4_p2_coefficient_08 X Y,primitive_m4_p2_coefficient_09 X Y,primitive_m4_p2_coefficient_10 X Y,primitive_m4_p2_coefficient_11 X Y,primitive_m4_p2_coefficient_12 X Y]

def primitive_m4_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m4_p2 X Y)

def primitive_m3_p0_coefficient_00 (X Y : K) : K := (((((-6 : K)*Y+(6 : K))*X+(((-6 : K)*Y+(66 : K))*Y+(-60 : K)))*X+(((12 : K)*Y+(-114 : K))*Y+(54 : K)))*X+(((-6 : K)*Y+(54 : K))*Y))

def primitive_m3_p0_coefficient_02 (X Y : K) : K := ((((-6 : K)*Y+(12 : K))*X+((12 : K)*Y+(-12 : K)))*X+((-6 : K)*Y))

def primitiveCoefficients_m3_p0 (X Y : K) : List K := [primitive_m3_p0_coefficient_00 X Y,0,primitive_m3_p0_coefficient_02 X Y]

def primitive_m3_p0 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m3_p0 X Y)

def primitive_m3_p1_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-4 : K)*Y+(34 : K))*Y+(-30 : K)))*X+((((-2 : K)*Y+(34 : K))*Y+(-156 : K))*Y+(108 : K)))*X+((((2 : K)*Y+(-30 : K))*Y+(108 : K))*Y))

def primitive_m3_p1_coefficient_02 (X Y : K) : K := ((((-4 : K)*Y+(10 : K))*X+(((-4 : K)*Y+(42 : K))*Y+(-66 : K)))*X+(((4 : K)*Y+(-30 : K))*Y))

def primitive_m3_p1_coefficient_03 (X Y : K) : K := ((12 : K)*X+((6 : K)*Y+(-54 : K)))

def primitive_m3_p1_coefficient_04 (X Y : K) : K := (((-2 : K)*Y+(10 : K))*X+((4 : K)*Y+(-18 : K)))

def primitive_m3_p1_coefficient_05 (X Y : K) : K := (6 : K)

def primitive_m3_p1_coefficient_06 (X Y : K) : K := (2 : K)

def primitiveCoefficients_m3_p1 (X Y : K) : List K := [primitive_m3_p1_coefficient_00 X Y,0,primitive_m3_p1_coefficient_02 X Y,primitive_m3_p1_coefficient_03 X Y,primitive_m3_p1_coefficient_04 X Y,primitive_m3_p1_coefficient_05 X Y,primitive_m3_p1_coefficient_06 X Y]

def primitive_m3_p1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m3_p1 X Y)

def primitive_m3_p2_coefficient_00 (X Y : K) : K := (((((2 : K)*Y+(-2 : K))*X+(((2 : K)*Y+(-26 : K))*Y+(24 : K)))*X+(((-8 : K)*Y+(78 : K))*Y+(-54 : K)))*X+(((6 : K)*Y+(-54 : K))*Y))

def primitive_m3_p2_coefficient_02 (X Y : K) : K := ((((2 : K)*Y+(4 : K))*X+((-2 : K)*Y+(-66 : K)))*X+((-12 : K)*Y+(162 : K)))

def primitive_m3_p2_coefficient_03 (X Y : K) : K := ((-12 : K)*X+((-6 : K)*Y+(54 : K)))

def primitive_m3_p2_coefficient_04 (X Y : K) : K := ((4 : K)*X+(-18 : K))

def primitive_m3_p2_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_m3_p2 (X Y : K) : List K := [primitive_m3_p2_coefficient_00 X Y,0,primitive_m3_p2_coefficient_02 X Y,primitive_m3_p2_coefficient_03 X Y,primitive_m3_p2_coefficient_04 X Y,primitive_m3_p2_coefficient_05 X Y]

def primitive_m3_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m3_p2 X Y)

def primitive_m3_p3_coefficient_00 (X Y : K) : K := (((((6 : K)*Y+(-6 : K))*X+(((12 : K)*Y+(-114 : K))*Y+(102 : K)))*X+((((6 : K)*Y+(-114 : K))*Y+(588 : K))*Y+(-432 : K)))*X+((((-6 : K)*Y+(102 : K))*Y+(-432 : K))*Y))

def primitive_m3_p3_coefficient_02 (X Y : K) : K := ((((12 : K)*Y+(-6 : K))*X+(((12 : K)*Y+(-108 : K))*Y))*X+((-6 : K)*Y^2+(432 : K)))

def primitive_m3_p3_coefficient_04 (X Y : K) : K := (((6 : K)*Y+(6 : K))*X+((6 : K)*Y+(-102 : K)))

def primitive_m3_p3_coefficient_06 (X Y : K) : K := (6 : K)

def primitiveCoefficients_m3_p3 (X Y : K) : List K := [primitive_m3_p3_coefficient_00 X Y,0,primitive_m3_p3_coefficient_02 X Y,0,primitive_m3_p3_coefficient_04 X Y,0,primitive_m3_p3_coefficient_06 X Y]

def primitive_m3_p3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m3_p3 X Y)

def primitive_m2_m2_coefficient_00 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*X+((((36 : K)*Y+(-396 : K))*Y+(684 : K))*Y+(-324 : K)))*X+(((((48 : K)*Y+(-984 : K))*Y+(4932 : K))*Y+(-6912 : K))*Y+(2916 : K)))*X+((((((48 : K)*Y+(-1224 : K))*Y+(9924 : K))*Y+(-28188 : K))*Y+(28188 : K))*Y+(-8748 : K)))*X+(((((((36 : K)*Y+(-984 : K))*Y+(9924 : K))*Y+(-43200 : K))*Y+(69984 : K))*Y+(-34992 : K))*Y))*X+(((((((12 : K)*Y+(-396 : K))*Y+(4932 : K))*Y+(-28188 : K))*Y+(69984 : K))*Y+(-52488 : K))*Y^2))*X+((((((-24 : K)*Y+(684 : K))*Y+(-6912 : K))*Y+(28188 : K))*Y+(-34992 : K))*Y^3))*X+(((((12 : K)*Y+(-324 : K))*Y+(2916 : K))*Y+(-8748 : K))*Y^4))

def primitive_m2_m2_coefficient_01 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*Y)*X+(((((36 : K)*Y+(-504 : K))*Y+(900 : K))*Y+(-432 : K))*Y))*X+((((((36 : K)*Y+(-960 : K))*Y+(6864 : K))*Y+(-10800 : K))*Y+(4860 : K))*Y))*X+(((((((12 : K)*Y+(-504 : K))*Y+(6864 : K))*Y+(-34560 : K))*Y+(45684 : K))*Y+(-17496 : K))*Y))*X+((((((-24 : K)*Y+(900 : K))*Y+(-10800 : K))*Y+(45684 : K))*Y+(-34992 : K))*Y^2))*X+(((((12 : K)*Y+(-432 : K))*Y+(4860 : K))*Y+(-17496 : K))*Y^3))*X)

def primitive_m2_m2_coefficient_02 (X Y : K) : K := (((((((((36 : K)*Y+(-72 : K))*Y+(36 : K))*X+((((72 : K)*Y+(-912 : K))*Y+(1488 : K))*Y+(-648 : K)))*X+(((((72 : K)*Y+(-1608 : K))*Y+(8124 : K))*Y+(-9504 : K))*Y+(2916 : K)))*X+((((((72 : K)*Y+(-1608 : K))*Y+(11808 : K))*Y+(-28728 : K))*Y+(17496 : K))*Y))*X+((((((36 : K)*Y+(-912 : K))*Y+(8124 : K))*Y+(-28728 : K))*Y+(29160 : K))*Y^2))*X+(((((-72 : K)*Y+(1488 : K))*Y+(-9504 : K))*Y+(17496 : K))*Y^3))*X+((((36 : K)*Y+(-648 : K))*Y+(2916 : K))*Y^4))

def primitive_m2_m2_coefficient_03 (X Y : K) : K := (((((((((36 : K)*Y+(-120 : K))*Y+(84 : K))*Y)*X+(((((72 : K)*Y+(-1176 : K))*Y+(2832 : K))*Y+(-1728 : K))*Y))*X+((((((36 : K)*Y+(-1176 : K))*Y+(9720 : K))*Y+(-17712 : K))*Y+(8748 : K))*Y))*X+(((((-120 : K)*Y+(2832 : K))*Y+(-17712 : K))*Y+(17496 : K))*Y^2))*X+((((84 : K)*Y+(-1728 : K))*Y+(8748 : K))*Y^3))*X)

def primitive_m2_m2_coefficient_04 (X Y : K) : K := ((((((((36 : K)*Y+(-66 : K))*Y+(18 : K))*X+((((36 : K)*Y+(-660 : K))*Y+(816 : K))*Y))*X+(((((36 : K)*Y+(-804 : K))*Y+(4062 : K))*Y+(-2916 : K))*Y+(-1458 : K)))*X+((((((36 : K)*Y+(-660 : K))*Y+(4062 : K))*Y+(-9288 : K))*Y+(7290 : K))*Y))*X+(((((-66 : K)*Y+(816 : K))*Y+(-2916 : K))*Y+(7290 : K))*Y^2))*X+(((18 : K)*Y^2+(-1458 : K))*Y^3))

def primitive_m2_m2_coefficient_05 (X Y : K) : K := ((((((-6 : K)*X+((((36 : K)*Y+(-180 : K))*Y+(132 : K))*Y+(108 : K)))*X+(((((36 : K)*Y+(-768 : K))*Y+(2358 : K))*Y+(-2214 : K))*Y))*X+(((((-180 : K)*Y+(2358 : K))*Y+(-5292 : K))*Y+(7776 : K))*Y+(-4374 : K)))*X+(((((132 : K)*Y+(-2214 : K))*Y+(7776 : K))*Y+(26244 : K))*Y))*X+((((-6 : K)*Y+(108 : K))*Y^2+(-4374 : K))*Y^2))

def primitive_m2_m2_coefficient_06 (X Y : K) : K := (((((((12 : K)*Y+(-12 : K))*Y+(-24 : K))*X+(((-162 : K)*Y+(-348 : K))*Y+(810 : K)))*X+(((((12 : K)*Y+(-162 : K))*Y+(456 : K))*Y+(1944 : K))*Y+(-4374 : K)))*X+(((((-12 : K)*Y+(-348 : K))*Y+(1944 : K))*Y+(43740 : K))*Y))*X+((((-24 : K)*Y+(810 : K))*Y+(-4374 : K))*Y^2))

def primitive_m2_m2_coefficient_07 (X Y : K) : K := (((((-12 : K)*X+((((12 : K)*Y+(-96 : K))*Y+(12 : K))*Y+(270 : K)))*X+((((-96 : K)*Y+(378 : K))*Y+(-648 : K))*Y+(-972 : K)))*X+((((12 : K)*Y+(-648 : K))*Y+(29646 : K))*Y))*X+((((-12 : K)*Y+(270 : K))*Y+(-972 : K))*Y^2))

def primitive_m2_m2_coefficient_08 (X Y : K) : K := (((((6 : K)*Y)*X+(((-18 : K)*Y+(-378 : K))*Y+(324 : K)))*X+((((6 : K)*Y+(-378 : K))*Y+(10206 : K))*Y))*X+((324 : K)*Y^2))

def primitive_m2_m2_coefficient_09 (X Y : K) : K := ((((-6 : K)*X+(((-12 : K)*Y+(-48 : K))*Y+(162 : K)))*X+(((-48 : K)*Y+(1782 : K))*Y))*X+(((-6 : K)*Y+(162 : K))*Y^2))

def primitive_m2_m2_coefficient_10 (X Y : K) : K := (((18 : K)*X+((126 : K)*Y))*X+((18 : K)*Y^2))

def primitiveCoefficients_m2_m2 (X Y : K) : List K := [primitive_m2_m2_coefficient_00 X Y,primitive_m2_m2_coefficient_01 X Y,primitive_m2_m2_coefficient_02 X Y,primitive_m2_m2_coefficient_03 X Y,primitive_m2_m2_coefficient_04 X Y,primitive_m2_m2_coefficient_05 X Y,primitive_m2_m2_coefficient_06 X Y,primitive_m2_m2_coefficient_07 X Y,primitive_m2_m2_coefficient_08 X Y,primitive_m2_m2_coefficient_09 X Y,primitive_m2_m2_coefficient_10 X Y]

def primitive_m2_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_m2 X Y)

def primitive_m2_m1_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(8 : K))*Y+(-6 : K))*X+((((-2 : K)*Y+(26 : K))*Y+(-78 : K))*Y+(54 : K)))*X+((((2 : K)*Y+(-24 : K))*Y+(54 : K))*Y))

def primitive_m2_m1_coefficient_02 (X Y : K) : K := ((((-2 : K)*Y+(14 : K))*Y+(-24 : K))*X+(((2 : K)*Y+(-6 : K))*Y))

def primitive_m2_m1_coefficient_03 (X Y : K) : K := ((-6 : K)*X+((6 : K)*Y))

def primitive_m2_m1_coefficient_04 (X Y : K) : K := ((2 : K)*Y)

def primitiveCoefficients_m2_m1 (X Y : K) : List K := [primitive_m2_m1_coefficient_00 X Y,0,primitive_m2_m1_coefficient_02 X Y,primitive_m2_m1_coefficient_03 X Y,primitive_m2_m1_coefficient_04 X Y]

def primitive_m2_m1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_m1 X Y)

def primitive_m2_p0_coefficient_00 (X Y : K) : K := ((((12 : K)*Y+(-12 : K))*X+(((12 : K)*Y+(-120 : K))*Y+(108 : K)))*X+(((-12 : K)*Y+(108 : K))*Y))

def primitive_m2_p0_coefficient_02 (X Y : K) : K := (((18 : K)*Y+(-30 : K))*X+(((6 : K)*Y+(-66 : K))*Y))

def primitive_m2_p0_coefficient_03 (X Y : K) : K := ((-6 : K)*X+(-54 : K))

def primitive_m2_p0_coefficient_04 (X Y : K) : K := ((6 : K)*Y+(-36 : K))

def primitive_m2_p0_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_m2_p0 (X Y : K) : List K := [primitive_m2_p0_coefficient_00 X Y,0,primitive_m2_p0_coefficient_02 X Y,primitive_m2_p0_coefficient_03 X Y,primitive_m2_p0_coefficient_04 X Y,primitive_m2_p0_coefficient_05 X Y]

def primitive_m2_p0 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_p0 X Y)

def primitive_m2_p1_coefficient_00 (X Y : K) : K := (-12 : K)

def primitive_m2_p1_coefficient_01 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_m2_p1 (X Y : K) : List K := [primitive_m2_p1_coefficient_00 X Y,primitive_m2_p1_coefficient_01 X Y]

def primitive_m2_p1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_p1 X Y)

def primitive_m2_p2_coefficient_00 (X Y : K) : K := (((((-12 : K)*Y+(12 : K))*X+(((-24 : K)*Y+(240 : K))*Y+(-216 : K)))*X+((((-12 : K)*Y+(240 : K))*Y+(-1296 : K))*Y+(972 : K)))*X+((((12 : K)*Y+(-216 : K))*Y+(972 : K))*Y))

def primitive_m2_p2_coefficient_02 (X Y : K) : K := ((((-18 : K)*Y+(6 : K))*X+(((-18 : K)*Y+(162 : K))*Y+(108 : K)))*X+(((6 : K)*Y+(108 : K))*Y+(-1458 : K)))

def primitive_m2_p2_coefficient_03 (X Y : K) : K := (((-6 : K)*X+((-12 : K)*Y+(162 : K)))*X+(((-6 : K)*Y+(162 : K))*Y+(-972 : K)))

def primitive_m2_p2_coefficient_04 (X Y : K) : K := (((-6 : K)*Y+(12 : K))*X+((12 : K)*Y))

def primitive_m2_p2_coefficient_05 (X Y : K) : K := ((-6 : K)*X+((-6 : K)*Y+(108 : K)))

def primitive_m2_p2_coefficient_06 (X Y : K) : K := (18 : K)

def primitiveCoefficients_m2_p2 (X Y : K) : List K := [primitive_m2_p2_coefficient_00 X Y,0,primitive_m2_p2_coefficient_02 X Y,primitive_m2_p2_coefficient_03 X Y,primitive_m2_p2_coefficient_04 X Y,primitive_m2_p2_coefficient_05 X Y,primitive_m2_p2_coefficient_06 X Y]

def primitive_m2_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_p2 X Y)

def primitive_m2_p3_coefficient_00 (X Y : K) : K := (((((2 : K)*Y+(-8 : K))*Y+(6 : K))*X+((((2 : K)*Y+(-26 : K))*Y+(78 : K))*Y+(-54 : K)))*X+((((-2 : K)*Y+(24 : K))*Y+(-54 : K))*Y))

def primitive_m2_p3_coefficient_02 (X Y : K) : K := ((((2 : K)*Y+(-2 : K))*Y+(-12 : K))*X+(((4 : K)*Y+(-66 : K))*Y+(162 : K)))

def primitive_m2_p3_coefficient_03 (X Y : K) : K := ((-6 : K)*X+((-12 : K)*Y+(54 : K)))

def primitive_m2_p3_coefficient_04 (X Y : K) : K := ((4 : K)*Y+(-18 : K))

def primitive_m2_p3_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_m2_p3 (X Y : K) : List K := [primitive_m2_p3_coefficient_00 X Y,0,primitive_m2_p3_coefficient_02 X Y,primitive_m2_p3_coefficient_03 X Y,primitive_m2_p3_coefficient_04 X Y,primitive_m2_p3_coefficient_05 X Y]

def primitive_m2_p3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_p3 X Y)

def primitive_m2_p4_coefficient_00 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*X+((((48 : K)*Y+(-528 : K))*Y+(912 : K))*Y+(-432 : K)))*X+(((((84 : K)*Y+(-1704 : K))*Y+(9180 : K))*Y+(-13392 : K))*Y+(5832 : K)))*X+((((((72 : K)*Y+(-2376 : K))*Y+(23256 : K))*Y+(-79272 : K))*Y+(93312 : K))*Y+(-34992 : K)))*X+(((((((24 : K)*Y+(-1440 : K))*Y+(23784 : K))*Y+(-149904 : K))*Y+(347004 : K))*Y+(-297432 : K))*Y+(78732 : K)))*X+(((((((-264 : K)*Y+(8496 : K))*Y+(-96336 : K))*Y+(443232 : K))*Y+(-682344 : K))*Y+(314928 : K))*Y))*X+((((((456 : K)*Y+(-12960 : K))*Y+(127332 : K))*Y+(-472392 : K))*Y+(393660 : K))*Y^2))*X+(((((-216 : K)*Y+(5832 : K))*Y+(-52488 : K))*Y+(157464 : K))*Y^3))

def primitive_m2_p4_coefficient_01 (X Y : K) : K := ((((((((((-12 : K)*Y+(24 : K))*Y+(-12 : K))*Y)*X+(((((-36 : K)*Y+(288 : K))*Y+(-468 : K))*Y+(216 : K))*Y))*X+(((((-36 : K)*Y+(420 : K))*Y+(-924 : K))*Y+(540 : K))*Y^2))*X+(((((((-12 : K)*Y+(72 : K))*Y+(2208 : K))*Y+(-20736 : K))*Y+(35964 : K))*Y+(-17496 : K))*Y))*X+(((((((-84 : K)*Y+(2880 : K))*Y+(-33696 : K))*Y+(152604 : K))*Y+(-201204 : K))*Y+(78732 : K))*Y))*X+((((((204 : K)*Y+(-5832 : K))*Y+(57348 : K))*Y+(-209952 : K))*Y+(157464 : K))*Y^2))*X+(((((-108 : K)*Y+(2916 : K))*Y+(-26244 : K))*Y+(78732 : K))*Y^3))

def primitive_m2_p4_coefficient_02 (X Y : K) : K := (((((((((48 : K)*Y+(-96 : K))*Y+(48 : K))*X+((((144 : K)*Y+(-1704 : K))*Y+(2856 : K))*Y+(-1296 : K)))*X+(((((168 : K)*Y+(-3912 : K))*Y+(22536 : K))*Y+(-30456 : K))*Y+(11664 : K)))*X+((((((72 : K)*Y+(-3288 : K))*Y+(37248 : K))*Y+(-134136 : K))*Y+(134136 : K))*Y+(-34992 : K)))*X+((((((-792 : K)*Y+(18888 : K))*Y+(-140400 : K))*Y+(332424 : K))*Y+(-192456 : K))*Y))*X+(((((1368 : K)*Y+(-27432 : K))*Y+(159408 : K))*Y+(-209952 : K))*Y^2))*X+((((-648 : K)*Y+(11664 : K))*Y+(-52488 : K))*Y^3))

def primitive_m2_p4_coefficient_03 (X Y : K) : K := (((((((((-36 : K)*Y+(24 : K))*Y+(12 : K))*Y)*X+(((((-72 : K)*Y+(396 : K))*Y+(648 : K))*Y+(-972 : K))*Y))*X+((((((-36 : K)*Y+(120 : K))*Y+(3960 : K))*Y+(-19008 : K))*Y+(14580 : K))*Y))*X+((((((-252 : K)*Y+(6432 : K))*Y+(-49032 : K))*Y+(110808 : K))*Y+(-61236 : K))*Y))*X+(((((612 : K)*Y+(-12312 : K))*Y+(70956 : K))*Y+(-87480 : K))*Y^2))*X+((((-324 : K)*Y+(5832 : K))*Y+(-26244 : K))*Y^3))

def primitive_m2_p4_coefficient_04 (X Y : K) : K := ((((((((72 : K)*Y+(-138 : K))*Y+(54 : K))*X+((((144 : K)*Y+(-1890 : K))*Y+(2844 : K))*Y+(-810 : K)))*X+(((((84 : K)*Y+(-2616 : K))*Y+(16602 : K))*Y+(-18144 : K))*Y+(1458 : K)))*X+(((((-864 : K)*Y+(13848 : K))*Y+(-54702 : K))*Y+(37908 : K))*Y+(13122 : K)))*X+(((((1500 : K)*Y+(-19656 : K))*Y+(58806 : K))*Y+(-39366 : K))*Y))*X+((((-1296 : K)*Y+(17496 : K))*Y+(-52488 : K))*Y^2))

def primitive_m2_p4_coefficient_05 (X Y : K) : K := ((((((-6 : K)*X+((((-36 : K)*Y+(-60 : K))*Y+(78 : K))*Y+(162 : K)))*X+(((((-36 : K)*Y+(-48 : K))*Y+(2562 : K))*Y+(-2862 : K))*Y+(-972 : K)))*X+(((((-288 : K)*Y+(5088 : K))*Y+(-22572 : K))*Y+(28674 : K))*Y+(-4374 : K)))*X+(((((720 : K)*Y+(-10800 : K))*Y+(47142 : K))*Y+(-65610 : K))*Y+(39366 : K)))*X+(((((-1188 : K)*Y+(18468 : K))*Y+(-52488 : K))*Y+(-157464 : K))*Y))

def primitive_m2_p4_coefficient_06 (X Y : K) : K := (((((((48 : K)*Y+(-78 : K))*Y+(-6 : K))*X+((((48 : K)*Y+(-762 : K))*Y+(372 : K))*Y+(1026 : K)))*X+((((-372 : K)*Y+(2280 : K))*Y+(7506 : K))*Y+(-13122 : K)))*X+(((((18 : K)*Y+(-360 : K))*Y+(8100 : K))*Y+(-5832 : K))*Y+(39366 : K)))*X+(((((-378 : K)*Y+(5292 : K))*Y+(16038 : K))*Y+(-314928 : K))*Y))

def primitive_m2_p4_coefficient_07 (X Y : K) : K := (((((-18 : K)*X+((((-12 : K)*Y+(-96 : K))*Y+(12 : K))*Y+(486 : K)))*X+((((-156 : K)*Y+(1440 : K))*Y+(-756 : K))*Y+(-3402 : K)))*X+((((312 : K)*Y+(-2970 : K))*Y+(33534 : K))*Y+(4374 : K)))*X+(((((-54 : K)*Y+(-864 : K))*Y+(38880 : K))*Y+(-231822 : K))*Y))

def primitive_m2_p4_coefficient_08 (X Y : K) : K := ((((((12 : K)*Y+(-6 : K))*Y+(-24 : K))*X+(((-30 : K)*Y+(-852 : K))*Y+(1134 : K)))*X+((((36 : K)*Y+(-1272 : K))*Y+(18792 : K))*Y+(-7290 : K)))*X+((((-756 : K)*Y+(17010 : K))*Y+(-62694 : K))*Y))

def primitive_m2_p4_coefficient_09 (X Y : K) : K := ((((-18 : K)*X+(((-36 : K)*Y+(-102 : K))*Y+(486 : K)))*X+(((-60 : K)*Y+(3024 : K))*Y+(-2430 : K)))*X+((((-108 : K)*Y+(2214 : K))*Y+(8748 : K))*Y))

def primitive_m2_p4_coefficient_10 (X Y : K) : K := ((((6 : K)*Y+(18 : K))*X+(((18 : K)*Y+(-162 : K))*Y+(162 : K)))*X+(((-216 : K)*Y+(9396 : K))*Y))

def primitive_m2_p4_coefficient_11 (X Y : K) : K := (((-6 : K)*X+((-60 : K)*Y+(162 : K)))*X+(((-54 : K)*Y+(2106 : K))*Y))

def primitive_m2_p4_coefficient_12 (X Y : K) : K := ((18 : K)*X+((162 : K)*Y))

def primitiveCoefficients_m2_p4 (X Y : K) : List K := [primitive_m2_p4_coefficient_00 X Y,primitive_m2_p4_coefficient_01 X Y,primitive_m2_p4_coefficient_02 X Y,primitive_m2_p4_coefficient_03 X Y,primitive_m2_p4_coefficient_04 X Y,primitive_m2_p4_coefficient_05 X Y,primitive_m2_p4_coefficient_06 X Y,primitive_m2_p4_coefficient_07 X Y,primitive_m2_p4_coefficient_08 X Y,primitive_m2_p4_coefficient_09 X Y,primitive_m2_p4_coefficient_10 X Y,primitive_m2_p4_coefficient_11 X Y,primitive_m2_p4_coefficient_12 X Y]

def primitive_m2_p4 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m2_p4 X Y)

def primitive_m1_m2_coefficient_00 (X Y : K) : K := (((((2 : K)*Y+(-2 : K))*X+(((2 : K)*Y+(-26 : K))*Y+(24 : K)))*X+(((-8 : K)*Y+(78 : K))*Y+(-54 : K)))*X+(((6 : K)*Y+(-54 : K))*Y))

def primitive_m1_m2_coefficient_02 (X Y : K) : K := ((((2 : K)*Y+(-2 : K))*X+((-14 : K)*Y+(6 : K)))*X+((24 : K)*Y))

def primitive_m1_m2_coefficient_03 (X Y : K) : K := ((-6 : K)*X+((6 : K)*Y))

def primitive_m1_m2_coefficient_04 (X Y : K) : K := ((-2 : K)*X)

def primitiveCoefficients_m1_m2 (X Y : K) : List K := [primitive_m1_m2_coefficient_00 X Y,0,primitive_m1_m2_coefficient_02 X Y,primitive_m1_m2_coefficient_03 X Y,primitive_m1_m2_coefficient_04 X Y]

def primitive_m1_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m1_m2 X Y)

def primitive_m1_m1_coefficient_00 (X Y : K) : K := (12 : K)

def primitive_m1_m1_coefficient_01 (X Y : K) : K := (6 : K)

def primitiveCoefficients_m1_m1 (X Y : K) : List K := [primitive_m1_m1_coefficient_00 X Y,primitive_m1_m1_coefficient_01 X Y]

def primitive_m1_m1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m1_m1 X Y)

def primitive_m1_p2_coefficient_00 (X Y : K) : K := (-12 : K)

def primitive_m1_p2_coefficient_01 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_m1_p2 (X Y : K) : List K := [primitive_m1_p2_coefficient_00 X Y,primitive_m1_p2_coefficient_01 X Y]

def primitive_m1_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m1_p2 X Y)

def primitive_m1_p3_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-4 : K)*Y+(34 : K))*Y+(-30 : K)))*X+((((-2 : K)*Y+(34 : K))*Y+(-156 : K))*Y+(108 : K)))*X+((((2 : K)*Y+(-30 : K))*Y+(108 : K))*Y))

def primitive_m1_p3_coefficient_02 (X Y : K) : K := ((((-4 : K)*Y+(4 : K))*X+(((-4 : K)*Y+(42 : K))*Y+(-30 : K)))*X+(((10 : K)*Y+(-66 : K))*Y))

def primitive_m1_p3_coefficient_03 (X Y : K) : K := ((6 : K)*X+((12 : K)*Y+(-54 : K)))

def primitive_m1_p3_coefficient_04 (X Y : K) : K := (((-2 : K)*Y+(4 : K))*X+((10 : K)*Y+(-18 : K)))

def primitive_m1_p3_coefficient_05 (X Y : K) : K := (6 : K)

def primitive_m1_p3_coefficient_06 (X Y : K) : K := (2 : K)

def primitiveCoefficients_m1_p3 (X Y : K) : List K := [primitive_m1_p3_coefficient_00 X Y,0,primitive_m1_p3_coefficient_02 X Y,primitive_m1_p3_coefficient_03 X Y,primitive_m1_p3_coefficient_04 X Y,primitive_m1_p3_coefficient_05 X Y,primitive_m1_p3_coefficient_06 X Y]

def primitive_m1_p3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_m1_p3 X Y)

def primitive_p0_m3_coefficient_00 (X Y : K) : K := (((((6 : K)*Y+(-12 : K))*Y+(6 : K))*X+((((6 : K)*Y+(-66 : K))*Y+(114 : K))*Y+(-54 : K)))*X+((((-6 : K)*Y+(60 : K))*Y+(-54 : K))*Y))

def primitive_p0_m3_coefficient_02 (X Y : K) : K := ((((6 : K)*Y+(-12 : K))*Y+(6 : K))*X+(((-12 : K)*Y+(12 : K))*Y))

def primitiveCoefficients_p0_m3 (X Y : K) : List K := [primitive_p0_m3_coefficient_00 X Y,0,primitive_p0_m3_coefficient_02 X Y]

def primitive_p0_m3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p0_m3 X Y)

def primitive_p0_m2_coefficient_00 (X Y : K) : K := ((((12 : K)*Y+(-12 : K))*X+(((12 : K)*Y+(-120 : K))*Y+(108 : K)))*X+(((-12 : K)*Y+(108 : K))*Y))

def primitive_p0_m2_coefficient_02 (X Y : K) : K := (((6 : K)*X+((18 : K)*Y+(-66 : K)))*X+((-30 : K)*Y))

def primitive_p0_m2_coefficient_03 (X Y : K) : K := ((-6 : K)*Y+(-54 : K))

def primitive_p0_m2_coefficient_04 (X Y : K) : K := ((6 : K)*X+(-36 : K))

def primitive_p0_m2_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_p0_m2 (X Y : K) : List K := [primitive_p0_m2_coefficient_00 X Y,0,primitive_p0_m2_coefficient_02 X Y,primitive_p0_m2_coefficient_03 X Y,primitive_p0_m2_coefficient_04 X Y,primitive_p0_m2_coefficient_05 X Y]

def primitive_p0_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p0_m2 X Y)

def primitive_p0_p2_coefficient_00 (X Y : K) : K := ((((12 : K)*Y+(-12 : K))*X+(((12 : K)*Y+(-120 : K))*Y+(108 : K)))*X+(((-12 : K)*Y+(108 : K))*Y))

def primitive_p0_p2_coefficient_02 (X Y : K) : K := (((6 : K)*X+((18 : K)*Y+(-66 : K)))*X+((-30 : K)*Y))

def primitive_p0_p2_coefficient_03 (X Y : K) : K := ((-6 : K)*Y+(-54 : K))

def primitive_p0_p2_coefficient_04 (X Y : K) : K := ((6 : K)*X+(-36 : K))

def primitive_p0_p2_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_p0_p2 (X Y : K) : List K := [primitive_p0_p2_coefficient_00 X Y,0,primitive_p0_p2_coefficient_02 X Y,primitive_p0_p2_coefficient_03 X Y,primitive_p0_p2_coefficient_04 X Y,primitive_p0_p2_coefficient_05 X Y]

def primitive_p0_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p0_p2 X Y)

def primitive_p0_p3_coefficient_00 (X Y : K) : K := (((((-6 : K)*Y+(12 : K))*Y+(-6 : K))*X+((((-6 : K)*Y+(66 : K))*Y+(-114 : K))*Y+(54 : K)))*X+((((6 : K)*Y+(-60 : K))*Y+(54 : K))*Y))

def primitive_p0_p3_coefficient_02 (X Y : K) : K := ((((-6 : K)*Y+(12 : K))*Y+(-6 : K))*X+(((12 : K)*Y+(-12 : K))*Y))

def primitiveCoefficients_p0_p3 (X Y : K) : List K := [primitive_p0_p3_coefficient_00 X Y,0,primitive_p0_p3_coefficient_02 X Y]

def primitive_p0_p3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p0_p3 X Y)

def primitive_p1_m3_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-4 : K)*Y+(34 : K))*Y+(-30 : K)))*X+((((-2 : K)*Y+(34 : K))*Y+(-156 : K))*Y+(108 : K)))*X+((((2 : K)*Y+(-30 : K))*Y+(108 : K))*Y))

def primitive_p1_m3_coefficient_02 (X Y : K) : K := ((((-4 : K)*Y+(4 : K))*X+(((-4 : K)*Y+(42 : K))*Y+(-30 : K)))*X+(((10 : K)*Y+(-66 : K))*Y))

def primitive_p1_m3_coefficient_03 (X Y : K) : K := ((6 : K)*X+((12 : K)*Y+(-54 : K)))

def primitive_p1_m3_coefficient_04 (X Y : K) : K := (((-2 : K)*Y+(4 : K))*X+((10 : K)*Y+(-18 : K)))

def primitive_p1_m3_coefficient_05 (X Y : K) : K := (6 : K)

def primitive_p1_m3_coefficient_06 (X Y : K) : K := (2 : K)

def primitiveCoefficients_p1_m3 (X Y : K) : List K := [primitive_p1_m3_coefficient_00 X Y,0,primitive_p1_m3_coefficient_02 X Y,primitive_p1_m3_coefficient_03 X Y,primitive_p1_m3_coefficient_04 X Y,primitive_p1_m3_coefficient_05 X Y,primitive_p1_m3_coefficient_06 X Y]

def primitive_p1_m3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p1_m3 X Y)

def primitive_p1_m2_coefficient_00 (X Y : K) : K := (12 : K)

def primitive_p1_m2_coefficient_01 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p1_m2 (X Y : K) : List K := [primitive_p1_m2_coefficient_00 X Y,primitive_p1_m2_coefficient_01 X Y]

def primitive_p1_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p1_m2 X Y)

def primitive_p1_p1_coefficient_00 (X Y : K) : K := (12 : K)

def primitive_p1_p1_coefficient_01 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p1_p1 (X Y : K) : List K := [primitive_p1_p1_coefficient_00 X Y,primitive_p1_p1_coefficient_01 X Y]

def primitive_p1_p1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p1_p1 X Y)

def primitive_p1_p2_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-2 : K)*Y+(26 : K))*Y+(-24 : K)))*X+(((8 : K)*Y+(-78 : K))*Y+(54 : K)))*X+(((-6 : K)*Y+(54 : K))*Y))

def primitive_p1_p2_coefficient_02 (X Y : K) : K := ((((-2 : K)*Y+(2 : K))*X+((14 : K)*Y+(-6 : K)))*X+((-24 : K)*Y))

def primitive_p1_p2_coefficient_03 (X Y : K) : K := ((6 : K)*X+((-6 : K)*Y))

def primitive_p1_p2_coefficient_04 (X Y : K) : K := ((2 : K)*X)

def primitiveCoefficients_p1_p2 (X Y : K) : List K := [primitive_p1_p2_coefficient_00 X Y,0,primitive_p1_p2_coefficient_02 X Y,primitive_p1_p2_coefficient_03 X Y,primitive_p1_p2_coefficient_04 X Y]

def primitive_p1_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p1_p2 X Y)

def primitive_p2_m4_coefficient_00 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*X+((((48 : K)*Y+(-528 : K))*Y+(912 : K))*Y+(-432 : K)))*X+(((((84 : K)*Y+(-1704 : K))*Y+(9180 : K))*Y+(-13392 : K))*Y+(5832 : K)))*X+((((((72 : K)*Y+(-2376 : K))*Y+(23256 : K))*Y+(-79272 : K))*Y+(93312 : K))*Y+(-34992 : K)))*X+(((((((24 : K)*Y+(-1440 : K))*Y+(23784 : K))*Y+(-149904 : K))*Y+(347004 : K))*Y+(-297432 : K))*Y+(78732 : K)))*X+(((((((-264 : K)*Y+(8496 : K))*Y+(-96336 : K))*Y+(443232 : K))*Y+(-682344 : K))*Y+(314928 : K))*Y))*X+((((((456 : K)*Y+(-12960 : K))*Y+(127332 : K))*Y+(-472392 : K))*Y+(393660 : K))*Y^2))*X+(((((-216 : K)*Y+(5832 : K))*Y+(-52488 : K))*Y+(157464 : K))*Y^3))

def primitive_p2_m4_coefficient_01 (X Y : K) : K := ((((((((((-12 : K)*Y+(24 : K))*Y+(-12 : K))*Y)*X+(((((-36 : K)*Y+(288 : K))*Y+(-468 : K))*Y+(216 : K))*Y))*X+(((((-36 : K)*Y+(420 : K))*Y+(-924 : K))*Y+(540 : K))*Y^2))*X+(((((((-12 : K)*Y+(72 : K))*Y+(2208 : K))*Y+(-20736 : K))*Y+(35964 : K))*Y+(-17496 : K))*Y))*X+(((((((-84 : K)*Y+(2880 : K))*Y+(-33696 : K))*Y+(152604 : K))*Y+(-201204 : K))*Y+(78732 : K))*Y))*X+((((((204 : K)*Y+(-5832 : K))*Y+(57348 : K))*Y+(-209952 : K))*Y+(157464 : K))*Y^2))*X+(((((-108 : K)*Y+(2916 : K))*Y+(-26244 : K))*Y+(78732 : K))*Y^3))

def primitive_p2_m4_coefficient_02 (X Y : K) : K := (((((((((48 : K)*Y+(-96 : K))*Y+(48 : K))*X+((((144 : K)*Y+(-1704 : K))*Y+(2856 : K))*Y+(-1296 : K)))*X+(((((168 : K)*Y+(-3912 : K))*Y+(22536 : K))*Y+(-30456 : K))*Y+(11664 : K)))*X+((((((72 : K)*Y+(-3288 : K))*Y+(37248 : K))*Y+(-134136 : K))*Y+(134136 : K))*Y+(-34992 : K)))*X+((((((-792 : K)*Y+(18888 : K))*Y+(-140400 : K))*Y+(332424 : K))*Y+(-192456 : K))*Y))*X+(((((1368 : K)*Y+(-27432 : K))*Y+(159408 : K))*Y+(-209952 : K))*Y^2))*X+((((-648 : K)*Y+(11664 : K))*Y+(-52488 : K))*Y^3))

def primitive_p2_m4_coefficient_03 (X Y : K) : K := (((((((((-36 : K)*Y+(24 : K))*Y+(12 : K))*Y)*X+(((((-72 : K)*Y+(396 : K))*Y+(648 : K))*Y+(-972 : K))*Y))*X+((((((-36 : K)*Y+(120 : K))*Y+(3960 : K))*Y+(-19008 : K))*Y+(14580 : K))*Y))*X+((((((-252 : K)*Y+(6432 : K))*Y+(-49032 : K))*Y+(110808 : K))*Y+(-61236 : K))*Y))*X+(((((612 : K)*Y+(-12312 : K))*Y+(70956 : K))*Y+(-87480 : K))*Y^2))*X+((((-324 : K)*Y+(5832 : K))*Y+(-26244 : K))*Y^3))

def primitive_p2_m4_coefficient_04 (X Y : K) : K := ((((((((72 : K)*Y+(-138 : K))*Y+(54 : K))*X+((((144 : K)*Y+(-1890 : K))*Y+(2844 : K))*Y+(-810 : K)))*X+(((((84 : K)*Y+(-2616 : K))*Y+(16602 : K))*Y+(-18144 : K))*Y+(1458 : K)))*X+(((((-864 : K)*Y+(13848 : K))*Y+(-54702 : K))*Y+(37908 : K))*Y+(13122 : K)))*X+(((((1500 : K)*Y+(-19656 : K))*Y+(58806 : K))*Y+(-39366 : K))*Y))*X+((((-1296 : K)*Y+(17496 : K))*Y+(-52488 : K))*Y^2))

def primitive_p2_m4_coefficient_05 (X Y : K) : K := ((((((-6 : K)*X+((((-36 : K)*Y+(-60 : K))*Y+(78 : K))*Y+(162 : K)))*X+(((((-36 : K)*Y+(-48 : K))*Y+(2562 : K))*Y+(-2862 : K))*Y+(-972 : K)))*X+(((((-288 : K)*Y+(5088 : K))*Y+(-22572 : K))*Y+(28674 : K))*Y+(-4374 : K)))*X+(((((720 : K)*Y+(-10800 : K))*Y+(47142 : K))*Y+(-65610 : K))*Y+(39366 : K)))*X+(((((-1188 : K)*Y+(18468 : K))*Y+(-52488 : K))*Y+(-157464 : K))*Y))

def primitive_p2_m4_coefficient_06 (X Y : K) : K := (((((((48 : K)*Y+(-78 : K))*Y+(-6 : K))*X+((((48 : K)*Y+(-762 : K))*Y+(372 : K))*Y+(1026 : K)))*X+((((-372 : K)*Y+(2280 : K))*Y+(7506 : K))*Y+(-13122 : K)))*X+(((((18 : K)*Y+(-360 : K))*Y+(8100 : K))*Y+(-5832 : K))*Y+(39366 : K)))*X+(((((-378 : K)*Y+(5292 : K))*Y+(16038 : K))*Y+(-314928 : K))*Y))

def primitive_p2_m4_coefficient_07 (X Y : K) : K := (((((-18 : K)*X+((((-12 : K)*Y+(-96 : K))*Y+(12 : K))*Y+(486 : K)))*X+((((-156 : K)*Y+(1440 : K))*Y+(-756 : K))*Y+(-3402 : K)))*X+((((312 : K)*Y+(-2970 : K))*Y+(33534 : K))*Y+(4374 : K)))*X+(((((-54 : K)*Y+(-864 : K))*Y+(38880 : K))*Y+(-231822 : K))*Y))

def primitive_p2_m4_coefficient_08 (X Y : K) : K := ((((((12 : K)*Y+(-6 : K))*Y+(-24 : K))*X+(((-30 : K)*Y+(-852 : K))*Y+(1134 : K)))*X+((((36 : K)*Y+(-1272 : K))*Y+(18792 : K))*Y+(-7290 : K)))*X+((((-756 : K)*Y+(17010 : K))*Y+(-62694 : K))*Y))

def primitive_p2_m4_coefficient_09 (X Y : K) : K := ((((-18 : K)*X+(((-36 : K)*Y+(-102 : K))*Y+(486 : K)))*X+(((-60 : K)*Y+(3024 : K))*Y+(-2430 : K)))*X+((((-108 : K)*Y+(2214 : K))*Y+(8748 : K))*Y))

def primitive_p2_m4_coefficient_10 (X Y : K) : K := ((((6 : K)*Y+(18 : K))*X+(((18 : K)*Y+(-162 : K))*Y+(162 : K)))*X+(((-216 : K)*Y+(9396 : K))*Y))

def primitive_p2_m4_coefficient_11 (X Y : K) : K := (((-6 : K)*X+((-60 : K)*Y+(162 : K)))*X+(((-54 : K)*Y+(2106 : K))*Y))

def primitive_p2_m4_coefficient_12 (X Y : K) : K := ((18 : K)*X+((162 : K)*Y))

def primitiveCoefficients_p2_m4 (X Y : K) : List K := [primitive_p2_m4_coefficient_00 X Y,primitive_p2_m4_coefficient_01 X Y,primitive_p2_m4_coefficient_02 X Y,primitive_p2_m4_coefficient_03 X Y,primitive_p2_m4_coefficient_04 X Y,primitive_p2_m4_coefficient_05 X Y,primitive_p2_m4_coefficient_06 X Y,primitive_p2_m4_coefficient_07 X Y,primitive_p2_m4_coefficient_08 X Y,primitive_p2_m4_coefficient_09 X Y,primitive_p2_m4_coefficient_10 X Y,primitive_p2_m4_coefficient_11 X Y,primitive_p2_m4_coefficient_12 X Y]

def primitive_p2_m4 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_m4 X Y)

def primitive_p2_m3_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(8 : K))*Y+(-6 : K))*X+((((-2 : K)*Y+(26 : K))*Y+(-78 : K))*Y+(54 : K)))*X+((((2 : K)*Y+(-24 : K))*Y+(54 : K))*Y))

def primitive_p2_m3_coefficient_02 (X Y : K) : K := ((((-2 : K)*Y+(2 : K))*Y+(12 : K))*X+(((-4 : K)*Y+(66 : K))*Y+(-162 : K)))

def primitive_p2_m3_coefficient_03 (X Y : K) : K := ((6 : K)*X+((12 : K)*Y+(-54 : K)))

def primitive_p2_m3_coefficient_04 (X Y : K) : K := ((-4 : K)*Y+(18 : K))

def primitive_p2_m3_coefficient_05 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p2_m3 (X Y : K) : List K := [primitive_p2_m3_coefficient_00 X Y,0,primitive_p2_m3_coefficient_02 X Y,primitive_p2_m3_coefficient_03 X Y,primitive_p2_m3_coefficient_04 X Y,primitive_p2_m3_coefficient_05 X Y]

def primitive_p2_m3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_m3 X Y)

def primitive_p2_m2_coefficient_00 (X Y : K) : K := (((((-12 : K)*Y+(12 : K))*X+(((-24 : K)*Y+(240 : K))*Y+(-216 : K)))*X+((((-12 : K)*Y+(240 : K))*Y+(-1296 : K))*Y+(972 : K)))*X+((((12 : K)*Y+(-216 : K))*Y+(972 : K))*Y))

def primitive_p2_m2_coefficient_02 (X Y : K) : K := ((((-18 : K)*Y+(6 : K))*X+(((-18 : K)*Y+(162 : K))*Y+(108 : K)))*X+(((6 : K)*Y+(108 : K))*Y+(-1458 : K)))

def primitive_p2_m2_coefficient_03 (X Y : K) : K := (((-6 : K)*X+((-12 : K)*Y+(162 : K)))*X+(((-6 : K)*Y+(162 : K))*Y+(-972 : K)))

def primitive_p2_m2_coefficient_04 (X Y : K) : K := (((-6 : K)*Y+(12 : K))*X+((12 : K)*Y))

def primitive_p2_m2_coefficient_05 (X Y : K) : K := ((-6 : K)*X+((-6 : K)*Y+(108 : K)))

def primitive_p2_m2_coefficient_06 (X Y : K) : K := (18 : K)

def primitiveCoefficients_p2_m2 (X Y : K) : List K := [primitive_p2_m2_coefficient_00 X Y,0,primitive_p2_m2_coefficient_02 X Y,primitive_p2_m2_coefficient_03 X Y,primitive_p2_m2_coefficient_04 X Y,primitive_p2_m2_coefficient_05 X Y,primitive_p2_m2_coefficient_06 X Y]

def primitive_p2_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_m2 X Y)

def primitive_p2_m1_coefficient_00 (X Y : K) : K := (12 : K)

def primitive_p2_m1_coefficient_01 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p2_m1 (X Y : K) : List K := [primitive_p2_m1_coefficient_00 X Y,primitive_p2_m1_coefficient_01 X Y]

def primitive_p2_m1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_m1 X Y)

def primitive_p2_p0_coefficient_00 (X Y : K) : K := ((((12 : K)*Y+(-12 : K))*X+(((12 : K)*Y+(-120 : K))*Y+(108 : K)))*X+(((-12 : K)*Y+(108 : K))*Y))

def primitive_p2_p0_coefficient_02 (X Y : K) : K := (((18 : K)*Y+(-30 : K))*X+(((6 : K)*Y+(-66 : K))*Y))

def primitive_p2_p0_coefficient_03 (X Y : K) : K := ((-6 : K)*X+(-54 : K))

def primitive_p2_p0_coefficient_04 (X Y : K) : K := ((6 : K)*Y+(-36 : K))

def primitive_p2_p0_coefficient_05 (X Y : K) : K := (-6 : K)

def primitiveCoefficients_p2_p0 (X Y : K) : List K := [primitive_p2_p0_coefficient_00 X Y,0,primitive_p2_p0_coefficient_02 X Y,primitive_p2_p0_coefficient_03 X Y,primitive_p2_p0_coefficient_04 X Y,primitive_p2_p0_coefficient_05 X Y]

def primitive_p2_p0 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_p0 X Y)

def primitive_p2_p1_coefficient_00 (X Y : K) : K := (((((2 : K)*Y+(-8 : K))*Y+(6 : K))*X+((((2 : K)*Y+(-26 : K))*Y+(78 : K))*Y+(-54 : K)))*X+((((-2 : K)*Y+(24 : K))*Y+(-54 : K))*Y))

def primitive_p2_p1_coefficient_02 (X Y : K) : K := ((((2 : K)*Y+(-14 : K))*Y+(24 : K))*X+(((-2 : K)*Y+(6 : K))*Y))

def primitive_p2_p1_coefficient_03 (X Y : K) : K := ((6 : K)*X+((-6 : K)*Y))

def primitive_p2_p1_coefficient_04 (X Y : K) : K := ((-2 : K)*Y)

def primitiveCoefficients_p2_p1 (X Y : K) : List K := [primitive_p2_p1_coefficient_00 X Y,0,primitive_p2_p1_coefficient_02 X Y,primitive_p2_p1_coefficient_03 X Y,primitive_p2_p1_coefficient_04 X Y]

def primitive_p2_p1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_p1 X Y)

def primitive_p2_p2_coefficient_00 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*X+((((36 : K)*Y+(-396 : K))*Y+(684 : K))*Y+(-324 : K)))*X+(((((48 : K)*Y+(-984 : K))*Y+(4932 : K))*Y+(-6912 : K))*Y+(2916 : K)))*X+((((((48 : K)*Y+(-1224 : K))*Y+(9924 : K))*Y+(-28188 : K))*Y+(28188 : K))*Y+(-8748 : K)))*X+(((((((36 : K)*Y+(-984 : K))*Y+(9924 : K))*Y+(-43200 : K))*Y+(69984 : K))*Y+(-34992 : K))*Y))*X+(((((((12 : K)*Y+(-396 : K))*Y+(4932 : K))*Y+(-28188 : K))*Y+(69984 : K))*Y+(-52488 : K))*Y^2))*X+((((((-24 : K)*Y+(684 : K))*Y+(-6912 : K))*Y+(28188 : K))*Y+(-34992 : K))*Y^3))*X+(((((12 : K)*Y+(-324 : K))*Y+(2916 : K))*Y+(-8748 : K))*Y^4))

def primitive_p2_p2_coefficient_01 (X Y : K) : K := ((((((((((12 : K)*Y+(-24 : K))*Y+(12 : K))*Y)*X+(((((36 : K)*Y+(-504 : K))*Y+(900 : K))*Y+(-432 : K))*Y))*X+((((((36 : K)*Y+(-960 : K))*Y+(6864 : K))*Y+(-10800 : K))*Y+(4860 : K))*Y))*X+(((((((12 : K)*Y+(-504 : K))*Y+(6864 : K))*Y+(-34560 : K))*Y+(45684 : K))*Y+(-17496 : K))*Y))*X+((((((-24 : K)*Y+(900 : K))*Y+(-10800 : K))*Y+(45684 : K))*Y+(-34992 : K))*Y^2))*X+(((((12 : K)*Y+(-432 : K))*Y+(4860 : K))*Y+(-17496 : K))*Y^3))*X)

def primitive_p2_p2_coefficient_02 (X Y : K) : K := (((((((((36 : K)*Y+(-72 : K))*Y+(36 : K))*X+((((72 : K)*Y+(-912 : K))*Y+(1488 : K))*Y+(-648 : K)))*X+(((((72 : K)*Y+(-1608 : K))*Y+(8124 : K))*Y+(-9504 : K))*Y+(2916 : K)))*X+((((((72 : K)*Y+(-1608 : K))*Y+(11808 : K))*Y+(-28728 : K))*Y+(17496 : K))*Y))*X+((((((36 : K)*Y+(-912 : K))*Y+(8124 : K))*Y+(-28728 : K))*Y+(29160 : K))*Y^2))*X+(((((-72 : K)*Y+(1488 : K))*Y+(-9504 : K))*Y+(17496 : K))*Y^3))*X+((((36 : K)*Y+(-648 : K))*Y+(2916 : K))*Y^4))

def primitive_p2_p2_coefficient_03 (X Y : K) : K := (((((((((36 : K)*Y+(-120 : K))*Y+(84 : K))*Y)*X+(((((72 : K)*Y+(-1176 : K))*Y+(2832 : K))*Y+(-1728 : K))*Y))*X+((((((36 : K)*Y+(-1176 : K))*Y+(9720 : K))*Y+(-17712 : K))*Y+(8748 : K))*Y))*X+(((((-120 : K)*Y+(2832 : K))*Y+(-17712 : K))*Y+(17496 : K))*Y^2))*X+((((84 : K)*Y+(-1728 : K))*Y+(8748 : K))*Y^3))*X)

def primitive_p2_p2_coefficient_04 (X Y : K) : K := ((((((((36 : K)*Y+(-66 : K))*Y+(18 : K))*X+((((36 : K)*Y+(-660 : K))*Y+(816 : K))*Y))*X+(((((36 : K)*Y+(-804 : K))*Y+(4062 : K))*Y+(-2916 : K))*Y+(-1458 : K)))*X+((((((36 : K)*Y+(-660 : K))*Y+(4062 : K))*Y+(-9288 : K))*Y+(7290 : K))*Y))*X+(((((-66 : K)*Y+(816 : K))*Y+(-2916 : K))*Y+(7290 : K))*Y^2))*X+(((18 : K)*Y^2+(-1458 : K))*Y^3))

def primitive_p2_p2_coefficient_05 (X Y : K) : K := ((((((-6 : K)*X+((((36 : K)*Y+(-180 : K))*Y+(132 : K))*Y+(108 : K)))*X+(((((36 : K)*Y+(-768 : K))*Y+(2358 : K))*Y+(-2214 : K))*Y))*X+(((((-180 : K)*Y+(2358 : K))*Y+(-5292 : K))*Y+(7776 : K))*Y+(-4374 : K)))*X+(((((132 : K)*Y+(-2214 : K))*Y+(7776 : K))*Y+(26244 : K))*Y))*X+((((-6 : K)*Y+(108 : K))*Y^2+(-4374 : K))*Y^2))

def primitive_p2_p2_coefficient_06 (X Y : K) : K := (((((((12 : K)*Y+(-12 : K))*Y+(-24 : K))*X+(((-162 : K)*Y+(-348 : K))*Y+(810 : K)))*X+(((((12 : K)*Y+(-162 : K))*Y+(456 : K))*Y+(1944 : K))*Y+(-4374 : K)))*X+(((((-12 : K)*Y+(-348 : K))*Y+(1944 : K))*Y+(43740 : K))*Y))*X+((((-24 : K)*Y+(810 : K))*Y+(-4374 : K))*Y^2))

def primitive_p2_p2_coefficient_07 (X Y : K) : K := (((((-12 : K)*X+((((12 : K)*Y+(-96 : K))*Y+(12 : K))*Y+(270 : K)))*X+((((-96 : K)*Y+(378 : K))*Y+(-648 : K))*Y+(-972 : K)))*X+((((12 : K)*Y+(-648 : K))*Y+(29646 : K))*Y))*X+((((-12 : K)*Y+(270 : K))*Y+(-972 : K))*Y^2))

def primitive_p2_p2_coefficient_08 (X Y : K) : K := (((((6 : K)*Y)*X+(((-18 : K)*Y+(-378 : K))*Y+(324 : K)))*X+((((6 : K)*Y+(-378 : K))*Y+(10206 : K))*Y))*X+((324 : K)*Y^2))

def primitive_p2_p2_coefficient_09 (X Y : K) : K := ((((-6 : K)*X+(((-12 : K)*Y+(-48 : K))*Y+(162 : K)))*X+(((-48 : K)*Y+(1782 : K))*Y))*X+(((-6 : K)*Y+(162 : K))*Y^2))

def primitive_p2_p2_coefficient_10 (X Y : K) : K := (((18 : K)*X+((126 : K)*Y))*X+((18 : K)*Y^2))

def primitiveCoefficients_p2_p2 (X Y : K) : List K := [primitive_p2_p2_coefficient_00 X Y,primitive_p2_p2_coefficient_01 X Y,primitive_p2_p2_coefficient_02 X Y,primitive_p2_p2_coefficient_03 X Y,primitive_p2_p2_coefficient_04 X Y,primitive_p2_p2_coefficient_05 X Y,primitive_p2_p2_coefficient_06 X Y,primitive_p2_p2_coefficient_07 X Y,primitive_p2_p2_coefficient_08 X Y,primitive_p2_p2_coefficient_09 X Y,primitive_p2_p2_coefficient_10 X Y]

def primitive_p2_p2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p2_p2 X Y)

def primitive_p3_m3_coefficient_00 (X Y : K) : K := (((((6 : K)*Y+(-6 : K))*X+(((12 : K)*Y+(-114 : K))*Y+(102 : K)))*X+((((6 : K)*Y+(-114 : K))*Y+(588 : K))*Y+(-432 : K)))*X+((((-6 : K)*Y+(102 : K))*Y+(-432 : K))*Y))

def primitive_p3_m3_coefficient_02 (X Y : K) : K := ((((12 : K)*Y+(-6 : K))*X+(((12 : K)*Y+(-108 : K))*Y))*X+((-6 : K)*Y^2+(432 : K)))

def primitive_p3_m3_coefficient_04 (X Y : K) : K := (((6 : K)*Y+(6 : K))*X+((6 : K)*Y+(-102 : K)))

def primitive_p3_m3_coefficient_06 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p3_m3 (X Y : K) : List K := [primitive_p3_m3_coefficient_00 X Y,0,primitive_p3_m3_coefficient_02 X Y,0,primitive_p3_m3_coefficient_04 X Y,0,primitive_p3_m3_coefficient_06 X Y]

def primitive_p3_m3 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p3_m3 X Y)

def primitive_p3_m2_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-2 : K)*Y+(26 : K))*Y+(-24 : K)))*X+(((8 : K)*Y+(-78 : K))*Y+(54 : K)))*X+(((-6 : K)*Y+(54 : K))*Y))

def primitive_p3_m2_coefficient_02 (X Y : K) : K := ((((-2 : K)*Y+(-4 : K))*X+((2 : K)*Y+(66 : K)))*X+((12 : K)*Y+(-162 : K)))

def primitive_p3_m2_coefficient_03 (X Y : K) : K := ((12 : K)*X+((6 : K)*Y+(-54 : K)))

def primitive_p3_m2_coefficient_04 (X Y : K) : K := ((-4 : K)*X+(18 : K))

def primitive_p3_m2_coefficient_05 (X Y : K) : K := (6 : K)

def primitiveCoefficients_p3_m2 (X Y : K) : List K := [primitive_p3_m2_coefficient_00 X Y,0,primitive_p3_m2_coefficient_02 X Y,primitive_p3_m2_coefficient_03 X Y,primitive_p3_m2_coefficient_04 X Y,primitive_p3_m2_coefficient_05 X Y]

def primitive_p3_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p3_m2 X Y)

def primitive_p3_m1_coefficient_00 (X Y : K) : K := (((((-2 : K)*Y+(2 : K))*X+(((-4 : K)*Y+(34 : K))*Y+(-30 : K)))*X+((((-2 : K)*Y+(34 : K))*Y+(-156 : K))*Y+(108 : K)))*X+((((2 : K)*Y+(-30 : K))*Y+(108 : K))*Y))

def primitive_p3_m1_coefficient_02 (X Y : K) : K := ((((-4 : K)*Y+(10 : K))*X+(((-4 : K)*Y+(42 : K))*Y+(-66 : K)))*X+(((4 : K)*Y+(-30 : K))*Y))

def primitive_p3_m1_coefficient_03 (X Y : K) : K := ((12 : K)*X+((6 : K)*Y+(-54 : K)))

def primitive_p3_m1_coefficient_04 (X Y : K) : K := (((-2 : K)*Y+(10 : K))*X+((4 : K)*Y+(-18 : K)))

def primitive_p3_m1_coefficient_05 (X Y : K) : K := (6 : K)

def primitive_p3_m1_coefficient_06 (X Y : K) : K := (2 : K)

def primitiveCoefficients_p3_m1 (X Y : K) : List K := [primitive_p3_m1_coefficient_00 X Y,0,primitive_p3_m1_coefficient_02 X Y,primitive_p3_m1_coefficient_03 X Y,primitive_p3_m1_coefficient_04 X Y,primitive_p3_m1_coefficient_05 X Y,primitive_p3_m1_coefficient_06 X Y]

def primitive_p3_m1 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p3_m1 X Y)

def primitive_p3_p0_coefficient_00 (X Y : K) : K := (((((6 : K)*Y+(-6 : K))*X+(((6 : K)*Y+(-66 : K))*Y+(60 : K)))*X+(((-12 : K)*Y+(114 : K))*Y+(-54 : K)))*X+(((6 : K)*Y+(-54 : K))*Y))

def primitive_p3_p0_coefficient_02 (X Y : K) : K := ((((6 : K)*Y+(-12 : K))*X+((-12 : K)*Y+(12 : K)))*X+((6 : K)*Y))

def primitiveCoefficients_p3_p0 (X Y : K) : List K := [primitive_p3_p0_coefficient_00 X Y,0,primitive_p3_p0_coefficient_02 X Y]

def primitive_p3_p0 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p3_p0 X Y)

def primitive_p4_m2_coefficient_00 (X Y : K) : K := ((((((((((24 : K)*Y+(-264 : K))*Y+(456 : K))*Y+(-216 : K))*X+(((((72 : K)*Y+(-1440 : K))*Y+(8496 : K))*Y+(-12960 : K))*Y+(5832 : K)))*X+((((((84 : K)*Y+(-2376 : K))*Y+(23784 : K))*Y+(-96336 : K))*Y+(127332 : K))*Y+(-52488 : K)))*X+(((((((48 : K)*Y+(-1704 : K))*Y+(23256 : K))*Y+(-149904 : K))*Y+(443232 : K))*Y+(-472392 : K))*Y+(157464 : K)))*X+((((((((12 : K)*Y+(-528 : K))*Y+(9180 : K))*Y+(-79272 : K))*Y+(347004 : K))*Y+(-682344 : K))*Y+(393660 : K))*Y))*X+(((((((-24 : K)*Y+(912 : K))*Y+(-13392 : K))*Y+(93312 : K))*Y+(-297432 : K))*Y+(314928 : K))*Y^2))*X+((((((12 : K)*Y+(-432 : K))*Y+(5832 : K))*Y+(-34992 : K))*Y+(78732 : K))*Y^3))

def primitive_p4_m2_coefficient_01 (X Y : K) : K := ((((((((((-12 : K)*Y+(-84 : K))*Y+(204 : K))*Y+(-108 : K))*X+(((((-36 : K)*Y+(72 : K))*Y+(2880 : K))*Y+(-5832 : K))*Y+(2916 : K)))*X+((((((-36 : K)*Y+(420 : K))*Y+(2208 : K))*Y+(-33696 : K))*Y+(57348 : K))*Y+(-26244 : K)))*X+(((((((-12 : K)*Y+(288 : K))*Y+(-924 : K))*Y+(-20736 : K))*Y+(152604 : K))*Y+(-209952 : K))*Y+(78732 : K)))*X+(((((((24 : K)*Y+(-468 : K))*Y+(540 : K))*Y+(35964 : K))*Y+(-201204 : K))*Y+(157464 : K))*Y))*X+(((((-12 : K)*Y+(216 : K))*Y^2+(-17496 : K))*Y+(78732 : K))*Y^2))*X)

def primitive_p4_m2_coefficient_02 (X Y : K) : K := (((((((((72 : K)*Y+(-792 : K))*Y+(1368 : K))*Y+(-648 : K))*X+(((((168 : K)*Y+(-3288 : K))*Y+(18888 : K))*Y+(-27432 : K))*Y+(11664 : K)))*X+((((((144 : K)*Y+(-3912 : K))*Y+(37248 : K))*Y+(-140400 : K))*Y+(159408 : K))*Y+(-52488 : K)))*X+(((((((48 : K)*Y+(-1704 : K))*Y+(22536 : K))*Y+(-134136 : K))*Y+(332424 : K))*Y+(-209952 : K))*Y))*X+((((((-96 : K)*Y+(2856 : K))*Y+(-30456 : K))*Y+(134136 : K))*Y+(-192456 : K))*Y^2))*X+(((((48 : K)*Y+(-1296 : K))*Y+(11664 : K))*Y+(-34992 : K))*Y^3))

def primitive_p4_m2_coefficient_03 (X Y : K) : K := (((((((((-36 : K)*Y+(-252 : K))*Y+(612 : K))*Y+(-324 : K))*X+(((((-72 : K)*Y+(120 : K))*Y+(6432 : K))*Y+(-12312 : K))*Y+(5832 : K)))*X+((((((-36 : K)*Y+(396 : K))*Y+(3960 : K))*Y+(-49032 : K))*Y+(70956 : K))*Y+(-26244 : K)))*X+((((((24 : K)*Y+(648 : K))*Y+(-19008 : K))*Y+(110808 : K))*Y+(-87480 : K))*Y))*X+(((((12 : K)*Y+(-972 : K))*Y+(14580 : K))*Y+(-61236 : K))*Y^2))*X)

def primitive_p4_m2_coefficient_04 (X Y : K) : K := ((((((((84 : K)*Y+(-864 : K))*Y+(1500 : K))*Y+(-1296 : K))*X+(((((144 : K)*Y+(-2616 : K))*Y+(13848 : K))*Y+(-19656 : K))*Y+(17496 : K)))*X+((((((72 : K)*Y+(-1890 : K))*Y+(16602 : K))*Y+(-54702 : K))*Y+(58806 : K))*Y+(-52488 : K)))*X+((((((-138 : K)*Y+(2844 : K))*Y+(-18144 : K))*Y+(37908 : K))*Y+(-39366 : K))*Y))*X+(((((54 : K)*Y+(-810 : K))*Y+(1458 : K))*Y+(13122 : K))*Y^2))

def primitive_p4_m2_coefficient_05 (X Y : K) : K := ((((((((-36 : K)*Y+(-288 : K))*Y+(720 : K))*Y+(-1188 : K))*X+(((((-36 : K)*Y+(-48 : K))*Y+(5088 : K))*Y+(-10800 : K))*Y+(18468 : K)))*X+(((((-60 : K)*Y+(2562 : K))*Y+(-22572 : K))*Y+(47142 : K))*Y+(-52488 : K)))*X+(((((78 : K)*Y+(-2862 : K))*Y+(28674 : K))*Y+(-65610 : K))*Y+(-157464 : K)))*X+((((((-6 : K)*Y+(162 : K))*Y+(-972 : K))*Y+(-4374 : K))*Y+(39366 : K))*Y))

def primitive_p4_m2_coefficient_06 (X Y : K) : K := ((((((18 : K)*Y+(-378 : K))*X+((((48 : K)*Y+(-372 : K))*Y+(-360 : K))*Y+(5292 : K)))*X+(((((48 : K)*Y+(-762 : K))*Y+(2280 : K))*Y+(8100 : K))*Y+(16038 : K)))*X+(((((-78 : K)*Y+(372 : K))*Y+(7506 : K))*Y+(-5832 : K))*Y+(-314928 : K)))*X+(((((-6 : K)*Y+(1026 : K))*Y+(-13122 : K))*Y+(39366 : K))*Y))

def primitive_p4_m2_coefficient_07 (X Y : K) : K := (((((-54 : K)*X+((((-12 : K)*Y+(-156 : K))*Y+(312 : K))*Y+(-864 : K)))*X+((((-96 : K)*Y+(1440 : K))*Y+(-2970 : K))*Y+(38880 : K)))*X+((((12 : K)*Y+(-756 : K))*Y+(33534 : K))*Y+(-231822 : K)))*X+(((((-18 : K)*Y+(486 : K))*Y+(-3402 : K))*Y+(4374 : K))*Y))

def primitive_p4_m2_coefficient_08 (X Y : K) : K := (((((36 : K)*Y+(-756 : K))*X+((((12 : K)*Y+(-30 : K))*Y+(-1272 : K))*Y+(17010 : K)))*X+((((-6 : K)*Y+(-852 : K))*Y+(18792 : K))*Y+(-62694 : K)))*X+((((-24 : K)*Y+(1134 : K))*Y+(-7290 : K))*Y))

def primitive_p4_m2_coefficient_09 (X Y : K) : K := ((((-108 : K)*X+(((-36 : K)*Y+(-60 : K))*Y+(2214 : K)))*X+(((-102 : K)*Y+(3024 : K))*Y+(8748 : K)))*X+((((-18 : K)*Y+(486 : K))*Y+(-2430 : K))*Y))

def primitive_p4_m2_coefficient_10 (X Y : K) : K := ((((18 : K)*Y+(-216 : K))*X+(((6 : K)*Y+(-162 : K))*Y+(9396 : K)))*X+(((18 : K)*Y+(162 : K))*Y))

def primitive_p4_m2_coefficient_11 (X Y : K) : K := (((-54 : K)*X+((-60 : K)*Y+(2106 : K)))*X+(((-6 : K)*Y+(162 : K))*Y))

def primitive_p4_m2_coefficient_12 (X Y : K) : K := ((162 : K)*X+((18 : K)*Y))

def primitiveCoefficients_p4_m2 (X Y : K) : List K := [primitive_p4_m2_coefficient_00 X Y,primitive_p4_m2_coefficient_01 X Y,primitive_p4_m2_coefficient_02 X Y,primitive_p4_m2_coefficient_03 X Y,primitive_p4_m2_coefficient_04 X Y,primitive_p4_m2_coefficient_05 X Y,primitive_p4_m2_coefficient_06 X Y,primitive_p4_m2_coefficient_07 X Y,primitive_p4_m2_coefficient_08 X Y,primitive_p4_m2_coefficient_09 X Y,primitive_p4_m2_coefficient_10 X Y,primitive_p4_m2_coefficient_11 X Y,primitive_p4_m2_coefficient_12 X Y]

def primitive_p4_m2 (X Y z : K) : K := CriticalZeroSplitReduction20261003.Coefficients.eval z (primitiveCoefficients_p4_m2 X Y)
end
end CriticalZeroSumAssembly20261003
