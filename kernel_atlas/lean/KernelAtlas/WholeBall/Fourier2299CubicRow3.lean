import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299CubicRow2
import KernelAtlas.WholeBall.Fourier2299CubicRealData
import KernelAtlas.WholeBall.Fourier2299CubicImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_3_0 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 0 = true := by decide +kernel

theorem cubic_3_1 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 1 = true := by decide +kernel

theorem cubic_3_2 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 2 = true := by decide +kernel

theorem cubic_3_3 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 3 = true := by decide +kernel

theorem cubic_3_4 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 4 = true := by decide +kernel

theorem cubic_3_5 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 5 = true := by decide +kernel

theorem cubic_3_6 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 6 = true := by decide +kernel

theorem cubic_3_7 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 7 = true := by decide +kernel

theorem cubic_3_8 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 8 = true := by decide +kernel

theorem cubic_3_9 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 9 = true := by decide +kernel

theorem cubic_3_10 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 10 = true := by decide +kernel

theorem cubic_3_11 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 11 = true := by decide +kernel

theorem cubic_3_12 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 12 = true := by decide +kernel

theorem cubic_3_13 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 13 = true := by decide +kernel

theorem cubic_3_14 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 14 = true := by decide +kernel

theorem cubic_3_15 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 15 = true := by decide +kernel

theorem cubic_row_3 (j : Fin 16) :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 3 j = true := by
  fin_cases j
  · exact cubic_3_0
  · exact cubic_3_1
  · exact cubic_3_2
  · exact cubic_3_3
  · exact cubic_3_4
  · exact cubic_3_5
  · exact cubic_3_6
  · exact cubic_3_7
  · exact cubic_3_8
  · exact cubic_3_9
  · exact cubic_3_10
  · exact cubic_3_11
  · exact cubic_3_12
  · exact cubic_3_13
  · exact cubic_3_14
  · exact cubic_3_15

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
