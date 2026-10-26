import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299MixedRow18

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_19_0 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 0 = true := by decide +kernel

theorem mixed_19_1 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 1 = true := by decide +kernel

theorem mixed_19_2 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 2 = true := by decide +kernel

theorem mixed_19_3 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 3 = true := by decide +kernel

theorem mixed_19_4 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 4 = true := by decide +kernel

theorem mixed_19_5 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 5 = true := by decide +kernel

theorem mixed_19_6 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 6 = true := by decide +kernel

theorem mixed_19_7 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 7 = true := by decide +kernel

theorem mixed_19_8 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 8 = true := by decide +kernel

theorem mixed_19_9 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 9 = true := by decide +kernel

theorem mixed_19_10 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 10 = true := by decide +kernel

theorem mixed_19_11 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 11 = true := by decide +kernel

theorem mixed_19_12 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 12 = true := by decide +kernel

theorem mixed_19_13 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 13 = true := by decide +kernel

theorem mixed_19_14 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 14 = true := by decide +kernel

theorem mixed_19_15 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 15 = true := by decide +kernel

theorem mixed_19_16 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 16 = true := by decide +kernel

theorem mixed_19_17 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 17 = true := by decide +kernel

theorem mixed_19_18 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 18 = true := by decide +kernel

theorem mixed_19_19 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 19 = true := by decide +kernel

theorem mixed_19_20 :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 20 = true := by decide +kernel

theorem mixed_row_19 (j : Fin 21) :
    MatrixBox.enclosesBlockCheck (k := 21) (b := 4) (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg data.mixed 19 j = true := by
  fin_cases j
  · exact mixed_19_0
  · exact mixed_19_1
  · exact mixed_19_2
  · exact mixed_19_3
  · exact mixed_19_4
  · exact mixed_19_5
  · exact mixed_19_6
  · exact mixed_19_7
  · exact mixed_19_8
  · exact mixed_19_9
  · exact mixed_19_10
  · exact mixed_19_11
  · exact mixed_19_12
  · exact mixed_19_13
  · exact mixed_19_14
  · exact mixed_19_15
  · exact mixed_19_16
  · exact mixed_19_17
  · exact mixed_19_18
  · exact mixed_19_19
  · exact mixed_19_20

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
