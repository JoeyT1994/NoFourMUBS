import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299CubicRow3
import KernelAtlas.WholeBall.Fourier2299CubicRealData
import KernelAtlas.WholeBall.Fourier2299CubicImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_4_0 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 0 = true := by decide +kernel

theorem cubic_4_1 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 1 = true := by decide +kernel

theorem cubic_4_2 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 2 = true := by decide +kernel

theorem cubic_4_3 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 3 = true := by decide +kernel

theorem cubic_4_4 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 4 = true := by decide +kernel

theorem cubic_4_5 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 5 = true := by decide +kernel

theorem cubic_4_6 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 6 = true := by decide +kernel

theorem cubic_4_7 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 7 = true := by decide +kernel

theorem cubic_4_8 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 8 = true := by decide +kernel

theorem cubic_4_9 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 9 = true := by decide +kernel

theorem cubic_4_10 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 10 = true := by decide +kernel

theorem cubic_4_11 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 11 = true := by decide +kernel

theorem cubic_4_12 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 12 = true := by decide +kernel

theorem cubic_4_13 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 13 = true := by decide +kernel

theorem cubic_4_14 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 14 = true := by decide +kernel

theorem cubic_4_15 :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 15 = true := by decide +kernel

theorem cubic_row_4 (j : Fin 16) :
    MatrixBox.enclosesBlockCheck (k := 16) (b := 4) ((data.fourier.K0.mul polyCubicReal).add (data.fourier.K1.mul polyCubicImag)) data.cubic 4 j = true := by
  fin_cases j
  · exact cubic_4_0
  · exact cubic_4_1
  · exact cubic_4_2
  · exact cubic_4_3
  · exact cubic_4_4
  · exact cubic_4_5
  · exact cubic_4_6
  · exact cubic_4_7
  · exact cubic_4_8
  · exact cubic_4_9
  · exact cubic_4_10
  · exact cubic_4_11
  · exact cubic_4_12
  · exact cubic_4_13
  · exact cubic_4_14
  · exact cubic_4_15

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
