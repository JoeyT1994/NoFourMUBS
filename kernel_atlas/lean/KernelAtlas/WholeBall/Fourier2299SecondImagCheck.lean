import KernelAtlas.WholeBall.Fourier2299SecondImagData
import KernelAtlas.WholeBall.MatrixColumns
import KernelAtlas.WholeBall.Fourier2299SecondRealCheck

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem polySecondImag_0_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 0 = true := by decide +kernel

theorem polySecondImag_0_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 1 = true := by decide +kernel

theorem polySecondImag_0_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 2 = true := by decide +kernel

theorem polySecondImag_0_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 3 = true := by decide +kernel

theorem polySecondImag_0_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 4 = true := by decide +kernel

theorem polySecondImag_0_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 5 = true := by decide +kernel

theorem polySecondImag_0_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 6 = true := by decide +kernel

theorem polySecondImag_0 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 0 j = true := by
  fin_cases j
  · exact polySecondImag_0_0
  · exact polySecondImag_0_1
  · exact polySecondImag_0_2
  · exact polySecondImag_0_3
  · exact polySecondImag_0_4
  · exact polySecondImag_0_5
  · exact polySecondImag_0_6

theorem polySecondImag_1_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 0 = true := by decide +kernel

theorem polySecondImag_1_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 1 = true := by decide +kernel

theorem polySecondImag_1_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 2 = true := by decide +kernel

theorem polySecondImag_1_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 3 = true := by decide +kernel

theorem polySecondImag_1_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 4 = true := by decide +kernel

theorem polySecondImag_1_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 5 = true := by decide +kernel

theorem polySecondImag_1_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 6 = true := by decide +kernel

theorem polySecondImag_1 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 1 j = true := by
  fin_cases j
  · exact polySecondImag_1_0
  · exact polySecondImag_1_1
  · exact polySecondImag_1_2
  · exact polySecondImag_1_3
  · exact polySecondImag_1_4
  · exact polySecondImag_1_5
  · exact polySecondImag_1_6

theorem polySecondImag_2_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 0 = true := by decide +kernel

theorem polySecondImag_2_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 1 = true := by decide +kernel

theorem polySecondImag_2_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 2 = true := by decide +kernel

theorem polySecondImag_2_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 3 = true := by decide +kernel

theorem polySecondImag_2_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 4 = true := by decide +kernel

theorem polySecondImag_2_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 5 = true := by decide +kernel

theorem polySecondImag_2_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 6 = true := by decide +kernel

theorem polySecondImag_2 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 2 j = true := by
  fin_cases j
  · exact polySecondImag_2_0
  · exact polySecondImag_2_1
  · exact polySecondImag_2_2
  · exact polySecondImag_2_3
  · exact polySecondImag_2_4
  · exact polySecondImag_2_5
  · exact polySecondImag_2_6

theorem polySecondImag_3_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 0 = true := by decide +kernel

theorem polySecondImag_3_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 1 = true := by decide +kernel

theorem polySecondImag_3_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 2 = true := by decide +kernel

theorem polySecondImag_3_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 3 = true := by decide +kernel

theorem polySecondImag_3_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 4 = true := by decide +kernel

theorem polySecondImag_3_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 5 = true := by decide +kernel

theorem polySecondImag_3_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 6 = true := by decide +kernel

theorem polySecondImag_3 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 3 j = true := by
  fin_cases j
  · exact polySecondImag_3_0
  · exact polySecondImag_3_1
  · exact polySecondImag_3_2
  · exact polySecondImag_3_3
  · exact polySecondImag_3_4
  · exact polySecondImag_3_5
  · exact polySecondImag_3_6

theorem polySecondImag_4_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 0 = true := by decide +kernel

theorem polySecondImag_4_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 1 = true := by decide +kernel

theorem polySecondImag_4_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 2 = true := by decide +kernel

theorem polySecondImag_4_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 3 = true := by decide +kernel

theorem polySecondImag_4_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 4 = true := by decide +kernel

theorem polySecondImag_4_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 5 = true := by decide +kernel

theorem polySecondImag_4_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 6 = true := by decide +kernel

theorem polySecondImag_4 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 4 j = true := by
  fin_cases j
  · exact polySecondImag_4_0
  · exact polySecondImag_4_1
  · exact polySecondImag_4_2
  · exact polySecondImag_4_3
  · exact polySecondImag_4_4
  · exact polySecondImag_4_5
  · exact polySecondImag_4_6

theorem polySecondImag_5_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 0 = true := by decide +kernel

theorem polySecondImag_5_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 1 = true := by decide +kernel

theorem polySecondImag_5_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 2 = true := by decide +kernel

theorem polySecondImag_5_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 3 = true := by decide +kernel

theorem polySecondImag_5_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 4 = true := by decide +kernel

theorem polySecondImag_5_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 5 = true := by decide +kernel

theorem polySecondImag_5_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 6 = true := by decide +kernel

theorem polySecondImag_5 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 5 j = true := by
  fin_cases j
  · exact polySecondImag_5_0
  · exact polySecondImag_5_1
  · exact polySecondImag_5_2
  · exact polySecondImag_5_3
  · exact polySecondImag_5_4
  · exact polySecondImag_5_5
  · exact polySecondImag_5_6

theorem polySecondImag_6_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 0 = true := by decide +kernel

theorem polySecondImag_6_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 1 = true := by decide +kernel

theorem polySecondImag_6_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 2 = true := by decide +kernel

theorem polySecondImag_6_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 3 = true := by decide +kernel

theorem polySecondImag_6_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 4 = true := by decide +kernel

theorem polySecondImag_6_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 5 = true := by decide +kernel

theorem polySecondImag_6_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 6 = true := by decide +kernel

theorem polySecondImag_6 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 6 j = true := by
  fin_cases j
  · exact polySecondImag_6_0
  · exact polySecondImag_6_1
  · exact polySecondImag_6_2
  · exact polySecondImag_6_3
  · exact polySecondImag_6_4
  · exact polySecondImag_6_5
  · exact polySecondImag_6_6

theorem polySecondImag_7_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 0 = true := by decide +kernel

theorem polySecondImag_7_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 1 = true := by decide +kernel

theorem polySecondImag_7_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 2 = true := by decide +kernel

theorem polySecondImag_7_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 3 = true := by decide +kernel

theorem polySecondImag_7_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 4 = true := by decide +kernel

theorem polySecondImag_7_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 5 = true := by decide +kernel

theorem polySecondImag_7_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 6 = true := by decide +kernel

theorem polySecondImag_7 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 7 j = true := by
  fin_cases j
  · exact polySecondImag_7_0
  · exact polySecondImag_7_1
  · exact polySecondImag_7_2
  · exact polySecondImag_7_3
  · exact polySecondImag_7_4
  · exact polySecondImag_7_5
  · exact polySecondImag_7_6

theorem polySecondImag_8_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 0 = true := by decide +kernel

theorem polySecondImag_8_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 1 = true := by decide +kernel

theorem polySecondImag_8_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 2 = true := by decide +kernel

theorem polySecondImag_8_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 3 = true := by decide +kernel

theorem polySecondImag_8_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 4 = true := by decide +kernel

theorem polySecondImag_8_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 5 = true := by decide +kernel

theorem polySecondImag_8_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 6 = true := by decide +kernel

theorem polySecondImag_8 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 8 j = true := by
  fin_cases j
  · exact polySecondImag_8_0
  · exact polySecondImag_8_1
  · exact polySecondImag_8_2
  · exact polySecondImag_8_3
  · exact polySecondImag_8_4
  · exact polySecondImag_8_5
  · exact polySecondImag_8_6

theorem polySecondImag_9_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 0 = true := by decide +kernel

theorem polySecondImag_9_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 1 = true := by decide +kernel

theorem polySecondImag_9_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 2 = true := by decide +kernel

theorem polySecondImag_9_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 3 = true := by decide +kernel

theorem polySecondImag_9_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 4 = true := by decide +kernel

theorem polySecondImag_9_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 5 = true := by decide +kernel

theorem polySecondImag_9_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 6 = true := by decide +kernel

theorem polySecondImag_9 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 9 j = true := by
  fin_cases j
  · exact polySecondImag_9_0
  · exact polySecondImag_9_1
  · exact polySecondImag_9_2
  · exact polySecondImag_9_3
  · exact polySecondImag_9_4
  · exact polySecondImag_9_5
  · exact polySecondImag_9_6

theorem polySecondImag_10_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 0 = true := by decide +kernel

theorem polySecondImag_10_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 1 = true := by decide +kernel

theorem polySecondImag_10_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 2 = true := by decide +kernel

theorem polySecondImag_10_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 3 = true := by decide +kernel

theorem polySecondImag_10_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 4 = true := by decide +kernel

theorem polySecondImag_10_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 5 = true := by decide +kernel

theorem polySecondImag_10_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 6 = true := by decide +kernel

theorem polySecondImag_10 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 10 j = true := by
  fin_cases j
  · exact polySecondImag_10_0
  · exact polySecondImag_10_1
  · exact polySecondImag_10_2
  · exact polySecondImag_10_3
  · exact polySecondImag_10_4
  · exact polySecondImag_10_5
  · exact polySecondImag_10_6

theorem polySecondImag_11_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 0 = true := by decide +kernel

theorem polySecondImag_11_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 1 = true := by decide +kernel

theorem polySecondImag_11_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 2 = true := by decide +kernel

theorem polySecondImag_11_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 3 = true := by decide +kernel

theorem polySecondImag_11_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 4 = true := by decide +kernel

theorem polySecondImag_11_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 5 = true := by decide +kernel

theorem polySecondImag_11_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 6 = true := by decide +kernel

theorem polySecondImag_11 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 11 j = true := by
  fin_cases j
  · exact polySecondImag_11_0
  · exact polySecondImag_11_1
  · exact polySecondImag_11_2
  · exact polySecondImag_11_3
  · exact polySecondImag_11_4
  · exact polySecondImag_11_5
  · exact polySecondImag_11_6

theorem polySecondImag_12_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 0 = true := by decide +kernel

theorem polySecondImag_12_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 1 = true := by decide +kernel

theorem polySecondImag_12_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 2 = true := by decide +kernel

theorem polySecondImag_12_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 3 = true := by decide +kernel

theorem polySecondImag_12_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 4 = true := by decide +kernel

theorem polySecondImag_12_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 5 = true := by decide +kernel

theorem polySecondImag_12_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 6 = true := by decide +kernel

theorem polySecondImag_12 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 12 j = true := by
  fin_cases j
  · exact polySecondImag_12_0
  · exact polySecondImag_12_1
  · exact polySecondImag_12_2
  · exact polySecondImag_12_3
  · exact polySecondImag_12_4
  · exact polySecondImag_12_5
  · exact polySecondImag_12_6

theorem polySecondImag_13_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 0 = true := by decide +kernel

theorem polySecondImag_13_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 1 = true := by decide +kernel

theorem polySecondImag_13_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 2 = true := by decide +kernel

theorem polySecondImag_13_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 3 = true := by decide +kernel

theorem polySecondImag_13_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 4 = true := by decide +kernel

theorem polySecondImag_13_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 5 = true := by decide +kernel

theorem polySecondImag_13_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 6 = true := by decide +kernel

theorem polySecondImag_13 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 13 j = true := by
  fin_cases j
  · exact polySecondImag_13_0
  · exact polySecondImag_13_1
  · exact polySecondImag_13_2
  · exact polySecondImag_13_3
  · exact polySecondImag_13_4
  · exact polySecondImag_13_5
  · exact polySecondImag_13_6

theorem polySecondImag_14_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 0 = true := by decide +kernel

theorem polySecondImag_14_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 1 = true := by decide +kernel

theorem polySecondImag_14_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 2 = true := by decide +kernel

theorem polySecondImag_14_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 3 = true := by decide +kernel

theorem polySecondImag_14_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 4 = true := by decide +kernel

theorem polySecondImag_14_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 5 = true := by decide +kernel

theorem polySecondImag_14_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 6 = true := by decide +kernel

theorem polySecondImag_14 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 14 j = true := by
  fin_cases j
  · exact polySecondImag_14_0
  · exact polySecondImag_14_1
  · exact polySecondImag_14_2
  · exact polySecondImag_14_3
  · exact polySecondImag_14_4
  · exact polySecondImag_14_5
  · exact polySecondImag_14_6

theorem polySecondImag_15_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 0 = true := by decide +kernel

theorem polySecondImag_15_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 1 = true := by decide +kernel

theorem polySecondImag_15_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 2 = true := by decide +kernel

theorem polySecondImag_15_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 3 = true := by decide +kernel

theorem polySecondImag_15_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 4 = true := by decide +kernel

theorem polySecondImag_15_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 5 = true := by decide +kernel

theorem polySecondImag_15_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 6 = true := by decide +kernel

theorem polySecondImag_15 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 15 j = true := by
  fin_cases j
  · exact polySecondImag_15_0
  · exact polySecondImag_15_1
  · exact polySecondImag_15_2
  · exact polySecondImag_15_3
  · exact polySecondImag_15_4
  · exact polySecondImag_15_5
  · exact polySecondImag_15_6

theorem polySecondImag_16_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 0 = true := by decide +kernel

theorem polySecondImag_16_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 1 = true := by decide +kernel

theorem polySecondImag_16_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 2 = true := by decide +kernel

theorem polySecondImag_16_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 3 = true := by decide +kernel

theorem polySecondImag_16_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 4 = true := by decide +kernel

theorem polySecondImag_16_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 5 = true := by decide +kernel

theorem polySecondImag_16_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 6 = true := by decide +kernel

theorem polySecondImag_16 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 16 j = true := by
  fin_cases j
  · exact polySecondImag_16_0
  · exact polySecondImag_16_1
  · exact polySecondImag_16_2
  · exact polySecondImag_16_3
  · exact polySecondImag_16_4
  · exact polySecondImag_16_5
  · exact polySecondImag_16_6

theorem polySecondImag_17_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 0 = true := by decide +kernel

theorem polySecondImag_17_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 1 = true := by decide +kernel

theorem polySecondImag_17_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 2 = true := by decide +kernel

theorem polySecondImag_17_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 3 = true := by decide +kernel

theorem polySecondImag_17_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 4 = true := by decide +kernel

theorem polySecondImag_17_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 5 = true := by decide +kernel

theorem polySecondImag_17_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 6 = true := by decide +kernel

theorem polySecondImag_17 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 17 j = true := by
  fin_cases j
  · exact polySecondImag_17_0
  · exact polySecondImag_17_1
  · exact polySecondImag_17_2
  · exact polySecondImag_17_3
  · exact polySecondImag_17_4
  · exact polySecondImag_17_5
  · exact polySecondImag_17_6

theorem polySecondImag_18_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 0 = true := by decide +kernel

theorem polySecondImag_18_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 1 = true := by decide +kernel

theorem polySecondImag_18_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 2 = true := by decide +kernel

theorem polySecondImag_18_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 3 = true := by decide +kernel

theorem polySecondImag_18_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 4 = true := by decide +kernel

theorem polySecondImag_18_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 5 = true := by decide +kernel

theorem polySecondImag_18_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 6 = true := by decide +kernel

theorem polySecondImag_18 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 18 j = true := by
  fin_cases j
  · exact polySecondImag_18_0
  · exact polySecondImag_18_1
  · exact polySecondImag_18_2
  · exact polySecondImag_18_3
  · exact polySecondImag_18_4
  · exact polySecondImag_18_5
  · exact polySecondImag_18_6

theorem polySecondImag_19_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 0 = true := by decide +kernel

theorem polySecondImag_19_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 1 = true := by decide +kernel

theorem polySecondImag_19_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 2 = true := by decide +kernel

theorem polySecondImag_19_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 3 = true := by decide +kernel

theorem polySecondImag_19_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 4 = true := by decide +kernel

theorem polySecondImag_19_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 5 = true := by decide +kernel

theorem polySecondImag_19_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 6 = true := by decide +kernel

theorem polySecondImag_19 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 19 j = true := by
  fin_cases j
  · exact polySecondImag_19_0
  · exact polySecondImag_19_1
  · exact polySecondImag_19_2
  · exact polySecondImag_19_3
  · exact polySecondImag_19_4
  · exact polySecondImag_19_5
  · exact polySecondImag_19_6

theorem polySecondImag_20_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 0 = true := by decide +kernel

theorem polySecondImag_20_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 1 = true := by decide +kernel

theorem polySecondImag_20_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 2 = true := by decide +kernel

theorem polySecondImag_20_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 3 = true := by decide +kernel

theorem polySecondImag_20_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 4 = true := by decide +kernel

theorem polySecondImag_20_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 5 = true := by decide +kernel

theorem polySecondImag_20_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 6 = true := by decide +kernel

theorem polySecondImag_20 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 20 j = true := by
  fin_cases j
  · exact polySecondImag_20_0
  · exact polySecondImag_20_1
  · exact polySecondImag_20_2
  · exact polySecondImag_20_3
  · exact polySecondImag_20_4
  · exact polySecondImag_20_5
  · exact polySecondImag_20_6

theorem polySecondImag_21_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 0 = true := by decide +kernel

theorem polySecondImag_21_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 1 = true := by decide +kernel

theorem polySecondImag_21_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 2 = true := by decide +kernel

theorem polySecondImag_21_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 3 = true := by decide +kernel

theorem polySecondImag_21_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 4 = true := by decide +kernel

theorem polySecondImag_21_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 5 = true := by decide +kernel

theorem polySecondImag_21_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 6 = true := by decide +kernel

theorem polySecondImag_21 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 21 j = true := by
  fin_cases j
  · exact polySecondImag_21_0
  · exact polySecondImag_21_1
  · exact polySecondImag_21_2
  · exact polySecondImag_21_3
  · exact polySecondImag_21_4
  · exact polySecondImag_21_5
  · exact polySecondImag_21_6

theorem polySecondImag_22_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 0 = true := by decide +kernel

theorem polySecondImag_22_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 1 = true := by decide +kernel

theorem polySecondImag_22_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 2 = true := by decide +kernel

theorem polySecondImag_22_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 3 = true := by decide +kernel

theorem polySecondImag_22_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 4 = true := by decide +kernel

theorem polySecondImag_22_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 5 = true := by decide +kernel

theorem polySecondImag_22_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 6 = true := by decide +kernel

theorem polySecondImag_22 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 22 j = true := by
  fin_cases j
  · exact polySecondImag_22_0
  · exact polySecondImag_22_1
  · exact polySecondImag_22_2
  · exact polySecondImag_22_3
  · exact polySecondImag_22_4
  · exact polySecondImag_22_5
  · exact polySecondImag_22_6

theorem polySecondImag_23_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 0 = true := by decide +kernel

theorem polySecondImag_23_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 1 = true := by decide +kernel

theorem polySecondImag_23_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 2 = true := by decide +kernel

theorem polySecondImag_23_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 3 = true := by decide +kernel

theorem polySecondImag_23_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 4 = true := by decide +kernel

theorem polySecondImag_23_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 5 = true := by decide +kernel

theorem polySecondImag_23_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 6 = true := by decide +kernel

theorem polySecondImag_23 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 23 j = true := by
  fin_cases j
  · exact polySecondImag_23_0
  · exact polySecondImag_23_1
  · exact polySecondImag_23_2
  · exact polySecondImag_23_3
  · exact polySecondImag_23_4
  · exact polySecondImag_23_5
  · exact polySecondImag_23_6

theorem polySecondImag_24_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 0 = true := by decide +kernel

theorem polySecondImag_24_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 1 = true := by decide +kernel

theorem polySecondImag_24_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 2 = true := by decide +kernel

theorem polySecondImag_24_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 3 = true := by decide +kernel

theorem polySecondImag_24_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 4 = true := by decide +kernel

theorem polySecondImag_24_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 5 = true := by decide +kernel

theorem polySecondImag_24_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 6 = true := by decide +kernel

theorem polySecondImag_24 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 24 j = true := by
  fin_cases j
  · exact polySecondImag_24_0
  · exact polySecondImag_24_1
  · exact polySecondImag_24_2
  · exact polySecondImag_24_3
  · exact polySecondImag_24_4
  · exact polySecondImag_24_5
  · exact polySecondImag_24_6

theorem polySecondImag_25_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 0 = true := by decide +kernel

theorem polySecondImag_25_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 1 = true := by decide +kernel

theorem polySecondImag_25_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 2 = true := by decide +kernel

theorem polySecondImag_25_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 3 = true := by decide +kernel

theorem polySecondImag_25_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 4 = true := by decide +kernel

theorem polySecondImag_25_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 5 = true := by decide +kernel

theorem polySecondImag_25_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 6 = true := by decide +kernel

theorem polySecondImag_25 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 25 j = true := by
  fin_cases j
  · exact polySecondImag_25_0
  · exact polySecondImag_25_1
  · exact polySecondImag_25_2
  · exact polySecondImag_25_3
  · exact polySecondImag_25_4
  · exact polySecondImag_25_5
  · exact polySecondImag_25_6

theorem polySecondImag_26_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 0 = true := by decide +kernel

theorem polySecondImag_26_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 1 = true := by decide +kernel

theorem polySecondImag_26_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 2 = true := by decide +kernel

theorem polySecondImag_26_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 3 = true := by decide +kernel

theorem polySecondImag_26_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 4 = true := by decide +kernel

theorem polySecondImag_26_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 5 = true := by decide +kernel

theorem polySecondImag_26_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 6 = true := by decide +kernel

theorem polySecondImag_26 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 26 j = true := by
  fin_cases j
  · exact polySecondImag_26_0
  · exact polySecondImag_26_1
  · exact polySecondImag_26_2
  · exact polySecondImag_26_3
  · exact polySecondImag_26_4
  · exact polySecondImag_26_5
  · exact polySecondImag_26_6

theorem polySecondImag_27_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 0 = true := by decide +kernel

theorem polySecondImag_27_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 1 = true := by decide +kernel

theorem polySecondImag_27_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 2 = true := by decide +kernel

theorem polySecondImag_27_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 3 = true := by decide +kernel

theorem polySecondImag_27_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 4 = true := by decide +kernel

theorem polySecondImag_27_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 5 = true := by decide +kernel

theorem polySecondImag_27_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 6 = true := by decide +kernel

theorem polySecondImag_27 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 27 j = true := by
  fin_cases j
  · exact polySecondImag_27_0
  · exact polySecondImag_27_1
  · exact polySecondImag_27_2
  · exact polySecondImag_27_3
  · exact polySecondImag_27_4
  · exact polySecondImag_27_5
  · exact polySecondImag_27_6

theorem polySecondImag_28_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 0 = true := by decide +kernel

theorem polySecondImag_28_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 1 = true := by decide +kernel

theorem polySecondImag_28_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 2 = true := by decide +kernel

theorem polySecondImag_28_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 3 = true := by decide +kernel

theorem polySecondImag_28_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 4 = true := by decide +kernel

theorem polySecondImag_28_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 5 = true := by decide +kernel

theorem polySecondImag_28_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 6 = true := by decide +kernel

theorem polySecondImag_28 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 28 j = true := by
  fin_cases j
  · exact polySecondImag_28_0
  · exact polySecondImag_28_1
  · exact polySecondImag_28_2
  · exact polySecondImag_28_3
  · exact polySecondImag_28_4
  · exact polySecondImag_28_5
  · exact polySecondImag_28_6

theorem polySecondImag_29_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 0 = true := by decide +kernel

theorem polySecondImag_29_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 1 = true := by decide +kernel

theorem polySecondImag_29_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 2 = true := by decide +kernel

theorem polySecondImag_29_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 3 = true := by decide +kernel

theorem polySecondImag_29_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 4 = true := by decide +kernel

theorem polySecondImag_29_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 5 = true := by decide +kernel

theorem polySecondImag_29_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 6 = true := by decide +kernel

theorem polySecondImag_29 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 29 j = true := by
  fin_cases j
  · exact polySecondImag_29_0
  · exact polySecondImag_29_1
  · exact polySecondImag_29_2
  · exact polySecondImag_29_3
  · exact polySecondImag_29_4
  · exact polySecondImag_29_5
  · exact polySecondImag_29_6

theorem polySecondImag_30_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 0 = true := by decide +kernel

theorem polySecondImag_30_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 1 = true := by decide +kernel

theorem polySecondImag_30_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 2 = true := by decide +kernel

theorem polySecondImag_30_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 3 = true := by decide +kernel

theorem polySecondImag_30_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 4 = true := by decide +kernel

theorem polySecondImag_30_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 5 = true := by decide +kernel

theorem polySecondImag_30_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 6 = true := by decide +kernel

theorem polySecondImag_30 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 30 j = true := by
  fin_cases j
  · exact polySecondImag_30_0
  · exact polySecondImag_30_1
  · exact polySecondImag_30_2
  · exact polySecondImag_30_3
  · exact polySecondImag_30_4
  · exact polySecondImag_30_5
  · exact polySecondImag_30_6

theorem polySecondImag_31_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 0 = true := by decide +kernel

theorem polySecondImag_31_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 1 = true := by decide +kernel

theorem polySecondImag_31_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 2 = true := by decide +kernel

theorem polySecondImag_31_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 3 = true := by decide +kernel

theorem polySecondImag_31_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 4 = true := by decide +kernel

theorem polySecondImag_31_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 5 = true := by decide +kernel

theorem polySecondImag_31_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 6 = true := by decide +kernel

theorem polySecondImag_31 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 31 j = true := by
  fin_cases j
  · exact polySecondImag_31_0
  · exact polySecondImag_31_1
  · exact polySecondImag_31_2
  · exact polySecondImag_31_3
  · exact polySecondImag_31_4
  · exact polySecondImag_31_5
  · exact polySecondImag_31_6

theorem polySecondImag_32_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 0 = true := by decide +kernel

theorem polySecondImag_32_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 1 = true := by decide +kernel

theorem polySecondImag_32_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 2 = true := by decide +kernel

theorem polySecondImag_32_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 3 = true := by decide +kernel

theorem polySecondImag_32_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 4 = true := by decide +kernel

theorem polySecondImag_32_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 5 = true := by decide +kernel

theorem polySecondImag_32_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 6 = true := by decide +kernel

theorem polySecondImag_32 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 32 j = true := by
  fin_cases j
  · exact polySecondImag_32_0
  · exact polySecondImag_32_1
  · exact polySecondImag_32_2
  · exact polySecondImag_32_3
  · exact polySecondImag_32_4
  · exact polySecondImag_32_5
  · exact polySecondImag_32_6

theorem polySecondImag_33_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 0 = true := by decide +kernel

theorem polySecondImag_33_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 1 = true := by decide +kernel

theorem polySecondImag_33_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 2 = true := by decide +kernel

theorem polySecondImag_33_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 3 = true := by decide +kernel

theorem polySecondImag_33_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 4 = true := by decide +kernel

theorem polySecondImag_33_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 5 = true := by decide +kernel

theorem polySecondImag_33_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 6 = true := by decide +kernel

theorem polySecondImag_33 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 33 j = true := by
  fin_cases j
  · exact polySecondImag_33_0
  · exact polySecondImag_33_1
  · exact polySecondImag_33_2
  · exact polySecondImag_33_3
  · exact polySecondImag_33_4
  · exact polySecondImag_33_5
  · exact polySecondImag_33_6

theorem polySecondImag_34_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 0 = true := by decide +kernel

theorem polySecondImag_34_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 1 = true := by decide +kernel

theorem polySecondImag_34_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 2 = true := by decide +kernel

theorem polySecondImag_34_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 3 = true := by decide +kernel

theorem polySecondImag_34_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 4 = true := by decide +kernel

theorem polySecondImag_34_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 5 = true := by decide +kernel

theorem polySecondImag_34_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 6 = true := by decide +kernel

theorem polySecondImag_34 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 34 j = true := by
  fin_cases j
  · exact polySecondImag_34_0
  · exact polySecondImag_34_1
  · exact polySecondImag_34_2
  · exact polySecondImag_34_3
  · exact polySecondImag_34_4
  · exact polySecondImag_34_5
  · exact polySecondImag_34_6

theorem polySecondImag_35_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 0 = true := by decide +kernel

theorem polySecondImag_35_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 1 = true := by decide +kernel

theorem polySecondImag_35_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 2 = true := by decide +kernel

theorem polySecondImag_35_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 3 = true := by decide +kernel

theorem polySecondImag_35_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 4 = true := by decide +kernel

theorem polySecondImag_35_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 5 = true := by decide +kernel

theorem polySecondImag_35_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 6 = true := by decide +kernel

theorem polySecondImag_35 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 35 j = true := by
  fin_cases j
  · exact polySecondImag_35_0
  · exact polySecondImag_35_1
  · exact polySecondImag_35_2
  · exact polySecondImag_35_3
  · exact polySecondImag_35_4
  · exact polySecondImag_35_5
  · exact polySecondImag_35_6

theorem polySecondImag_36_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 0 = true := by decide +kernel

theorem polySecondImag_36_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 1 = true := by decide +kernel

theorem polySecondImag_36_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 2 = true := by decide +kernel

theorem polySecondImag_36_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 3 = true := by decide +kernel

theorem polySecondImag_36_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 4 = true := by decide +kernel

theorem polySecondImag_36_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 5 = true := by decide +kernel

theorem polySecondImag_36_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 6 = true := by decide +kernel

theorem polySecondImag_36 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 36 j = true := by
  fin_cases j
  · exact polySecondImag_36_0
  · exact polySecondImag_36_1
  · exact polySecondImag_36_2
  · exact polySecondImag_36_3
  · exact polySecondImag_36_4
  · exact polySecondImag_36_5
  · exact polySecondImag_36_6

theorem polySecondImag_37_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 0 = true := by decide +kernel

theorem polySecondImag_37_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 1 = true := by decide +kernel

theorem polySecondImag_37_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 2 = true := by decide +kernel

theorem polySecondImag_37_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 3 = true := by decide +kernel

theorem polySecondImag_37_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 4 = true := by decide +kernel

theorem polySecondImag_37_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 5 = true := by decide +kernel

theorem polySecondImag_37_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 6 = true := by decide +kernel

theorem polySecondImag_37 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 37 j = true := by
  fin_cases j
  · exact polySecondImag_37_0
  · exact polySecondImag_37_1
  · exact polySecondImag_37_2
  · exact polySecondImag_37_3
  · exact polySecondImag_37_4
  · exact polySecondImag_37_5
  · exact polySecondImag_37_6

theorem polySecondImag_38_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 0 = true := by decide +kernel

theorem polySecondImag_38_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 1 = true := by decide +kernel

theorem polySecondImag_38_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 2 = true := by decide +kernel

theorem polySecondImag_38_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 3 = true := by decide +kernel

theorem polySecondImag_38_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 4 = true := by decide +kernel

theorem polySecondImag_38_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 5 = true := by decide +kernel

theorem polySecondImag_38_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 6 = true := by decide +kernel

theorem polySecondImag_38 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 38 j = true := by
  fin_cases j
  · exact polySecondImag_38_0
  · exact polySecondImag_38_1
  · exact polySecondImag_38_2
  · exact polySecondImag_38_3
  · exact polySecondImag_38_4
  · exact polySecondImag_38_5
  · exact polySecondImag_38_6

theorem polySecondImag_39_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 0 = true := by decide +kernel

theorem polySecondImag_39_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 1 = true := by decide +kernel

theorem polySecondImag_39_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 2 = true := by decide +kernel

theorem polySecondImag_39_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 3 = true := by decide +kernel

theorem polySecondImag_39_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 4 = true := by decide +kernel

theorem polySecondImag_39_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 5 = true := by decide +kernel

theorem polySecondImag_39_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 6 = true := by decide +kernel

theorem polySecondImag_39 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 39 j = true := by
  fin_cases j
  · exact polySecondImag_39_0
  · exact polySecondImag_39_1
  · exact polySecondImag_39_2
  · exact polySecondImag_39_3
  · exact polySecondImag_39_4
  · exact polySecondImag_39_5
  · exact polySecondImag_39_6

theorem polySecondImag_40_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 0 = true := by decide +kernel

theorem polySecondImag_40_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 1 = true := by decide +kernel

theorem polySecondImag_40_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 2 = true := by decide +kernel

theorem polySecondImag_40_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 3 = true := by decide +kernel

theorem polySecondImag_40_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 4 = true := by decide +kernel

theorem polySecondImag_40_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 5 = true := by decide +kernel

theorem polySecondImag_40_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 6 = true := by decide +kernel

theorem polySecondImag_40 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 40 j = true := by
  fin_cases j
  · exact polySecondImag_40_0
  · exact polySecondImag_40_1
  · exact polySecondImag_40_2
  · exact polySecondImag_40_3
  · exact polySecondImag_40_4
  · exact polySecondImag_40_5
  · exact polySecondImag_40_6

theorem polySecondImag_41_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 0 = true := by decide +kernel

theorem polySecondImag_41_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 1 = true := by decide +kernel

theorem polySecondImag_41_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 2 = true := by decide +kernel

theorem polySecondImag_41_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 3 = true := by decide +kernel

theorem polySecondImag_41_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 4 = true := by decide +kernel

theorem polySecondImag_41_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 5 = true := by decide +kernel

theorem polySecondImag_41_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 6 = true := by decide +kernel

theorem polySecondImag_41 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 41 j = true := by
  fin_cases j
  · exact polySecondImag_41_0
  · exact polySecondImag_41_1
  · exact polySecondImag_41_2
  · exact polySecondImag_41_3
  · exact polySecondImag_41_4
  · exact polySecondImag_41_5
  · exact polySecondImag_41_6

theorem polySecondImag_42_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 0 = true := by decide +kernel

theorem polySecondImag_42_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 1 = true := by decide +kernel

theorem polySecondImag_42_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 2 = true := by decide +kernel

theorem polySecondImag_42_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 3 = true := by decide +kernel

theorem polySecondImag_42_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 4 = true := by decide +kernel

theorem polySecondImag_42_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 5 = true := by decide +kernel

theorem polySecondImag_42_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 6 = true := by decide +kernel

theorem polySecondImag_42 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 42 j = true := by
  fin_cases j
  · exact polySecondImag_42_0
  · exact polySecondImag_42_1
  · exact polySecondImag_42_2
  · exact polySecondImag_42_3
  · exact polySecondImag_42_4
  · exact polySecondImag_42_5
  · exact polySecondImag_42_6

theorem polySecondImag_43_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 0 = true := by decide +kernel

theorem polySecondImag_43_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 1 = true := by decide +kernel

theorem polySecondImag_43_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 2 = true := by decide +kernel

theorem polySecondImag_43_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 3 = true := by decide +kernel

theorem polySecondImag_43_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 4 = true := by decide +kernel

theorem polySecondImag_43_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 5 = true := by decide +kernel

theorem polySecondImag_43_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 6 = true := by decide +kernel

theorem polySecondImag_43 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 43 j = true := by
  fin_cases j
  · exact polySecondImag_43_0
  · exact polySecondImag_43_1
  · exact polySecondImag_43_2
  · exact polySecondImag_43_3
  · exact polySecondImag_43_4
  · exact polySecondImag_43_5
  · exact polySecondImag_43_6

theorem polySecondImag_44_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 0 = true := by decide +kernel

theorem polySecondImag_44_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 1 = true := by decide +kernel

theorem polySecondImag_44_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 2 = true := by decide +kernel

theorem polySecondImag_44_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 3 = true := by decide +kernel

theorem polySecondImag_44_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 4 = true := by decide +kernel

theorem polySecondImag_44_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 5 = true := by decide +kernel

theorem polySecondImag_44_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 6 = true := by decide +kernel

theorem polySecondImag_44 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 44 j = true := by
  fin_cases j
  · exact polySecondImag_44_0
  · exact polySecondImag_44_1
  · exact polySecondImag_44_2
  · exact polySecondImag_44_3
  · exact polySecondImag_44_4
  · exact polySecondImag_44_5
  · exact polySecondImag_44_6

theorem polySecondImag_45_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 0 = true := by decide +kernel

theorem polySecondImag_45_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 1 = true := by decide +kernel

theorem polySecondImag_45_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 2 = true := by decide +kernel

theorem polySecondImag_45_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 3 = true := by decide +kernel

theorem polySecondImag_45_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 4 = true := by decide +kernel

theorem polySecondImag_45_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 5 = true := by decide +kernel

theorem polySecondImag_45_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 6 = true := by decide +kernel

theorem polySecondImag_45 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 45 j = true := by
  fin_cases j
  · exact polySecondImag_45_0
  · exact polySecondImag_45_1
  · exact polySecondImag_45_2
  · exact polySecondImag_45_3
  · exact polySecondImag_45_4
  · exact polySecondImag_45_5
  · exact polySecondImag_45_6

theorem polySecondImag_46_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 0 = true := by decide +kernel

theorem polySecondImag_46_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 1 = true := by decide +kernel

theorem polySecondImag_46_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 2 = true := by decide +kernel

theorem polySecondImag_46_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 3 = true := by decide +kernel

theorem polySecondImag_46_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 4 = true := by decide +kernel

theorem polySecondImag_46_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 5 = true := by decide +kernel

theorem polySecondImag_46_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 6 = true := by decide +kernel

theorem polySecondImag_46 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 46 j = true := by
  fin_cases j
  · exact polySecondImag_46_0
  · exact polySecondImag_46_1
  · exact polySecondImag_46_2
  · exact polySecondImag_46_3
  · exact polySecondImag_46_4
  · exact polySecondImag_46_5
  · exact polySecondImag_46_6

theorem polySecondImag_47_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 0 = true := by decide +kernel

theorem polySecondImag_47_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 1 = true := by decide +kernel

theorem polySecondImag_47_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 2 = true := by decide +kernel

theorem polySecondImag_47_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 3 = true := by decide +kernel

theorem polySecondImag_47_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 4 = true := by decide +kernel

theorem polySecondImag_47_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 5 = true := by decide +kernel

theorem polySecondImag_47_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 6 = true := by decide +kernel

theorem polySecondImag_47 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 47 j = true := by
  fin_cases j
  · exact polySecondImag_47_0
  · exact polySecondImag_47_1
  · exact polySecondImag_47_2
  · exact polySecondImag_47_3
  · exact polySecondImag_47_4
  · exact polySecondImag_47_5
  · exact polySecondImag_47_6

theorem polySecondImag_48_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 0 = true := by decide +kernel

theorem polySecondImag_48_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 1 = true := by decide +kernel

theorem polySecondImag_48_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 2 = true := by decide +kernel

theorem polySecondImag_48_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 3 = true := by decide +kernel

theorem polySecondImag_48_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 4 = true := by decide +kernel

theorem polySecondImag_48_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 5 = true := by decide +kernel

theorem polySecondImag_48_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 6 = true := by decide +kernel

theorem polySecondImag_48 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 48 j = true := by
  fin_cases j
  · exact polySecondImag_48_0
  · exact polySecondImag_48_1
  · exact polySecondImag_48_2
  · exact polySecondImag_48_3
  · exact polySecondImag_48_4
  · exact polySecondImag_48_5
  · exact polySecondImag_48_6

theorem polySecondImag_49_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 0 = true := by decide +kernel

theorem polySecondImag_49_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 1 = true := by decide +kernel

theorem polySecondImag_49_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 2 = true := by decide +kernel

theorem polySecondImag_49_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 3 = true := by decide +kernel

theorem polySecondImag_49_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 4 = true := by decide +kernel

theorem polySecondImag_49_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 5 = true := by decide +kernel

theorem polySecondImag_49_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 6 = true := by decide +kernel

theorem polySecondImag_49 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 49 j = true := by
  fin_cases j
  · exact polySecondImag_49_0
  · exact polySecondImag_49_1
  · exact polySecondImag_49_2
  · exact polySecondImag_49_3
  · exact polySecondImag_49_4
  · exact polySecondImag_49_5
  · exact polySecondImag_49_6

theorem polySecondImag_50_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 0 = true := by decide +kernel

theorem polySecondImag_50_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 1 = true := by decide +kernel

theorem polySecondImag_50_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 2 = true := by decide +kernel

theorem polySecondImag_50_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 3 = true := by decide +kernel

theorem polySecondImag_50_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 4 = true := by decide +kernel

theorem polySecondImag_50_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 5 = true := by decide +kernel

theorem polySecondImag_50_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 6 = true := by decide +kernel

theorem polySecondImag_50 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 50 j = true := by
  fin_cases j
  · exact polySecondImag_50_0
  · exact polySecondImag_50_1
  · exact polySecondImag_50_2
  · exact polySecondImag_50_3
  · exact polySecondImag_50_4
  · exact polySecondImag_50_5
  · exact polySecondImag_50_6

theorem polySecondImag_51_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 0 = true := by decide +kernel

theorem polySecondImag_51_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 1 = true := by decide +kernel

theorem polySecondImag_51_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 2 = true := by decide +kernel

theorem polySecondImag_51_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 3 = true := by decide +kernel

theorem polySecondImag_51_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 4 = true := by decide +kernel

theorem polySecondImag_51_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 5 = true := by decide +kernel

theorem polySecondImag_51_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 6 = true := by decide +kernel

theorem polySecondImag_51 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 51 j = true := by
  fin_cases j
  · exact polySecondImag_51_0
  · exact polySecondImag_51_1
  · exact polySecondImag_51_2
  · exact polySecondImag_51_3
  · exact polySecondImag_51_4
  · exact polySecondImag_51_5
  · exact polySecondImag_51_6

theorem polySecondImag_52_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 0 = true := by decide +kernel

theorem polySecondImag_52_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 1 = true := by decide +kernel

theorem polySecondImag_52_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 2 = true := by decide +kernel

theorem polySecondImag_52_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 3 = true := by decide +kernel

theorem polySecondImag_52_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 4 = true := by decide +kernel

theorem polySecondImag_52_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 5 = true := by decide +kernel

theorem polySecondImag_52_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 6 = true := by decide +kernel

theorem polySecondImag_52 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 52 j = true := by
  fin_cases j
  · exact polySecondImag_52_0
  · exact polySecondImag_52_1
  · exact polySecondImag_52_2
  · exact polySecondImag_52_3
  · exact polySecondImag_52_4
  · exact polySecondImag_52_5
  · exact polySecondImag_52_6

theorem polySecondImag_53_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 0 = true := by decide +kernel

theorem polySecondImag_53_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 1 = true := by decide +kernel

theorem polySecondImag_53_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 2 = true := by decide +kernel

theorem polySecondImag_53_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 3 = true := by decide +kernel

theorem polySecondImag_53_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 4 = true := by decide +kernel

theorem polySecondImag_53_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 5 = true := by decide +kernel

theorem polySecondImag_53_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 6 = true := by decide +kernel

theorem polySecondImag_53 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 53 j = true := by
  fin_cases j
  · exact polySecondImag_53_0
  · exact polySecondImag_53_1
  · exact polySecondImag_53_2
  · exact polySecondImag_53_3
  · exact polySecondImag_53_4
  · exact polySecondImag_53_5
  · exact polySecondImag_53_6

theorem polySecondImag_54_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 0 = true := by decide +kernel

theorem polySecondImag_54_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 1 = true := by decide +kernel

theorem polySecondImag_54_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 2 = true := by decide +kernel

theorem polySecondImag_54_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 3 = true := by decide +kernel

theorem polySecondImag_54_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 4 = true := by decide +kernel

theorem polySecondImag_54_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 5 = true := by decide +kernel

theorem polySecondImag_54_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 6 = true := by decide +kernel

theorem polySecondImag_54 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 54 j = true := by
  fin_cases j
  · exact polySecondImag_54_0
  · exact polySecondImag_54_1
  · exact polySecondImag_54_2
  · exact polySecondImag_54_3
  · exact polySecondImag_54_4
  · exact polySecondImag_54_5
  · exact polySecondImag_54_6

theorem polySecondImag_55_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 0 = true := by decide +kernel

theorem polySecondImag_55_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 1 = true := by decide +kernel

theorem polySecondImag_55_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 2 = true := by decide +kernel

theorem polySecondImag_55_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 3 = true := by decide +kernel

theorem polySecondImag_55_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 4 = true := by decide +kernel

theorem polySecondImag_55_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 5 = true := by decide +kernel

theorem polySecondImag_55_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 6 = true := by decide +kernel

theorem polySecondImag_55 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 55 j = true := by
  fin_cases j
  · exact polySecondImag_55_0
  · exact polySecondImag_55_1
  · exact polySecondImag_55_2
  · exact polySecondImag_55_3
  · exact polySecondImag_55_4
  · exact polySecondImag_55_5
  · exact polySecondImag_55_6

theorem polySecondImag_56_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 0 = true := by decide +kernel

theorem polySecondImag_56_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 1 = true := by decide +kernel

theorem polySecondImag_56_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 2 = true := by decide +kernel

theorem polySecondImag_56_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 3 = true := by decide +kernel

theorem polySecondImag_56_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 4 = true := by decide +kernel

theorem polySecondImag_56_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 5 = true := by decide +kernel

theorem polySecondImag_56_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 6 = true := by decide +kernel

theorem polySecondImag_56 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 56 j = true := by
  fin_cases j
  · exact polySecondImag_56_0
  · exact polySecondImag_56_1
  · exact polySecondImag_56_2
  · exact polySecondImag_56_3
  · exact polySecondImag_56_4
  · exact polySecondImag_56_5
  · exact polySecondImag_56_6

theorem polySecondImag_57_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 0 = true := by decide +kernel

theorem polySecondImag_57_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 1 = true := by decide +kernel

theorem polySecondImag_57_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 2 = true := by decide +kernel

theorem polySecondImag_57_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 3 = true := by decide +kernel

theorem polySecondImag_57_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 4 = true := by decide +kernel

theorem polySecondImag_57_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 5 = true := by decide +kernel

theorem polySecondImag_57_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 6 = true := by decide +kernel

theorem polySecondImag_57 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 57 j = true := by
  fin_cases j
  · exact polySecondImag_57_0
  · exact polySecondImag_57_1
  · exact polySecondImag_57_2
  · exact polySecondImag_57_3
  · exact polySecondImag_57_4
  · exact polySecondImag_57_5
  · exact polySecondImag_57_6

theorem polySecondImag_58_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 0 = true := by decide +kernel

theorem polySecondImag_58_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 1 = true := by decide +kernel

theorem polySecondImag_58_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 2 = true := by decide +kernel

theorem polySecondImag_58_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 3 = true := by decide +kernel

theorem polySecondImag_58_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 4 = true := by decide +kernel

theorem polySecondImag_58_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 5 = true := by decide +kernel

theorem polySecondImag_58_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 6 = true := by decide +kernel

theorem polySecondImag_58 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 58 j = true := by
  fin_cases j
  · exact polySecondImag_58_0
  · exact polySecondImag_58_1
  · exact polySecondImag_58_2
  · exact polySecondImag_58_3
  · exact polySecondImag_58_4
  · exact polySecondImag_58_5
  · exact polySecondImag_58_6

theorem polySecondImag_59_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 0 = true := by decide +kernel

theorem polySecondImag_59_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 1 = true := by decide +kernel

theorem polySecondImag_59_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 2 = true := by decide +kernel

theorem polySecondImag_59_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 3 = true := by decide +kernel

theorem polySecondImag_59_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 4 = true := by decide +kernel

theorem polySecondImag_59_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 5 = true := by decide +kernel

theorem polySecondImag_59_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 6 = true := by decide +kernel

theorem polySecondImag_59 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 59 j = true := by
  fin_cases j
  · exact polySecondImag_59_0
  · exact polySecondImag_59_1
  · exact polySecondImag_59_2
  · exact polySecondImag_59_3
  · exact polySecondImag_59_4
  · exact polySecondImag_59_5
  · exact polySecondImag_59_6

theorem polySecondImag_60_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 0 = true := by decide +kernel

theorem polySecondImag_60_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 1 = true := by decide +kernel

theorem polySecondImag_60_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 2 = true := by decide +kernel

theorem polySecondImag_60_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 3 = true := by decide +kernel

theorem polySecondImag_60_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 4 = true := by decide +kernel

theorem polySecondImag_60_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 5 = true := by decide +kernel

theorem polySecondImag_60_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 6 = true := by decide +kernel

theorem polySecondImag_60 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 60 j = true := by
  fin_cases j
  · exact polySecondImag_60_0
  · exact polySecondImag_60_1
  · exact polySecondImag_60_2
  · exact polySecondImag_60_3
  · exact polySecondImag_60_4
  · exact polySecondImag_60_5
  · exact polySecondImag_60_6

theorem polySecondImag_61_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 0 = true := by decide +kernel

theorem polySecondImag_61_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 1 = true := by decide +kernel

theorem polySecondImag_61_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 2 = true := by decide +kernel

theorem polySecondImag_61_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 3 = true := by decide +kernel

theorem polySecondImag_61_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 4 = true := by decide +kernel

theorem polySecondImag_61_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 5 = true := by decide +kernel

theorem polySecondImag_61_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 6 = true := by decide +kernel

theorem polySecondImag_61 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 61 j = true := by
  fin_cases j
  · exact polySecondImag_61_0
  · exact polySecondImag_61_1
  · exact polySecondImag_61_2
  · exact polySecondImag_61_3
  · exact polySecondImag_61_4
  · exact polySecondImag_61_5
  · exact polySecondImag_61_6

theorem polySecondImag_62_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 0 = true := by decide +kernel

theorem polySecondImag_62_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 1 = true := by decide +kernel

theorem polySecondImag_62_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 2 = true := by decide +kernel

theorem polySecondImag_62_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 3 = true := by decide +kernel

theorem polySecondImag_62_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 4 = true := by decide +kernel

theorem polySecondImag_62_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 5 = true := by decide +kernel

theorem polySecondImag_62_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 6 = true := by decide +kernel

theorem polySecondImag_62 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 62 j = true := by
  fin_cases j
  · exact polySecondImag_62_0
  · exact polySecondImag_62_1
  · exact polySecondImag_62_2
  · exact polySecondImag_62_3
  · exact polySecondImag_62_4
  · exact polySecondImag_62_5
  · exact polySecondImag_62_6

theorem polySecondImag_63_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 0 = true := by decide +kernel

theorem polySecondImag_63_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 1 = true := by decide +kernel

theorem polySecondImag_63_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 2 = true := by decide +kernel

theorem polySecondImag_63_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 3 = true := by decide +kernel

theorem polySecondImag_63_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 4 = true := by decide +kernel

theorem polySecondImag_63_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 5 = true := by decide +kernel

theorem polySecondImag_63_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 6 = true := by decide +kernel

theorem polySecondImag_63 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 63 j = true := by
  fin_cases j
  · exact polySecondImag_63_0
  · exact polySecondImag_63_1
  · exact polySecondImag_63_2
  · exact polySecondImag_63_3
  · exact polySecondImag_63_4
  · exact polySecondImag_63_5
  · exact polySecondImag_63_6

theorem polySecondImag_64_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 0 = true := by decide +kernel

theorem polySecondImag_64_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 1 = true := by decide +kernel

theorem polySecondImag_64_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 2 = true := by decide +kernel

theorem polySecondImag_64_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 3 = true := by decide +kernel

theorem polySecondImag_64_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 4 = true := by decide +kernel

theorem polySecondImag_64_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 5 = true := by decide +kernel

theorem polySecondImag_64_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 6 = true := by decide +kernel

theorem polySecondImag_64 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 64 j = true := by
  fin_cases j
  · exact polySecondImag_64_0
  · exact polySecondImag_64_1
  · exact polySecondImag_64_2
  · exact polySecondImag_64_3
  · exact polySecondImag_64_4
  · exact polySecondImag_64_5
  · exact polySecondImag_64_6

theorem polySecondImag_65_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 0 = true := by decide +kernel

theorem polySecondImag_65_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 1 = true := by decide +kernel

theorem polySecondImag_65_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 2 = true := by decide +kernel

theorem polySecondImag_65_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 3 = true := by decide +kernel

theorem polySecondImag_65_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 4 = true := by decide +kernel

theorem polySecondImag_65_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 5 = true := by decide +kernel

theorem polySecondImag_65_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 6 = true := by decide +kernel

theorem polySecondImag_65 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 65 j = true := by
  fin_cases j
  · exact polySecondImag_65_0
  · exact polySecondImag_65_1
  · exact polySecondImag_65_2
  · exact polySecondImag_65_3
  · exact polySecondImag_65_4
  · exact polySecondImag_65_5
  · exact polySecondImag_65_6

theorem polySecondImag_66_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 0 = true := by decide +kernel

theorem polySecondImag_66_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 1 = true := by decide +kernel

theorem polySecondImag_66_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 2 = true := by decide +kernel

theorem polySecondImag_66_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 3 = true := by decide +kernel

theorem polySecondImag_66_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 4 = true := by decide +kernel

theorem polySecondImag_66_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 5 = true := by decide +kernel

theorem polySecondImag_66_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 6 = true := by decide +kernel

theorem polySecondImag_66 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 66 j = true := by
  fin_cases j
  · exact polySecondImag_66_0
  · exact polySecondImag_66_1
  · exact polySecondImag_66_2
  · exact polySecondImag_66_3
  · exact polySecondImag_66_4
  · exact polySecondImag_66_5
  · exact polySecondImag_66_6

theorem polySecondImag_67_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 0 = true := by decide +kernel

theorem polySecondImag_67_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 1 = true := by decide +kernel

theorem polySecondImag_67_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 2 = true := by decide +kernel

theorem polySecondImag_67_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 3 = true := by decide +kernel

theorem polySecondImag_67_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 4 = true := by decide +kernel

theorem polySecondImag_67_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 5 = true := by decide +kernel

theorem polySecondImag_67_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 6 = true := by decide +kernel

theorem polySecondImag_67 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 67 j = true := by
  fin_cases j
  · exact polySecondImag_67_0
  · exact polySecondImag_67_1
  · exact polySecondImag_67_2
  · exact polySecondImag_67_3
  · exact polySecondImag_67_4
  · exact polySecondImag_67_5
  · exact polySecondImag_67_6

theorem polySecondImag_68_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 0 = true := by decide +kernel

theorem polySecondImag_68_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 1 = true := by decide +kernel

theorem polySecondImag_68_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 2 = true := by decide +kernel

theorem polySecondImag_68_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 3 = true := by decide +kernel

theorem polySecondImag_68_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 4 = true := by decide +kernel

theorem polySecondImag_68_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 5 = true := by decide +kernel

theorem polySecondImag_68_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 6 = true := by decide +kernel

theorem polySecondImag_68 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 68 j = true := by
  fin_cases j
  · exact polySecondImag_68_0
  · exact polySecondImag_68_1
  · exact polySecondImag_68_2
  · exact polySecondImag_68_3
  · exact polySecondImag_68_4
  · exact polySecondImag_68_5
  · exact polySecondImag_68_6

theorem polySecondImag_69_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 0 = true := by decide +kernel

theorem polySecondImag_69_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 1 = true := by decide +kernel

theorem polySecondImag_69_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 2 = true := by decide +kernel

theorem polySecondImag_69_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 3 = true := by decide +kernel

theorem polySecondImag_69_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 4 = true := by decide +kernel

theorem polySecondImag_69_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 5 = true := by decide +kernel

theorem polySecondImag_69_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 6 = true := by decide +kernel

theorem polySecondImag_69 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 69 j = true := by
  fin_cases j
  · exact polySecondImag_69_0
  · exact polySecondImag_69_1
  · exact polySecondImag_69_2
  · exact polySecondImag_69_3
  · exact polySecondImag_69_4
  · exact polySecondImag_69_5
  · exact polySecondImag_69_6

theorem polySecondImag_70_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 0 = true := by decide +kernel

theorem polySecondImag_70_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 1 = true := by decide +kernel

theorem polySecondImag_70_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 2 = true := by decide +kernel

theorem polySecondImag_70_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 3 = true := by decide +kernel

theorem polySecondImag_70_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 4 = true := by decide +kernel

theorem polySecondImag_70_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 5 = true := by decide +kernel

theorem polySecondImag_70_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 6 = true := by decide +kernel

theorem polySecondImag_70 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 70 j = true := by
  fin_cases j
  · exact polySecondImag_70_0
  · exact polySecondImag_70_1
  · exact polySecondImag_70_2
  · exact polySecondImag_70_3
  · exact polySecondImag_70_4
  · exact polySecondImag_70_5
  · exact polySecondImag_70_6

theorem polySecondImag_71_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 0 = true := by decide +kernel

theorem polySecondImag_71_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 1 = true := by decide +kernel

theorem polySecondImag_71_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 2 = true := by decide +kernel

theorem polySecondImag_71_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 3 = true := by decide +kernel

theorem polySecondImag_71_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 4 = true := by decide +kernel

theorem polySecondImag_71_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 5 = true := by decide +kernel

theorem polySecondImag_71_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 6 = true := by decide +kernel

theorem polySecondImag_71 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 71 j = true := by
  fin_cases j
  · exact polySecondImag_71_0
  · exact polySecondImag_71_1
  · exact polySecondImag_71_2
  · exact polySecondImag_71_3
  · exact polySecondImag_71_4
  · exact polySecondImag_71_5
  · exact polySecondImag_71_6

theorem polySecondImag_72_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 0 = true := by decide +kernel

theorem polySecondImag_72_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 1 = true := by decide +kernel

theorem polySecondImag_72_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 2 = true := by decide +kernel

theorem polySecondImag_72_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 3 = true := by decide +kernel

theorem polySecondImag_72_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 4 = true := by decide +kernel

theorem polySecondImag_72_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 5 = true := by decide +kernel

theorem polySecondImag_72_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 6 = true := by decide +kernel

theorem polySecondImag_72 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 72 j = true := by
  fin_cases j
  · exact polySecondImag_72_0
  · exact polySecondImag_72_1
  · exact polySecondImag_72_2
  · exact polySecondImag_72_3
  · exact polySecondImag_72_4
  · exact polySecondImag_72_5
  · exact polySecondImag_72_6

theorem polySecondImag_73_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 0 = true := by decide +kernel

theorem polySecondImag_73_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 1 = true := by decide +kernel

theorem polySecondImag_73_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 2 = true := by decide +kernel

theorem polySecondImag_73_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 3 = true := by decide +kernel

theorem polySecondImag_73_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 4 = true := by decide +kernel

theorem polySecondImag_73_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 5 = true := by decide +kernel

theorem polySecondImag_73_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 6 = true := by decide +kernel

theorem polySecondImag_73 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 73 j = true := by
  fin_cases j
  · exact polySecondImag_73_0
  · exact polySecondImag_73_1
  · exact polySecondImag_73_2
  · exact polySecondImag_73_3
  · exact polySecondImag_73_4
  · exact polySecondImag_73_5
  · exact polySecondImag_73_6

theorem polySecondImag_74_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 0 = true := by decide +kernel

theorem polySecondImag_74_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 1 = true := by decide +kernel

theorem polySecondImag_74_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 2 = true := by decide +kernel

theorem polySecondImag_74_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 3 = true := by decide +kernel

theorem polySecondImag_74_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 4 = true := by decide +kernel

theorem polySecondImag_74_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 5 = true := by decide +kernel

theorem polySecondImag_74_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 6 = true := by decide +kernel

theorem polySecondImag_74 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 74 j = true := by
  fin_cases j
  · exact polySecondImag_74_0
  · exact polySecondImag_74_1
  · exact polySecondImag_74_2
  · exact polySecondImag_74_3
  · exact polySecondImag_74_4
  · exact polySecondImag_74_5
  · exact polySecondImag_74_6

theorem polySecondImag_75_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 0 = true := by decide +kernel

theorem polySecondImag_75_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 1 = true := by decide +kernel

theorem polySecondImag_75_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 2 = true := by decide +kernel

theorem polySecondImag_75_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 3 = true := by decide +kernel

theorem polySecondImag_75_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 4 = true := by decide +kernel

theorem polySecondImag_75_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 5 = true := by decide +kernel

theorem polySecondImag_75_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 6 = true := by decide +kernel

theorem polySecondImag_75 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 75 j = true := by
  fin_cases j
  · exact polySecondImag_75_0
  · exact polySecondImag_75_1
  · exact polySecondImag_75_2
  · exact polySecondImag_75_3
  · exact polySecondImag_75_4
  · exact polySecondImag_75_5
  · exact polySecondImag_75_6

theorem polySecondImag_76_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 0 = true := by decide +kernel

theorem polySecondImag_76_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 1 = true := by decide +kernel

theorem polySecondImag_76_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 2 = true := by decide +kernel

theorem polySecondImag_76_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 3 = true := by decide +kernel

theorem polySecondImag_76_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 4 = true := by decide +kernel

theorem polySecondImag_76_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 5 = true := by decide +kernel

theorem polySecondImag_76_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 6 = true := by decide +kernel

theorem polySecondImag_76 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 76 j = true := by
  fin_cases j
  · exact polySecondImag_76_0
  · exact polySecondImag_76_1
  · exact polySecondImag_76_2
  · exact polySecondImag_76_3
  · exact polySecondImag_76_4
  · exact polySecondImag_76_5
  · exact polySecondImag_76_6

theorem polySecondImag_77_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 0 = true := by decide +kernel

theorem polySecondImag_77_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 1 = true := by decide +kernel

theorem polySecondImag_77_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 2 = true := by decide +kernel

theorem polySecondImag_77_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 3 = true := by decide +kernel

theorem polySecondImag_77_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 4 = true := by decide +kernel

theorem polySecondImag_77_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 5 = true := by decide +kernel

theorem polySecondImag_77_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 6 = true := by decide +kernel

theorem polySecondImag_77 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 77 j = true := by
  fin_cases j
  · exact polySecondImag_77_0
  · exact polySecondImag_77_1
  · exact polySecondImag_77_2
  · exact polySecondImag_77_3
  · exact polySecondImag_77_4
  · exact polySecondImag_77_5
  · exact polySecondImag_77_6

theorem polySecondImag_78_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 0 = true := by decide +kernel

theorem polySecondImag_78_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 1 = true := by decide +kernel

theorem polySecondImag_78_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 2 = true := by decide +kernel

theorem polySecondImag_78_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 3 = true := by decide +kernel

theorem polySecondImag_78_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 4 = true := by decide +kernel

theorem polySecondImag_78_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 5 = true := by decide +kernel

theorem polySecondImag_78_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 6 = true := by decide +kernel

theorem polySecondImag_78 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 78 j = true := by
  fin_cases j
  · exact polySecondImag_78_0
  · exact polySecondImag_78_1
  · exact polySecondImag_78_2
  · exact polySecondImag_78_3
  · exact polySecondImag_78_4
  · exact polySecondImag_78_5
  · exact polySecondImag_78_6

theorem polySecondImag_79_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 0 = true := by decide +kernel

theorem polySecondImag_79_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 1 = true := by decide +kernel

theorem polySecondImag_79_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 2 = true := by decide +kernel

theorem polySecondImag_79_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 3 = true := by decide +kernel

theorem polySecondImag_79_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 4 = true := by decide +kernel

theorem polySecondImag_79_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 5 = true := by decide +kernel

theorem polySecondImag_79_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 6 = true := by decide +kernel

theorem polySecondImag_79 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 79 j = true := by
  fin_cases j
  · exact polySecondImag_79_0
  · exact polySecondImag_79_1
  · exact polySecondImag_79_2
  · exact polySecondImag_79_3
  · exact polySecondImag_79_4
  · exact polySecondImag_79_5
  · exact polySecondImag_79_6

theorem polySecondImag_80_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 0 = true := by decide +kernel

theorem polySecondImag_80_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 1 = true := by decide +kernel

theorem polySecondImag_80_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 2 = true := by decide +kernel

theorem polySecondImag_80_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 3 = true := by decide +kernel

theorem polySecondImag_80_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 4 = true := by decide +kernel

theorem polySecondImag_80_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 5 = true := by decide +kernel

theorem polySecondImag_80_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 6 = true := by decide +kernel

theorem polySecondImag_80 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 80 j = true := by
  fin_cases j
  · exact polySecondImag_80_0
  · exact polySecondImag_80_1
  · exact polySecondImag_80_2
  · exact polySecondImag_80_3
  · exact polySecondImag_80_4
  · exact polySecondImag_80_5
  · exact polySecondImag_80_6

theorem polySecondImag_81_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 0 = true := by decide +kernel

theorem polySecondImag_81_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 1 = true := by decide +kernel

theorem polySecondImag_81_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 2 = true := by decide +kernel

theorem polySecondImag_81_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 3 = true := by decide +kernel

theorem polySecondImag_81_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 4 = true := by decide +kernel

theorem polySecondImag_81_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 5 = true := by decide +kernel

theorem polySecondImag_81_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 6 = true := by decide +kernel

theorem polySecondImag_81 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 81 j = true := by
  fin_cases j
  · exact polySecondImag_81_0
  · exact polySecondImag_81_1
  · exact polySecondImag_81_2
  · exact polySecondImag_81_3
  · exact polySecondImag_81_4
  · exact polySecondImag_81_5
  · exact polySecondImag_81_6

theorem polySecondImag_82_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 0 = true := by decide +kernel

theorem polySecondImag_82_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 1 = true := by decide +kernel

theorem polySecondImag_82_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 2 = true := by decide +kernel

theorem polySecondImag_82_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 3 = true := by decide +kernel

theorem polySecondImag_82_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 4 = true := by decide +kernel

theorem polySecondImag_82_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 5 = true := by decide +kernel

theorem polySecondImag_82_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 6 = true := by decide +kernel

theorem polySecondImag_82 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 82 j = true := by
  fin_cases j
  · exact polySecondImag_82_0
  · exact polySecondImag_82_1
  · exact polySecondImag_82_2
  · exact polySecondImag_82_3
  · exact polySecondImag_82_4
  · exact polySecondImag_82_5
  · exact polySecondImag_82_6

theorem polySecondImag_83_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 0 = true := by decide +kernel

theorem polySecondImag_83_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 1 = true := by decide +kernel

theorem polySecondImag_83_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 2 = true := by decide +kernel

theorem polySecondImag_83_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 3 = true := by decide +kernel

theorem polySecondImag_83_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 4 = true := by decide +kernel

theorem polySecondImag_83_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 5 = true := by decide +kernel

theorem polySecondImag_83_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 6 = true := by decide +kernel

theorem polySecondImag_83 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 83 j = true := by
  fin_cases j
  · exact polySecondImag_83_0
  · exact polySecondImag_83_1
  · exact polySecondImag_83_2
  · exact polySecondImag_83_3
  · exact polySecondImag_83_4
  · exact polySecondImag_83_5
  · exact polySecondImag_83_6

theorem polySecondImag_84_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 0 = true := by decide +kernel

theorem polySecondImag_84_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 1 = true := by decide +kernel

theorem polySecondImag_84_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 2 = true := by decide +kernel

theorem polySecondImag_84_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 3 = true := by decide +kernel

theorem polySecondImag_84_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 4 = true := by decide +kernel

theorem polySecondImag_84_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 5 = true := by decide +kernel

theorem polySecondImag_84_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 6 = true := by decide +kernel

theorem polySecondImag_84 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 84 j = true := by
  fin_cases j
  · exact polySecondImag_84_0
  · exact polySecondImag_84_1
  · exact polySecondImag_84_2
  · exact polySecondImag_84_3
  · exact polySecondImag_84_4
  · exact polySecondImag_84_5
  · exact polySecondImag_84_6

theorem polySecondImag_85_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 0 = true := by decide +kernel

theorem polySecondImag_85_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 1 = true := by decide +kernel

theorem polySecondImag_85_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 2 = true := by decide +kernel

theorem polySecondImag_85_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 3 = true := by decide +kernel

theorem polySecondImag_85_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 4 = true := by decide +kernel

theorem polySecondImag_85_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 5 = true := by decide +kernel

theorem polySecondImag_85_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 6 = true := by decide +kernel

theorem polySecondImag_85 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 85 j = true := by
  fin_cases j
  · exact polySecondImag_85_0
  · exact polySecondImag_85_1
  · exact polySecondImag_85_2
  · exact polySecondImag_85_3
  · exact polySecondImag_85_4
  · exact polySecondImag_85_5
  · exact polySecondImag_85_6

theorem polySecondImag_86_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 0 = true := by decide +kernel

theorem polySecondImag_86_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 1 = true := by decide +kernel

theorem polySecondImag_86_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 2 = true := by decide +kernel

theorem polySecondImag_86_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 3 = true := by decide +kernel

theorem polySecondImag_86_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 4 = true := by decide +kernel

theorem polySecondImag_86_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 5 = true := by decide +kernel

theorem polySecondImag_86_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 6 = true := by decide +kernel

theorem polySecondImag_86 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 86 j = true := by
  fin_cases j
  · exact polySecondImag_86_0
  · exact polySecondImag_86_1
  · exact polySecondImag_86_2
  · exact polySecondImag_86_3
  · exact polySecondImag_86_4
  · exact polySecondImag_86_5
  · exact polySecondImag_86_6

theorem polySecondImag_87_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 0 = true := by decide +kernel

theorem polySecondImag_87_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 1 = true := by decide +kernel

theorem polySecondImag_87_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 2 = true := by decide +kernel

theorem polySecondImag_87_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 3 = true := by decide +kernel

theorem polySecondImag_87_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 4 = true := by decide +kernel

theorem polySecondImag_87_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 5 = true := by decide +kernel

theorem polySecondImag_87_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 6 = true := by decide +kernel

theorem polySecondImag_87 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 87 j = true := by
  fin_cases j
  · exact polySecondImag_87_0
  · exact polySecondImag_87_1
  · exact polySecondImag_87_2
  · exact polySecondImag_87_3
  · exact polySecondImag_87_4
  · exact polySecondImag_87_5
  · exact polySecondImag_87_6

theorem polySecondImag_88_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 0 = true := by decide +kernel

theorem polySecondImag_88_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 1 = true := by decide +kernel

theorem polySecondImag_88_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 2 = true := by decide +kernel

theorem polySecondImag_88_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 3 = true := by decide +kernel

theorem polySecondImag_88_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 4 = true := by decide +kernel

theorem polySecondImag_88_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 5 = true := by decide +kernel

theorem polySecondImag_88_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 6 = true := by decide +kernel

theorem polySecondImag_88 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 88 j = true := by
  fin_cases j
  · exact polySecondImag_88_0
  · exact polySecondImag_88_1
  · exact polySecondImag_88_2
  · exact polySecondImag_88_3
  · exact polySecondImag_88_4
  · exact polySecondImag_88_5
  · exact polySecondImag_88_6

theorem polySecondImag_89_0 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 0 = true := by decide +kernel

theorem polySecondImag_89_1 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 1 = true := by decide +kernel

theorem polySecondImag_89_2 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 2 = true := by decide +kernel

theorem polySecondImag_89_3 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 3 = true := by decide +kernel

theorem polySecondImag_89_4 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 4 = true := by decide +kernel

theorem polySecondImag_89_5 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 5 = true := by decide +kernel

theorem polySecondImag_89_6 : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 6 = true := by decide +kernel

theorem polySecondImag_89 (j : Fin 7) : MatrixBox.exactBlockCheck (k := 7) (b := 48) ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) polySecondImag 89 j = true := by
  fin_cases j
  · exact polySecondImag_89_0
  · exact polySecondImag_89_1
  · exact polySecondImag_89_2
  · exact polySecondImag_89_3
  · exact polySecondImag_89_4
  · exact polySecondImag_89_5
  · exact polySecondImag_89_6

theorem polySecondImag_eq : ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D) = polySecondImag := by
  apply MatrixBox.eq_of_exact_blocks (k := 7) (b := 48)
  intro i j
  fin_cases i
  · exact polySecondImag_0 j
  · exact polySecondImag_1 j
  · exact polySecondImag_2 j
  · exact polySecondImag_3 j
  · exact polySecondImag_4 j
  · exact polySecondImag_5 j
  · exact polySecondImag_6 j
  · exact polySecondImag_7 j
  · exact polySecondImag_8 j
  · exact polySecondImag_9 j
  · exact polySecondImag_10 j
  · exact polySecondImag_11 j
  · exact polySecondImag_12 j
  · exact polySecondImag_13 j
  · exact polySecondImag_14 j
  · exact polySecondImag_15 j
  · exact polySecondImag_16 j
  · exact polySecondImag_17 j
  · exact polySecondImag_18 j
  · exact polySecondImag_19 j
  · exact polySecondImag_20 j
  · exact polySecondImag_21 j
  · exact polySecondImag_22 j
  · exact polySecondImag_23 j
  · exact polySecondImag_24 j
  · exact polySecondImag_25 j
  · exact polySecondImag_26 j
  · exact polySecondImag_27 j
  · exact polySecondImag_28 j
  · exact polySecondImag_29 j
  · exact polySecondImag_30 j
  · exact polySecondImag_31 j
  · exact polySecondImag_32 j
  · exact polySecondImag_33 j
  · exact polySecondImag_34 j
  · exact polySecondImag_35 j
  · exact polySecondImag_36 j
  · exact polySecondImag_37 j
  · exact polySecondImag_38 j
  · exact polySecondImag_39 j
  · exact polySecondImag_40 j
  · exact polySecondImag_41 j
  · exact polySecondImag_42 j
  · exact polySecondImag_43 j
  · exact polySecondImag_44 j
  · exact polySecondImag_45 j
  · exact polySecondImag_46 j
  · exact polySecondImag_47 j
  · exact polySecondImag_48 j
  · exact polySecondImag_49 j
  · exact polySecondImag_50 j
  · exact polySecondImag_51 j
  · exact polySecondImag_52 j
  · exact polySecondImag_53 j
  · exact polySecondImag_54 j
  · exact polySecondImag_55 j
  · exact polySecondImag_56 j
  · exact polySecondImag_57 j
  · exact polySecondImag_58 j
  · exact polySecondImag_59 j
  · exact polySecondImag_60 j
  · exact polySecondImag_61 j
  · exact polySecondImag_62 j
  · exact polySecondImag_63 j
  · exact polySecondImag_64 j
  · exact polySecondImag_65 j
  · exact polySecondImag_66 j
  · exact polySecondImag_67 j
  · exact polySecondImag_68 j
  · exact polySecondImag_69 j
  · exact polySecondImag_70 j
  · exact polySecondImag_71 j
  · exact polySecondImag_72 j
  · exact polySecondImag_73 j
  · exact polySecondImag_74 j
  · exact polySecondImag_75 j
  · exact polySecondImag_76 j
  · exact polySecondImag_77 j
  · exact polySecondImag_78 j
  · exact polySecondImag_79 j
  · exact polySecondImag_80 j
  · exact polySecondImag_81 j
  · exact polySecondImag_82 j
  · exact polySecondImag_83 j
  · exact polySecondImag_84 j
  · exact polySecondImag_85 j
  · exact polySecondImag_86 j
  · exact polySecondImag_87 j
  · exact polySecondImag_88 j
  · exact polySecondImag_89 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
