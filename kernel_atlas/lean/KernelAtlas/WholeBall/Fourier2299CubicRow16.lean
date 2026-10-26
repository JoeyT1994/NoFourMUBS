import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299CubicRow15
import KernelAtlas.WholeBall.Fourier2299CubicRealData
import KernelAtlas.WholeBall.Fourier2299CubicImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_16_0 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 0 = true := by decide +kernel

theorem cubic_16_1 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 1 = true := by decide +kernel

theorem cubic_16_2 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 2 = true := by decide +kernel

theorem cubic_16_3 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 3 = true := by decide +kernel

theorem cubic_16_4 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 4 = true := by decide +kernel

theorem cubic_16_5 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 5 = true := by decide +kernel

theorem cubic_16_6 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 6 = true := by decide +kernel

theorem cubic_16_7 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 7 = true := by decide +kernel

theorem cubic_16_8 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 8 = true := by decide +kernel

theorem cubic_16_9 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 9 = true := by decide +kernel

theorem cubic_16_10 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 10 = true := by decide +kernel

theorem cubic_16_11 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 11 = true := by decide +kernel

theorem cubic_16_12 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 12 = true := by decide +kernel

theorem cubic_16_13 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 13 = true := by decide +kernel

theorem cubic_16_14 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 14 = true := by decide +kernel

theorem cubic_16_15 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 15 = true := by decide +kernel

theorem cubic_row_16 (j : Fin 16) :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 16 j = true := by
  fin_cases j
  · exact cubic_16_0
  · exact cubic_16_1
  · exact cubic_16_2
  · exact cubic_16_3
  · exact cubic_16_4
  · exact cubic_16_5
  · exact cubic_16_6
  · exact cubic_16_7
  · exact cubic_16_8
  · exact cubic_16_9
  · exact cubic_16_10
  · exact cubic_16_11
  · exact cubic_16_12
  · exact cubic_16_13
  · exact cubic_16_14
  · exact cubic_16_15

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
