import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299MixedRow10

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_11_0 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 0 = true := by decide +kernel

theorem mixed_11_1 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 1 = true := by decide +kernel

theorem mixed_11_2 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 2 = true := by decide +kernel

theorem mixed_11_3 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 3 = true := by decide +kernel

theorem mixed_11_4 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 4 = true := by decide +kernel

theorem mixed_11_5 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 5 = true := by decide +kernel

theorem mixed_11_6 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 6 = true := by decide +kernel

theorem mixed_11_7 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 7 = true := by decide +kernel

theorem mixed_11_8 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 8 = true := by decide +kernel

theorem mixed_11_9 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 9 = true := by decide +kernel

theorem mixed_11_10 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 10 = true := by decide +kernel

theorem mixed_11_11 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 11 = true := by decide +kernel

theorem mixed_11_12 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 12 = true := by decide +kernel

theorem mixed_11_13 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 13 = true := by decide +kernel

theorem mixed_11_14 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 14 = true := by decide +kernel

theorem mixed_11_15 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 15 = true := by decide +kernel

theorem mixed_11_16 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 16 = true := by decide +kernel

theorem mixed_11_17 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 17 = true := by decide +kernel

theorem mixed_11_18 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 18 = true := by decide +kernel

theorem mixed_11_19 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 19 = true := by decide +kernel

theorem mixed_11_20 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 20 = true := by decide +kernel

theorem mixed_row_11 (j : Fin 21) :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 11 j = true := by
  fin_cases j
  · exact mixed_11_0
  · exact mixed_11_1
  · exact mixed_11_2
  · exact mixed_11_3
  · exact mixed_11_4
  · exact mixed_11_5
  · exact mixed_11_6
  · exact mixed_11_7
  · exact mixed_11_8
  · exact mixed_11_9
  · exact mixed_11_10
  · exact mixed_11_11
  · exact mixed_11_12
  · exact mixed_11_13
  · exact mixed_11_14
  · exact mixed_11_15
  · exact mixed_11_16
  · exact mixed_11_17
  · exact mixed_11_18
  · exact mixed_11_19
  · exact mixed_11_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
