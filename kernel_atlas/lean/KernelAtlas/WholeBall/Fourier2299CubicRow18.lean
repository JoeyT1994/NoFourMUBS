import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299CubicRow17
import KernelAtlas.WholeBall.Fourier2299CubicRealData
import KernelAtlas.WholeBall.Fourier2299CubicImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_18_0 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 0 = true := by decide +kernel

theorem cubic_18_1 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 1 = true := by decide +kernel

theorem cubic_18_2 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 2 = true := by decide +kernel

theorem cubic_18_3 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 3 = true := by decide +kernel

theorem cubic_18_4 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 4 = true := by decide +kernel

theorem cubic_18_5 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 5 = true := by decide +kernel

theorem cubic_18_6 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 6 = true := by decide +kernel

theorem cubic_18_7 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 7 = true := by decide +kernel

theorem cubic_18_8 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 8 = true := by decide +kernel

theorem cubic_18_9 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 9 = true := by decide +kernel

theorem cubic_18_10 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 10 = true := by decide +kernel

theorem cubic_18_11 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 11 = true := by decide +kernel

theorem cubic_18_12 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 12 = true := by decide +kernel

theorem cubic_18_13 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 13 = true := by decide +kernel

theorem cubic_18_14 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 14 = true := by decide +kernel

theorem cubic_18_15 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 15 = true := by decide +kernel

theorem cubic_row_18 (j : Fin 16) :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 18 j = true := by
  fin_cases j
  · exact cubic_18_0
  · exact cubic_18_1
  · exact cubic_18_2
  · exact cubic_18_3
  · exact cubic_18_4
  · exact cubic_18_5
  · exact cubic_18_6
  · exact cubic_18_7
  · exact cubic_18_8
  · exact cubic_18_9
  · exact cubic_18_10
  · exact cubic_18_11
  · exact cubic_18_12
  · exact cubic_18_13
  · exact cubic_18_14
  · exact cubic_18_15

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
