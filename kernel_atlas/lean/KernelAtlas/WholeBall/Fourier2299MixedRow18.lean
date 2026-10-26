import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299MixedRow17

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_18_0 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 0 = true := by decide +kernel

theorem mixed_18_1 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 1 = true := by decide +kernel

theorem mixed_18_2 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 2 = true := by decide +kernel

theorem mixed_18_3 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 3 = true := by decide +kernel

theorem mixed_18_4 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 4 = true := by decide +kernel

theorem mixed_18_5 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 5 = true := by decide +kernel

theorem mixed_18_6 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 6 = true := by decide +kernel

theorem mixed_18_7 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 7 = true := by decide +kernel

theorem mixed_18_8 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 8 = true := by decide +kernel

theorem mixed_18_9 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 9 = true := by decide +kernel

theorem mixed_18_10 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 10 = true := by decide +kernel

theorem mixed_18_11 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 11 = true := by decide +kernel

theorem mixed_18_12 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 12 = true := by decide +kernel

theorem mixed_18_13 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 13 = true := by decide +kernel

theorem mixed_18_14 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 14 = true := by decide +kernel

theorem mixed_18_15 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 15 = true := by decide +kernel

theorem mixed_18_16 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 16 = true := by decide +kernel

theorem mixed_18_17 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 17 = true := by decide +kernel

theorem mixed_18_18 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 18 = true := by decide +kernel

theorem mixed_18_19 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 19 = true := by decide +kernel

theorem mixed_18_20 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 20 = true := by decide +kernel

theorem mixed_row_18 (j : Fin 21) :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 18 j = true := by
  fin_cases j
  · exact mixed_18_0
  · exact mixed_18_1
  · exact mixed_18_2
  · exact mixed_18_3
  · exact mixed_18_4
  · exact mixed_18_5
  · exact mixed_18_6
  · exact mixed_18_7
  · exact mixed_18_8
  · exact mixed_18_9
  · exact mixed_18_10
  · exact mixed_18_11
  · exact mixed_18_12
  · exact mixed_18_13
  · exact mixed_18_14
  · exact mixed_18_15
  · exact mixed_18_16
  · exact mixed_18_17
  · exact mixed_18_18
  · exact mixed_18_19
  · exact mixed_18_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
