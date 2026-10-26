import KernelAtlas.WholeBall.Fourier2299SecondRealData
import KernelAtlas.WholeBall.MatrixColumns
import KernelAtlas.WholeBall.Fourier2299SecondImagData

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem polySecondReal_0_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 0 = true := by decide +kernel

theorem polySecondReal_0_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 1 = true := by decide +kernel

theorem polySecondReal_0_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 2 = true := by decide +kernel

theorem polySecondReal_0_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 3 = true := by decide +kernel

theorem polySecondReal_0_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 4 = true := by decide +kernel

theorem polySecondReal_0_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 5 = true := by decide +kernel

theorem polySecondReal_0_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 6 = true := by decide +kernel

theorem polySecondReal_0 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 0 j = true := by
  fin_cases j
  · exact polySecondReal_0_0
  · exact polySecondReal_0_1
  · exact polySecondReal_0_2
  · exact polySecondReal_0_3
  · exact polySecondReal_0_4
  · exact polySecondReal_0_5
  · exact polySecondReal_0_6

theorem polySecondReal_1_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 0 = true := by decide +kernel

theorem polySecondReal_1_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 1 = true := by decide +kernel

theorem polySecondReal_1_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 2 = true := by decide +kernel

theorem polySecondReal_1_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 3 = true := by decide +kernel

theorem polySecondReal_1_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 4 = true := by decide +kernel

theorem polySecondReal_1_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 5 = true := by decide +kernel

theorem polySecondReal_1_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 6 = true := by decide +kernel

theorem polySecondReal_1 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 1 j = true := by
  fin_cases j
  · exact polySecondReal_1_0
  · exact polySecondReal_1_1
  · exact polySecondReal_1_2
  · exact polySecondReal_1_3
  · exact polySecondReal_1_4
  · exact polySecondReal_1_5
  · exact polySecondReal_1_6

theorem polySecondReal_2_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 0 = true := by decide +kernel

theorem polySecondReal_2_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 1 = true := by decide +kernel

theorem polySecondReal_2_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 2 = true := by decide +kernel

theorem polySecondReal_2_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 3 = true := by decide +kernel

theorem polySecondReal_2_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 4 = true := by decide +kernel

theorem polySecondReal_2_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 5 = true := by decide +kernel

theorem polySecondReal_2_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 6 = true := by decide +kernel

theorem polySecondReal_2 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 2 j = true := by
  fin_cases j
  · exact polySecondReal_2_0
  · exact polySecondReal_2_1
  · exact polySecondReal_2_2
  · exact polySecondReal_2_3
  · exact polySecondReal_2_4
  · exact polySecondReal_2_5
  · exact polySecondReal_2_6

theorem polySecondReal_3_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 0 = true := by decide +kernel

theorem polySecondReal_3_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 1 = true := by decide +kernel

theorem polySecondReal_3_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 2 = true := by decide +kernel

theorem polySecondReal_3_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 3 = true := by decide +kernel

theorem polySecondReal_3_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 4 = true := by decide +kernel

theorem polySecondReal_3_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 5 = true := by decide +kernel

theorem polySecondReal_3_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 6 = true := by decide +kernel

theorem polySecondReal_3 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 3 j = true := by
  fin_cases j
  · exact polySecondReal_3_0
  · exact polySecondReal_3_1
  · exact polySecondReal_3_2
  · exact polySecondReal_3_3
  · exact polySecondReal_3_4
  · exact polySecondReal_3_5
  · exact polySecondReal_3_6

theorem polySecondReal_4_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 0 = true := by decide +kernel

theorem polySecondReal_4_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 1 = true := by decide +kernel

theorem polySecondReal_4_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 2 = true := by decide +kernel

theorem polySecondReal_4_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 3 = true := by decide +kernel

theorem polySecondReal_4_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 4 = true := by decide +kernel

theorem polySecondReal_4_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 5 = true := by decide +kernel

theorem polySecondReal_4_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 6 = true := by decide +kernel

theorem polySecondReal_4 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 4 j = true := by
  fin_cases j
  · exact polySecondReal_4_0
  · exact polySecondReal_4_1
  · exact polySecondReal_4_2
  · exact polySecondReal_4_3
  · exact polySecondReal_4_4
  · exact polySecondReal_4_5
  · exact polySecondReal_4_6

theorem polySecondReal_5_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 0 = true := by decide +kernel

theorem polySecondReal_5_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 1 = true := by decide +kernel

theorem polySecondReal_5_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 2 = true := by decide +kernel

theorem polySecondReal_5_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 3 = true := by decide +kernel

theorem polySecondReal_5_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 4 = true := by decide +kernel

theorem polySecondReal_5_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 5 = true := by decide +kernel

theorem polySecondReal_5_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 6 = true := by decide +kernel

theorem polySecondReal_5 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 5 j = true := by
  fin_cases j
  · exact polySecondReal_5_0
  · exact polySecondReal_5_1
  · exact polySecondReal_5_2
  · exact polySecondReal_5_3
  · exact polySecondReal_5_4
  · exact polySecondReal_5_5
  · exact polySecondReal_5_6

theorem polySecondReal_6_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 0 = true := by decide +kernel

theorem polySecondReal_6_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 1 = true := by decide +kernel

theorem polySecondReal_6_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 2 = true := by decide +kernel

theorem polySecondReal_6_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 3 = true := by decide +kernel

theorem polySecondReal_6_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 4 = true := by decide +kernel

theorem polySecondReal_6_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 5 = true := by decide +kernel

theorem polySecondReal_6_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 6 = true := by decide +kernel

theorem polySecondReal_6 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 6 j = true := by
  fin_cases j
  · exact polySecondReal_6_0
  · exact polySecondReal_6_1
  · exact polySecondReal_6_2
  · exact polySecondReal_6_3
  · exact polySecondReal_6_4
  · exact polySecondReal_6_5
  · exact polySecondReal_6_6

theorem polySecondReal_7_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 0 = true := by decide +kernel

theorem polySecondReal_7_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 1 = true := by decide +kernel

theorem polySecondReal_7_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 2 = true := by decide +kernel

theorem polySecondReal_7_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 3 = true := by decide +kernel

theorem polySecondReal_7_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 4 = true := by decide +kernel

theorem polySecondReal_7_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 5 = true := by decide +kernel

theorem polySecondReal_7_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 6 = true := by decide +kernel

theorem polySecondReal_7 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 7 j = true := by
  fin_cases j
  · exact polySecondReal_7_0
  · exact polySecondReal_7_1
  · exact polySecondReal_7_2
  · exact polySecondReal_7_3
  · exact polySecondReal_7_4
  · exact polySecondReal_7_5
  · exact polySecondReal_7_6

theorem polySecondReal_8_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 0 = true := by decide +kernel

theorem polySecondReal_8_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 1 = true := by decide +kernel

theorem polySecondReal_8_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 2 = true := by decide +kernel

theorem polySecondReal_8_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 3 = true := by decide +kernel

theorem polySecondReal_8_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 4 = true := by decide +kernel

theorem polySecondReal_8_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 5 = true := by decide +kernel

theorem polySecondReal_8_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 6 = true := by decide +kernel

theorem polySecondReal_8 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 8 j = true := by
  fin_cases j
  · exact polySecondReal_8_0
  · exact polySecondReal_8_1
  · exact polySecondReal_8_2
  · exact polySecondReal_8_3
  · exact polySecondReal_8_4
  · exact polySecondReal_8_5
  · exact polySecondReal_8_6

theorem polySecondReal_9_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 0 = true := by decide +kernel

theorem polySecondReal_9_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 1 = true := by decide +kernel

theorem polySecondReal_9_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 2 = true := by decide +kernel

theorem polySecondReal_9_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 3 = true := by decide +kernel

theorem polySecondReal_9_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 4 = true := by decide +kernel

theorem polySecondReal_9_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 5 = true := by decide +kernel

theorem polySecondReal_9_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 6 = true := by decide +kernel

theorem polySecondReal_9 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 9 j = true := by
  fin_cases j
  · exact polySecondReal_9_0
  · exact polySecondReal_9_1
  · exact polySecondReal_9_2
  · exact polySecondReal_9_3
  · exact polySecondReal_9_4
  · exact polySecondReal_9_5
  · exact polySecondReal_9_6

theorem polySecondReal_10_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 0 = true := by decide +kernel

theorem polySecondReal_10_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 1 = true := by decide +kernel

theorem polySecondReal_10_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 2 = true := by decide +kernel

theorem polySecondReal_10_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 3 = true := by decide +kernel

theorem polySecondReal_10_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 4 = true := by decide +kernel

theorem polySecondReal_10_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 5 = true := by decide +kernel

theorem polySecondReal_10_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 6 = true := by decide +kernel

theorem polySecondReal_10 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 10 j = true := by
  fin_cases j
  · exact polySecondReal_10_0
  · exact polySecondReal_10_1
  · exact polySecondReal_10_2
  · exact polySecondReal_10_3
  · exact polySecondReal_10_4
  · exact polySecondReal_10_5
  · exact polySecondReal_10_6

theorem polySecondReal_11_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 0 = true := by decide +kernel

theorem polySecondReal_11_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 1 = true := by decide +kernel

theorem polySecondReal_11_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 2 = true := by decide +kernel

theorem polySecondReal_11_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 3 = true := by decide +kernel

theorem polySecondReal_11_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 4 = true := by decide +kernel

theorem polySecondReal_11_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 5 = true := by decide +kernel

theorem polySecondReal_11_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 6 = true := by decide +kernel

theorem polySecondReal_11 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 11 j = true := by
  fin_cases j
  · exact polySecondReal_11_0
  · exact polySecondReal_11_1
  · exact polySecondReal_11_2
  · exact polySecondReal_11_3
  · exact polySecondReal_11_4
  · exact polySecondReal_11_5
  · exact polySecondReal_11_6

theorem polySecondReal_12_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 0 = true := by decide +kernel

theorem polySecondReal_12_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 1 = true := by decide +kernel

theorem polySecondReal_12_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 2 = true := by decide +kernel

theorem polySecondReal_12_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 3 = true := by decide +kernel

theorem polySecondReal_12_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 4 = true := by decide +kernel

theorem polySecondReal_12_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 5 = true := by decide +kernel

theorem polySecondReal_12_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 6 = true := by decide +kernel

theorem polySecondReal_12 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 12 j = true := by
  fin_cases j
  · exact polySecondReal_12_0
  · exact polySecondReal_12_1
  · exact polySecondReal_12_2
  · exact polySecondReal_12_3
  · exact polySecondReal_12_4
  · exact polySecondReal_12_5
  · exact polySecondReal_12_6

theorem polySecondReal_13_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 0 = true := by decide +kernel

theorem polySecondReal_13_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 1 = true := by decide +kernel

theorem polySecondReal_13_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 2 = true := by decide +kernel

theorem polySecondReal_13_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 3 = true := by decide +kernel

theorem polySecondReal_13_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 4 = true := by decide +kernel

theorem polySecondReal_13_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 5 = true := by decide +kernel

theorem polySecondReal_13_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 6 = true := by decide +kernel

theorem polySecondReal_13 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 13 j = true := by
  fin_cases j
  · exact polySecondReal_13_0
  · exact polySecondReal_13_1
  · exact polySecondReal_13_2
  · exact polySecondReal_13_3
  · exact polySecondReal_13_4
  · exact polySecondReal_13_5
  · exact polySecondReal_13_6

theorem polySecondReal_14_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 0 = true := by decide +kernel

theorem polySecondReal_14_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 1 = true := by decide +kernel

theorem polySecondReal_14_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 2 = true := by decide +kernel

theorem polySecondReal_14_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 3 = true := by decide +kernel

theorem polySecondReal_14_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 4 = true := by decide +kernel

theorem polySecondReal_14_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 5 = true := by decide +kernel

theorem polySecondReal_14_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 6 = true := by decide +kernel

theorem polySecondReal_14 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 14 j = true := by
  fin_cases j
  · exact polySecondReal_14_0
  · exact polySecondReal_14_1
  · exact polySecondReal_14_2
  · exact polySecondReal_14_3
  · exact polySecondReal_14_4
  · exact polySecondReal_14_5
  · exact polySecondReal_14_6

theorem polySecondReal_15_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 0 = true := by decide +kernel

theorem polySecondReal_15_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 1 = true := by decide +kernel

theorem polySecondReal_15_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 2 = true := by decide +kernel

theorem polySecondReal_15_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 3 = true := by decide +kernel

theorem polySecondReal_15_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 4 = true := by decide +kernel

theorem polySecondReal_15_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 5 = true := by decide +kernel

theorem polySecondReal_15_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 6 = true := by decide +kernel

theorem polySecondReal_15 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 15 j = true := by
  fin_cases j
  · exact polySecondReal_15_0
  · exact polySecondReal_15_1
  · exact polySecondReal_15_2
  · exact polySecondReal_15_3
  · exact polySecondReal_15_4
  · exact polySecondReal_15_5
  · exact polySecondReal_15_6

theorem polySecondReal_16_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 0 = true := by decide +kernel

theorem polySecondReal_16_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 1 = true := by decide +kernel

theorem polySecondReal_16_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 2 = true := by decide +kernel

theorem polySecondReal_16_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 3 = true := by decide +kernel

theorem polySecondReal_16_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 4 = true := by decide +kernel

theorem polySecondReal_16_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 5 = true := by decide +kernel

theorem polySecondReal_16_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 6 = true := by decide +kernel

theorem polySecondReal_16 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 16 j = true := by
  fin_cases j
  · exact polySecondReal_16_0
  · exact polySecondReal_16_1
  · exact polySecondReal_16_2
  · exact polySecondReal_16_3
  · exact polySecondReal_16_4
  · exact polySecondReal_16_5
  · exact polySecondReal_16_6

theorem polySecondReal_17_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 0 = true := by decide +kernel

theorem polySecondReal_17_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 1 = true := by decide +kernel

theorem polySecondReal_17_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 2 = true := by decide +kernel

theorem polySecondReal_17_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 3 = true := by decide +kernel

theorem polySecondReal_17_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 4 = true := by decide +kernel

theorem polySecondReal_17_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 5 = true := by decide +kernel

theorem polySecondReal_17_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 6 = true := by decide +kernel

theorem polySecondReal_17 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 17 j = true := by
  fin_cases j
  · exact polySecondReal_17_0
  · exact polySecondReal_17_1
  · exact polySecondReal_17_2
  · exact polySecondReal_17_3
  · exact polySecondReal_17_4
  · exact polySecondReal_17_5
  · exact polySecondReal_17_6

theorem polySecondReal_18_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 0 = true := by decide +kernel

theorem polySecondReal_18_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 1 = true := by decide +kernel

theorem polySecondReal_18_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 2 = true := by decide +kernel

theorem polySecondReal_18_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 3 = true := by decide +kernel

theorem polySecondReal_18_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 4 = true := by decide +kernel

theorem polySecondReal_18_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 5 = true := by decide +kernel

theorem polySecondReal_18_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 6 = true := by decide +kernel

theorem polySecondReal_18 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 18 j = true := by
  fin_cases j
  · exact polySecondReal_18_0
  · exact polySecondReal_18_1
  · exact polySecondReal_18_2
  · exact polySecondReal_18_3
  · exact polySecondReal_18_4
  · exact polySecondReal_18_5
  · exact polySecondReal_18_6

theorem polySecondReal_19_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 0 = true := by decide +kernel

theorem polySecondReal_19_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 1 = true := by decide +kernel

theorem polySecondReal_19_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 2 = true := by decide +kernel

theorem polySecondReal_19_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 3 = true := by decide +kernel

theorem polySecondReal_19_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 4 = true := by decide +kernel

theorem polySecondReal_19_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 5 = true := by decide +kernel

theorem polySecondReal_19_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 6 = true := by decide +kernel

theorem polySecondReal_19 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 19 j = true := by
  fin_cases j
  · exact polySecondReal_19_0
  · exact polySecondReal_19_1
  · exact polySecondReal_19_2
  · exact polySecondReal_19_3
  · exact polySecondReal_19_4
  · exact polySecondReal_19_5
  · exact polySecondReal_19_6

theorem polySecondReal_20_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 0 = true := by decide +kernel

theorem polySecondReal_20_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 1 = true := by decide +kernel

theorem polySecondReal_20_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 2 = true := by decide +kernel

theorem polySecondReal_20_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 3 = true := by decide +kernel

theorem polySecondReal_20_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 4 = true := by decide +kernel

theorem polySecondReal_20_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 5 = true := by decide +kernel

theorem polySecondReal_20_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 6 = true := by decide +kernel

theorem polySecondReal_20 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 20 j = true := by
  fin_cases j
  · exact polySecondReal_20_0
  · exact polySecondReal_20_1
  · exact polySecondReal_20_2
  · exact polySecondReal_20_3
  · exact polySecondReal_20_4
  · exact polySecondReal_20_5
  · exact polySecondReal_20_6

theorem polySecondReal_21_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 0 = true := by decide +kernel

theorem polySecondReal_21_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 1 = true := by decide +kernel

theorem polySecondReal_21_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 2 = true := by decide +kernel

theorem polySecondReal_21_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 3 = true := by decide +kernel

theorem polySecondReal_21_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 4 = true := by decide +kernel

theorem polySecondReal_21_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 5 = true := by decide +kernel

theorem polySecondReal_21_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 6 = true := by decide +kernel

theorem polySecondReal_21 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 21 j = true := by
  fin_cases j
  · exact polySecondReal_21_0
  · exact polySecondReal_21_1
  · exact polySecondReal_21_2
  · exact polySecondReal_21_3
  · exact polySecondReal_21_4
  · exact polySecondReal_21_5
  · exact polySecondReal_21_6

theorem polySecondReal_22_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 0 = true := by decide +kernel

theorem polySecondReal_22_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 1 = true := by decide +kernel

theorem polySecondReal_22_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 2 = true := by decide +kernel

theorem polySecondReal_22_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 3 = true := by decide +kernel

theorem polySecondReal_22_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 4 = true := by decide +kernel

theorem polySecondReal_22_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 5 = true := by decide +kernel

theorem polySecondReal_22_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 6 = true := by decide +kernel

theorem polySecondReal_22 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 22 j = true := by
  fin_cases j
  · exact polySecondReal_22_0
  · exact polySecondReal_22_1
  · exact polySecondReal_22_2
  · exact polySecondReal_22_3
  · exact polySecondReal_22_4
  · exact polySecondReal_22_5
  · exact polySecondReal_22_6

theorem polySecondReal_23_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 0 = true := by decide +kernel

theorem polySecondReal_23_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 1 = true := by decide +kernel

theorem polySecondReal_23_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 2 = true := by decide +kernel

theorem polySecondReal_23_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 3 = true := by decide +kernel

theorem polySecondReal_23_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 4 = true := by decide +kernel

theorem polySecondReal_23_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 5 = true := by decide +kernel

theorem polySecondReal_23_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 6 = true := by decide +kernel

theorem polySecondReal_23 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 23 j = true := by
  fin_cases j
  · exact polySecondReal_23_0
  · exact polySecondReal_23_1
  · exact polySecondReal_23_2
  · exact polySecondReal_23_3
  · exact polySecondReal_23_4
  · exact polySecondReal_23_5
  · exact polySecondReal_23_6

theorem polySecondReal_24_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 0 = true := by decide +kernel

theorem polySecondReal_24_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 1 = true := by decide +kernel

theorem polySecondReal_24_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 2 = true := by decide +kernel

theorem polySecondReal_24_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 3 = true := by decide +kernel

theorem polySecondReal_24_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 4 = true := by decide +kernel

theorem polySecondReal_24_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 5 = true := by decide +kernel

theorem polySecondReal_24_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 6 = true := by decide +kernel

theorem polySecondReal_24 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 24 j = true := by
  fin_cases j
  · exact polySecondReal_24_0
  · exact polySecondReal_24_1
  · exact polySecondReal_24_2
  · exact polySecondReal_24_3
  · exact polySecondReal_24_4
  · exact polySecondReal_24_5
  · exact polySecondReal_24_6

theorem polySecondReal_25_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 0 = true := by decide +kernel

theorem polySecondReal_25_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 1 = true := by decide +kernel

theorem polySecondReal_25_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 2 = true := by decide +kernel

theorem polySecondReal_25_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 3 = true := by decide +kernel

theorem polySecondReal_25_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 4 = true := by decide +kernel

theorem polySecondReal_25_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 5 = true := by decide +kernel

theorem polySecondReal_25_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 6 = true := by decide +kernel

theorem polySecondReal_25 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 25 j = true := by
  fin_cases j
  · exact polySecondReal_25_0
  · exact polySecondReal_25_1
  · exact polySecondReal_25_2
  · exact polySecondReal_25_3
  · exact polySecondReal_25_4
  · exact polySecondReal_25_5
  · exact polySecondReal_25_6

theorem polySecondReal_26_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 0 = true := by decide +kernel

theorem polySecondReal_26_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 1 = true := by decide +kernel

theorem polySecondReal_26_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 2 = true := by decide +kernel

theorem polySecondReal_26_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 3 = true := by decide +kernel

theorem polySecondReal_26_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 4 = true := by decide +kernel

theorem polySecondReal_26_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 5 = true := by decide +kernel

theorem polySecondReal_26_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 6 = true := by decide +kernel

theorem polySecondReal_26 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 26 j = true := by
  fin_cases j
  · exact polySecondReal_26_0
  · exact polySecondReal_26_1
  · exact polySecondReal_26_2
  · exact polySecondReal_26_3
  · exact polySecondReal_26_4
  · exact polySecondReal_26_5
  · exact polySecondReal_26_6

theorem polySecondReal_27_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 0 = true := by decide +kernel

theorem polySecondReal_27_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 1 = true := by decide +kernel

theorem polySecondReal_27_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 2 = true := by decide +kernel

theorem polySecondReal_27_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 3 = true := by decide +kernel

theorem polySecondReal_27_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 4 = true := by decide +kernel

theorem polySecondReal_27_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 5 = true := by decide +kernel

theorem polySecondReal_27_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 6 = true := by decide +kernel

theorem polySecondReal_27 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 27 j = true := by
  fin_cases j
  · exact polySecondReal_27_0
  · exact polySecondReal_27_1
  · exact polySecondReal_27_2
  · exact polySecondReal_27_3
  · exact polySecondReal_27_4
  · exact polySecondReal_27_5
  · exact polySecondReal_27_6

theorem polySecondReal_28_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 0 = true := by decide +kernel

theorem polySecondReal_28_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 1 = true := by decide +kernel

theorem polySecondReal_28_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 2 = true := by decide +kernel

theorem polySecondReal_28_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 3 = true := by decide +kernel

theorem polySecondReal_28_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 4 = true := by decide +kernel

theorem polySecondReal_28_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 5 = true := by decide +kernel

theorem polySecondReal_28_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 6 = true := by decide +kernel

theorem polySecondReal_28 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 28 j = true := by
  fin_cases j
  · exact polySecondReal_28_0
  · exact polySecondReal_28_1
  · exact polySecondReal_28_2
  · exact polySecondReal_28_3
  · exact polySecondReal_28_4
  · exact polySecondReal_28_5
  · exact polySecondReal_28_6

theorem polySecondReal_29_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 0 = true := by decide +kernel

theorem polySecondReal_29_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 1 = true := by decide +kernel

theorem polySecondReal_29_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 2 = true := by decide +kernel

theorem polySecondReal_29_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 3 = true := by decide +kernel

theorem polySecondReal_29_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 4 = true := by decide +kernel

theorem polySecondReal_29_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 5 = true := by decide +kernel

theorem polySecondReal_29_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 6 = true := by decide +kernel

theorem polySecondReal_29 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 29 j = true := by
  fin_cases j
  · exact polySecondReal_29_0
  · exact polySecondReal_29_1
  · exact polySecondReal_29_2
  · exact polySecondReal_29_3
  · exact polySecondReal_29_4
  · exact polySecondReal_29_5
  · exact polySecondReal_29_6

theorem polySecondReal_30_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 0 = true := by decide +kernel

theorem polySecondReal_30_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 1 = true := by decide +kernel

theorem polySecondReal_30_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 2 = true := by decide +kernel

theorem polySecondReal_30_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 3 = true := by decide +kernel

theorem polySecondReal_30_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 4 = true := by decide +kernel

theorem polySecondReal_30_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 5 = true := by decide +kernel

theorem polySecondReal_30_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 6 = true := by decide +kernel

theorem polySecondReal_30 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 30 j = true := by
  fin_cases j
  · exact polySecondReal_30_0
  · exact polySecondReal_30_1
  · exact polySecondReal_30_2
  · exact polySecondReal_30_3
  · exact polySecondReal_30_4
  · exact polySecondReal_30_5
  · exact polySecondReal_30_6

theorem polySecondReal_31_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 0 = true := by decide +kernel

theorem polySecondReal_31_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 1 = true := by decide +kernel

theorem polySecondReal_31_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 2 = true := by decide +kernel

theorem polySecondReal_31_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 3 = true := by decide +kernel

theorem polySecondReal_31_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 4 = true := by decide +kernel

theorem polySecondReal_31_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 5 = true := by decide +kernel

theorem polySecondReal_31_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 6 = true := by decide +kernel

theorem polySecondReal_31 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 31 j = true := by
  fin_cases j
  · exact polySecondReal_31_0
  · exact polySecondReal_31_1
  · exact polySecondReal_31_2
  · exact polySecondReal_31_3
  · exact polySecondReal_31_4
  · exact polySecondReal_31_5
  · exact polySecondReal_31_6

theorem polySecondReal_32_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 0 = true := by decide +kernel

theorem polySecondReal_32_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 1 = true := by decide +kernel

theorem polySecondReal_32_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 2 = true := by decide +kernel

theorem polySecondReal_32_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 3 = true := by decide +kernel

theorem polySecondReal_32_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 4 = true := by decide +kernel

theorem polySecondReal_32_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 5 = true := by decide +kernel

theorem polySecondReal_32_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 6 = true := by decide +kernel

theorem polySecondReal_32 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 32 j = true := by
  fin_cases j
  · exact polySecondReal_32_0
  · exact polySecondReal_32_1
  · exact polySecondReal_32_2
  · exact polySecondReal_32_3
  · exact polySecondReal_32_4
  · exact polySecondReal_32_5
  · exact polySecondReal_32_6

theorem polySecondReal_33_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 0 = true := by decide +kernel

theorem polySecondReal_33_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 1 = true := by decide +kernel

theorem polySecondReal_33_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 2 = true := by decide +kernel

theorem polySecondReal_33_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 3 = true := by decide +kernel

theorem polySecondReal_33_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 4 = true := by decide +kernel

theorem polySecondReal_33_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 5 = true := by decide +kernel

theorem polySecondReal_33_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 6 = true := by decide +kernel

theorem polySecondReal_33 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 33 j = true := by
  fin_cases j
  · exact polySecondReal_33_0
  · exact polySecondReal_33_1
  · exact polySecondReal_33_2
  · exact polySecondReal_33_3
  · exact polySecondReal_33_4
  · exact polySecondReal_33_5
  · exact polySecondReal_33_6

theorem polySecondReal_34_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 0 = true := by decide +kernel

theorem polySecondReal_34_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 1 = true := by decide +kernel

theorem polySecondReal_34_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 2 = true := by decide +kernel

theorem polySecondReal_34_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 3 = true := by decide +kernel

theorem polySecondReal_34_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 4 = true := by decide +kernel

theorem polySecondReal_34_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 5 = true := by decide +kernel

theorem polySecondReal_34_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 6 = true := by decide +kernel

theorem polySecondReal_34 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 34 j = true := by
  fin_cases j
  · exact polySecondReal_34_0
  · exact polySecondReal_34_1
  · exact polySecondReal_34_2
  · exact polySecondReal_34_3
  · exact polySecondReal_34_4
  · exact polySecondReal_34_5
  · exact polySecondReal_34_6

theorem polySecondReal_35_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 0 = true := by decide +kernel

theorem polySecondReal_35_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 1 = true := by decide +kernel

theorem polySecondReal_35_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 2 = true := by decide +kernel

theorem polySecondReal_35_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 3 = true := by decide +kernel

theorem polySecondReal_35_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 4 = true := by decide +kernel

theorem polySecondReal_35_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 5 = true := by decide +kernel

theorem polySecondReal_35_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 6 = true := by decide +kernel

theorem polySecondReal_35 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 35 j = true := by
  fin_cases j
  · exact polySecondReal_35_0
  · exact polySecondReal_35_1
  · exact polySecondReal_35_2
  · exact polySecondReal_35_3
  · exact polySecondReal_35_4
  · exact polySecondReal_35_5
  · exact polySecondReal_35_6

theorem polySecondReal_36_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 0 = true := by decide +kernel

theorem polySecondReal_36_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 1 = true := by decide +kernel

theorem polySecondReal_36_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 2 = true := by decide +kernel

theorem polySecondReal_36_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 3 = true := by decide +kernel

theorem polySecondReal_36_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 4 = true := by decide +kernel

theorem polySecondReal_36_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 5 = true := by decide +kernel

theorem polySecondReal_36_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 6 = true := by decide +kernel

theorem polySecondReal_36 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 36 j = true := by
  fin_cases j
  · exact polySecondReal_36_0
  · exact polySecondReal_36_1
  · exact polySecondReal_36_2
  · exact polySecondReal_36_3
  · exact polySecondReal_36_4
  · exact polySecondReal_36_5
  · exact polySecondReal_36_6

theorem polySecondReal_37_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 0 = true := by decide +kernel

theorem polySecondReal_37_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 1 = true := by decide +kernel

theorem polySecondReal_37_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 2 = true := by decide +kernel

theorem polySecondReal_37_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 3 = true := by decide +kernel

theorem polySecondReal_37_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 4 = true := by decide +kernel

theorem polySecondReal_37_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 5 = true := by decide +kernel

theorem polySecondReal_37_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 6 = true := by decide +kernel

theorem polySecondReal_37 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 37 j = true := by
  fin_cases j
  · exact polySecondReal_37_0
  · exact polySecondReal_37_1
  · exact polySecondReal_37_2
  · exact polySecondReal_37_3
  · exact polySecondReal_37_4
  · exact polySecondReal_37_5
  · exact polySecondReal_37_6

theorem polySecondReal_38_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 0 = true := by decide +kernel

theorem polySecondReal_38_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 1 = true := by decide +kernel

theorem polySecondReal_38_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 2 = true := by decide +kernel

theorem polySecondReal_38_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 3 = true := by decide +kernel

theorem polySecondReal_38_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 4 = true := by decide +kernel

theorem polySecondReal_38_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 5 = true := by decide +kernel

theorem polySecondReal_38_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 6 = true := by decide +kernel

theorem polySecondReal_38 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 38 j = true := by
  fin_cases j
  · exact polySecondReal_38_0
  · exact polySecondReal_38_1
  · exact polySecondReal_38_2
  · exact polySecondReal_38_3
  · exact polySecondReal_38_4
  · exact polySecondReal_38_5
  · exact polySecondReal_38_6

theorem polySecondReal_39_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 0 = true := by decide +kernel

theorem polySecondReal_39_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 1 = true := by decide +kernel

theorem polySecondReal_39_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 2 = true := by decide +kernel

theorem polySecondReal_39_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 3 = true := by decide +kernel

theorem polySecondReal_39_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 4 = true := by decide +kernel

theorem polySecondReal_39_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 5 = true := by decide +kernel

theorem polySecondReal_39_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 6 = true := by decide +kernel

theorem polySecondReal_39 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 39 j = true := by
  fin_cases j
  · exact polySecondReal_39_0
  · exact polySecondReal_39_1
  · exact polySecondReal_39_2
  · exact polySecondReal_39_3
  · exact polySecondReal_39_4
  · exact polySecondReal_39_5
  · exact polySecondReal_39_6

theorem polySecondReal_40_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 0 = true := by decide +kernel

theorem polySecondReal_40_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 1 = true := by decide +kernel

theorem polySecondReal_40_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 2 = true := by decide +kernel

theorem polySecondReal_40_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 3 = true := by decide +kernel

theorem polySecondReal_40_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 4 = true := by decide +kernel

theorem polySecondReal_40_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 5 = true := by decide +kernel

theorem polySecondReal_40_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 6 = true := by decide +kernel

theorem polySecondReal_40 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 40 j = true := by
  fin_cases j
  · exact polySecondReal_40_0
  · exact polySecondReal_40_1
  · exact polySecondReal_40_2
  · exact polySecondReal_40_3
  · exact polySecondReal_40_4
  · exact polySecondReal_40_5
  · exact polySecondReal_40_6

theorem polySecondReal_41_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 0 = true := by decide +kernel

theorem polySecondReal_41_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 1 = true := by decide +kernel

theorem polySecondReal_41_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 2 = true := by decide +kernel

theorem polySecondReal_41_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 3 = true := by decide +kernel

theorem polySecondReal_41_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 4 = true := by decide +kernel

theorem polySecondReal_41_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 5 = true := by decide +kernel

theorem polySecondReal_41_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 6 = true := by decide +kernel

theorem polySecondReal_41 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 41 j = true := by
  fin_cases j
  · exact polySecondReal_41_0
  · exact polySecondReal_41_1
  · exact polySecondReal_41_2
  · exact polySecondReal_41_3
  · exact polySecondReal_41_4
  · exact polySecondReal_41_5
  · exact polySecondReal_41_6

theorem polySecondReal_42_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 0 = true := by decide +kernel

theorem polySecondReal_42_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 1 = true := by decide +kernel

theorem polySecondReal_42_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 2 = true := by decide +kernel

theorem polySecondReal_42_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 3 = true := by decide +kernel

theorem polySecondReal_42_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 4 = true := by decide +kernel

theorem polySecondReal_42_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 5 = true := by decide +kernel

theorem polySecondReal_42_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 6 = true := by decide +kernel

theorem polySecondReal_42 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 42 j = true := by
  fin_cases j
  · exact polySecondReal_42_0
  · exact polySecondReal_42_1
  · exact polySecondReal_42_2
  · exact polySecondReal_42_3
  · exact polySecondReal_42_4
  · exact polySecondReal_42_5
  · exact polySecondReal_42_6

theorem polySecondReal_43_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 0 = true := by decide +kernel

theorem polySecondReal_43_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 1 = true := by decide +kernel

theorem polySecondReal_43_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 2 = true := by decide +kernel

theorem polySecondReal_43_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 3 = true := by decide +kernel

theorem polySecondReal_43_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 4 = true := by decide +kernel

theorem polySecondReal_43_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 5 = true := by decide +kernel

theorem polySecondReal_43_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 6 = true := by decide +kernel

theorem polySecondReal_43 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 43 j = true := by
  fin_cases j
  · exact polySecondReal_43_0
  · exact polySecondReal_43_1
  · exact polySecondReal_43_2
  · exact polySecondReal_43_3
  · exact polySecondReal_43_4
  · exact polySecondReal_43_5
  · exact polySecondReal_43_6

theorem polySecondReal_44_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 0 = true := by decide +kernel

theorem polySecondReal_44_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 1 = true := by decide +kernel

theorem polySecondReal_44_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 2 = true := by decide +kernel

theorem polySecondReal_44_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 3 = true := by decide +kernel

theorem polySecondReal_44_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 4 = true := by decide +kernel

theorem polySecondReal_44_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 5 = true := by decide +kernel

theorem polySecondReal_44_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 6 = true := by decide +kernel

theorem polySecondReal_44 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 44 j = true := by
  fin_cases j
  · exact polySecondReal_44_0
  · exact polySecondReal_44_1
  · exact polySecondReal_44_2
  · exact polySecondReal_44_3
  · exact polySecondReal_44_4
  · exact polySecondReal_44_5
  · exact polySecondReal_44_6

theorem polySecondReal_45_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 0 = true := by decide +kernel

theorem polySecondReal_45_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 1 = true := by decide +kernel

theorem polySecondReal_45_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 2 = true := by decide +kernel

theorem polySecondReal_45_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 3 = true := by decide +kernel

theorem polySecondReal_45_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 4 = true := by decide +kernel

theorem polySecondReal_45_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 5 = true := by decide +kernel

theorem polySecondReal_45_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 6 = true := by decide +kernel

theorem polySecondReal_45 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 45 j = true := by
  fin_cases j
  · exact polySecondReal_45_0
  · exact polySecondReal_45_1
  · exact polySecondReal_45_2
  · exact polySecondReal_45_3
  · exact polySecondReal_45_4
  · exact polySecondReal_45_5
  · exact polySecondReal_45_6

theorem polySecondReal_46_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 0 = true := by decide +kernel

theorem polySecondReal_46_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 1 = true := by decide +kernel

theorem polySecondReal_46_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 2 = true := by decide +kernel

theorem polySecondReal_46_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 3 = true := by decide +kernel

theorem polySecondReal_46_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 4 = true := by decide +kernel

theorem polySecondReal_46_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 5 = true := by decide +kernel

theorem polySecondReal_46_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 6 = true := by decide +kernel

theorem polySecondReal_46 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 46 j = true := by
  fin_cases j
  · exact polySecondReal_46_0
  · exact polySecondReal_46_1
  · exact polySecondReal_46_2
  · exact polySecondReal_46_3
  · exact polySecondReal_46_4
  · exact polySecondReal_46_5
  · exact polySecondReal_46_6

theorem polySecondReal_47_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 0 = true := by decide +kernel

theorem polySecondReal_47_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 1 = true := by decide +kernel

theorem polySecondReal_47_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 2 = true := by decide +kernel

theorem polySecondReal_47_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 3 = true := by decide +kernel

theorem polySecondReal_47_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 4 = true := by decide +kernel

theorem polySecondReal_47_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 5 = true := by decide +kernel

theorem polySecondReal_47_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 6 = true := by decide +kernel

theorem polySecondReal_47 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 47 j = true := by
  fin_cases j
  · exact polySecondReal_47_0
  · exact polySecondReal_47_1
  · exact polySecondReal_47_2
  · exact polySecondReal_47_3
  · exact polySecondReal_47_4
  · exact polySecondReal_47_5
  · exact polySecondReal_47_6

theorem polySecondReal_48_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 0 = true := by decide +kernel

theorem polySecondReal_48_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 1 = true := by decide +kernel

theorem polySecondReal_48_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 2 = true := by decide +kernel

theorem polySecondReal_48_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 3 = true := by decide +kernel

theorem polySecondReal_48_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 4 = true := by decide +kernel

theorem polySecondReal_48_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 5 = true := by decide +kernel

theorem polySecondReal_48_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 6 = true := by decide +kernel

theorem polySecondReal_48 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 48 j = true := by
  fin_cases j
  · exact polySecondReal_48_0
  · exact polySecondReal_48_1
  · exact polySecondReal_48_2
  · exact polySecondReal_48_3
  · exact polySecondReal_48_4
  · exact polySecondReal_48_5
  · exact polySecondReal_48_6

theorem polySecondReal_49_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 0 = true := by decide +kernel

theorem polySecondReal_49_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 1 = true := by decide +kernel

theorem polySecondReal_49_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 2 = true := by decide +kernel

theorem polySecondReal_49_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 3 = true := by decide +kernel

theorem polySecondReal_49_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 4 = true := by decide +kernel

theorem polySecondReal_49_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 5 = true := by decide +kernel

theorem polySecondReal_49_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 6 = true := by decide +kernel

theorem polySecondReal_49 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 49 j = true := by
  fin_cases j
  · exact polySecondReal_49_0
  · exact polySecondReal_49_1
  · exact polySecondReal_49_2
  · exact polySecondReal_49_3
  · exact polySecondReal_49_4
  · exact polySecondReal_49_5
  · exact polySecondReal_49_6

theorem polySecondReal_50_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 0 = true := by decide +kernel

theorem polySecondReal_50_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 1 = true := by decide +kernel

theorem polySecondReal_50_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 2 = true := by decide +kernel

theorem polySecondReal_50_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 3 = true := by decide +kernel

theorem polySecondReal_50_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 4 = true := by decide +kernel

theorem polySecondReal_50_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 5 = true := by decide +kernel

theorem polySecondReal_50_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 6 = true := by decide +kernel

theorem polySecondReal_50 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 50 j = true := by
  fin_cases j
  · exact polySecondReal_50_0
  · exact polySecondReal_50_1
  · exact polySecondReal_50_2
  · exact polySecondReal_50_3
  · exact polySecondReal_50_4
  · exact polySecondReal_50_5
  · exact polySecondReal_50_6

theorem polySecondReal_51_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 0 = true := by decide +kernel

theorem polySecondReal_51_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 1 = true := by decide +kernel

theorem polySecondReal_51_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 2 = true := by decide +kernel

theorem polySecondReal_51_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 3 = true := by decide +kernel

theorem polySecondReal_51_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 4 = true := by decide +kernel

theorem polySecondReal_51_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 5 = true := by decide +kernel

theorem polySecondReal_51_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 6 = true := by decide +kernel

theorem polySecondReal_51 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 51 j = true := by
  fin_cases j
  · exact polySecondReal_51_0
  · exact polySecondReal_51_1
  · exact polySecondReal_51_2
  · exact polySecondReal_51_3
  · exact polySecondReal_51_4
  · exact polySecondReal_51_5
  · exact polySecondReal_51_6

theorem polySecondReal_52_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 0 = true := by decide +kernel

theorem polySecondReal_52_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 1 = true := by decide +kernel

theorem polySecondReal_52_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 2 = true := by decide +kernel

theorem polySecondReal_52_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 3 = true := by decide +kernel

theorem polySecondReal_52_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 4 = true := by decide +kernel

theorem polySecondReal_52_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 5 = true := by decide +kernel

theorem polySecondReal_52_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 6 = true := by decide +kernel

theorem polySecondReal_52 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 52 j = true := by
  fin_cases j
  · exact polySecondReal_52_0
  · exact polySecondReal_52_1
  · exact polySecondReal_52_2
  · exact polySecondReal_52_3
  · exact polySecondReal_52_4
  · exact polySecondReal_52_5
  · exact polySecondReal_52_6

theorem polySecondReal_53_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 0 = true := by decide +kernel

theorem polySecondReal_53_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 1 = true := by decide +kernel

theorem polySecondReal_53_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 2 = true := by decide +kernel

theorem polySecondReal_53_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 3 = true := by decide +kernel

theorem polySecondReal_53_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 4 = true := by decide +kernel

theorem polySecondReal_53_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 5 = true := by decide +kernel

theorem polySecondReal_53_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 6 = true := by decide +kernel

theorem polySecondReal_53 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 53 j = true := by
  fin_cases j
  · exact polySecondReal_53_0
  · exact polySecondReal_53_1
  · exact polySecondReal_53_2
  · exact polySecondReal_53_3
  · exact polySecondReal_53_4
  · exact polySecondReal_53_5
  · exact polySecondReal_53_6

theorem polySecondReal_54_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 0 = true := by decide +kernel

theorem polySecondReal_54_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 1 = true := by decide +kernel

theorem polySecondReal_54_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 2 = true := by decide +kernel

theorem polySecondReal_54_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 3 = true := by decide +kernel

theorem polySecondReal_54_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 4 = true := by decide +kernel

theorem polySecondReal_54_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 5 = true := by decide +kernel

theorem polySecondReal_54_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 6 = true := by decide +kernel

theorem polySecondReal_54 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 54 j = true := by
  fin_cases j
  · exact polySecondReal_54_0
  · exact polySecondReal_54_1
  · exact polySecondReal_54_2
  · exact polySecondReal_54_3
  · exact polySecondReal_54_4
  · exact polySecondReal_54_5
  · exact polySecondReal_54_6

theorem polySecondReal_55_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 0 = true := by decide +kernel

theorem polySecondReal_55_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 1 = true := by decide +kernel

theorem polySecondReal_55_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 2 = true := by decide +kernel

theorem polySecondReal_55_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 3 = true := by decide +kernel

theorem polySecondReal_55_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 4 = true := by decide +kernel

theorem polySecondReal_55_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 5 = true := by decide +kernel

theorem polySecondReal_55_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 6 = true := by decide +kernel

theorem polySecondReal_55 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 55 j = true := by
  fin_cases j
  · exact polySecondReal_55_0
  · exact polySecondReal_55_1
  · exact polySecondReal_55_2
  · exact polySecondReal_55_3
  · exact polySecondReal_55_4
  · exact polySecondReal_55_5
  · exact polySecondReal_55_6

theorem polySecondReal_56_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 0 = true := by decide +kernel

theorem polySecondReal_56_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 1 = true := by decide +kernel

theorem polySecondReal_56_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 2 = true := by decide +kernel

theorem polySecondReal_56_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 3 = true := by decide +kernel

theorem polySecondReal_56_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 4 = true := by decide +kernel

theorem polySecondReal_56_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 5 = true := by decide +kernel

theorem polySecondReal_56_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 6 = true := by decide +kernel

theorem polySecondReal_56 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 56 j = true := by
  fin_cases j
  · exact polySecondReal_56_0
  · exact polySecondReal_56_1
  · exact polySecondReal_56_2
  · exact polySecondReal_56_3
  · exact polySecondReal_56_4
  · exact polySecondReal_56_5
  · exact polySecondReal_56_6

theorem polySecondReal_57_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 0 = true := by decide +kernel

theorem polySecondReal_57_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 1 = true := by decide +kernel

theorem polySecondReal_57_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 2 = true := by decide +kernel

theorem polySecondReal_57_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 3 = true := by decide +kernel

theorem polySecondReal_57_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 4 = true := by decide +kernel

theorem polySecondReal_57_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 5 = true := by decide +kernel

theorem polySecondReal_57_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 6 = true := by decide +kernel

theorem polySecondReal_57 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 57 j = true := by
  fin_cases j
  · exact polySecondReal_57_0
  · exact polySecondReal_57_1
  · exact polySecondReal_57_2
  · exact polySecondReal_57_3
  · exact polySecondReal_57_4
  · exact polySecondReal_57_5
  · exact polySecondReal_57_6

theorem polySecondReal_58_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 0 = true := by decide +kernel

theorem polySecondReal_58_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 1 = true := by decide +kernel

theorem polySecondReal_58_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 2 = true := by decide +kernel

theorem polySecondReal_58_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 3 = true := by decide +kernel

theorem polySecondReal_58_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 4 = true := by decide +kernel

theorem polySecondReal_58_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 5 = true := by decide +kernel

theorem polySecondReal_58_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 6 = true := by decide +kernel

theorem polySecondReal_58 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 58 j = true := by
  fin_cases j
  · exact polySecondReal_58_0
  · exact polySecondReal_58_1
  · exact polySecondReal_58_2
  · exact polySecondReal_58_3
  · exact polySecondReal_58_4
  · exact polySecondReal_58_5
  · exact polySecondReal_58_6

theorem polySecondReal_59_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 0 = true := by decide +kernel

theorem polySecondReal_59_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 1 = true := by decide +kernel

theorem polySecondReal_59_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 2 = true := by decide +kernel

theorem polySecondReal_59_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 3 = true := by decide +kernel

theorem polySecondReal_59_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 4 = true := by decide +kernel

theorem polySecondReal_59_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 5 = true := by decide +kernel

theorem polySecondReal_59_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 6 = true := by decide +kernel

theorem polySecondReal_59 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 59 j = true := by
  fin_cases j
  · exact polySecondReal_59_0
  · exact polySecondReal_59_1
  · exact polySecondReal_59_2
  · exact polySecondReal_59_3
  · exact polySecondReal_59_4
  · exact polySecondReal_59_5
  · exact polySecondReal_59_6

theorem polySecondReal_60_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 0 = true := by decide +kernel

theorem polySecondReal_60_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 1 = true := by decide +kernel

theorem polySecondReal_60_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 2 = true := by decide +kernel

theorem polySecondReal_60_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 3 = true := by decide +kernel

theorem polySecondReal_60_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 4 = true := by decide +kernel

theorem polySecondReal_60_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 5 = true := by decide +kernel

theorem polySecondReal_60_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 6 = true := by decide +kernel

theorem polySecondReal_60 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 60 j = true := by
  fin_cases j
  · exact polySecondReal_60_0
  · exact polySecondReal_60_1
  · exact polySecondReal_60_2
  · exact polySecondReal_60_3
  · exact polySecondReal_60_4
  · exact polySecondReal_60_5
  · exact polySecondReal_60_6

theorem polySecondReal_61_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 0 = true := by decide +kernel

theorem polySecondReal_61_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 1 = true := by decide +kernel

theorem polySecondReal_61_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 2 = true := by decide +kernel

theorem polySecondReal_61_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 3 = true := by decide +kernel

theorem polySecondReal_61_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 4 = true := by decide +kernel

theorem polySecondReal_61_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 5 = true := by decide +kernel

theorem polySecondReal_61_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 6 = true := by decide +kernel

theorem polySecondReal_61 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 61 j = true := by
  fin_cases j
  · exact polySecondReal_61_0
  · exact polySecondReal_61_1
  · exact polySecondReal_61_2
  · exact polySecondReal_61_3
  · exact polySecondReal_61_4
  · exact polySecondReal_61_5
  · exact polySecondReal_61_6

theorem polySecondReal_62_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 0 = true := by decide +kernel

theorem polySecondReal_62_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 1 = true := by decide +kernel

theorem polySecondReal_62_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 2 = true := by decide +kernel

theorem polySecondReal_62_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 3 = true := by decide +kernel

theorem polySecondReal_62_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 4 = true := by decide +kernel

theorem polySecondReal_62_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 5 = true := by decide +kernel

theorem polySecondReal_62_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 6 = true := by decide +kernel

theorem polySecondReal_62 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 62 j = true := by
  fin_cases j
  · exact polySecondReal_62_0
  · exact polySecondReal_62_1
  · exact polySecondReal_62_2
  · exact polySecondReal_62_3
  · exact polySecondReal_62_4
  · exact polySecondReal_62_5
  · exact polySecondReal_62_6

theorem polySecondReal_63_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 0 = true := by decide +kernel

theorem polySecondReal_63_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 1 = true := by decide +kernel

theorem polySecondReal_63_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 2 = true := by decide +kernel

theorem polySecondReal_63_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 3 = true := by decide +kernel

theorem polySecondReal_63_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 4 = true := by decide +kernel

theorem polySecondReal_63_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 5 = true := by decide +kernel

theorem polySecondReal_63_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 6 = true := by decide +kernel

theorem polySecondReal_63 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 63 j = true := by
  fin_cases j
  · exact polySecondReal_63_0
  · exact polySecondReal_63_1
  · exact polySecondReal_63_2
  · exact polySecondReal_63_3
  · exact polySecondReal_63_4
  · exact polySecondReal_63_5
  · exact polySecondReal_63_6

theorem polySecondReal_64_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 0 = true := by decide +kernel

theorem polySecondReal_64_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 1 = true := by decide +kernel

theorem polySecondReal_64_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 2 = true := by decide +kernel

theorem polySecondReal_64_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 3 = true := by decide +kernel

theorem polySecondReal_64_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 4 = true := by decide +kernel

theorem polySecondReal_64_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 5 = true := by decide +kernel

theorem polySecondReal_64_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 6 = true := by decide +kernel

theorem polySecondReal_64 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 64 j = true := by
  fin_cases j
  · exact polySecondReal_64_0
  · exact polySecondReal_64_1
  · exact polySecondReal_64_2
  · exact polySecondReal_64_3
  · exact polySecondReal_64_4
  · exact polySecondReal_64_5
  · exact polySecondReal_64_6

theorem polySecondReal_65_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 0 = true := by decide +kernel

theorem polySecondReal_65_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 1 = true := by decide +kernel

theorem polySecondReal_65_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 2 = true := by decide +kernel

theorem polySecondReal_65_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 3 = true := by decide +kernel

theorem polySecondReal_65_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 4 = true := by decide +kernel

theorem polySecondReal_65_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 5 = true := by decide +kernel

theorem polySecondReal_65_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 6 = true := by decide +kernel

theorem polySecondReal_65 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 65 j = true := by
  fin_cases j
  · exact polySecondReal_65_0
  · exact polySecondReal_65_1
  · exact polySecondReal_65_2
  · exact polySecondReal_65_3
  · exact polySecondReal_65_4
  · exact polySecondReal_65_5
  · exact polySecondReal_65_6

theorem polySecondReal_66_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 0 = true := by decide +kernel

theorem polySecondReal_66_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 1 = true := by decide +kernel

theorem polySecondReal_66_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 2 = true := by decide +kernel

theorem polySecondReal_66_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 3 = true := by decide +kernel

theorem polySecondReal_66_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 4 = true := by decide +kernel

theorem polySecondReal_66_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 5 = true := by decide +kernel

theorem polySecondReal_66_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 6 = true := by decide +kernel

theorem polySecondReal_66 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 66 j = true := by
  fin_cases j
  · exact polySecondReal_66_0
  · exact polySecondReal_66_1
  · exact polySecondReal_66_2
  · exact polySecondReal_66_3
  · exact polySecondReal_66_4
  · exact polySecondReal_66_5
  · exact polySecondReal_66_6

theorem polySecondReal_67_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 0 = true := by decide +kernel

theorem polySecondReal_67_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 1 = true := by decide +kernel

theorem polySecondReal_67_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 2 = true := by decide +kernel

theorem polySecondReal_67_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 3 = true := by decide +kernel

theorem polySecondReal_67_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 4 = true := by decide +kernel

theorem polySecondReal_67_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 5 = true := by decide +kernel

theorem polySecondReal_67_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 6 = true := by decide +kernel

theorem polySecondReal_67 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 67 j = true := by
  fin_cases j
  · exact polySecondReal_67_0
  · exact polySecondReal_67_1
  · exact polySecondReal_67_2
  · exact polySecondReal_67_3
  · exact polySecondReal_67_4
  · exact polySecondReal_67_5
  · exact polySecondReal_67_6

theorem polySecondReal_68_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 0 = true := by decide +kernel

theorem polySecondReal_68_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 1 = true := by decide +kernel

theorem polySecondReal_68_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 2 = true := by decide +kernel

theorem polySecondReal_68_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 3 = true := by decide +kernel

theorem polySecondReal_68_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 4 = true := by decide +kernel

theorem polySecondReal_68_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 5 = true := by decide +kernel

theorem polySecondReal_68_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 6 = true := by decide +kernel

theorem polySecondReal_68 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 68 j = true := by
  fin_cases j
  · exact polySecondReal_68_0
  · exact polySecondReal_68_1
  · exact polySecondReal_68_2
  · exact polySecondReal_68_3
  · exact polySecondReal_68_4
  · exact polySecondReal_68_5
  · exact polySecondReal_68_6

theorem polySecondReal_69_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 0 = true := by decide +kernel

theorem polySecondReal_69_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 1 = true := by decide +kernel

theorem polySecondReal_69_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 2 = true := by decide +kernel

theorem polySecondReal_69_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 3 = true := by decide +kernel

theorem polySecondReal_69_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 4 = true := by decide +kernel

theorem polySecondReal_69_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 5 = true := by decide +kernel

theorem polySecondReal_69_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 6 = true := by decide +kernel

theorem polySecondReal_69 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 69 j = true := by
  fin_cases j
  · exact polySecondReal_69_0
  · exact polySecondReal_69_1
  · exact polySecondReal_69_2
  · exact polySecondReal_69_3
  · exact polySecondReal_69_4
  · exact polySecondReal_69_5
  · exact polySecondReal_69_6

theorem polySecondReal_70_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 0 = true := by decide +kernel

theorem polySecondReal_70_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 1 = true := by decide +kernel

theorem polySecondReal_70_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 2 = true := by decide +kernel

theorem polySecondReal_70_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 3 = true := by decide +kernel

theorem polySecondReal_70_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 4 = true := by decide +kernel

theorem polySecondReal_70_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 5 = true := by decide +kernel

theorem polySecondReal_70_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 6 = true := by decide +kernel

theorem polySecondReal_70 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 70 j = true := by
  fin_cases j
  · exact polySecondReal_70_0
  · exact polySecondReal_70_1
  · exact polySecondReal_70_2
  · exact polySecondReal_70_3
  · exact polySecondReal_70_4
  · exact polySecondReal_70_5
  · exact polySecondReal_70_6

theorem polySecondReal_71_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 0 = true := by decide +kernel

theorem polySecondReal_71_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 1 = true := by decide +kernel

theorem polySecondReal_71_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 2 = true := by decide +kernel

theorem polySecondReal_71_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 3 = true := by decide +kernel

theorem polySecondReal_71_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 4 = true := by decide +kernel

theorem polySecondReal_71_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 5 = true := by decide +kernel

theorem polySecondReal_71_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 6 = true := by decide +kernel

theorem polySecondReal_71 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 71 j = true := by
  fin_cases j
  · exact polySecondReal_71_0
  · exact polySecondReal_71_1
  · exact polySecondReal_71_2
  · exact polySecondReal_71_3
  · exact polySecondReal_71_4
  · exact polySecondReal_71_5
  · exact polySecondReal_71_6

theorem polySecondReal_72_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 0 = true := by decide +kernel

theorem polySecondReal_72_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 1 = true := by decide +kernel

theorem polySecondReal_72_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 2 = true := by decide +kernel

theorem polySecondReal_72_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 3 = true := by decide +kernel

theorem polySecondReal_72_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 4 = true := by decide +kernel

theorem polySecondReal_72_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 5 = true := by decide +kernel

theorem polySecondReal_72_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 6 = true := by decide +kernel

theorem polySecondReal_72 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 72 j = true := by
  fin_cases j
  · exact polySecondReal_72_0
  · exact polySecondReal_72_1
  · exact polySecondReal_72_2
  · exact polySecondReal_72_3
  · exact polySecondReal_72_4
  · exact polySecondReal_72_5
  · exact polySecondReal_72_6

theorem polySecondReal_73_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 0 = true := by decide +kernel

theorem polySecondReal_73_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 1 = true := by decide +kernel

theorem polySecondReal_73_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 2 = true := by decide +kernel

theorem polySecondReal_73_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 3 = true := by decide +kernel

theorem polySecondReal_73_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 4 = true := by decide +kernel

theorem polySecondReal_73_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 5 = true := by decide +kernel

theorem polySecondReal_73_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 6 = true := by decide +kernel

theorem polySecondReal_73 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 73 j = true := by
  fin_cases j
  · exact polySecondReal_73_0
  · exact polySecondReal_73_1
  · exact polySecondReal_73_2
  · exact polySecondReal_73_3
  · exact polySecondReal_73_4
  · exact polySecondReal_73_5
  · exact polySecondReal_73_6

theorem polySecondReal_74_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 0 = true := by decide +kernel

theorem polySecondReal_74_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 1 = true := by decide +kernel

theorem polySecondReal_74_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 2 = true := by decide +kernel

theorem polySecondReal_74_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 3 = true := by decide +kernel

theorem polySecondReal_74_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 4 = true := by decide +kernel

theorem polySecondReal_74_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 5 = true := by decide +kernel

theorem polySecondReal_74_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 6 = true := by decide +kernel

theorem polySecondReal_74 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 74 j = true := by
  fin_cases j
  · exact polySecondReal_74_0
  · exact polySecondReal_74_1
  · exact polySecondReal_74_2
  · exact polySecondReal_74_3
  · exact polySecondReal_74_4
  · exact polySecondReal_74_5
  · exact polySecondReal_74_6

theorem polySecondReal_75_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 0 = true := by decide +kernel

theorem polySecondReal_75_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 1 = true := by decide +kernel

theorem polySecondReal_75_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 2 = true := by decide +kernel

theorem polySecondReal_75_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 3 = true := by decide +kernel

theorem polySecondReal_75_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 4 = true := by decide +kernel

theorem polySecondReal_75_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 5 = true := by decide +kernel

theorem polySecondReal_75_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 6 = true := by decide +kernel

theorem polySecondReal_75 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 75 j = true := by
  fin_cases j
  · exact polySecondReal_75_0
  · exact polySecondReal_75_1
  · exact polySecondReal_75_2
  · exact polySecondReal_75_3
  · exact polySecondReal_75_4
  · exact polySecondReal_75_5
  · exact polySecondReal_75_6

theorem polySecondReal_76_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 0 = true := by decide +kernel

theorem polySecondReal_76_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 1 = true := by decide +kernel

theorem polySecondReal_76_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 2 = true := by decide +kernel

theorem polySecondReal_76_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 3 = true := by decide +kernel

theorem polySecondReal_76_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 4 = true := by decide +kernel

theorem polySecondReal_76_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 5 = true := by decide +kernel

theorem polySecondReal_76_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 6 = true := by decide +kernel

theorem polySecondReal_76 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 76 j = true := by
  fin_cases j
  · exact polySecondReal_76_0
  · exact polySecondReal_76_1
  · exact polySecondReal_76_2
  · exact polySecondReal_76_3
  · exact polySecondReal_76_4
  · exact polySecondReal_76_5
  · exact polySecondReal_76_6

theorem polySecondReal_77_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 0 = true := by decide +kernel

theorem polySecondReal_77_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 1 = true := by decide +kernel

theorem polySecondReal_77_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 2 = true := by decide +kernel

theorem polySecondReal_77_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 3 = true := by decide +kernel

theorem polySecondReal_77_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 4 = true := by decide +kernel

theorem polySecondReal_77_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 5 = true := by decide +kernel

theorem polySecondReal_77_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 6 = true := by decide +kernel

theorem polySecondReal_77 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 77 j = true := by
  fin_cases j
  · exact polySecondReal_77_0
  · exact polySecondReal_77_1
  · exact polySecondReal_77_2
  · exact polySecondReal_77_3
  · exact polySecondReal_77_4
  · exact polySecondReal_77_5
  · exact polySecondReal_77_6

theorem polySecondReal_78_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 0 = true := by decide +kernel

theorem polySecondReal_78_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 1 = true := by decide +kernel

theorem polySecondReal_78_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 2 = true := by decide +kernel

theorem polySecondReal_78_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 3 = true := by decide +kernel

theorem polySecondReal_78_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 4 = true := by decide +kernel

theorem polySecondReal_78_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 5 = true := by decide +kernel

theorem polySecondReal_78_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 6 = true := by decide +kernel

theorem polySecondReal_78 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 78 j = true := by
  fin_cases j
  · exact polySecondReal_78_0
  · exact polySecondReal_78_1
  · exact polySecondReal_78_2
  · exact polySecondReal_78_3
  · exact polySecondReal_78_4
  · exact polySecondReal_78_5
  · exact polySecondReal_78_6

theorem polySecondReal_79_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 0 = true := by decide +kernel

theorem polySecondReal_79_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 1 = true := by decide +kernel

theorem polySecondReal_79_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 2 = true := by decide +kernel

theorem polySecondReal_79_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 3 = true := by decide +kernel

theorem polySecondReal_79_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 4 = true := by decide +kernel

theorem polySecondReal_79_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 5 = true := by decide +kernel

theorem polySecondReal_79_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 6 = true := by decide +kernel

theorem polySecondReal_79 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 79 j = true := by
  fin_cases j
  · exact polySecondReal_79_0
  · exact polySecondReal_79_1
  · exact polySecondReal_79_2
  · exact polySecondReal_79_3
  · exact polySecondReal_79_4
  · exact polySecondReal_79_5
  · exact polySecondReal_79_6

theorem polySecondReal_80_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 0 = true := by decide +kernel

theorem polySecondReal_80_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 1 = true := by decide +kernel

theorem polySecondReal_80_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 2 = true := by decide +kernel

theorem polySecondReal_80_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 3 = true := by decide +kernel

theorem polySecondReal_80_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 4 = true := by decide +kernel

theorem polySecondReal_80_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 5 = true := by decide +kernel

theorem polySecondReal_80_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 6 = true := by decide +kernel

theorem polySecondReal_80 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 80 j = true := by
  fin_cases j
  · exact polySecondReal_80_0
  · exact polySecondReal_80_1
  · exact polySecondReal_80_2
  · exact polySecondReal_80_3
  · exact polySecondReal_80_4
  · exact polySecondReal_80_5
  · exact polySecondReal_80_6

theorem polySecondReal_81_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 0 = true := by decide +kernel

theorem polySecondReal_81_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 1 = true := by decide +kernel

theorem polySecondReal_81_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 2 = true := by decide +kernel

theorem polySecondReal_81_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 3 = true := by decide +kernel

theorem polySecondReal_81_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 4 = true := by decide +kernel

theorem polySecondReal_81_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 5 = true := by decide +kernel

theorem polySecondReal_81_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 6 = true := by decide +kernel

theorem polySecondReal_81 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 81 j = true := by
  fin_cases j
  · exact polySecondReal_81_0
  · exact polySecondReal_81_1
  · exact polySecondReal_81_2
  · exact polySecondReal_81_3
  · exact polySecondReal_81_4
  · exact polySecondReal_81_5
  · exact polySecondReal_81_6

theorem polySecondReal_82_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 0 = true := by decide +kernel

theorem polySecondReal_82_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 1 = true := by decide +kernel

theorem polySecondReal_82_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 2 = true := by decide +kernel

theorem polySecondReal_82_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 3 = true := by decide +kernel

theorem polySecondReal_82_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 4 = true := by decide +kernel

theorem polySecondReal_82_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 5 = true := by decide +kernel

theorem polySecondReal_82_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 6 = true := by decide +kernel

theorem polySecondReal_82 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 82 j = true := by
  fin_cases j
  · exact polySecondReal_82_0
  · exact polySecondReal_82_1
  · exact polySecondReal_82_2
  · exact polySecondReal_82_3
  · exact polySecondReal_82_4
  · exact polySecondReal_82_5
  · exact polySecondReal_82_6

theorem polySecondReal_83_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 0 = true := by decide +kernel

theorem polySecondReal_83_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 1 = true := by decide +kernel

theorem polySecondReal_83_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 2 = true := by decide +kernel

theorem polySecondReal_83_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 3 = true := by decide +kernel

theorem polySecondReal_83_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 4 = true := by decide +kernel

theorem polySecondReal_83_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 5 = true := by decide +kernel

theorem polySecondReal_83_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 6 = true := by decide +kernel

theorem polySecondReal_83 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 83 j = true := by
  fin_cases j
  · exact polySecondReal_83_0
  · exact polySecondReal_83_1
  · exact polySecondReal_83_2
  · exact polySecondReal_83_3
  · exact polySecondReal_83_4
  · exact polySecondReal_83_5
  · exact polySecondReal_83_6

theorem polySecondReal_84_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 0 = true := by decide +kernel

theorem polySecondReal_84_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 1 = true := by decide +kernel

theorem polySecondReal_84_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 2 = true := by decide +kernel

theorem polySecondReal_84_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 3 = true := by decide +kernel

theorem polySecondReal_84_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 4 = true := by decide +kernel

theorem polySecondReal_84_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 5 = true := by decide +kernel

theorem polySecondReal_84_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 6 = true := by decide +kernel

theorem polySecondReal_84 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 84 j = true := by
  fin_cases j
  · exact polySecondReal_84_0
  · exact polySecondReal_84_1
  · exact polySecondReal_84_2
  · exact polySecondReal_84_3
  · exact polySecondReal_84_4
  · exact polySecondReal_84_5
  · exact polySecondReal_84_6

theorem polySecondReal_85_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 0 = true := by decide +kernel

theorem polySecondReal_85_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 1 = true := by decide +kernel

theorem polySecondReal_85_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 2 = true := by decide +kernel

theorem polySecondReal_85_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 3 = true := by decide +kernel

theorem polySecondReal_85_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 4 = true := by decide +kernel

theorem polySecondReal_85_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 5 = true := by decide +kernel

theorem polySecondReal_85_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 6 = true := by decide +kernel

theorem polySecondReal_85 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 85 j = true := by
  fin_cases j
  · exact polySecondReal_85_0
  · exact polySecondReal_85_1
  · exact polySecondReal_85_2
  · exact polySecondReal_85_3
  · exact polySecondReal_85_4
  · exact polySecondReal_85_5
  · exact polySecondReal_85_6

theorem polySecondReal_86_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 0 = true := by decide +kernel

theorem polySecondReal_86_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 1 = true := by decide +kernel

theorem polySecondReal_86_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 2 = true := by decide +kernel

theorem polySecondReal_86_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 3 = true := by decide +kernel

theorem polySecondReal_86_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 4 = true := by decide +kernel

theorem polySecondReal_86_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 5 = true := by decide +kernel

theorem polySecondReal_86_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 6 = true := by decide +kernel

theorem polySecondReal_86 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 86 j = true := by
  fin_cases j
  · exact polySecondReal_86_0
  · exact polySecondReal_86_1
  · exact polySecondReal_86_2
  · exact polySecondReal_86_3
  · exact polySecondReal_86_4
  · exact polySecondReal_86_5
  · exact polySecondReal_86_6

theorem polySecondReal_87_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 0 = true := by decide +kernel

theorem polySecondReal_87_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 1 = true := by decide +kernel

theorem polySecondReal_87_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 2 = true := by decide +kernel

theorem polySecondReal_87_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 3 = true := by decide +kernel

theorem polySecondReal_87_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 4 = true := by decide +kernel

theorem polySecondReal_87_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 5 = true := by decide +kernel

theorem polySecondReal_87_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 6 = true := by decide +kernel

theorem polySecondReal_87 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 87 j = true := by
  fin_cases j
  · exact polySecondReal_87_0
  · exact polySecondReal_87_1
  · exact polySecondReal_87_2
  · exact polySecondReal_87_3
  · exact polySecondReal_87_4
  · exact polySecondReal_87_5
  · exact polySecondReal_87_6

theorem polySecondReal_88_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 0 = true := by decide +kernel

theorem polySecondReal_88_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 1 = true := by decide +kernel

theorem polySecondReal_88_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 2 = true := by decide +kernel

theorem polySecondReal_88_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 3 = true := by decide +kernel

theorem polySecondReal_88_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 4 = true := by decide +kernel

theorem polySecondReal_88_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 5 = true := by decide +kernel

theorem polySecondReal_88_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 6 = true := by decide +kernel

theorem polySecondReal_88 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 88 j = true := by
  fin_cases j
  · exact polySecondReal_88_0
  · exact polySecondReal_88_1
  · exact polySecondReal_88_2
  · exact polySecondReal_88_3
  · exact polySecondReal_88_4
  · exact polySecondReal_88_5
  · exact polySecondReal_88_6

theorem polySecondReal_89_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 0 = true := by decide +kernel

theorem polySecondReal_89_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 1 = true := by decide +kernel

theorem polySecondReal_89_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 2 = true := by decide +kernel

theorem polySecondReal_89_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 3 = true := by decide +kernel

theorem polySecondReal_89_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 4 = true := by decide +kernel

theorem polySecondReal_89_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 5 = true := by decide +kernel

theorem polySecondReal_89_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 6 = true := by decide +kernel

theorem polySecondReal_89 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) (data.fourier.T.rowTensor data.fourier.D) polySecondReal 89 j = true := by
  fin_cases j
  · exact polySecondReal_89_0
  · exact polySecondReal_89_1
  · exact polySecondReal_89_2
  · exact polySecondReal_89_3
  · exact polySecondReal_89_4
  · exact polySecondReal_89_5
  · exact polySecondReal_89_6

theorem polySecondReal_eq : (data.fourier.T.rowTensor data.fourier.D) = polySecondReal := by
  apply MatrixBox.eq_of_exact_blocks (k := 7) (b := 48)
  intro i j
  fin_cases i
  · exact polySecondReal_0 j
  · exact polySecondReal_1 j
  · exact polySecondReal_2 j
  · exact polySecondReal_3 j
  · exact polySecondReal_4 j
  · exact polySecondReal_5 j
  · exact polySecondReal_6 j
  · exact polySecondReal_7 j
  · exact polySecondReal_8 j
  · exact polySecondReal_9 j
  · exact polySecondReal_10 j
  · exact polySecondReal_11 j
  · exact polySecondReal_12 j
  · exact polySecondReal_13 j
  · exact polySecondReal_14 j
  · exact polySecondReal_15 j
  · exact polySecondReal_16 j
  · exact polySecondReal_17 j
  · exact polySecondReal_18 j
  · exact polySecondReal_19 j
  · exact polySecondReal_20 j
  · exact polySecondReal_21 j
  · exact polySecondReal_22 j
  · exact polySecondReal_23 j
  · exact polySecondReal_24 j
  · exact polySecondReal_25 j
  · exact polySecondReal_26 j
  · exact polySecondReal_27 j
  · exact polySecondReal_28 j
  · exact polySecondReal_29 j
  · exact polySecondReal_30 j
  · exact polySecondReal_31 j
  · exact polySecondReal_32 j
  · exact polySecondReal_33 j
  · exact polySecondReal_34 j
  · exact polySecondReal_35 j
  · exact polySecondReal_36 j
  · exact polySecondReal_37 j
  · exact polySecondReal_38 j
  · exact polySecondReal_39 j
  · exact polySecondReal_40 j
  · exact polySecondReal_41 j
  · exact polySecondReal_42 j
  · exact polySecondReal_43 j
  · exact polySecondReal_44 j
  · exact polySecondReal_45 j
  · exact polySecondReal_46 j
  · exact polySecondReal_47 j
  · exact polySecondReal_48 j
  · exact polySecondReal_49 j
  · exact polySecondReal_50 j
  · exact polySecondReal_51 j
  · exact polySecondReal_52 j
  · exact polySecondReal_53 j
  · exact polySecondReal_54 j
  · exact polySecondReal_55 j
  · exact polySecondReal_56 j
  · exact polySecondReal_57 j
  · exact polySecondReal_58 j
  · exact polySecondReal_59 j
  · exact polySecondReal_60 j
  · exact polySecondReal_61 j
  · exact polySecondReal_62 j
  · exact polySecondReal_63 j
  · exact polySecondReal_64 j
  · exact polySecondReal_65 j
  · exact polySecondReal_66 j
  · exact polySecondReal_67 j
  · exact polySecondReal_68 j
  · exact polySecondReal_69 j
  · exact polySecondReal_70 j
  · exact polySecondReal_71 j
  · exact polySecondReal_72 j
  · exact polySecondReal_73 j
  · exact polySecondReal_74 j
  · exact polySecondReal_75 j
  · exact polySecondReal_76 j
  · exact polySecondReal_77 j
  · exact polySecondReal_78 j
  · exact polySecondReal_79 j
  · exact polySecondReal_80 j
  · exact polySecondReal_81 j
  · exact polySecondReal_82 j
  · exact polySecondReal_83 j
  · exact polySecondReal_84 j
  · exact polySecondReal_85 j
  · exact polySecondReal_86 j
  · exact polySecondReal_87 j
  · exact polySecondReal_88 j
  · exact polySecondReal_89 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
