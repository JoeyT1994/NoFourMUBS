import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data00
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data01
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data02
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data03
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data04
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data05
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data06
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data07
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data08
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data09
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data10
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data11
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data12
import NoFourMUBs.Step2.CriticalZero.RawNumerator.Data13

set_option autoImplicit false
namespace NoFourMUBs.Step2.Critical.NonzeroRawNumerator
def coefficients : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=
  rows00 ++ rows01 ++ rows02 ++ rows03 ++ rows04 ++ rows05 ++ rows06 ++ rows07 ++ rows08 ++ rows09 ++ rows10 ++ rows11 ++ rows12 ++ rows13

def rawIntegerNumerator {R : Type*} [CommRing R] (X Y k : R) : R :=
  CriticalZeroSplitReduction20261003.Coefficients.eval k
    (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret X Y coefficients)

def rawNumerator {F : Type*} [Field F] (X Y k : F) : F := rawIntegerNumerator X Y k / 32
end NoFourMUBs.Step2.Critical.NonzeroRawNumerator
