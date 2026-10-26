import KernelAtlas.WholeBall.Fourier2299QuarticImagData
import KernelAtlas.WholeBall.MatrixColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem polyQuarticImag_0_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 0 = true := by decide +kernel

theorem polyQuarticImag_0_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 1 = true := by decide +kernel

theorem polyQuarticImag_0_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 2 = true := by decide +kernel

theorem polyQuarticImag_0_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 3 = true := by decide +kernel

theorem polyQuarticImag_0_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 4 = true := by decide +kernel

theorem polyQuarticImag_0_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 5 = true := by decide +kernel

theorem polyQuarticImag_0_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 6 = true := by decide +kernel

theorem polyQuarticImag_0_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 7 = true := by decide +kernel

theorem polyQuarticImag_0 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 0 j = true := by
  fin_cases j
  · exact polyQuarticImag_0_0
  · exact polyQuarticImag_0_1
  · exact polyQuarticImag_0_2
  · exact polyQuarticImag_0_3
  · exact polyQuarticImag_0_4
  · exact polyQuarticImag_0_5
  · exact polyQuarticImag_0_6
  · exact polyQuarticImag_0_7

theorem polyQuarticImag_1_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 0 = true := by decide +kernel

theorem polyQuarticImag_1_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 1 = true := by decide +kernel

theorem polyQuarticImag_1_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 2 = true := by decide +kernel

theorem polyQuarticImag_1_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 3 = true := by decide +kernel

theorem polyQuarticImag_1_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 4 = true := by decide +kernel

theorem polyQuarticImag_1_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 5 = true := by decide +kernel

theorem polyQuarticImag_1_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 6 = true := by decide +kernel

theorem polyQuarticImag_1_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 7 = true := by decide +kernel

theorem polyQuarticImag_1 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 1 j = true := by
  fin_cases j
  · exact polyQuarticImag_1_0
  · exact polyQuarticImag_1_1
  · exact polyQuarticImag_1_2
  · exact polyQuarticImag_1_3
  · exact polyQuarticImag_1_4
  · exact polyQuarticImag_1_5
  · exact polyQuarticImag_1_6
  · exact polyQuarticImag_1_7

theorem polyQuarticImag_2_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 0 = true := by decide +kernel

theorem polyQuarticImag_2_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 1 = true := by decide +kernel

theorem polyQuarticImag_2_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 2 = true := by decide +kernel

theorem polyQuarticImag_2_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 3 = true := by decide +kernel

theorem polyQuarticImag_2_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 4 = true := by decide +kernel

theorem polyQuarticImag_2_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 5 = true := by decide +kernel

theorem polyQuarticImag_2_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 6 = true := by decide +kernel

theorem polyQuarticImag_2_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 7 = true := by decide +kernel

theorem polyQuarticImag_2 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 2 j = true := by
  fin_cases j
  · exact polyQuarticImag_2_0
  · exact polyQuarticImag_2_1
  · exact polyQuarticImag_2_2
  · exact polyQuarticImag_2_3
  · exact polyQuarticImag_2_4
  · exact polyQuarticImag_2_5
  · exact polyQuarticImag_2_6
  · exact polyQuarticImag_2_7

theorem polyQuarticImag_3_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 0 = true := by decide +kernel

theorem polyQuarticImag_3_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 1 = true := by decide +kernel

theorem polyQuarticImag_3_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 2 = true := by decide +kernel

theorem polyQuarticImag_3_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 3 = true := by decide +kernel

theorem polyQuarticImag_3_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 4 = true := by decide +kernel

theorem polyQuarticImag_3_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 5 = true := by decide +kernel

theorem polyQuarticImag_3_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 6 = true := by decide +kernel

theorem polyQuarticImag_3_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 7 = true := by decide +kernel

theorem polyQuarticImag_3 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 3 j = true := by
  fin_cases j
  · exact polyQuarticImag_3_0
  · exact polyQuarticImag_3_1
  · exact polyQuarticImag_3_2
  · exact polyQuarticImag_3_3
  · exact polyQuarticImag_3_4
  · exact polyQuarticImag_3_5
  · exact polyQuarticImag_3_6
  · exact polyQuarticImag_3_7

theorem polyQuarticImag_4_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 0 = true := by decide +kernel

theorem polyQuarticImag_4_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 1 = true := by decide +kernel

theorem polyQuarticImag_4_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 2 = true := by decide +kernel

theorem polyQuarticImag_4_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 3 = true := by decide +kernel

theorem polyQuarticImag_4_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 4 = true := by decide +kernel

theorem polyQuarticImag_4_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 5 = true := by decide +kernel

theorem polyQuarticImag_4_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 6 = true := by decide +kernel

theorem polyQuarticImag_4_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 7 = true := by decide +kernel

theorem polyQuarticImag_4 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 4 j = true := by
  fin_cases j
  · exact polyQuarticImag_4_0
  · exact polyQuarticImag_4_1
  · exact polyQuarticImag_4_2
  · exact polyQuarticImag_4_3
  · exact polyQuarticImag_4_4
  · exact polyQuarticImag_4_5
  · exact polyQuarticImag_4_6
  · exact polyQuarticImag_4_7

theorem polyQuarticImag_5_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 0 = true := by decide +kernel

theorem polyQuarticImag_5_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 1 = true := by decide +kernel

theorem polyQuarticImag_5_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 2 = true := by decide +kernel

theorem polyQuarticImag_5_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 3 = true := by decide +kernel

theorem polyQuarticImag_5_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 4 = true := by decide +kernel

theorem polyQuarticImag_5_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 5 = true := by decide +kernel

theorem polyQuarticImag_5_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 6 = true := by decide +kernel

theorem polyQuarticImag_5_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 7 = true := by decide +kernel

theorem polyQuarticImag_5 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 5 j = true := by
  fin_cases j
  · exact polyQuarticImag_5_0
  · exact polyQuarticImag_5_1
  · exact polyQuarticImag_5_2
  · exact polyQuarticImag_5_3
  · exact polyQuarticImag_5_4
  · exact polyQuarticImag_5_5
  · exact polyQuarticImag_5_6
  · exact polyQuarticImag_5_7

theorem polyQuarticImag_6_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 0 = true := by decide +kernel

theorem polyQuarticImag_6_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 1 = true := by decide +kernel

theorem polyQuarticImag_6_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 2 = true := by decide +kernel

theorem polyQuarticImag_6_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 3 = true := by decide +kernel

theorem polyQuarticImag_6_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 4 = true := by decide +kernel

theorem polyQuarticImag_6_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 5 = true := by decide +kernel

theorem polyQuarticImag_6_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 6 = true := by decide +kernel

theorem polyQuarticImag_6_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 7 = true := by decide +kernel

theorem polyQuarticImag_6 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 6 j = true := by
  fin_cases j
  · exact polyQuarticImag_6_0
  · exact polyQuarticImag_6_1
  · exact polyQuarticImag_6_2
  · exact polyQuarticImag_6_3
  · exact polyQuarticImag_6_4
  · exact polyQuarticImag_6_5
  · exact polyQuarticImag_6_6
  · exact polyQuarticImag_6_7

theorem polyQuarticImag_7_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 0 = true := by decide +kernel

theorem polyQuarticImag_7_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 1 = true := by decide +kernel

theorem polyQuarticImag_7_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 2 = true := by decide +kernel

theorem polyQuarticImag_7_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 3 = true := by decide +kernel

theorem polyQuarticImag_7_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 4 = true := by decide +kernel

theorem polyQuarticImag_7_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 5 = true := by decide +kernel

theorem polyQuarticImag_7_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 6 = true := by decide +kernel

theorem polyQuarticImag_7_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 7 = true := by decide +kernel

theorem polyQuarticImag_7 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 7 j = true := by
  fin_cases j
  · exact polyQuarticImag_7_0
  · exact polyQuarticImag_7_1
  · exact polyQuarticImag_7_2
  · exact polyQuarticImag_7_3
  · exact polyQuarticImag_7_4
  · exact polyQuarticImag_7_5
  · exact polyQuarticImag_7_6
  · exact polyQuarticImag_7_7

theorem polyQuarticImag_8_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 0 = true := by decide +kernel

theorem polyQuarticImag_8_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 1 = true := by decide +kernel

theorem polyQuarticImag_8_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 2 = true := by decide +kernel

theorem polyQuarticImag_8_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 3 = true := by decide +kernel

theorem polyQuarticImag_8_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 4 = true := by decide +kernel

theorem polyQuarticImag_8_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 5 = true := by decide +kernel

theorem polyQuarticImag_8_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 6 = true := by decide +kernel

theorem polyQuarticImag_8_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 7 = true := by decide +kernel

theorem polyQuarticImag_8 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 8 j = true := by
  fin_cases j
  · exact polyQuarticImag_8_0
  · exact polyQuarticImag_8_1
  · exact polyQuarticImag_8_2
  · exact polyQuarticImag_8_3
  · exact polyQuarticImag_8_4
  · exact polyQuarticImag_8_5
  · exact polyQuarticImag_8_6
  · exact polyQuarticImag_8_7

theorem polyQuarticImag_9_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 0 = true := by decide +kernel

theorem polyQuarticImag_9_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 1 = true := by decide +kernel

theorem polyQuarticImag_9_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 2 = true := by decide +kernel

theorem polyQuarticImag_9_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 3 = true := by decide +kernel

theorem polyQuarticImag_9_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 4 = true := by decide +kernel

theorem polyQuarticImag_9_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 5 = true := by decide +kernel

theorem polyQuarticImag_9_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 6 = true := by decide +kernel

theorem polyQuarticImag_9_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 7 = true := by decide +kernel

theorem polyQuarticImag_9 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 9 j = true := by
  fin_cases j
  · exact polyQuarticImag_9_0
  · exact polyQuarticImag_9_1
  · exact polyQuarticImag_9_2
  · exact polyQuarticImag_9_3
  · exact polyQuarticImag_9_4
  · exact polyQuarticImag_9_5
  · exact polyQuarticImag_9_6
  · exact polyQuarticImag_9_7

theorem polyQuarticImag_10_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 0 = true := by decide +kernel

theorem polyQuarticImag_10_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 1 = true := by decide +kernel

theorem polyQuarticImag_10_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 2 = true := by decide +kernel

theorem polyQuarticImag_10_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 3 = true := by decide +kernel

theorem polyQuarticImag_10_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 4 = true := by decide +kernel

theorem polyQuarticImag_10_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 5 = true := by decide +kernel

theorem polyQuarticImag_10_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 6 = true := by decide +kernel

theorem polyQuarticImag_10_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 7 = true := by decide +kernel

theorem polyQuarticImag_10 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 10 j = true := by
  fin_cases j
  · exact polyQuarticImag_10_0
  · exact polyQuarticImag_10_1
  · exact polyQuarticImag_10_2
  · exact polyQuarticImag_10_3
  · exact polyQuarticImag_10_4
  · exact polyQuarticImag_10_5
  · exact polyQuarticImag_10_6
  · exact polyQuarticImag_10_7

theorem polyQuarticImag_11_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 0 = true := by decide +kernel

theorem polyQuarticImag_11_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 1 = true := by decide +kernel

theorem polyQuarticImag_11_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 2 = true := by decide +kernel

theorem polyQuarticImag_11_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 3 = true := by decide +kernel

theorem polyQuarticImag_11_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 4 = true := by decide +kernel

theorem polyQuarticImag_11_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 5 = true := by decide +kernel

theorem polyQuarticImag_11_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 6 = true := by decide +kernel

theorem polyQuarticImag_11_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 7 = true := by decide +kernel

theorem polyQuarticImag_11 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 11 j = true := by
  fin_cases j
  · exact polyQuarticImag_11_0
  · exact polyQuarticImag_11_1
  · exact polyQuarticImag_11_2
  · exact polyQuarticImag_11_3
  · exact polyQuarticImag_11_4
  · exact polyQuarticImag_11_5
  · exact polyQuarticImag_11_6
  · exact polyQuarticImag_11_7

theorem polyQuarticImag_12_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 0 = true := by decide +kernel

theorem polyQuarticImag_12_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 1 = true := by decide +kernel

theorem polyQuarticImag_12_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 2 = true := by decide +kernel

theorem polyQuarticImag_12_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 3 = true := by decide +kernel

theorem polyQuarticImag_12_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 4 = true := by decide +kernel

theorem polyQuarticImag_12_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 5 = true := by decide +kernel

theorem polyQuarticImag_12_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 6 = true := by decide +kernel

theorem polyQuarticImag_12_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 7 = true := by decide +kernel

theorem polyQuarticImag_12 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 12 j = true := by
  fin_cases j
  · exact polyQuarticImag_12_0
  · exact polyQuarticImag_12_1
  · exact polyQuarticImag_12_2
  · exact polyQuarticImag_12_3
  · exact polyQuarticImag_12_4
  · exact polyQuarticImag_12_5
  · exact polyQuarticImag_12_6
  · exact polyQuarticImag_12_7

theorem polyQuarticImag_13_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 0 = true := by decide +kernel

theorem polyQuarticImag_13_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 1 = true := by decide +kernel

theorem polyQuarticImag_13_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 2 = true := by decide +kernel

theorem polyQuarticImag_13_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 3 = true := by decide +kernel

theorem polyQuarticImag_13_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 4 = true := by decide +kernel

theorem polyQuarticImag_13_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 5 = true := by decide +kernel

theorem polyQuarticImag_13_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 6 = true := by decide +kernel

theorem polyQuarticImag_13_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 7 = true := by decide +kernel

theorem polyQuarticImag_13 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 13 j = true := by
  fin_cases j
  · exact polyQuarticImag_13_0
  · exact polyQuarticImag_13_1
  · exact polyQuarticImag_13_2
  · exact polyQuarticImag_13_3
  · exact polyQuarticImag_13_4
  · exact polyQuarticImag_13_5
  · exact polyQuarticImag_13_6
  · exact polyQuarticImag_13_7

theorem polyQuarticImag_14_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 0 = true := by decide +kernel

theorem polyQuarticImag_14_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 1 = true := by decide +kernel

theorem polyQuarticImag_14_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 2 = true := by decide +kernel

theorem polyQuarticImag_14_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 3 = true := by decide +kernel

theorem polyQuarticImag_14_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 4 = true := by decide +kernel

theorem polyQuarticImag_14_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 5 = true := by decide +kernel

theorem polyQuarticImag_14_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 6 = true := by decide +kernel

theorem polyQuarticImag_14_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 7 = true := by decide +kernel

theorem polyQuarticImag_14 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 14 j = true := by
  fin_cases j
  · exact polyQuarticImag_14_0
  · exact polyQuarticImag_14_1
  · exact polyQuarticImag_14_2
  · exact polyQuarticImag_14_3
  · exact polyQuarticImag_14_4
  · exact polyQuarticImag_14_5
  · exact polyQuarticImag_14_6
  · exact polyQuarticImag_14_7

theorem polyQuarticImag_15_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 0 = true := by decide +kernel

theorem polyQuarticImag_15_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 1 = true := by decide +kernel

theorem polyQuarticImag_15_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 2 = true := by decide +kernel

theorem polyQuarticImag_15_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 3 = true := by decide +kernel

theorem polyQuarticImag_15_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 4 = true := by decide +kernel

theorem polyQuarticImag_15_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 5 = true := by decide +kernel

theorem polyQuarticImag_15_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 6 = true := by decide +kernel

theorem polyQuarticImag_15_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 7 = true := by decide +kernel

theorem polyQuarticImag_15 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 15 j = true := by
  fin_cases j
  · exact polyQuarticImag_15_0
  · exact polyQuarticImag_15_1
  · exact polyQuarticImag_15_2
  · exact polyQuarticImag_15_3
  · exact polyQuarticImag_15_4
  · exact polyQuarticImag_15_5
  · exact polyQuarticImag_15_6
  · exact polyQuarticImag_15_7

theorem polyQuarticImag_16_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 0 = true := by decide +kernel

theorem polyQuarticImag_16_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 1 = true := by decide +kernel

theorem polyQuarticImag_16_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 2 = true := by decide +kernel

theorem polyQuarticImag_16_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 3 = true := by decide +kernel

theorem polyQuarticImag_16_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 4 = true := by decide +kernel

theorem polyQuarticImag_16_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 5 = true := by decide +kernel

theorem polyQuarticImag_16_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 6 = true := by decide +kernel

theorem polyQuarticImag_16_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 7 = true := by decide +kernel

theorem polyQuarticImag_16 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 16 j = true := by
  fin_cases j
  · exact polyQuarticImag_16_0
  · exact polyQuarticImag_16_1
  · exact polyQuarticImag_16_2
  · exact polyQuarticImag_16_3
  · exact polyQuarticImag_16_4
  · exact polyQuarticImag_16_5
  · exact polyQuarticImag_16_6
  · exact polyQuarticImag_16_7

theorem polyQuarticImag_17_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 0 = true := by decide +kernel

theorem polyQuarticImag_17_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 1 = true := by decide +kernel

theorem polyQuarticImag_17_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 2 = true := by decide +kernel

theorem polyQuarticImag_17_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 3 = true := by decide +kernel

theorem polyQuarticImag_17_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 4 = true := by decide +kernel

theorem polyQuarticImag_17_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 5 = true := by decide +kernel

theorem polyQuarticImag_17_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 6 = true := by decide +kernel

theorem polyQuarticImag_17_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 7 = true := by decide +kernel

theorem polyQuarticImag_17 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 17 j = true := by
  fin_cases j
  · exact polyQuarticImag_17_0
  · exact polyQuarticImag_17_1
  · exact polyQuarticImag_17_2
  · exact polyQuarticImag_17_3
  · exact polyQuarticImag_17_4
  · exact polyQuarticImag_17_5
  · exact polyQuarticImag_17_6
  · exact polyQuarticImag_17_7

theorem polyQuarticImag_18_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 0 = true := by decide +kernel

theorem polyQuarticImag_18_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 1 = true := by decide +kernel

theorem polyQuarticImag_18_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 2 = true := by decide +kernel

theorem polyQuarticImag_18_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 3 = true := by decide +kernel

theorem polyQuarticImag_18_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 4 = true := by decide +kernel

theorem polyQuarticImag_18_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 5 = true := by decide +kernel

theorem polyQuarticImag_18_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 6 = true := by decide +kernel

theorem polyQuarticImag_18_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 7 = true := by decide +kernel

theorem polyQuarticImag_18 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 18 j = true := by
  fin_cases j
  · exact polyQuarticImag_18_0
  · exact polyQuarticImag_18_1
  · exact polyQuarticImag_18_2
  · exact polyQuarticImag_18_3
  · exact polyQuarticImag_18_4
  · exact polyQuarticImag_18_5
  · exact polyQuarticImag_18_6
  · exact polyQuarticImag_18_7

theorem polyQuarticImag_19_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 0 = true := by decide +kernel

theorem polyQuarticImag_19_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 1 = true := by decide +kernel

theorem polyQuarticImag_19_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 2 = true := by decide +kernel

theorem polyQuarticImag_19_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 3 = true := by decide +kernel

theorem polyQuarticImag_19_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 4 = true := by decide +kernel

theorem polyQuarticImag_19_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 5 = true := by decide +kernel

theorem polyQuarticImag_19_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 6 = true := by decide +kernel

theorem polyQuarticImag_19_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 7 = true := by decide +kernel

theorem polyQuarticImag_19 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 19 j = true := by
  fin_cases j
  · exact polyQuarticImag_19_0
  · exact polyQuarticImag_19_1
  · exact polyQuarticImag_19_2
  · exact polyQuarticImag_19_3
  · exact polyQuarticImag_19_4
  · exact polyQuarticImag_19_5
  · exact polyQuarticImag_19_6
  · exact polyQuarticImag_19_7

theorem polyQuarticImag_20_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 0 = true := by decide +kernel

theorem polyQuarticImag_20_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 1 = true := by decide +kernel

theorem polyQuarticImag_20_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 2 = true := by decide +kernel

theorem polyQuarticImag_20_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 3 = true := by decide +kernel

theorem polyQuarticImag_20_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 4 = true := by decide +kernel

theorem polyQuarticImag_20_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 5 = true := by decide +kernel

theorem polyQuarticImag_20_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 6 = true := by decide +kernel

theorem polyQuarticImag_20_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 7 = true := by decide +kernel

theorem polyQuarticImag_20 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 20 j = true := by
  fin_cases j
  · exact polyQuarticImag_20_0
  · exact polyQuarticImag_20_1
  · exact polyQuarticImag_20_2
  · exact polyQuarticImag_20_3
  · exact polyQuarticImag_20_4
  · exact polyQuarticImag_20_5
  · exact polyQuarticImag_20_6
  · exact polyQuarticImag_20_7

theorem polyQuarticImag_21_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 0 = true := by decide +kernel

theorem polyQuarticImag_21_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 1 = true := by decide +kernel

theorem polyQuarticImag_21_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 2 = true := by decide +kernel

theorem polyQuarticImag_21_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 3 = true := by decide +kernel

theorem polyQuarticImag_21_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 4 = true := by decide +kernel

theorem polyQuarticImag_21_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 5 = true := by decide +kernel

theorem polyQuarticImag_21_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 6 = true := by decide +kernel

theorem polyQuarticImag_21_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 7 = true := by decide +kernel

theorem polyQuarticImag_21 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 21 j = true := by
  fin_cases j
  · exact polyQuarticImag_21_0
  · exact polyQuarticImag_21_1
  · exact polyQuarticImag_21_2
  · exact polyQuarticImag_21_3
  · exact polyQuarticImag_21_4
  · exact polyQuarticImag_21_5
  · exact polyQuarticImag_21_6
  · exact polyQuarticImag_21_7

theorem polyQuarticImag_22_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 0 = true := by decide +kernel

theorem polyQuarticImag_22_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 1 = true := by decide +kernel

theorem polyQuarticImag_22_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 2 = true := by decide +kernel

theorem polyQuarticImag_22_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 3 = true := by decide +kernel

theorem polyQuarticImag_22_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 4 = true := by decide +kernel

theorem polyQuarticImag_22_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 5 = true := by decide +kernel

theorem polyQuarticImag_22_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 6 = true := by decide +kernel

theorem polyQuarticImag_22_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 7 = true := by decide +kernel

theorem polyQuarticImag_22 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 22 j = true := by
  fin_cases j
  · exact polyQuarticImag_22_0
  · exact polyQuarticImag_22_1
  · exact polyQuarticImag_22_2
  · exact polyQuarticImag_22_3
  · exact polyQuarticImag_22_4
  · exact polyQuarticImag_22_5
  · exact polyQuarticImag_22_6
  · exact polyQuarticImag_22_7

theorem polyQuarticImag_23_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 0 = true := by decide +kernel

theorem polyQuarticImag_23_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 1 = true := by decide +kernel

theorem polyQuarticImag_23_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 2 = true := by decide +kernel

theorem polyQuarticImag_23_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 3 = true := by decide +kernel

theorem polyQuarticImag_23_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 4 = true := by decide +kernel

theorem polyQuarticImag_23_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 5 = true := by decide +kernel

theorem polyQuarticImag_23_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 6 = true := by decide +kernel

theorem polyQuarticImag_23_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 7 = true := by decide +kernel

theorem polyQuarticImag_23 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 23 j = true := by
  fin_cases j
  · exact polyQuarticImag_23_0
  · exact polyQuarticImag_23_1
  · exact polyQuarticImag_23_2
  · exact polyQuarticImag_23_3
  · exact polyQuarticImag_23_4
  · exact polyQuarticImag_23_5
  · exact polyQuarticImag_23_6
  · exact polyQuarticImag_23_7

theorem polyQuarticImag_24_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 0 = true := by decide +kernel

theorem polyQuarticImag_24_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 1 = true := by decide +kernel

theorem polyQuarticImag_24_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 2 = true := by decide +kernel

theorem polyQuarticImag_24_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 3 = true := by decide +kernel

theorem polyQuarticImag_24_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 4 = true := by decide +kernel

theorem polyQuarticImag_24_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 5 = true := by decide +kernel

theorem polyQuarticImag_24_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 6 = true := by decide +kernel

theorem polyQuarticImag_24_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 7 = true := by decide +kernel

theorem polyQuarticImag_24 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 24 j = true := by
  fin_cases j
  · exact polyQuarticImag_24_0
  · exact polyQuarticImag_24_1
  · exact polyQuarticImag_24_2
  · exact polyQuarticImag_24_3
  · exact polyQuarticImag_24_4
  · exact polyQuarticImag_24_5
  · exact polyQuarticImag_24_6
  · exact polyQuarticImag_24_7

theorem polyQuarticImag_25_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 0 = true := by decide +kernel

theorem polyQuarticImag_25_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 1 = true := by decide +kernel

theorem polyQuarticImag_25_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 2 = true := by decide +kernel

theorem polyQuarticImag_25_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 3 = true := by decide +kernel

theorem polyQuarticImag_25_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 4 = true := by decide +kernel

theorem polyQuarticImag_25_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 5 = true := by decide +kernel

theorem polyQuarticImag_25_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 6 = true := by decide +kernel

theorem polyQuarticImag_25_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 7 = true := by decide +kernel

theorem polyQuarticImag_25 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 25 j = true := by
  fin_cases j
  · exact polyQuarticImag_25_0
  · exact polyQuarticImag_25_1
  · exact polyQuarticImag_25_2
  · exact polyQuarticImag_25_3
  · exact polyQuarticImag_25_4
  · exact polyQuarticImag_25_5
  · exact polyQuarticImag_25_6
  · exact polyQuarticImag_25_7

theorem polyQuarticImag_26_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 0 = true := by decide +kernel

theorem polyQuarticImag_26_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 1 = true := by decide +kernel

theorem polyQuarticImag_26_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 2 = true := by decide +kernel

theorem polyQuarticImag_26_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 3 = true := by decide +kernel

theorem polyQuarticImag_26_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 4 = true := by decide +kernel

theorem polyQuarticImag_26_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 5 = true := by decide +kernel

theorem polyQuarticImag_26_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 6 = true := by decide +kernel

theorem polyQuarticImag_26_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 7 = true := by decide +kernel

theorem polyQuarticImag_26 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 26 j = true := by
  fin_cases j
  · exact polyQuarticImag_26_0
  · exact polyQuarticImag_26_1
  · exact polyQuarticImag_26_2
  · exact polyQuarticImag_26_3
  · exact polyQuarticImag_26_4
  · exact polyQuarticImag_26_5
  · exact polyQuarticImag_26_6
  · exact polyQuarticImag_26_7

theorem polyQuarticImag_27_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 0 = true := by decide +kernel

theorem polyQuarticImag_27_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 1 = true := by decide +kernel

theorem polyQuarticImag_27_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 2 = true := by decide +kernel

theorem polyQuarticImag_27_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 3 = true := by decide +kernel

theorem polyQuarticImag_27_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 4 = true := by decide +kernel

theorem polyQuarticImag_27_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 5 = true := by decide +kernel

theorem polyQuarticImag_27_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 6 = true := by decide +kernel

theorem polyQuarticImag_27_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 7 = true := by decide +kernel

theorem polyQuarticImag_27 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 27 j = true := by
  fin_cases j
  · exact polyQuarticImag_27_0
  · exact polyQuarticImag_27_1
  · exact polyQuarticImag_27_2
  · exact polyQuarticImag_27_3
  · exact polyQuarticImag_27_4
  · exact polyQuarticImag_27_5
  · exact polyQuarticImag_27_6
  · exact polyQuarticImag_27_7

theorem polyQuarticImag_28_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 0 = true := by decide +kernel

theorem polyQuarticImag_28_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 1 = true := by decide +kernel

theorem polyQuarticImag_28_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 2 = true := by decide +kernel

theorem polyQuarticImag_28_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 3 = true := by decide +kernel

theorem polyQuarticImag_28_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 4 = true := by decide +kernel

theorem polyQuarticImag_28_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 5 = true := by decide +kernel

theorem polyQuarticImag_28_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 6 = true := by decide +kernel

theorem polyQuarticImag_28_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 7 = true := by decide +kernel

theorem polyQuarticImag_28 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 28 j = true := by
  fin_cases j
  · exact polyQuarticImag_28_0
  · exact polyQuarticImag_28_1
  · exact polyQuarticImag_28_2
  · exact polyQuarticImag_28_3
  · exact polyQuarticImag_28_4
  · exact polyQuarticImag_28_5
  · exact polyQuarticImag_28_6
  · exact polyQuarticImag_28_7

theorem polyQuarticImag_29_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 0 = true := by decide +kernel

theorem polyQuarticImag_29_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 1 = true := by decide +kernel

theorem polyQuarticImag_29_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 2 = true := by decide +kernel

theorem polyQuarticImag_29_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 3 = true := by decide +kernel

theorem polyQuarticImag_29_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 4 = true := by decide +kernel

theorem polyQuarticImag_29_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 5 = true := by decide +kernel

theorem polyQuarticImag_29_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 6 = true := by decide +kernel

theorem polyQuarticImag_29_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 7 = true := by decide +kernel

theorem polyQuarticImag_29 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 29 j = true := by
  fin_cases j
  · exact polyQuarticImag_29_0
  · exact polyQuarticImag_29_1
  · exact polyQuarticImag_29_2
  · exact polyQuarticImag_29_3
  · exact polyQuarticImag_29_4
  · exact polyQuarticImag_29_5
  · exact polyQuarticImag_29_6
  · exact polyQuarticImag_29_7

theorem polyQuarticImag_30_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 0 = true := by decide +kernel

theorem polyQuarticImag_30_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 1 = true := by decide +kernel

theorem polyQuarticImag_30_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 2 = true := by decide +kernel

theorem polyQuarticImag_30_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 3 = true := by decide +kernel

theorem polyQuarticImag_30_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 4 = true := by decide +kernel

theorem polyQuarticImag_30_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 5 = true := by decide +kernel

theorem polyQuarticImag_30_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 6 = true := by decide +kernel

theorem polyQuarticImag_30_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 7 = true := by decide +kernel

theorem polyQuarticImag_30 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 30 j = true := by
  fin_cases j
  · exact polyQuarticImag_30_0
  · exact polyQuarticImag_30_1
  · exact polyQuarticImag_30_2
  · exact polyQuarticImag_30_3
  · exact polyQuarticImag_30_4
  · exact polyQuarticImag_30_5
  · exact polyQuarticImag_30_6
  · exact polyQuarticImag_30_7

theorem polyQuarticImag_31_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 0 = true := by decide +kernel

theorem polyQuarticImag_31_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 1 = true := by decide +kernel

theorem polyQuarticImag_31_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 2 = true := by decide +kernel

theorem polyQuarticImag_31_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 3 = true := by decide +kernel

theorem polyQuarticImag_31_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 4 = true := by decide +kernel

theorem polyQuarticImag_31_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 5 = true := by decide +kernel

theorem polyQuarticImag_31_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 6 = true := by decide +kernel

theorem polyQuarticImag_31_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 7 = true := by decide +kernel

theorem polyQuarticImag_31 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 31 j = true := by
  fin_cases j
  · exact polyQuarticImag_31_0
  · exact polyQuarticImag_31_1
  · exact polyQuarticImag_31_2
  · exact polyQuarticImag_31_3
  · exact polyQuarticImag_31_4
  · exact polyQuarticImag_31_5
  · exact polyQuarticImag_31_6
  · exact polyQuarticImag_31_7

theorem polyQuarticImag_32_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 0 = true := by decide +kernel

theorem polyQuarticImag_32_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 1 = true := by decide +kernel

theorem polyQuarticImag_32_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 2 = true := by decide +kernel

theorem polyQuarticImag_32_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 3 = true := by decide +kernel

theorem polyQuarticImag_32_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 4 = true := by decide +kernel

theorem polyQuarticImag_32_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 5 = true := by decide +kernel

theorem polyQuarticImag_32_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 6 = true := by decide +kernel

theorem polyQuarticImag_32_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 7 = true := by decide +kernel

theorem polyQuarticImag_32 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 32 j = true := by
  fin_cases j
  · exact polyQuarticImag_32_0
  · exact polyQuarticImag_32_1
  · exact polyQuarticImag_32_2
  · exact polyQuarticImag_32_3
  · exact polyQuarticImag_32_4
  · exact polyQuarticImag_32_5
  · exact polyQuarticImag_32_6
  · exact polyQuarticImag_32_7

theorem polyQuarticImag_33_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 0 = true := by decide +kernel

theorem polyQuarticImag_33_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 1 = true := by decide +kernel

theorem polyQuarticImag_33_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 2 = true := by decide +kernel

theorem polyQuarticImag_33_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 3 = true := by decide +kernel

theorem polyQuarticImag_33_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 4 = true := by decide +kernel

theorem polyQuarticImag_33_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 5 = true := by decide +kernel

theorem polyQuarticImag_33_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 6 = true := by decide +kernel

theorem polyQuarticImag_33_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 7 = true := by decide +kernel

theorem polyQuarticImag_33 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 33 j = true := by
  fin_cases j
  · exact polyQuarticImag_33_0
  · exact polyQuarticImag_33_1
  · exact polyQuarticImag_33_2
  · exact polyQuarticImag_33_3
  · exact polyQuarticImag_33_4
  · exact polyQuarticImag_33_5
  · exact polyQuarticImag_33_6
  · exact polyQuarticImag_33_7

theorem polyQuarticImag_34_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 0 = true := by decide +kernel

theorem polyQuarticImag_34_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 1 = true := by decide +kernel

theorem polyQuarticImag_34_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 2 = true := by decide +kernel

theorem polyQuarticImag_34_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 3 = true := by decide +kernel

theorem polyQuarticImag_34_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 4 = true := by decide +kernel

theorem polyQuarticImag_34_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 5 = true := by decide +kernel

theorem polyQuarticImag_34_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 6 = true := by decide +kernel

theorem polyQuarticImag_34_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 7 = true := by decide +kernel

theorem polyQuarticImag_34 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 34 j = true := by
  fin_cases j
  · exact polyQuarticImag_34_0
  · exact polyQuarticImag_34_1
  · exact polyQuarticImag_34_2
  · exact polyQuarticImag_34_3
  · exact polyQuarticImag_34_4
  · exact polyQuarticImag_34_5
  · exact polyQuarticImag_34_6
  · exact polyQuarticImag_34_7

theorem polyQuarticImag_35_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 0 = true := by decide +kernel

theorem polyQuarticImag_35_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 1 = true := by decide +kernel

theorem polyQuarticImag_35_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 2 = true := by decide +kernel

theorem polyQuarticImag_35_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 3 = true := by decide +kernel

theorem polyQuarticImag_35_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 4 = true := by decide +kernel

theorem polyQuarticImag_35_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 5 = true := by decide +kernel

theorem polyQuarticImag_35_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 6 = true := by decide +kernel

theorem polyQuarticImag_35_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 7 = true := by decide +kernel

theorem polyQuarticImag_35 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 35 j = true := by
  fin_cases j
  · exact polyQuarticImag_35_0
  · exact polyQuarticImag_35_1
  · exact polyQuarticImag_35_2
  · exact polyQuarticImag_35_3
  · exact polyQuarticImag_35_4
  · exact polyQuarticImag_35_5
  · exact polyQuarticImag_35_6
  · exact polyQuarticImag_35_7

theorem polyQuarticImag_36_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 0 = true := by decide +kernel

theorem polyQuarticImag_36_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 1 = true := by decide +kernel

theorem polyQuarticImag_36_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 2 = true := by decide +kernel

theorem polyQuarticImag_36_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 3 = true := by decide +kernel

theorem polyQuarticImag_36_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 4 = true := by decide +kernel

theorem polyQuarticImag_36_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 5 = true := by decide +kernel

theorem polyQuarticImag_36_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 6 = true := by decide +kernel

theorem polyQuarticImag_36_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 7 = true := by decide +kernel

theorem polyQuarticImag_36 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 36 j = true := by
  fin_cases j
  · exact polyQuarticImag_36_0
  · exact polyQuarticImag_36_1
  · exact polyQuarticImag_36_2
  · exact polyQuarticImag_36_3
  · exact polyQuarticImag_36_4
  · exact polyQuarticImag_36_5
  · exact polyQuarticImag_36_6
  · exact polyQuarticImag_36_7

theorem polyQuarticImag_37_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 0 = true := by decide +kernel

theorem polyQuarticImag_37_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 1 = true := by decide +kernel

theorem polyQuarticImag_37_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 2 = true := by decide +kernel

theorem polyQuarticImag_37_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 3 = true := by decide +kernel

theorem polyQuarticImag_37_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 4 = true := by decide +kernel

theorem polyQuarticImag_37_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 5 = true := by decide +kernel

theorem polyQuarticImag_37_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 6 = true := by decide +kernel

theorem polyQuarticImag_37_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 7 = true := by decide +kernel

theorem polyQuarticImag_37 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 37 j = true := by
  fin_cases j
  · exact polyQuarticImag_37_0
  · exact polyQuarticImag_37_1
  · exact polyQuarticImag_37_2
  · exact polyQuarticImag_37_3
  · exact polyQuarticImag_37_4
  · exact polyQuarticImag_37_5
  · exact polyQuarticImag_37_6
  · exact polyQuarticImag_37_7

theorem polyQuarticImag_38_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 0 = true := by decide +kernel

theorem polyQuarticImag_38_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 1 = true := by decide +kernel

theorem polyQuarticImag_38_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 2 = true := by decide +kernel

theorem polyQuarticImag_38_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 3 = true := by decide +kernel

theorem polyQuarticImag_38_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 4 = true := by decide +kernel

theorem polyQuarticImag_38_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 5 = true := by decide +kernel

theorem polyQuarticImag_38_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 6 = true := by decide +kernel

theorem polyQuarticImag_38_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 7 = true := by decide +kernel

theorem polyQuarticImag_38 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 38 j = true := by
  fin_cases j
  · exact polyQuarticImag_38_0
  · exact polyQuarticImag_38_1
  · exact polyQuarticImag_38_2
  · exact polyQuarticImag_38_3
  · exact polyQuarticImag_38_4
  · exact polyQuarticImag_38_5
  · exact polyQuarticImag_38_6
  · exact polyQuarticImag_38_7

theorem polyQuarticImag_39_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 0 = true := by decide +kernel

theorem polyQuarticImag_39_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 1 = true := by decide +kernel

theorem polyQuarticImag_39_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 2 = true := by decide +kernel

theorem polyQuarticImag_39_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 3 = true := by decide +kernel

theorem polyQuarticImag_39_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 4 = true := by decide +kernel

theorem polyQuarticImag_39_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 5 = true := by decide +kernel

theorem polyQuarticImag_39_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 6 = true := by decide +kernel

theorem polyQuarticImag_39_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 7 = true := by decide +kernel

theorem polyQuarticImag_39 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 39 j = true := by
  fin_cases j
  · exact polyQuarticImag_39_0
  · exact polyQuarticImag_39_1
  · exact polyQuarticImag_39_2
  · exact polyQuarticImag_39_3
  · exact polyQuarticImag_39_4
  · exact polyQuarticImag_39_5
  · exact polyQuarticImag_39_6
  · exact polyQuarticImag_39_7

theorem polyQuarticImag_40_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 0 = true := by decide +kernel

theorem polyQuarticImag_40_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 1 = true := by decide +kernel

theorem polyQuarticImag_40_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 2 = true := by decide +kernel

theorem polyQuarticImag_40_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 3 = true := by decide +kernel

theorem polyQuarticImag_40_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 4 = true := by decide +kernel

theorem polyQuarticImag_40_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 5 = true := by decide +kernel

theorem polyQuarticImag_40_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 6 = true := by decide +kernel

theorem polyQuarticImag_40_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 7 = true := by decide +kernel

theorem polyQuarticImag_40 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 40 j = true := by
  fin_cases j
  · exact polyQuarticImag_40_0
  · exact polyQuarticImag_40_1
  · exact polyQuarticImag_40_2
  · exact polyQuarticImag_40_3
  · exact polyQuarticImag_40_4
  · exact polyQuarticImag_40_5
  · exact polyQuarticImag_40_6
  · exact polyQuarticImag_40_7

theorem polyQuarticImag_41_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 0 = true := by decide +kernel

theorem polyQuarticImag_41_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 1 = true := by decide +kernel

theorem polyQuarticImag_41_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 2 = true := by decide +kernel

theorem polyQuarticImag_41_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 3 = true := by decide +kernel

theorem polyQuarticImag_41_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 4 = true := by decide +kernel

theorem polyQuarticImag_41_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 5 = true := by decide +kernel

theorem polyQuarticImag_41_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 6 = true := by decide +kernel

theorem polyQuarticImag_41_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 7 = true := by decide +kernel

theorem polyQuarticImag_41 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 41 j = true := by
  fin_cases j
  · exact polyQuarticImag_41_0
  · exact polyQuarticImag_41_1
  · exact polyQuarticImag_41_2
  · exact polyQuarticImag_41_3
  · exact polyQuarticImag_41_4
  · exact polyQuarticImag_41_5
  · exact polyQuarticImag_41_6
  · exact polyQuarticImag_41_7

theorem polyQuarticImag_42_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 0 = true := by decide +kernel

theorem polyQuarticImag_42_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 1 = true := by decide +kernel

theorem polyQuarticImag_42_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 2 = true := by decide +kernel

theorem polyQuarticImag_42_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 3 = true := by decide +kernel

theorem polyQuarticImag_42_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 4 = true := by decide +kernel

theorem polyQuarticImag_42_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 5 = true := by decide +kernel

theorem polyQuarticImag_42_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 6 = true := by decide +kernel

theorem polyQuarticImag_42_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 7 = true := by decide +kernel

theorem polyQuarticImag_42 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 42 j = true := by
  fin_cases j
  · exact polyQuarticImag_42_0
  · exact polyQuarticImag_42_1
  · exact polyQuarticImag_42_2
  · exact polyQuarticImag_42_3
  · exact polyQuarticImag_42_4
  · exact polyQuarticImag_42_5
  · exact polyQuarticImag_42_6
  · exact polyQuarticImag_42_7

theorem polyQuarticImag_43_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 0 = true := by decide +kernel

theorem polyQuarticImag_43_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 1 = true := by decide +kernel

theorem polyQuarticImag_43_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 2 = true := by decide +kernel

theorem polyQuarticImag_43_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 3 = true := by decide +kernel

theorem polyQuarticImag_43_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 4 = true := by decide +kernel

theorem polyQuarticImag_43_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 5 = true := by decide +kernel

theorem polyQuarticImag_43_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 6 = true := by decide +kernel

theorem polyQuarticImag_43_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 7 = true := by decide +kernel

theorem polyQuarticImag_43 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 43 j = true := by
  fin_cases j
  · exact polyQuarticImag_43_0
  · exact polyQuarticImag_43_1
  · exact polyQuarticImag_43_2
  · exact polyQuarticImag_43_3
  · exact polyQuarticImag_43_4
  · exact polyQuarticImag_43_5
  · exact polyQuarticImag_43_6
  · exact polyQuarticImag_43_7

theorem polyQuarticImag_44_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 0 = true := by decide +kernel

theorem polyQuarticImag_44_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 1 = true := by decide +kernel

theorem polyQuarticImag_44_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 2 = true := by decide +kernel

theorem polyQuarticImag_44_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 3 = true := by decide +kernel

theorem polyQuarticImag_44_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 4 = true := by decide +kernel

theorem polyQuarticImag_44_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 5 = true := by decide +kernel

theorem polyQuarticImag_44_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 6 = true := by decide +kernel

theorem polyQuarticImag_44_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 7 = true := by decide +kernel

theorem polyQuarticImag_44 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 44 j = true := by
  fin_cases j
  · exact polyQuarticImag_44_0
  · exact polyQuarticImag_44_1
  · exact polyQuarticImag_44_2
  · exact polyQuarticImag_44_3
  · exact polyQuarticImag_44_4
  · exact polyQuarticImag_44_5
  · exact polyQuarticImag_44_6
  · exact polyQuarticImag_44_7

theorem polyQuarticImag_45_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 0 = true := by decide +kernel

theorem polyQuarticImag_45_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 1 = true := by decide +kernel

theorem polyQuarticImag_45_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 2 = true := by decide +kernel

theorem polyQuarticImag_45_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 3 = true := by decide +kernel

theorem polyQuarticImag_45_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 4 = true := by decide +kernel

theorem polyQuarticImag_45_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 5 = true := by decide +kernel

theorem polyQuarticImag_45_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 6 = true := by decide +kernel

theorem polyQuarticImag_45_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 7 = true := by decide +kernel

theorem polyQuarticImag_45 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 45 j = true := by
  fin_cases j
  · exact polyQuarticImag_45_0
  · exact polyQuarticImag_45_1
  · exact polyQuarticImag_45_2
  · exact polyQuarticImag_45_3
  · exact polyQuarticImag_45_4
  · exact polyQuarticImag_45_5
  · exact polyQuarticImag_45_6
  · exact polyQuarticImag_45_7

theorem polyQuarticImag_46_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 0 = true := by decide +kernel

theorem polyQuarticImag_46_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 1 = true := by decide +kernel

theorem polyQuarticImag_46_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 2 = true := by decide +kernel

theorem polyQuarticImag_46_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 3 = true := by decide +kernel

theorem polyQuarticImag_46_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 4 = true := by decide +kernel

theorem polyQuarticImag_46_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 5 = true := by decide +kernel

theorem polyQuarticImag_46_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 6 = true := by decide +kernel

theorem polyQuarticImag_46_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 7 = true := by decide +kernel

theorem polyQuarticImag_46 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 46 j = true := by
  fin_cases j
  · exact polyQuarticImag_46_0
  · exact polyQuarticImag_46_1
  · exact polyQuarticImag_46_2
  · exact polyQuarticImag_46_3
  · exact polyQuarticImag_46_4
  · exact polyQuarticImag_46_5
  · exact polyQuarticImag_46_6
  · exact polyQuarticImag_46_7

theorem polyQuarticImag_47_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 0 = true := by decide +kernel

theorem polyQuarticImag_47_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 1 = true := by decide +kernel

theorem polyQuarticImag_47_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 2 = true := by decide +kernel

theorem polyQuarticImag_47_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 3 = true := by decide +kernel

theorem polyQuarticImag_47_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 4 = true := by decide +kernel

theorem polyQuarticImag_47_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 5 = true := by decide +kernel

theorem polyQuarticImag_47_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 6 = true := by decide +kernel

theorem polyQuarticImag_47_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 7 = true := by decide +kernel

theorem polyQuarticImag_47 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 47 j = true := by
  fin_cases j
  · exact polyQuarticImag_47_0
  · exact polyQuarticImag_47_1
  · exact polyQuarticImag_47_2
  · exact polyQuarticImag_47_3
  · exact polyQuarticImag_47_4
  · exact polyQuarticImag_47_5
  · exact polyQuarticImag_47_6
  · exact polyQuarticImag_47_7

theorem polyQuarticImag_48_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 0 = true := by decide +kernel

theorem polyQuarticImag_48_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 1 = true := by decide +kernel

theorem polyQuarticImag_48_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 2 = true := by decide +kernel

theorem polyQuarticImag_48_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 3 = true := by decide +kernel

theorem polyQuarticImag_48_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 4 = true := by decide +kernel

theorem polyQuarticImag_48_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 5 = true := by decide +kernel

theorem polyQuarticImag_48_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 6 = true := by decide +kernel

theorem polyQuarticImag_48_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 7 = true := by decide +kernel

theorem polyQuarticImag_48 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 48 j = true := by
  fin_cases j
  · exact polyQuarticImag_48_0
  · exact polyQuarticImag_48_1
  · exact polyQuarticImag_48_2
  · exact polyQuarticImag_48_3
  · exact polyQuarticImag_48_4
  · exact polyQuarticImag_48_5
  · exact polyQuarticImag_48_6
  · exact polyQuarticImag_48_7

theorem polyQuarticImag_49_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 0 = true := by decide +kernel

theorem polyQuarticImag_49_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 1 = true := by decide +kernel

theorem polyQuarticImag_49_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 2 = true := by decide +kernel

theorem polyQuarticImag_49_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 3 = true := by decide +kernel

theorem polyQuarticImag_49_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 4 = true := by decide +kernel

theorem polyQuarticImag_49_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 5 = true := by decide +kernel

theorem polyQuarticImag_49_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 6 = true := by decide +kernel

theorem polyQuarticImag_49_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 7 = true := by decide +kernel

theorem polyQuarticImag_49 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 49 j = true := by
  fin_cases j
  · exact polyQuarticImag_49_0
  · exact polyQuarticImag_49_1
  · exact polyQuarticImag_49_2
  · exact polyQuarticImag_49_3
  · exact polyQuarticImag_49_4
  · exact polyQuarticImag_49_5
  · exact polyQuarticImag_49_6
  · exact polyQuarticImag_49_7

theorem polyQuarticImag_50_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 0 = true := by decide +kernel

theorem polyQuarticImag_50_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 1 = true := by decide +kernel

theorem polyQuarticImag_50_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 2 = true := by decide +kernel

theorem polyQuarticImag_50_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 3 = true := by decide +kernel

theorem polyQuarticImag_50_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 4 = true := by decide +kernel

theorem polyQuarticImag_50_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 5 = true := by decide +kernel

theorem polyQuarticImag_50_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 6 = true := by decide +kernel

theorem polyQuarticImag_50_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 7 = true := by decide +kernel

theorem polyQuarticImag_50 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 50 j = true := by
  fin_cases j
  · exact polyQuarticImag_50_0
  · exact polyQuarticImag_50_1
  · exact polyQuarticImag_50_2
  · exact polyQuarticImag_50_3
  · exact polyQuarticImag_50_4
  · exact polyQuarticImag_50_5
  · exact polyQuarticImag_50_6
  · exact polyQuarticImag_50_7

theorem polyQuarticImag_51_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 0 = true := by decide +kernel

theorem polyQuarticImag_51_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 1 = true := by decide +kernel

theorem polyQuarticImag_51_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 2 = true := by decide +kernel

theorem polyQuarticImag_51_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 3 = true := by decide +kernel

theorem polyQuarticImag_51_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 4 = true := by decide +kernel

theorem polyQuarticImag_51_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 5 = true := by decide +kernel

theorem polyQuarticImag_51_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 6 = true := by decide +kernel

theorem polyQuarticImag_51_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 7 = true := by decide +kernel

theorem polyQuarticImag_51 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 51 j = true := by
  fin_cases j
  · exact polyQuarticImag_51_0
  · exact polyQuarticImag_51_1
  · exact polyQuarticImag_51_2
  · exact polyQuarticImag_51_3
  · exact polyQuarticImag_51_4
  · exact polyQuarticImag_51_5
  · exact polyQuarticImag_51_6
  · exact polyQuarticImag_51_7

theorem polyQuarticImag_52_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 0 = true := by decide +kernel

theorem polyQuarticImag_52_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 1 = true := by decide +kernel

theorem polyQuarticImag_52_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 2 = true := by decide +kernel

theorem polyQuarticImag_52_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 3 = true := by decide +kernel

theorem polyQuarticImag_52_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 4 = true := by decide +kernel

theorem polyQuarticImag_52_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 5 = true := by decide +kernel

theorem polyQuarticImag_52_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 6 = true := by decide +kernel

theorem polyQuarticImag_52_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 7 = true := by decide +kernel

theorem polyQuarticImag_52 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 52 j = true := by
  fin_cases j
  · exact polyQuarticImag_52_0
  · exact polyQuarticImag_52_1
  · exact polyQuarticImag_52_2
  · exact polyQuarticImag_52_3
  · exact polyQuarticImag_52_4
  · exact polyQuarticImag_52_5
  · exact polyQuarticImag_52_6
  · exact polyQuarticImag_52_7

theorem polyQuarticImag_53_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 0 = true := by decide +kernel

theorem polyQuarticImag_53_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 1 = true := by decide +kernel

theorem polyQuarticImag_53_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 2 = true := by decide +kernel

theorem polyQuarticImag_53_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 3 = true := by decide +kernel

theorem polyQuarticImag_53_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 4 = true := by decide +kernel

theorem polyQuarticImag_53_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 5 = true := by decide +kernel

theorem polyQuarticImag_53_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 6 = true := by decide +kernel

theorem polyQuarticImag_53_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 7 = true := by decide +kernel

theorem polyQuarticImag_53 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 53 j = true := by
  fin_cases j
  · exact polyQuarticImag_53_0
  · exact polyQuarticImag_53_1
  · exact polyQuarticImag_53_2
  · exact polyQuarticImag_53_3
  · exact polyQuarticImag_53_4
  · exact polyQuarticImag_53_5
  · exact polyQuarticImag_53_6
  · exact polyQuarticImag_53_7

theorem polyQuarticImag_54_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 0 = true := by decide +kernel

theorem polyQuarticImag_54_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 1 = true := by decide +kernel

theorem polyQuarticImag_54_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 2 = true := by decide +kernel

theorem polyQuarticImag_54_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 3 = true := by decide +kernel

theorem polyQuarticImag_54_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 4 = true := by decide +kernel

theorem polyQuarticImag_54_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 5 = true := by decide +kernel

theorem polyQuarticImag_54_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 6 = true := by decide +kernel

theorem polyQuarticImag_54_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 7 = true := by decide +kernel

theorem polyQuarticImag_54 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 54 j = true := by
  fin_cases j
  · exact polyQuarticImag_54_0
  · exact polyQuarticImag_54_1
  · exact polyQuarticImag_54_2
  · exact polyQuarticImag_54_3
  · exact polyQuarticImag_54_4
  · exact polyQuarticImag_54_5
  · exact polyQuarticImag_54_6
  · exact polyQuarticImag_54_7

theorem polyQuarticImag_55_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 0 = true := by decide +kernel

theorem polyQuarticImag_55_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 1 = true := by decide +kernel

theorem polyQuarticImag_55_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 2 = true := by decide +kernel

theorem polyQuarticImag_55_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 3 = true := by decide +kernel

theorem polyQuarticImag_55_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 4 = true := by decide +kernel

theorem polyQuarticImag_55_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 5 = true := by decide +kernel

theorem polyQuarticImag_55_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 6 = true := by decide +kernel

theorem polyQuarticImag_55_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 7 = true := by decide +kernel

theorem polyQuarticImag_55 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 55 j = true := by
  fin_cases j
  · exact polyQuarticImag_55_0
  · exact polyQuarticImag_55_1
  · exact polyQuarticImag_55_2
  · exact polyQuarticImag_55_3
  · exact polyQuarticImag_55_4
  · exact polyQuarticImag_55_5
  · exact polyQuarticImag_55_6
  · exact polyQuarticImag_55_7

theorem polyQuarticImag_56_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 0 = true := by decide +kernel

theorem polyQuarticImag_56_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 1 = true := by decide +kernel

theorem polyQuarticImag_56_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 2 = true := by decide +kernel

theorem polyQuarticImag_56_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 3 = true := by decide +kernel

theorem polyQuarticImag_56_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 4 = true := by decide +kernel

theorem polyQuarticImag_56_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 5 = true := by decide +kernel

theorem polyQuarticImag_56_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 6 = true := by decide +kernel

theorem polyQuarticImag_56_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 7 = true := by decide +kernel

theorem polyQuarticImag_56 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 56 j = true := by
  fin_cases j
  · exact polyQuarticImag_56_0
  · exact polyQuarticImag_56_1
  · exact polyQuarticImag_56_2
  · exact polyQuarticImag_56_3
  · exact polyQuarticImag_56_4
  · exact polyQuarticImag_56_5
  · exact polyQuarticImag_56_6
  · exact polyQuarticImag_56_7

theorem polyQuarticImag_57_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 0 = true := by decide +kernel

theorem polyQuarticImag_57_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 1 = true := by decide +kernel

theorem polyQuarticImag_57_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 2 = true := by decide +kernel

theorem polyQuarticImag_57_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 3 = true := by decide +kernel

theorem polyQuarticImag_57_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 4 = true := by decide +kernel

theorem polyQuarticImag_57_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 5 = true := by decide +kernel

theorem polyQuarticImag_57_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 6 = true := by decide +kernel

theorem polyQuarticImag_57_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 7 = true := by decide +kernel

theorem polyQuarticImag_57 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 57 j = true := by
  fin_cases j
  · exact polyQuarticImag_57_0
  · exact polyQuarticImag_57_1
  · exact polyQuarticImag_57_2
  · exact polyQuarticImag_57_3
  · exact polyQuarticImag_57_4
  · exact polyQuarticImag_57_5
  · exact polyQuarticImag_57_6
  · exact polyQuarticImag_57_7

theorem polyQuarticImag_58_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 0 = true := by decide +kernel

theorem polyQuarticImag_58_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 1 = true := by decide +kernel

theorem polyQuarticImag_58_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 2 = true := by decide +kernel

theorem polyQuarticImag_58_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 3 = true := by decide +kernel

theorem polyQuarticImag_58_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 4 = true := by decide +kernel

theorem polyQuarticImag_58_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 5 = true := by decide +kernel

theorem polyQuarticImag_58_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 6 = true := by decide +kernel

theorem polyQuarticImag_58_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 7 = true := by decide +kernel

theorem polyQuarticImag_58 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 58 j = true := by
  fin_cases j
  · exact polyQuarticImag_58_0
  · exact polyQuarticImag_58_1
  · exact polyQuarticImag_58_2
  · exact polyQuarticImag_58_3
  · exact polyQuarticImag_58_4
  · exact polyQuarticImag_58_5
  · exact polyQuarticImag_58_6
  · exact polyQuarticImag_58_7

theorem polyQuarticImag_59_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 0 = true := by decide +kernel

theorem polyQuarticImag_59_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 1 = true := by decide +kernel

theorem polyQuarticImag_59_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 2 = true := by decide +kernel

theorem polyQuarticImag_59_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 3 = true := by decide +kernel

theorem polyQuarticImag_59_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 4 = true := by decide +kernel

theorem polyQuarticImag_59_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 5 = true := by decide +kernel

theorem polyQuarticImag_59_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 6 = true := by decide +kernel

theorem polyQuarticImag_59_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 7 = true := by decide +kernel

theorem polyQuarticImag_59 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 59 j = true := by
  fin_cases j
  · exact polyQuarticImag_59_0
  · exact polyQuarticImag_59_1
  · exact polyQuarticImag_59_2
  · exact polyQuarticImag_59_3
  · exact polyQuarticImag_59_4
  · exact polyQuarticImag_59_5
  · exact polyQuarticImag_59_6
  · exact polyQuarticImag_59_7

theorem polyQuarticImag_60_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 0 = true := by decide +kernel

theorem polyQuarticImag_60_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 1 = true := by decide +kernel

theorem polyQuarticImag_60_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 2 = true := by decide +kernel

theorem polyQuarticImag_60_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 3 = true := by decide +kernel

theorem polyQuarticImag_60_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 4 = true := by decide +kernel

theorem polyQuarticImag_60_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 5 = true := by decide +kernel

theorem polyQuarticImag_60_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 6 = true := by decide +kernel

theorem polyQuarticImag_60_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 7 = true := by decide +kernel

theorem polyQuarticImag_60 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 60 j = true := by
  fin_cases j
  · exact polyQuarticImag_60_0
  · exact polyQuarticImag_60_1
  · exact polyQuarticImag_60_2
  · exact polyQuarticImag_60_3
  · exact polyQuarticImag_60_4
  · exact polyQuarticImag_60_5
  · exact polyQuarticImag_60_6
  · exact polyQuarticImag_60_7

theorem polyQuarticImag_61_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 0 = true := by decide +kernel

theorem polyQuarticImag_61_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 1 = true := by decide +kernel

theorem polyQuarticImag_61_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 2 = true := by decide +kernel

theorem polyQuarticImag_61_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 3 = true := by decide +kernel

theorem polyQuarticImag_61_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 4 = true := by decide +kernel

theorem polyQuarticImag_61_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 5 = true := by decide +kernel

theorem polyQuarticImag_61_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 6 = true := by decide +kernel

theorem polyQuarticImag_61_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 7 = true := by decide +kernel

theorem polyQuarticImag_61 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 61 j = true := by
  fin_cases j
  · exact polyQuarticImag_61_0
  · exact polyQuarticImag_61_1
  · exact polyQuarticImag_61_2
  · exact polyQuarticImag_61_3
  · exact polyQuarticImag_61_4
  · exact polyQuarticImag_61_5
  · exact polyQuarticImag_61_6
  · exact polyQuarticImag_61_7

theorem polyQuarticImag_62_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 0 = true := by decide +kernel

theorem polyQuarticImag_62_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 1 = true := by decide +kernel

theorem polyQuarticImag_62_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 2 = true := by decide +kernel

theorem polyQuarticImag_62_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 3 = true := by decide +kernel

theorem polyQuarticImag_62_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 4 = true := by decide +kernel

theorem polyQuarticImag_62_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 5 = true := by decide +kernel

theorem polyQuarticImag_62_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 6 = true := by decide +kernel

theorem polyQuarticImag_62_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 7 = true := by decide +kernel

theorem polyQuarticImag_62 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 62 j = true := by
  fin_cases j
  · exact polyQuarticImag_62_0
  · exact polyQuarticImag_62_1
  · exact polyQuarticImag_62_2
  · exact polyQuarticImag_62_3
  · exact polyQuarticImag_62_4
  · exact polyQuarticImag_62_5
  · exact polyQuarticImag_62_6
  · exact polyQuarticImag_62_7

theorem polyQuarticImag_63_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 0 = true := by decide +kernel

theorem polyQuarticImag_63_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 1 = true := by decide +kernel

theorem polyQuarticImag_63_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 2 = true := by decide +kernel

theorem polyQuarticImag_63_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 3 = true := by decide +kernel

theorem polyQuarticImag_63_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 4 = true := by decide +kernel

theorem polyQuarticImag_63_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 5 = true := by decide +kernel

theorem polyQuarticImag_63_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 6 = true := by decide +kernel

theorem polyQuarticImag_63_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 7 = true := by decide +kernel

theorem polyQuarticImag_63 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 63 j = true := by
  fin_cases j
  · exact polyQuarticImag_63_0
  · exact polyQuarticImag_63_1
  · exact polyQuarticImag_63_2
  · exact polyQuarticImag_63_3
  · exact polyQuarticImag_63_4
  · exact polyQuarticImag_63_5
  · exact polyQuarticImag_63_6
  · exact polyQuarticImag_63_7

theorem polyQuarticImag_64_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 0 = true := by decide +kernel

theorem polyQuarticImag_64_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 1 = true := by decide +kernel

theorem polyQuarticImag_64_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 2 = true := by decide +kernel

theorem polyQuarticImag_64_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 3 = true := by decide +kernel

theorem polyQuarticImag_64_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 4 = true := by decide +kernel

theorem polyQuarticImag_64_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 5 = true := by decide +kernel

theorem polyQuarticImag_64_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 6 = true := by decide +kernel

theorem polyQuarticImag_64_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 7 = true := by decide +kernel

theorem polyQuarticImag_64 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 64 j = true := by
  fin_cases j
  · exact polyQuarticImag_64_0
  · exact polyQuarticImag_64_1
  · exact polyQuarticImag_64_2
  · exact polyQuarticImag_64_3
  · exact polyQuarticImag_64_4
  · exact polyQuarticImag_64_5
  · exact polyQuarticImag_64_6
  · exact polyQuarticImag_64_7

theorem polyQuarticImag_65_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 0 = true := by decide +kernel

theorem polyQuarticImag_65_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 1 = true := by decide +kernel

theorem polyQuarticImag_65_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 2 = true := by decide +kernel

theorem polyQuarticImag_65_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 3 = true := by decide +kernel

theorem polyQuarticImag_65_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 4 = true := by decide +kernel

theorem polyQuarticImag_65_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 5 = true := by decide +kernel

theorem polyQuarticImag_65_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 6 = true := by decide +kernel

theorem polyQuarticImag_65_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 7 = true := by decide +kernel

theorem polyQuarticImag_65 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 65 j = true := by
  fin_cases j
  · exact polyQuarticImag_65_0
  · exact polyQuarticImag_65_1
  · exact polyQuarticImag_65_2
  · exact polyQuarticImag_65_3
  · exact polyQuarticImag_65_4
  · exact polyQuarticImag_65_5
  · exact polyQuarticImag_65_6
  · exact polyQuarticImag_65_7

theorem polyQuarticImag_66_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 0 = true := by decide +kernel

theorem polyQuarticImag_66_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 1 = true := by decide +kernel

theorem polyQuarticImag_66_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 2 = true := by decide +kernel

theorem polyQuarticImag_66_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 3 = true := by decide +kernel

theorem polyQuarticImag_66_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 4 = true := by decide +kernel

theorem polyQuarticImag_66_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 5 = true := by decide +kernel

theorem polyQuarticImag_66_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 6 = true := by decide +kernel

theorem polyQuarticImag_66_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 7 = true := by decide +kernel

theorem polyQuarticImag_66 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 66 j = true := by
  fin_cases j
  · exact polyQuarticImag_66_0
  · exact polyQuarticImag_66_1
  · exact polyQuarticImag_66_2
  · exact polyQuarticImag_66_3
  · exact polyQuarticImag_66_4
  · exact polyQuarticImag_66_5
  · exact polyQuarticImag_66_6
  · exact polyQuarticImag_66_7

theorem polyQuarticImag_67_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 0 = true := by decide +kernel

theorem polyQuarticImag_67_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 1 = true := by decide +kernel

theorem polyQuarticImag_67_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 2 = true := by decide +kernel

theorem polyQuarticImag_67_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 3 = true := by decide +kernel

theorem polyQuarticImag_67_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 4 = true := by decide +kernel

theorem polyQuarticImag_67_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 5 = true := by decide +kernel

theorem polyQuarticImag_67_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 6 = true := by decide +kernel

theorem polyQuarticImag_67_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 7 = true := by decide +kernel

theorem polyQuarticImag_67 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 67 j = true := by
  fin_cases j
  · exact polyQuarticImag_67_0
  · exact polyQuarticImag_67_1
  · exact polyQuarticImag_67_2
  · exact polyQuarticImag_67_3
  · exact polyQuarticImag_67_4
  · exact polyQuarticImag_67_5
  · exact polyQuarticImag_67_6
  · exact polyQuarticImag_67_7

theorem polyQuarticImag_68_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 0 = true := by decide +kernel

theorem polyQuarticImag_68_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 1 = true := by decide +kernel

theorem polyQuarticImag_68_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 2 = true := by decide +kernel

theorem polyQuarticImag_68_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 3 = true := by decide +kernel

theorem polyQuarticImag_68_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 4 = true := by decide +kernel

theorem polyQuarticImag_68_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 5 = true := by decide +kernel

theorem polyQuarticImag_68_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 6 = true := by decide +kernel

theorem polyQuarticImag_68_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 7 = true := by decide +kernel

theorem polyQuarticImag_68 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 68 j = true := by
  fin_cases j
  · exact polyQuarticImag_68_0
  · exact polyQuarticImag_68_1
  · exact polyQuarticImag_68_2
  · exact polyQuarticImag_68_3
  · exact polyQuarticImag_68_4
  · exact polyQuarticImag_68_5
  · exact polyQuarticImag_68_6
  · exact polyQuarticImag_68_7

theorem polyQuarticImag_69_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 0 = true := by decide +kernel

theorem polyQuarticImag_69_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 1 = true := by decide +kernel

theorem polyQuarticImag_69_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 2 = true := by decide +kernel

theorem polyQuarticImag_69_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 3 = true := by decide +kernel

theorem polyQuarticImag_69_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 4 = true := by decide +kernel

theorem polyQuarticImag_69_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 5 = true := by decide +kernel

theorem polyQuarticImag_69_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 6 = true := by decide +kernel

theorem polyQuarticImag_69_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 7 = true := by decide +kernel

theorem polyQuarticImag_69 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 69 j = true := by
  fin_cases j
  · exact polyQuarticImag_69_0
  · exact polyQuarticImag_69_1
  · exact polyQuarticImag_69_2
  · exact polyQuarticImag_69_3
  · exact polyQuarticImag_69_4
  · exact polyQuarticImag_69_5
  · exact polyQuarticImag_69_6
  · exact polyQuarticImag_69_7

theorem polyQuarticImag_70_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 0 = true := by decide +kernel

theorem polyQuarticImag_70_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 1 = true := by decide +kernel

theorem polyQuarticImag_70_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 2 = true := by decide +kernel

theorem polyQuarticImag_70_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 3 = true := by decide +kernel

theorem polyQuarticImag_70_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 4 = true := by decide +kernel

theorem polyQuarticImag_70_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 5 = true := by decide +kernel

theorem polyQuarticImag_70_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 6 = true := by decide +kernel

theorem polyQuarticImag_70_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 7 = true := by decide +kernel

theorem polyQuarticImag_70 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 70 j = true := by
  fin_cases j
  · exact polyQuarticImag_70_0
  · exact polyQuarticImag_70_1
  · exact polyQuarticImag_70_2
  · exact polyQuarticImag_70_3
  · exact polyQuarticImag_70_4
  · exact polyQuarticImag_70_5
  · exact polyQuarticImag_70_6
  · exact polyQuarticImag_70_7

theorem polyQuarticImag_71_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 0 = true := by decide +kernel

theorem polyQuarticImag_71_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 1 = true := by decide +kernel

theorem polyQuarticImag_71_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 2 = true := by decide +kernel

theorem polyQuarticImag_71_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 3 = true := by decide +kernel

theorem polyQuarticImag_71_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 4 = true := by decide +kernel

theorem polyQuarticImag_71_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 5 = true := by decide +kernel

theorem polyQuarticImag_71_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 6 = true := by decide +kernel

theorem polyQuarticImag_71_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 7 = true := by decide +kernel

theorem polyQuarticImag_71 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 71 j = true := by
  fin_cases j
  · exact polyQuarticImag_71_0
  · exact polyQuarticImag_71_1
  · exact polyQuarticImag_71_2
  · exact polyQuarticImag_71_3
  · exact polyQuarticImag_71_4
  · exact polyQuarticImag_71_5
  · exact polyQuarticImag_71_6
  · exact polyQuarticImag_71_7

theorem polyQuarticImag_72_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 0 = true := by decide +kernel

theorem polyQuarticImag_72_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 1 = true := by decide +kernel

theorem polyQuarticImag_72_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 2 = true := by decide +kernel

theorem polyQuarticImag_72_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 3 = true := by decide +kernel

theorem polyQuarticImag_72_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 4 = true := by decide +kernel

theorem polyQuarticImag_72_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 5 = true := by decide +kernel

theorem polyQuarticImag_72_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 6 = true := by decide +kernel

theorem polyQuarticImag_72_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 7 = true := by decide +kernel

theorem polyQuarticImag_72 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 72 j = true := by
  fin_cases j
  · exact polyQuarticImag_72_0
  · exact polyQuarticImag_72_1
  · exact polyQuarticImag_72_2
  · exact polyQuarticImag_72_3
  · exact polyQuarticImag_72_4
  · exact polyQuarticImag_72_5
  · exact polyQuarticImag_72_6
  · exact polyQuarticImag_72_7

theorem polyQuarticImag_73_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 0 = true := by decide +kernel

theorem polyQuarticImag_73_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 1 = true := by decide +kernel

theorem polyQuarticImag_73_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 2 = true := by decide +kernel

theorem polyQuarticImag_73_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 3 = true := by decide +kernel

theorem polyQuarticImag_73_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 4 = true := by decide +kernel

theorem polyQuarticImag_73_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 5 = true := by decide +kernel

theorem polyQuarticImag_73_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 6 = true := by decide +kernel

theorem polyQuarticImag_73_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 7 = true := by decide +kernel

theorem polyQuarticImag_73 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 73 j = true := by
  fin_cases j
  · exact polyQuarticImag_73_0
  · exact polyQuarticImag_73_1
  · exact polyQuarticImag_73_2
  · exact polyQuarticImag_73_3
  · exact polyQuarticImag_73_4
  · exact polyQuarticImag_73_5
  · exact polyQuarticImag_73_6
  · exact polyQuarticImag_73_7

theorem polyQuarticImag_74_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 0 = true := by decide +kernel

theorem polyQuarticImag_74_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 1 = true := by decide +kernel

theorem polyQuarticImag_74_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 2 = true := by decide +kernel

theorem polyQuarticImag_74_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 3 = true := by decide +kernel

theorem polyQuarticImag_74_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 4 = true := by decide +kernel

theorem polyQuarticImag_74_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 5 = true := by decide +kernel

theorem polyQuarticImag_74_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 6 = true := by decide +kernel

theorem polyQuarticImag_74_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 7 = true := by decide +kernel

theorem polyQuarticImag_74 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 74 j = true := by
  fin_cases j
  · exact polyQuarticImag_74_0
  · exact polyQuarticImag_74_1
  · exact polyQuarticImag_74_2
  · exact polyQuarticImag_74_3
  · exact polyQuarticImag_74_4
  · exact polyQuarticImag_74_5
  · exact polyQuarticImag_74_6
  · exact polyQuarticImag_74_7

theorem polyQuarticImag_75_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 0 = true := by decide +kernel

theorem polyQuarticImag_75_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 1 = true := by decide +kernel

theorem polyQuarticImag_75_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 2 = true := by decide +kernel

theorem polyQuarticImag_75_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 3 = true := by decide +kernel

theorem polyQuarticImag_75_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 4 = true := by decide +kernel

theorem polyQuarticImag_75_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 5 = true := by decide +kernel

theorem polyQuarticImag_75_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 6 = true := by decide +kernel

theorem polyQuarticImag_75_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 7 = true := by decide +kernel

theorem polyQuarticImag_75 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 75 j = true := by
  fin_cases j
  · exact polyQuarticImag_75_0
  · exact polyQuarticImag_75_1
  · exact polyQuarticImag_75_2
  · exact polyQuarticImag_75_3
  · exact polyQuarticImag_75_4
  · exact polyQuarticImag_75_5
  · exact polyQuarticImag_75_6
  · exact polyQuarticImag_75_7

theorem polyQuarticImag_76_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 0 = true := by decide +kernel

theorem polyQuarticImag_76_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 1 = true := by decide +kernel

theorem polyQuarticImag_76_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 2 = true := by decide +kernel

theorem polyQuarticImag_76_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 3 = true := by decide +kernel

theorem polyQuarticImag_76_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 4 = true := by decide +kernel

theorem polyQuarticImag_76_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 5 = true := by decide +kernel

theorem polyQuarticImag_76_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 6 = true := by decide +kernel

theorem polyQuarticImag_76_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 7 = true := by decide +kernel

theorem polyQuarticImag_76 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 76 j = true := by
  fin_cases j
  · exact polyQuarticImag_76_0
  · exact polyQuarticImag_76_1
  · exact polyQuarticImag_76_2
  · exact polyQuarticImag_76_3
  · exact polyQuarticImag_76_4
  · exact polyQuarticImag_76_5
  · exact polyQuarticImag_76_6
  · exact polyQuarticImag_76_7

theorem polyQuarticImag_77_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 0 = true := by decide +kernel

theorem polyQuarticImag_77_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 1 = true := by decide +kernel

theorem polyQuarticImag_77_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 2 = true := by decide +kernel

theorem polyQuarticImag_77_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 3 = true := by decide +kernel

theorem polyQuarticImag_77_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 4 = true := by decide +kernel

theorem polyQuarticImag_77_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 5 = true := by decide +kernel

theorem polyQuarticImag_77_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 6 = true := by decide +kernel

theorem polyQuarticImag_77_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 7 = true := by decide +kernel

theorem polyQuarticImag_77 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 77 j = true := by
  fin_cases j
  · exact polyQuarticImag_77_0
  · exact polyQuarticImag_77_1
  · exact polyQuarticImag_77_2
  · exact polyQuarticImag_77_3
  · exact polyQuarticImag_77_4
  · exact polyQuarticImag_77_5
  · exact polyQuarticImag_77_6
  · exact polyQuarticImag_77_7

theorem polyQuarticImag_78_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 0 = true := by decide +kernel

theorem polyQuarticImag_78_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 1 = true := by decide +kernel

theorem polyQuarticImag_78_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 2 = true := by decide +kernel

theorem polyQuarticImag_78_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 3 = true := by decide +kernel

theorem polyQuarticImag_78_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 4 = true := by decide +kernel

theorem polyQuarticImag_78_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 5 = true := by decide +kernel

theorem polyQuarticImag_78_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 6 = true := by decide +kernel

theorem polyQuarticImag_78_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 7 = true := by decide +kernel

theorem polyQuarticImag_78 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 78 j = true := by
  fin_cases j
  · exact polyQuarticImag_78_0
  · exact polyQuarticImag_78_1
  · exact polyQuarticImag_78_2
  · exact polyQuarticImag_78_3
  · exact polyQuarticImag_78_4
  · exact polyQuarticImag_78_5
  · exact polyQuarticImag_78_6
  · exact polyQuarticImag_78_7

theorem polyQuarticImag_79_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 0 = true := by decide +kernel

theorem polyQuarticImag_79_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 1 = true := by decide +kernel

theorem polyQuarticImag_79_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 2 = true := by decide +kernel

theorem polyQuarticImag_79_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 3 = true := by decide +kernel

theorem polyQuarticImag_79_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 4 = true := by decide +kernel

theorem polyQuarticImag_79_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 5 = true := by decide +kernel

theorem polyQuarticImag_79_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 6 = true := by decide +kernel

theorem polyQuarticImag_79_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 7 = true := by decide +kernel

theorem polyQuarticImag_79 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 79 j = true := by
  fin_cases j
  · exact polyQuarticImag_79_0
  · exact polyQuarticImag_79_1
  · exact polyQuarticImag_79_2
  · exact polyQuarticImag_79_3
  · exact polyQuarticImag_79_4
  · exact polyQuarticImag_79_5
  · exact polyQuarticImag_79_6
  · exact polyQuarticImag_79_7

theorem polyQuarticImag_80_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 0 = true := by decide +kernel

theorem polyQuarticImag_80_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 1 = true := by decide +kernel

theorem polyQuarticImag_80_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 2 = true := by decide +kernel

theorem polyQuarticImag_80_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 3 = true := by decide +kernel

theorem polyQuarticImag_80_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 4 = true := by decide +kernel

theorem polyQuarticImag_80_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 5 = true := by decide +kernel

theorem polyQuarticImag_80_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 6 = true := by decide +kernel

theorem polyQuarticImag_80_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 7 = true := by decide +kernel

theorem polyQuarticImag_80 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 80 j = true := by
  fin_cases j
  · exact polyQuarticImag_80_0
  · exact polyQuarticImag_80_1
  · exact polyQuarticImag_80_2
  · exact polyQuarticImag_80_3
  · exact polyQuarticImag_80_4
  · exact polyQuarticImag_80_5
  · exact polyQuarticImag_80_6
  · exact polyQuarticImag_80_7

theorem polyQuarticImag_81_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 0 = true := by decide +kernel

theorem polyQuarticImag_81_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 1 = true := by decide +kernel

theorem polyQuarticImag_81_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 2 = true := by decide +kernel

theorem polyQuarticImag_81_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 3 = true := by decide +kernel

theorem polyQuarticImag_81_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 4 = true := by decide +kernel

theorem polyQuarticImag_81_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 5 = true := by decide +kernel

theorem polyQuarticImag_81_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 6 = true := by decide +kernel

theorem polyQuarticImag_81_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 7 = true := by decide +kernel

theorem polyQuarticImag_81 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 81 j = true := by
  fin_cases j
  · exact polyQuarticImag_81_0
  · exact polyQuarticImag_81_1
  · exact polyQuarticImag_81_2
  · exact polyQuarticImag_81_3
  · exact polyQuarticImag_81_4
  · exact polyQuarticImag_81_5
  · exact polyQuarticImag_81_6
  · exact polyQuarticImag_81_7

theorem polyQuarticImag_82_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 0 = true := by decide +kernel

theorem polyQuarticImag_82_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 1 = true := by decide +kernel

theorem polyQuarticImag_82_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 2 = true := by decide +kernel

theorem polyQuarticImag_82_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 3 = true := by decide +kernel

theorem polyQuarticImag_82_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 4 = true := by decide +kernel

theorem polyQuarticImag_82_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 5 = true := by decide +kernel

theorem polyQuarticImag_82_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 6 = true := by decide +kernel

theorem polyQuarticImag_82_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 7 = true := by decide +kernel

theorem polyQuarticImag_82 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 82 j = true := by
  fin_cases j
  · exact polyQuarticImag_82_0
  · exact polyQuarticImag_82_1
  · exact polyQuarticImag_82_2
  · exact polyQuarticImag_82_3
  · exact polyQuarticImag_82_4
  · exact polyQuarticImag_82_5
  · exact polyQuarticImag_82_6
  · exact polyQuarticImag_82_7

theorem polyQuarticImag_83_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 0 = true := by decide +kernel

theorem polyQuarticImag_83_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 1 = true := by decide +kernel

theorem polyQuarticImag_83_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 2 = true := by decide +kernel

theorem polyQuarticImag_83_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 3 = true := by decide +kernel

theorem polyQuarticImag_83_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 4 = true := by decide +kernel

theorem polyQuarticImag_83_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 5 = true := by decide +kernel

theorem polyQuarticImag_83_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 6 = true := by decide +kernel

theorem polyQuarticImag_83_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 7 = true := by decide +kernel

theorem polyQuarticImag_83 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 83 j = true := by
  fin_cases j
  · exact polyQuarticImag_83_0
  · exact polyQuarticImag_83_1
  · exact polyQuarticImag_83_2
  · exact polyQuarticImag_83_3
  · exact polyQuarticImag_83_4
  · exact polyQuarticImag_83_5
  · exact polyQuarticImag_83_6
  · exact polyQuarticImag_83_7

theorem polyQuarticImag_84_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 0 = true := by decide +kernel

theorem polyQuarticImag_84_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 1 = true := by decide +kernel

theorem polyQuarticImag_84_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 2 = true := by decide +kernel

theorem polyQuarticImag_84_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 3 = true := by decide +kernel

theorem polyQuarticImag_84_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 4 = true := by decide +kernel

theorem polyQuarticImag_84_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 5 = true := by decide +kernel

theorem polyQuarticImag_84_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 6 = true := by decide +kernel

theorem polyQuarticImag_84_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 7 = true := by decide +kernel

theorem polyQuarticImag_84 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 84 j = true := by
  fin_cases j
  · exact polyQuarticImag_84_0
  · exact polyQuarticImag_84_1
  · exact polyQuarticImag_84_2
  · exact polyQuarticImag_84_3
  · exact polyQuarticImag_84_4
  · exact polyQuarticImag_84_5
  · exact polyQuarticImag_84_6
  · exact polyQuarticImag_84_7

theorem polyQuarticImag_85_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 0 = true := by decide +kernel

theorem polyQuarticImag_85_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 1 = true := by decide +kernel

theorem polyQuarticImag_85_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 2 = true := by decide +kernel

theorem polyQuarticImag_85_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 3 = true := by decide +kernel

theorem polyQuarticImag_85_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 4 = true := by decide +kernel

theorem polyQuarticImag_85_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 5 = true := by decide +kernel

theorem polyQuarticImag_85_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 6 = true := by decide +kernel

theorem polyQuarticImag_85_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 7 = true := by decide +kernel

theorem polyQuarticImag_85 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 85 j = true := by
  fin_cases j
  · exact polyQuarticImag_85_0
  · exact polyQuarticImag_85_1
  · exact polyQuarticImag_85_2
  · exact polyQuarticImag_85_3
  · exact polyQuarticImag_85_4
  · exact polyQuarticImag_85_5
  · exact polyQuarticImag_85_6
  · exact polyQuarticImag_85_7

theorem polyQuarticImag_86_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 0 = true := by decide +kernel

theorem polyQuarticImag_86_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 1 = true := by decide +kernel

theorem polyQuarticImag_86_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 2 = true := by decide +kernel

theorem polyQuarticImag_86_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 3 = true := by decide +kernel

theorem polyQuarticImag_86_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 4 = true := by decide +kernel

theorem polyQuarticImag_86_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 5 = true := by decide +kernel

theorem polyQuarticImag_86_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 6 = true := by decide +kernel

theorem polyQuarticImag_86_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 7 = true := by decide +kernel

theorem polyQuarticImag_86 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 86 j = true := by
  fin_cases j
  · exact polyQuarticImag_86_0
  · exact polyQuarticImag_86_1
  · exact polyQuarticImag_86_2
  · exact polyQuarticImag_86_3
  · exact polyQuarticImag_86_4
  · exact polyQuarticImag_86_5
  · exact polyQuarticImag_86_6
  · exact polyQuarticImag_86_7

theorem polyQuarticImag_87_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 0 = true := by decide +kernel

theorem polyQuarticImag_87_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 1 = true := by decide +kernel

theorem polyQuarticImag_87_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 2 = true := by decide +kernel

theorem polyQuarticImag_87_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 3 = true := by decide +kernel

theorem polyQuarticImag_87_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 4 = true := by decide +kernel

theorem polyQuarticImag_87_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 5 = true := by decide +kernel

theorem polyQuarticImag_87_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 6 = true := by decide +kernel

theorem polyQuarticImag_87_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 7 = true := by decide +kernel

theorem polyQuarticImag_87 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 87 j = true := by
  fin_cases j
  · exact polyQuarticImag_87_0
  · exact polyQuarticImag_87_1
  · exact polyQuarticImag_87_2
  · exact polyQuarticImag_87_3
  · exact polyQuarticImag_87_4
  · exact polyQuarticImag_87_5
  · exact polyQuarticImag_87_6
  · exact polyQuarticImag_87_7

theorem polyQuarticImag_88_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 0 = true := by decide +kernel

theorem polyQuarticImag_88_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 1 = true := by decide +kernel

theorem polyQuarticImag_88_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 2 = true := by decide +kernel

theorem polyQuarticImag_88_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 3 = true := by decide +kernel

theorem polyQuarticImag_88_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 4 = true := by decide +kernel

theorem polyQuarticImag_88_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 5 = true := by decide +kernel

theorem polyQuarticImag_88_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 6 = true := by decide +kernel

theorem polyQuarticImag_88_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 7 = true := by decide +kernel

theorem polyQuarticImag_88 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 88 j = true := by
  fin_cases j
  · exact polyQuarticImag_88_0
  · exact polyQuarticImag_88_1
  · exact polyQuarticImag_88_2
  · exact polyQuarticImag_88_3
  · exact polyQuarticImag_88_4
  · exact polyQuarticImag_88_5
  · exact polyQuarticImag_88_6
  · exact polyQuarticImag_88_7

theorem polyQuarticImag_89_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 0 = true := by decide +kernel

theorem polyQuarticImag_89_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 1 = true := by decide +kernel

theorem polyQuarticImag_89_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 2 = true := by decide +kernel

theorem polyQuarticImag_89_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 3 = true := by decide +kernel

theorem polyQuarticImag_89_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 4 = true := by decide +kernel

theorem polyQuarticImag_89_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 5 = true := by decide +kernel

theorem polyQuarticImag_89_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 6 = true := by decide +kernel

theorem polyQuarticImag_89_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 7 = true := by decide +kernel

theorem polyQuarticImag_89 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticImag 89 j = true := by
  fin_cases j
  · exact polyQuarticImag_89_0
  · exact polyQuarticImag_89_1
  · exact polyQuarticImag_89_2
  · exact polyQuarticImag_89_3
  · exact polyQuarticImag_89_4
  · exact polyQuarticImag_89_5
  · exact polyQuarticImag_89_6
  · exact polyQuarticImag_89_7

theorem polyQuarticImag_eq : (intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j) = polyQuarticImag := by
  apply MatrixBox.eq_of_exact_blocks (k := 8) (b := 32)
  intro i j
  fin_cases i
  · exact polyQuarticImag_0 j
  · exact polyQuarticImag_1 j
  · exact polyQuarticImag_2 j
  · exact polyQuarticImag_3 j
  · exact polyQuarticImag_4 j
  · exact polyQuarticImag_5 j
  · exact polyQuarticImag_6 j
  · exact polyQuarticImag_7 j
  · exact polyQuarticImag_8 j
  · exact polyQuarticImag_9 j
  · exact polyQuarticImag_10 j
  · exact polyQuarticImag_11 j
  · exact polyQuarticImag_12 j
  · exact polyQuarticImag_13 j
  · exact polyQuarticImag_14 j
  · exact polyQuarticImag_15 j
  · exact polyQuarticImag_16 j
  · exact polyQuarticImag_17 j
  · exact polyQuarticImag_18 j
  · exact polyQuarticImag_19 j
  · exact polyQuarticImag_20 j
  · exact polyQuarticImag_21 j
  · exact polyQuarticImag_22 j
  · exact polyQuarticImag_23 j
  · exact polyQuarticImag_24 j
  · exact polyQuarticImag_25 j
  · exact polyQuarticImag_26 j
  · exact polyQuarticImag_27 j
  · exact polyQuarticImag_28 j
  · exact polyQuarticImag_29 j
  · exact polyQuarticImag_30 j
  · exact polyQuarticImag_31 j
  · exact polyQuarticImag_32 j
  · exact polyQuarticImag_33 j
  · exact polyQuarticImag_34 j
  · exact polyQuarticImag_35 j
  · exact polyQuarticImag_36 j
  · exact polyQuarticImag_37 j
  · exact polyQuarticImag_38 j
  · exact polyQuarticImag_39 j
  · exact polyQuarticImag_40 j
  · exact polyQuarticImag_41 j
  · exact polyQuarticImag_42 j
  · exact polyQuarticImag_43 j
  · exact polyQuarticImag_44 j
  · exact polyQuarticImag_45 j
  · exact polyQuarticImag_46 j
  · exact polyQuarticImag_47 j
  · exact polyQuarticImag_48 j
  · exact polyQuarticImag_49 j
  · exact polyQuarticImag_50 j
  · exact polyQuarticImag_51 j
  · exact polyQuarticImag_52 j
  · exact polyQuarticImag_53 j
  · exact polyQuarticImag_54 j
  · exact polyQuarticImag_55 j
  · exact polyQuarticImag_56 j
  · exact polyQuarticImag_57 j
  · exact polyQuarticImag_58 j
  · exact polyQuarticImag_59 j
  · exact polyQuarticImag_60 j
  · exact polyQuarticImag_61 j
  · exact polyQuarticImag_62 j
  · exact polyQuarticImag_63 j
  · exact polyQuarticImag_64 j
  · exact polyQuarticImag_65 j
  · exact polyQuarticImag_66 j
  · exact polyQuarticImag_67 j
  · exact polyQuarticImag_68 j
  · exact polyQuarticImag_69 j
  · exact polyQuarticImag_70 j
  · exact polyQuarticImag_71 j
  · exact polyQuarticImag_72 j
  · exact polyQuarticImag_73 j
  · exact polyQuarticImag_74 j
  · exact polyQuarticImag_75 j
  · exact polyQuarticImag_76 j
  · exact polyQuarticImag_77 j
  · exact polyQuarticImag_78 j
  · exact polyQuarticImag_79 j
  · exact polyQuarticImag_80 j
  · exact polyQuarticImag_81 j
  · exact polyQuarticImag_82 j
  · exact polyQuarticImag_83 j
  · exact polyQuarticImag_84 j
  · exact polyQuarticImag_85 j
  · exact polyQuarticImag_86 j
  · exact polyQuarticImag_87 j
  · exact polyQuarticImag_88 j
  · exact polyQuarticImag_89 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
