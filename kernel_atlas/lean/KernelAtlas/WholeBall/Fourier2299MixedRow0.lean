import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_0_0 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 0 = true := by decide +kernel

theorem mixed_0_1 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 1 = true := by decide +kernel

theorem mixed_0_2 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 2 = true := by decide +kernel

theorem mixed_0_3 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 3 = true := by decide +kernel

theorem mixed_0_4 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 4 = true := by decide +kernel

theorem mixed_0_5 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 5 = true := by decide +kernel

theorem mixed_0_6 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 6 = true := by decide +kernel

theorem mixed_0_7 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 7 = true := by decide +kernel

theorem mixed_0_8 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 8 = true := by decide +kernel

theorem mixed_0_9 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 9 = true := by decide +kernel

theorem mixed_0_10 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 10 = true := by decide +kernel

theorem mixed_0_11 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 11 = true := by decide +kernel

theorem mixed_0_12 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 12 = true := by decide +kernel

theorem mixed_0_13 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 13 = true := by decide +kernel

theorem mixed_0_14 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 14 = true := by decide +kernel

theorem mixed_0_15 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 15 = true := by decide +kernel

theorem mixed_0_16 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 16 = true := by decide +kernel

theorem mixed_0_17 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 17 = true := by decide +kernel

theorem mixed_0_18 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 18 = true := by decide +kernel

theorem mixed_0_19 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 19 = true := by decide +kernel

theorem mixed_0_20 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 20 = true := by decide +kernel

theorem mixed_row_0 (j : Fin 21) :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 0 j = true := by
  fin_cases j
  · exact mixed_0_0
  · exact mixed_0_1
  · exact mixed_0_2
  · exact mixed_0_3
  · exact mixed_0_4
  · exact mixed_0_5
  · exact mixed_0_6
  · exact mixed_0_7
  · exact mixed_0_8
  · exact mixed_0_9
  · exact mixed_0_10
  · exact mixed_0_11
  · exact mixed_0_12
  · exact mixed_0_13
  · exact mixed_0_14
  · exact mixed_0_15
  · exact mixed_0_16
  · exact mixed_0_17
  · exact mixed_0_18
  · exact mixed_0_19
  · exact mixed_0_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
