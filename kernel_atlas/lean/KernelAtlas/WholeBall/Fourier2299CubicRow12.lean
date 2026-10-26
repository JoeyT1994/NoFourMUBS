import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299CubicRow11
import KernelAtlas.WholeBall.Fourier2299CubicRealData
import KernelAtlas.WholeBall.Fourier2299CubicImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_12_0 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 0 = true := by decide +kernel

theorem cubic_12_1 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 1 = true := by decide +kernel

theorem cubic_12_2 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 2 = true := by decide +kernel

theorem cubic_12_3 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 3 = true := by decide +kernel

theorem cubic_12_4 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 4 = true := by decide +kernel

theorem cubic_12_5 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 5 = true := by decide +kernel

theorem cubic_12_6 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 6 = true := by decide +kernel

theorem cubic_12_7 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 7 = true := by decide +kernel

theorem cubic_12_8 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 8 = true := by decide +kernel

theorem cubic_12_9 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 9 = true := by decide +kernel

theorem cubic_12_10 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 10 = true := by decide +kernel

theorem cubic_12_11 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 11 = true := by decide +kernel

theorem cubic_12_12 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 12 = true := by decide +kernel

theorem cubic_12_13 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 13 = true := by decide +kernel

theorem cubic_12_14 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 14 = true := by decide +kernel

theorem cubic_12_15 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 15 = true := by decide +kernel

theorem cubic_row_12 (j : Fin 16) :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 12 j = true := by
  fin_cases j
  · exact cubic_12_0
  · exact cubic_12_1
  · exact cubic_12_2
  · exact cubic_12_3
  · exact cubic_12_4
  · exact cubic_12_5
  · exact cubic_12_6
  · exact cubic_12_7
  · exact cubic_12_8
  · exact cubic_12_9
  · exact cubic_12_10
  · exact cubic_12_11
  · exact cubic_12_12
  · exact cubic_12_13
  · exact cubic_12_14
  · exact cubic_12_15

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
