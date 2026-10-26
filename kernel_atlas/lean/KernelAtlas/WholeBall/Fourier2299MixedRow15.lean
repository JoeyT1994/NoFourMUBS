import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299MixedRow14

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_15_0 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 0 = true := by decide +kernel

theorem mixed_15_1 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 1 = true := by decide +kernel

theorem mixed_15_2 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 2 = true := by decide +kernel

theorem mixed_15_3 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 3 = true := by decide +kernel

theorem mixed_15_4 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 4 = true := by decide +kernel

theorem mixed_15_5 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 5 = true := by decide +kernel

theorem mixed_15_6 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 6 = true := by decide +kernel

theorem mixed_15_7 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 7 = true := by decide +kernel

theorem mixed_15_8 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 8 = true := by decide +kernel

theorem mixed_15_9 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 9 = true := by decide +kernel

theorem mixed_15_10 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 10 = true := by decide +kernel

theorem mixed_15_11 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 11 = true := by decide +kernel

theorem mixed_15_12 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 12 = true := by decide +kernel

theorem mixed_15_13 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 13 = true := by decide +kernel

theorem mixed_15_14 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 14 = true := by decide +kernel

theorem mixed_15_15 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 15 = true := by decide +kernel

theorem mixed_15_16 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 16 = true := by decide +kernel

theorem mixed_15_17 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 17 = true := by decide +kernel

theorem mixed_15_18 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 18 = true := by decide +kernel

theorem mixed_15_19 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 19 = true := by decide +kernel

theorem mixed_15_20 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 20 = true := by decide +kernel

theorem mixed_row_15 (j : Fin 21) :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 15 j = true := by
  fin_cases j
  · exact mixed_15_0
  · exact mixed_15_1
  · exact mixed_15_2
  · exact mixed_15_3
  · exact mixed_15_4
  · exact mixed_15_5
  · exact mixed_15_6
  · exact mixed_15_7
  · exact mixed_15_8
  · exact mixed_15_9
  · exact mixed_15_10
  · exact mixed_15_11
  · exact mixed_15_12
  · exact mixed_15_13
  · exact mixed_15_14
  · exact mixed_15_15
  · exact mixed_15_16
  · exact mixed_15_17
  · exact mixed_15_18
  · exact mixed_15_19
  · exact mixed_15_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
