import KernelAtlas.WholeBall.Fourier2299QuarticRealData
import KernelAtlas.WholeBall.MatrixColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem polyQuarticReal_0_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 0 = true := by decide +kernel

theorem polyQuarticReal_0_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 1 = true := by decide +kernel

theorem polyQuarticReal_0_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 2 = true := by decide +kernel

theorem polyQuarticReal_0_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 3 = true := by decide +kernel

theorem polyQuarticReal_0_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 4 = true := by decide +kernel

theorem polyQuarticReal_0_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 5 = true := by decide +kernel

theorem polyQuarticReal_0_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 6 = true := by decide +kernel

theorem polyQuarticReal_0_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 7 = true := by decide +kernel

theorem polyQuarticReal_0 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 0 j = true := by
  fin_cases j
  · exact polyQuarticReal_0_0
  · exact polyQuarticReal_0_1
  · exact polyQuarticReal_0_2
  · exact polyQuarticReal_0_3
  · exact polyQuarticReal_0_4
  · exact polyQuarticReal_0_5
  · exact polyQuarticReal_0_6
  · exact polyQuarticReal_0_7

theorem polyQuarticReal_1_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 0 = true := by decide +kernel

theorem polyQuarticReal_1_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 1 = true := by decide +kernel

theorem polyQuarticReal_1_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 2 = true := by decide +kernel

theorem polyQuarticReal_1_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 3 = true := by decide +kernel

theorem polyQuarticReal_1_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 4 = true := by decide +kernel

theorem polyQuarticReal_1_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 5 = true := by decide +kernel

theorem polyQuarticReal_1_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 6 = true := by decide +kernel

theorem polyQuarticReal_1_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 7 = true := by decide +kernel

theorem polyQuarticReal_1 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 1 j = true := by
  fin_cases j
  · exact polyQuarticReal_1_0
  · exact polyQuarticReal_1_1
  · exact polyQuarticReal_1_2
  · exact polyQuarticReal_1_3
  · exact polyQuarticReal_1_4
  · exact polyQuarticReal_1_5
  · exact polyQuarticReal_1_6
  · exact polyQuarticReal_1_7

theorem polyQuarticReal_2_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 0 = true := by decide +kernel

theorem polyQuarticReal_2_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 1 = true := by decide +kernel

theorem polyQuarticReal_2_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 2 = true := by decide +kernel

theorem polyQuarticReal_2_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 3 = true := by decide +kernel

theorem polyQuarticReal_2_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 4 = true := by decide +kernel

theorem polyQuarticReal_2_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 5 = true := by decide +kernel

theorem polyQuarticReal_2_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 6 = true := by decide +kernel

theorem polyQuarticReal_2_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 7 = true := by decide +kernel

theorem polyQuarticReal_2 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 2 j = true := by
  fin_cases j
  · exact polyQuarticReal_2_0
  · exact polyQuarticReal_2_1
  · exact polyQuarticReal_2_2
  · exact polyQuarticReal_2_3
  · exact polyQuarticReal_2_4
  · exact polyQuarticReal_2_5
  · exact polyQuarticReal_2_6
  · exact polyQuarticReal_2_7

theorem polyQuarticReal_3_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 0 = true := by decide +kernel

theorem polyQuarticReal_3_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 1 = true := by decide +kernel

theorem polyQuarticReal_3_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 2 = true := by decide +kernel

theorem polyQuarticReal_3_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 3 = true := by decide +kernel

theorem polyQuarticReal_3_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 4 = true := by decide +kernel

theorem polyQuarticReal_3_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 5 = true := by decide +kernel

theorem polyQuarticReal_3_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 6 = true := by decide +kernel

theorem polyQuarticReal_3_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 7 = true := by decide +kernel

theorem polyQuarticReal_3 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 3 j = true := by
  fin_cases j
  · exact polyQuarticReal_3_0
  · exact polyQuarticReal_3_1
  · exact polyQuarticReal_3_2
  · exact polyQuarticReal_3_3
  · exact polyQuarticReal_3_4
  · exact polyQuarticReal_3_5
  · exact polyQuarticReal_3_6
  · exact polyQuarticReal_3_7

theorem polyQuarticReal_4_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 0 = true := by decide +kernel

theorem polyQuarticReal_4_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 1 = true := by decide +kernel

theorem polyQuarticReal_4_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 2 = true := by decide +kernel

theorem polyQuarticReal_4_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 3 = true := by decide +kernel

theorem polyQuarticReal_4_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 4 = true := by decide +kernel

theorem polyQuarticReal_4_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 5 = true := by decide +kernel

theorem polyQuarticReal_4_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 6 = true := by decide +kernel

theorem polyQuarticReal_4_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 7 = true := by decide +kernel

theorem polyQuarticReal_4 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 4 j = true := by
  fin_cases j
  · exact polyQuarticReal_4_0
  · exact polyQuarticReal_4_1
  · exact polyQuarticReal_4_2
  · exact polyQuarticReal_4_3
  · exact polyQuarticReal_4_4
  · exact polyQuarticReal_4_5
  · exact polyQuarticReal_4_6
  · exact polyQuarticReal_4_7

theorem polyQuarticReal_5_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 0 = true := by decide +kernel

theorem polyQuarticReal_5_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 1 = true := by decide +kernel

theorem polyQuarticReal_5_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 2 = true := by decide +kernel

theorem polyQuarticReal_5_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 3 = true := by decide +kernel

theorem polyQuarticReal_5_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 4 = true := by decide +kernel

theorem polyQuarticReal_5_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 5 = true := by decide +kernel

theorem polyQuarticReal_5_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 6 = true := by decide +kernel

theorem polyQuarticReal_5_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 7 = true := by decide +kernel

theorem polyQuarticReal_5 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 5 j = true := by
  fin_cases j
  · exact polyQuarticReal_5_0
  · exact polyQuarticReal_5_1
  · exact polyQuarticReal_5_2
  · exact polyQuarticReal_5_3
  · exact polyQuarticReal_5_4
  · exact polyQuarticReal_5_5
  · exact polyQuarticReal_5_6
  · exact polyQuarticReal_5_7

theorem polyQuarticReal_6_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 0 = true := by decide +kernel

theorem polyQuarticReal_6_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 1 = true := by decide +kernel

theorem polyQuarticReal_6_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 2 = true := by decide +kernel

theorem polyQuarticReal_6_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 3 = true := by decide +kernel

theorem polyQuarticReal_6_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 4 = true := by decide +kernel

theorem polyQuarticReal_6_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 5 = true := by decide +kernel

theorem polyQuarticReal_6_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 6 = true := by decide +kernel

theorem polyQuarticReal_6_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 7 = true := by decide +kernel

theorem polyQuarticReal_6 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 6 j = true := by
  fin_cases j
  · exact polyQuarticReal_6_0
  · exact polyQuarticReal_6_1
  · exact polyQuarticReal_6_2
  · exact polyQuarticReal_6_3
  · exact polyQuarticReal_6_4
  · exact polyQuarticReal_6_5
  · exact polyQuarticReal_6_6
  · exact polyQuarticReal_6_7

theorem polyQuarticReal_7_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 0 = true := by decide +kernel

theorem polyQuarticReal_7_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 1 = true := by decide +kernel

theorem polyQuarticReal_7_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 2 = true := by decide +kernel

theorem polyQuarticReal_7_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 3 = true := by decide +kernel

theorem polyQuarticReal_7_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 4 = true := by decide +kernel

theorem polyQuarticReal_7_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 5 = true := by decide +kernel

theorem polyQuarticReal_7_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 6 = true := by decide +kernel

theorem polyQuarticReal_7_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 7 = true := by decide +kernel

theorem polyQuarticReal_7 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 7 j = true := by
  fin_cases j
  · exact polyQuarticReal_7_0
  · exact polyQuarticReal_7_1
  · exact polyQuarticReal_7_2
  · exact polyQuarticReal_7_3
  · exact polyQuarticReal_7_4
  · exact polyQuarticReal_7_5
  · exact polyQuarticReal_7_6
  · exact polyQuarticReal_7_7

theorem polyQuarticReal_8_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 0 = true := by decide +kernel

theorem polyQuarticReal_8_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 1 = true := by decide +kernel

theorem polyQuarticReal_8_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 2 = true := by decide +kernel

theorem polyQuarticReal_8_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 3 = true := by decide +kernel

theorem polyQuarticReal_8_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 4 = true := by decide +kernel

theorem polyQuarticReal_8_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 5 = true := by decide +kernel

theorem polyQuarticReal_8_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 6 = true := by decide +kernel

theorem polyQuarticReal_8_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 7 = true := by decide +kernel

theorem polyQuarticReal_8 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 8 j = true := by
  fin_cases j
  · exact polyQuarticReal_8_0
  · exact polyQuarticReal_8_1
  · exact polyQuarticReal_8_2
  · exact polyQuarticReal_8_3
  · exact polyQuarticReal_8_4
  · exact polyQuarticReal_8_5
  · exact polyQuarticReal_8_6
  · exact polyQuarticReal_8_7

theorem polyQuarticReal_9_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 0 = true := by decide +kernel

theorem polyQuarticReal_9_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 1 = true := by decide +kernel

theorem polyQuarticReal_9_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 2 = true := by decide +kernel

theorem polyQuarticReal_9_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 3 = true := by decide +kernel

theorem polyQuarticReal_9_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 4 = true := by decide +kernel

theorem polyQuarticReal_9_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 5 = true := by decide +kernel

theorem polyQuarticReal_9_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 6 = true := by decide +kernel

theorem polyQuarticReal_9_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 7 = true := by decide +kernel

theorem polyQuarticReal_9 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 9 j = true := by
  fin_cases j
  · exact polyQuarticReal_9_0
  · exact polyQuarticReal_9_1
  · exact polyQuarticReal_9_2
  · exact polyQuarticReal_9_3
  · exact polyQuarticReal_9_4
  · exact polyQuarticReal_9_5
  · exact polyQuarticReal_9_6
  · exact polyQuarticReal_9_7

theorem polyQuarticReal_10_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 0 = true := by decide +kernel

theorem polyQuarticReal_10_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 1 = true := by decide +kernel

theorem polyQuarticReal_10_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 2 = true := by decide +kernel

theorem polyQuarticReal_10_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 3 = true := by decide +kernel

theorem polyQuarticReal_10_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 4 = true := by decide +kernel

theorem polyQuarticReal_10_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 5 = true := by decide +kernel

theorem polyQuarticReal_10_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 6 = true := by decide +kernel

theorem polyQuarticReal_10_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 7 = true := by decide +kernel

theorem polyQuarticReal_10 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 10 j = true := by
  fin_cases j
  · exact polyQuarticReal_10_0
  · exact polyQuarticReal_10_1
  · exact polyQuarticReal_10_2
  · exact polyQuarticReal_10_3
  · exact polyQuarticReal_10_4
  · exact polyQuarticReal_10_5
  · exact polyQuarticReal_10_6
  · exact polyQuarticReal_10_7

theorem polyQuarticReal_11_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 0 = true := by decide +kernel

theorem polyQuarticReal_11_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 1 = true := by decide +kernel

theorem polyQuarticReal_11_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 2 = true := by decide +kernel

theorem polyQuarticReal_11_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 3 = true := by decide +kernel

theorem polyQuarticReal_11_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 4 = true := by decide +kernel

theorem polyQuarticReal_11_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 5 = true := by decide +kernel

theorem polyQuarticReal_11_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 6 = true := by decide +kernel

theorem polyQuarticReal_11_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 7 = true := by decide +kernel

theorem polyQuarticReal_11 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 11 j = true := by
  fin_cases j
  · exact polyQuarticReal_11_0
  · exact polyQuarticReal_11_1
  · exact polyQuarticReal_11_2
  · exact polyQuarticReal_11_3
  · exact polyQuarticReal_11_4
  · exact polyQuarticReal_11_5
  · exact polyQuarticReal_11_6
  · exact polyQuarticReal_11_7

theorem polyQuarticReal_12_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 0 = true := by decide +kernel

theorem polyQuarticReal_12_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 1 = true := by decide +kernel

theorem polyQuarticReal_12_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 2 = true := by decide +kernel

theorem polyQuarticReal_12_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 3 = true := by decide +kernel

theorem polyQuarticReal_12_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 4 = true := by decide +kernel

theorem polyQuarticReal_12_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 5 = true := by decide +kernel

theorem polyQuarticReal_12_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 6 = true := by decide +kernel

theorem polyQuarticReal_12_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 7 = true := by decide +kernel

theorem polyQuarticReal_12 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 12 j = true := by
  fin_cases j
  · exact polyQuarticReal_12_0
  · exact polyQuarticReal_12_1
  · exact polyQuarticReal_12_2
  · exact polyQuarticReal_12_3
  · exact polyQuarticReal_12_4
  · exact polyQuarticReal_12_5
  · exact polyQuarticReal_12_6
  · exact polyQuarticReal_12_7

theorem polyQuarticReal_13_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 0 = true := by decide +kernel

theorem polyQuarticReal_13_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 1 = true := by decide +kernel

theorem polyQuarticReal_13_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 2 = true := by decide +kernel

theorem polyQuarticReal_13_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 3 = true := by decide +kernel

theorem polyQuarticReal_13_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 4 = true := by decide +kernel

theorem polyQuarticReal_13_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 5 = true := by decide +kernel

theorem polyQuarticReal_13_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 6 = true := by decide +kernel

theorem polyQuarticReal_13_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 7 = true := by decide +kernel

theorem polyQuarticReal_13 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 13 j = true := by
  fin_cases j
  · exact polyQuarticReal_13_0
  · exact polyQuarticReal_13_1
  · exact polyQuarticReal_13_2
  · exact polyQuarticReal_13_3
  · exact polyQuarticReal_13_4
  · exact polyQuarticReal_13_5
  · exact polyQuarticReal_13_6
  · exact polyQuarticReal_13_7

theorem polyQuarticReal_14_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 0 = true := by decide +kernel

theorem polyQuarticReal_14_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 1 = true := by decide +kernel

theorem polyQuarticReal_14_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 2 = true := by decide +kernel

theorem polyQuarticReal_14_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 3 = true := by decide +kernel

theorem polyQuarticReal_14_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 4 = true := by decide +kernel

theorem polyQuarticReal_14_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 5 = true := by decide +kernel

theorem polyQuarticReal_14_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 6 = true := by decide +kernel

theorem polyQuarticReal_14_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 7 = true := by decide +kernel

theorem polyQuarticReal_14 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 14 j = true := by
  fin_cases j
  · exact polyQuarticReal_14_0
  · exact polyQuarticReal_14_1
  · exact polyQuarticReal_14_2
  · exact polyQuarticReal_14_3
  · exact polyQuarticReal_14_4
  · exact polyQuarticReal_14_5
  · exact polyQuarticReal_14_6
  · exact polyQuarticReal_14_7

theorem polyQuarticReal_15_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 0 = true := by decide +kernel

theorem polyQuarticReal_15_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 1 = true := by decide +kernel

theorem polyQuarticReal_15_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 2 = true := by decide +kernel

theorem polyQuarticReal_15_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 3 = true := by decide +kernel

theorem polyQuarticReal_15_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 4 = true := by decide +kernel

theorem polyQuarticReal_15_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 5 = true := by decide +kernel

theorem polyQuarticReal_15_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 6 = true := by decide +kernel

theorem polyQuarticReal_15_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 7 = true := by decide +kernel

theorem polyQuarticReal_15 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 15 j = true := by
  fin_cases j
  · exact polyQuarticReal_15_0
  · exact polyQuarticReal_15_1
  · exact polyQuarticReal_15_2
  · exact polyQuarticReal_15_3
  · exact polyQuarticReal_15_4
  · exact polyQuarticReal_15_5
  · exact polyQuarticReal_15_6
  · exact polyQuarticReal_15_7

theorem polyQuarticReal_16_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 0 = true := by decide +kernel

theorem polyQuarticReal_16_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 1 = true := by decide +kernel

theorem polyQuarticReal_16_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 2 = true := by decide +kernel

theorem polyQuarticReal_16_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 3 = true := by decide +kernel

theorem polyQuarticReal_16_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 4 = true := by decide +kernel

theorem polyQuarticReal_16_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 5 = true := by decide +kernel

theorem polyQuarticReal_16_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 6 = true := by decide +kernel

theorem polyQuarticReal_16_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 7 = true := by decide +kernel

theorem polyQuarticReal_16 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 16 j = true := by
  fin_cases j
  · exact polyQuarticReal_16_0
  · exact polyQuarticReal_16_1
  · exact polyQuarticReal_16_2
  · exact polyQuarticReal_16_3
  · exact polyQuarticReal_16_4
  · exact polyQuarticReal_16_5
  · exact polyQuarticReal_16_6
  · exact polyQuarticReal_16_7

theorem polyQuarticReal_17_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 0 = true := by decide +kernel

theorem polyQuarticReal_17_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 1 = true := by decide +kernel

theorem polyQuarticReal_17_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 2 = true := by decide +kernel

theorem polyQuarticReal_17_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 3 = true := by decide +kernel

theorem polyQuarticReal_17_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 4 = true := by decide +kernel

theorem polyQuarticReal_17_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 5 = true := by decide +kernel

theorem polyQuarticReal_17_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 6 = true := by decide +kernel

theorem polyQuarticReal_17_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 7 = true := by decide +kernel

theorem polyQuarticReal_17 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 17 j = true := by
  fin_cases j
  · exact polyQuarticReal_17_0
  · exact polyQuarticReal_17_1
  · exact polyQuarticReal_17_2
  · exact polyQuarticReal_17_3
  · exact polyQuarticReal_17_4
  · exact polyQuarticReal_17_5
  · exact polyQuarticReal_17_6
  · exact polyQuarticReal_17_7

theorem polyQuarticReal_18_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 0 = true := by decide +kernel

theorem polyQuarticReal_18_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 1 = true := by decide +kernel

theorem polyQuarticReal_18_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 2 = true := by decide +kernel

theorem polyQuarticReal_18_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 3 = true := by decide +kernel

theorem polyQuarticReal_18_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 4 = true := by decide +kernel

theorem polyQuarticReal_18_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 5 = true := by decide +kernel

theorem polyQuarticReal_18_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 6 = true := by decide +kernel

theorem polyQuarticReal_18_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 7 = true := by decide +kernel

theorem polyQuarticReal_18 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 18 j = true := by
  fin_cases j
  · exact polyQuarticReal_18_0
  · exact polyQuarticReal_18_1
  · exact polyQuarticReal_18_2
  · exact polyQuarticReal_18_3
  · exact polyQuarticReal_18_4
  · exact polyQuarticReal_18_5
  · exact polyQuarticReal_18_6
  · exact polyQuarticReal_18_7

theorem polyQuarticReal_19_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 0 = true := by decide +kernel

theorem polyQuarticReal_19_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 1 = true := by decide +kernel

theorem polyQuarticReal_19_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 2 = true := by decide +kernel

theorem polyQuarticReal_19_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 3 = true := by decide +kernel

theorem polyQuarticReal_19_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 4 = true := by decide +kernel

theorem polyQuarticReal_19_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 5 = true := by decide +kernel

theorem polyQuarticReal_19_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 6 = true := by decide +kernel

theorem polyQuarticReal_19_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 7 = true := by decide +kernel

theorem polyQuarticReal_19 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 19 j = true := by
  fin_cases j
  · exact polyQuarticReal_19_0
  · exact polyQuarticReal_19_1
  · exact polyQuarticReal_19_2
  · exact polyQuarticReal_19_3
  · exact polyQuarticReal_19_4
  · exact polyQuarticReal_19_5
  · exact polyQuarticReal_19_6
  · exact polyQuarticReal_19_7

theorem polyQuarticReal_20_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 0 = true := by decide +kernel

theorem polyQuarticReal_20_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 1 = true := by decide +kernel

theorem polyQuarticReal_20_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 2 = true := by decide +kernel

theorem polyQuarticReal_20_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 3 = true := by decide +kernel

theorem polyQuarticReal_20_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 4 = true := by decide +kernel

theorem polyQuarticReal_20_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 5 = true := by decide +kernel

theorem polyQuarticReal_20_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 6 = true := by decide +kernel

theorem polyQuarticReal_20_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 7 = true := by decide +kernel

theorem polyQuarticReal_20 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 20 j = true := by
  fin_cases j
  · exact polyQuarticReal_20_0
  · exact polyQuarticReal_20_1
  · exact polyQuarticReal_20_2
  · exact polyQuarticReal_20_3
  · exact polyQuarticReal_20_4
  · exact polyQuarticReal_20_5
  · exact polyQuarticReal_20_6
  · exact polyQuarticReal_20_7

theorem polyQuarticReal_21_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 0 = true := by decide +kernel

theorem polyQuarticReal_21_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 1 = true := by decide +kernel

theorem polyQuarticReal_21_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 2 = true := by decide +kernel

theorem polyQuarticReal_21_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 3 = true := by decide +kernel

theorem polyQuarticReal_21_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 4 = true := by decide +kernel

theorem polyQuarticReal_21_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 5 = true := by decide +kernel

theorem polyQuarticReal_21_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 6 = true := by decide +kernel

theorem polyQuarticReal_21_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 7 = true := by decide +kernel

theorem polyQuarticReal_21 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 21 j = true := by
  fin_cases j
  · exact polyQuarticReal_21_0
  · exact polyQuarticReal_21_1
  · exact polyQuarticReal_21_2
  · exact polyQuarticReal_21_3
  · exact polyQuarticReal_21_4
  · exact polyQuarticReal_21_5
  · exact polyQuarticReal_21_6
  · exact polyQuarticReal_21_7

theorem polyQuarticReal_22_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 0 = true := by decide +kernel

theorem polyQuarticReal_22_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 1 = true := by decide +kernel

theorem polyQuarticReal_22_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 2 = true := by decide +kernel

theorem polyQuarticReal_22_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 3 = true := by decide +kernel

theorem polyQuarticReal_22_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 4 = true := by decide +kernel

theorem polyQuarticReal_22_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 5 = true := by decide +kernel

theorem polyQuarticReal_22_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 6 = true := by decide +kernel

theorem polyQuarticReal_22_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 7 = true := by decide +kernel

theorem polyQuarticReal_22 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 22 j = true := by
  fin_cases j
  · exact polyQuarticReal_22_0
  · exact polyQuarticReal_22_1
  · exact polyQuarticReal_22_2
  · exact polyQuarticReal_22_3
  · exact polyQuarticReal_22_4
  · exact polyQuarticReal_22_5
  · exact polyQuarticReal_22_6
  · exact polyQuarticReal_22_7

theorem polyQuarticReal_23_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 0 = true := by decide +kernel

theorem polyQuarticReal_23_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 1 = true := by decide +kernel

theorem polyQuarticReal_23_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 2 = true := by decide +kernel

theorem polyQuarticReal_23_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 3 = true := by decide +kernel

theorem polyQuarticReal_23_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 4 = true := by decide +kernel

theorem polyQuarticReal_23_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 5 = true := by decide +kernel

theorem polyQuarticReal_23_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 6 = true := by decide +kernel

theorem polyQuarticReal_23_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 7 = true := by decide +kernel

theorem polyQuarticReal_23 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 23 j = true := by
  fin_cases j
  · exact polyQuarticReal_23_0
  · exact polyQuarticReal_23_1
  · exact polyQuarticReal_23_2
  · exact polyQuarticReal_23_3
  · exact polyQuarticReal_23_4
  · exact polyQuarticReal_23_5
  · exact polyQuarticReal_23_6
  · exact polyQuarticReal_23_7

theorem polyQuarticReal_24_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 0 = true := by decide +kernel

theorem polyQuarticReal_24_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 1 = true := by decide +kernel

theorem polyQuarticReal_24_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 2 = true := by decide +kernel

theorem polyQuarticReal_24_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 3 = true := by decide +kernel

theorem polyQuarticReal_24_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 4 = true := by decide +kernel

theorem polyQuarticReal_24_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 5 = true := by decide +kernel

theorem polyQuarticReal_24_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 6 = true := by decide +kernel

theorem polyQuarticReal_24_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 7 = true := by decide +kernel

theorem polyQuarticReal_24 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 24 j = true := by
  fin_cases j
  · exact polyQuarticReal_24_0
  · exact polyQuarticReal_24_1
  · exact polyQuarticReal_24_2
  · exact polyQuarticReal_24_3
  · exact polyQuarticReal_24_4
  · exact polyQuarticReal_24_5
  · exact polyQuarticReal_24_6
  · exact polyQuarticReal_24_7

theorem polyQuarticReal_25_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 0 = true := by decide +kernel

theorem polyQuarticReal_25_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 1 = true := by decide +kernel

theorem polyQuarticReal_25_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 2 = true := by decide +kernel

theorem polyQuarticReal_25_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 3 = true := by decide +kernel

theorem polyQuarticReal_25_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 4 = true := by decide +kernel

theorem polyQuarticReal_25_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 5 = true := by decide +kernel

theorem polyQuarticReal_25_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 6 = true := by decide +kernel

theorem polyQuarticReal_25_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 7 = true := by decide +kernel

theorem polyQuarticReal_25 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 25 j = true := by
  fin_cases j
  · exact polyQuarticReal_25_0
  · exact polyQuarticReal_25_1
  · exact polyQuarticReal_25_2
  · exact polyQuarticReal_25_3
  · exact polyQuarticReal_25_4
  · exact polyQuarticReal_25_5
  · exact polyQuarticReal_25_6
  · exact polyQuarticReal_25_7

theorem polyQuarticReal_26_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 0 = true := by decide +kernel

theorem polyQuarticReal_26_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 1 = true := by decide +kernel

theorem polyQuarticReal_26_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 2 = true := by decide +kernel

theorem polyQuarticReal_26_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 3 = true := by decide +kernel

theorem polyQuarticReal_26_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 4 = true := by decide +kernel

theorem polyQuarticReal_26_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 5 = true := by decide +kernel

theorem polyQuarticReal_26_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 6 = true := by decide +kernel

theorem polyQuarticReal_26_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 7 = true := by decide +kernel

theorem polyQuarticReal_26 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 26 j = true := by
  fin_cases j
  · exact polyQuarticReal_26_0
  · exact polyQuarticReal_26_1
  · exact polyQuarticReal_26_2
  · exact polyQuarticReal_26_3
  · exact polyQuarticReal_26_4
  · exact polyQuarticReal_26_5
  · exact polyQuarticReal_26_6
  · exact polyQuarticReal_26_7

theorem polyQuarticReal_27_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 0 = true := by decide +kernel

theorem polyQuarticReal_27_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 1 = true := by decide +kernel

theorem polyQuarticReal_27_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 2 = true := by decide +kernel

theorem polyQuarticReal_27_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 3 = true := by decide +kernel

theorem polyQuarticReal_27_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 4 = true := by decide +kernel

theorem polyQuarticReal_27_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 5 = true := by decide +kernel

theorem polyQuarticReal_27_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 6 = true := by decide +kernel

theorem polyQuarticReal_27_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 7 = true := by decide +kernel

theorem polyQuarticReal_27 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 27 j = true := by
  fin_cases j
  · exact polyQuarticReal_27_0
  · exact polyQuarticReal_27_1
  · exact polyQuarticReal_27_2
  · exact polyQuarticReal_27_3
  · exact polyQuarticReal_27_4
  · exact polyQuarticReal_27_5
  · exact polyQuarticReal_27_6
  · exact polyQuarticReal_27_7

theorem polyQuarticReal_28_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 0 = true := by decide +kernel

theorem polyQuarticReal_28_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 1 = true := by decide +kernel

theorem polyQuarticReal_28_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 2 = true := by decide +kernel

theorem polyQuarticReal_28_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 3 = true := by decide +kernel

theorem polyQuarticReal_28_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 4 = true := by decide +kernel

theorem polyQuarticReal_28_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 5 = true := by decide +kernel

theorem polyQuarticReal_28_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 6 = true := by decide +kernel

theorem polyQuarticReal_28_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 7 = true := by decide +kernel

theorem polyQuarticReal_28 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 28 j = true := by
  fin_cases j
  · exact polyQuarticReal_28_0
  · exact polyQuarticReal_28_1
  · exact polyQuarticReal_28_2
  · exact polyQuarticReal_28_3
  · exact polyQuarticReal_28_4
  · exact polyQuarticReal_28_5
  · exact polyQuarticReal_28_6
  · exact polyQuarticReal_28_7

theorem polyQuarticReal_29_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 0 = true := by decide +kernel

theorem polyQuarticReal_29_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 1 = true := by decide +kernel

theorem polyQuarticReal_29_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 2 = true := by decide +kernel

theorem polyQuarticReal_29_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 3 = true := by decide +kernel

theorem polyQuarticReal_29_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 4 = true := by decide +kernel

theorem polyQuarticReal_29_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 5 = true := by decide +kernel

theorem polyQuarticReal_29_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 6 = true := by decide +kernel

theorem polyQuarticReal_29_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 7 = true := by decide +kernel

theorem polyQuarticReal_29 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 29 j = true := by
  fin_cases j
  · exact polyQuarticReal_29_0
  · exact polyQuarticReal_29_1
  · exact polyQuarticReal_29_2
  · exact polyQuarticReal_29_3
  · exact polyQuarticReal_29_4
  · exact polyQuarticReal_29_5
  · exact polyQuarticReal_29_6
  · exact polyQuarticReal_29_7

theorem polyQuarticReal_30_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 0 = true := by decide +kernel

theorem polyQuarticReal_30_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 1 = true := by decide +kernel

theorem polyQuarticReal_30_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 2 = true := by decide +kernel

theorem polyQuarticReal_30_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 3 = true := by decide +kernel

theorem polyQuarticReal_30_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 4 = true := by decide +kernel

theorem polyQuarticReal_30_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 5 = true := by decide +kernel

theorem polyQuarticReal_30_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 6 = true := by decide +kernel

theorem polyQuarticReal_30_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 7 = true := by decide +kernel

theorem polyQuarticReal_30 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 30 j = true := by
  fin_cases j
  · exact polyQuarticReal_30_0
  · exact polyQuarticReal_30_1
  · exact polyQuarticReal_30_2
  · exact polyQuarticReal_30_3
  · exact polyQuarticReal_30_4
  · exact polyQuarticReal_30_5
  · exact polyQuarticReal_30_6
  · exact polyQuarticReal_30_7

theorem polyQuarticReal_31_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 0 = true := by decide +kernel

theorem polyQuarticReal_31_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 1 = true := by decide +kernel

theorem polyQuarticReal_31_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 2 = true := by decide +kernel

theorem polyQuarticReal_31_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 3 = true := by decide +kernel

theorem polyQuarticReal_31_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 4 = true := by decide +kernel

theorem polyQuarticReal_31_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 5 = true := by decide +kernel

theorem polyQuarticReal_31_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 6 = true := by decide +kernel

theorem polyQuarticReal_31_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 7 = true := by decide +kernel

theorem polyQuarticReal_31 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 31 j = true := by
  fin_cases j
  · exact polyQuarticReal_31_0
  · exact polyQuarticReal_31_1
  · exact polyQuarticReal_31_2
  · exact polyQuarticReal_31_3
  · exact polyQuarticReal_31_4
  · exact polyQuarticReal_31_5
  · exact polyQuarticReal_31_6
  · exact polyQuarticReal_31_7

theorem polyQuarticReal_32_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 0 = true := by decide +kernel

theorem polyQuarticReal_32_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 1 = true := by decide +kernel

theorem polyQuarticReal_32_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 2 = true := by decide +kernel

theorem polyQuarticReal_32_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 3 = true := by decide +kernel

theorem polyQuarticReal_32_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 4 = true := by decide +kernel

theorem polyQuarticReal_32_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 5 = true := by decide +kernel

theorem polyQuarticReal_32_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 6 = true := by decide +kernel

theorem polyQuarticReal_32_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 7 = true := by decide +kernel

theorem polyQuarticReal_32 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 32 j = true := by
  fin_cases j
  · exact polyQuarticReal_32_0
  · exact polyQuarticReal_32_1
  · exact polyQuarticReal_32_2
  · exact polyQuarticReal_32_3
  · exact polyQuarticReal_32_4
  · exact polyQuarticReal_32_5
  · exact polyQuarticReal_32_6
  · exact polyQuarticReal_32_7

theorem polyQuarticReal_33_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 0 = true := by decide +kernel

theorem polyQuarticReal_33_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 1 = true := by decide +kernel

theorem polyQuarticReal_33_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 2 = true := by decide +kernel

theorem polyQuarticReal_33_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 3 = true := by decide +kernel

theorem polyQuarticReal_33_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 4 = true := by decide +kernel

theorem polyQuarticReal_33_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 5 = true := by decide +kernel

theorem polyQuarticReal_33_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 6 = true := by decide +kernel

theorem polyQuarticReal_33_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 7 = true := by decide +kernel

theorem polyQuarticReal_33 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 33 j = true := by
  fin_cases j
  · exact polyQuarticReal_33_0
  · exact polyQuarticReal_33_1
  · exact polyQuarticReal_33_2
  · exact polyQuarticReal_33_3
  · exact polyQuarticReal_33_4
  · exact polyQuarticReal_33_5
  · exact polyQuarticReal_33_6
  · exact polyQuarticReal_33_7

theorem polyQuarticReal_34_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 0 = true := by decide +kernel

theorem polyQuarticReal_34_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 1 = true := by decide +kernel

theorem polyQuarticReal_34_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 2 = true := by decide +kernel

theorem polyQuarticReal_34_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 3 = true := by decide +kernel

theorem polyQuarticReal_34_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 4 = true := by decide +kernel

theorem polyQuarticReal_34_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 5 = true := by decide +kernel

theorem polyQuarticReal_34_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 6 = true := by decide +kernel

theorem polyQuarticReal_34_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 7 = true := by decide +kernel

theorem polyQuarticReal_34 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 34 j = true := by
  fin_cases j
  · exact polyQuarticReal_34_0
  · exact polyQuarticReal_34_1
  · exact polyQuarticReal_34_2
  · exact polyQuarticReal_34_3
  · exact polyQuarticReal_34_4
  · exact polyQuarticReal_34_5
  · exact polyQuarticReal_34_6
  · exact polyQuarticReal_34_7

theorem polyQuarticReal_35_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 0 = true := by decide +kernel

theorem polyQuarticReal_35_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 1 = true := by decide +kernel

theorem polyQuarticReal_35_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 2 = true := by decide +kernel

theorem polyQuarticReal_35_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 3 = true := by decide +kernel

theorem polyQuarticReal_35_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 4 = true := by decide +kernel

theorem polyQuarticReal_35_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 5 = true := by decide +kernel

theorem polyQuarticReal_35_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 6 = true := by decide +kernel

theorem polyQuarticReal_35_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 7 = true := by decide +kernel

theorem polyQuarticReal_35 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 35 j = true := by
  fin_cases j
  · exact polyQuarticReal_35_0
  · exact polyQuarticReal_35_1
  · exact polyQuarticReal_35_2
  · exact polyQuarticReal_35_3
  · exact polyQuarticReal_35_4
  · exact polyQuarticReal_35_5
  · exact polyQuarticReal_35_6
  · exact polyQuarticReal_35_7

theorem polyQuarticReal_36_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 0 = true := by decide +kernel

theorem polyQuarticReal_36_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 1 = true := by decide +kernel

theorem polyQuarticReal_36_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 2 = true := by decide +kernel

theorem polyQuarticReal_36_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 3 = true := by decide +kernel

theorem polyQuarticReal_36_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 4 = true := by decide +kernel

theorem polyQuarticReal_36_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 5 = true := by decide +kernel

theorem polyQuarticReal_36_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 6 = true := by decide +kernel

theorem polyQuarticReal_36_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 7 = true := by decide +kernel

theorem polyQuarticReal_36 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 36 j = true := by
  fin_cases j
  · exact polyQuarticReal_36_0
  · exact polyQuarticReal_36_1
  · exact polyQuarticReal_36_2
  · exact polyQuarticReal_36_3
  · exact polyQuarticReal_36_4
  · exact polyQuarticReal_36_5
  · exact polyQuarticReal_36_6
  · exact polyQuarticReal_36_7

theorem polyQuarticReal_37_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 0 = true := by decide +kernel

theorem polyQuarticReal_37_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 1 = true := by decide +kernel

theorem polyQuarticReal_37_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 2 = true := by decide +kernel

theorem polyQuarticReal_37_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 3 = true := by decide +kernel

theorem polyQuarticReal_37_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 4 = true := by decide +kernel

theorem polyQuarticReal_37_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 5 = true := by decide +kernel

theorem polyQuarticReal_37_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 6 = true := by decide +kernel

theorem polyQuarticReal_37_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 7 = true := by decide +kernel

theorem polyQuarticReal_37 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 37 j = true := by
  fin_cases j
  · exact polyQuarticReal_37_0
  · exact polyQuarticReal_37_1
  · exact polyQuarticReal_37_2
  · exact polyQuarticReal_37_3
  · exact polyQuarticReal_37_4
  · exact polyQuarticReal_37_5
  · exact polyQuarticReal_37_6
  · exact polyQuarticReal_37_7

theorem polyQuarticReal_38_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 0 = true := by decide +kernel

theorem polyQuarticReal_38_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 1 = true := by decide +kernel

theorem polyQuarticReal_38_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 2 = true := by decide +kernel

theorem polyQuarticReal_38_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 3 = true := by decide +kernel

theorem polyQuarticReal_38_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 4 = true := by decide +kernel

theorem polyQuarticReal_38_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 5 = true := by decide +kernel

theorem polyQuarticReal_38_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 6 = true := by decide +kernel

theorem polyQuarticReal_38_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 7 = true := by decide +kernel

theorem polyQuarticReal_38 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 38 j = true := by
  fin_cases j
  · exact polyQuarticReal_38_0
  · exact polyQuarticReal_38_1
  · exact polyQuarticReal_38_2
  · exact polyQuarticReal_38_3
  · exact polyQuarticReal_38_4
  · exact polyQuarticReal_38_5
  · exact polyQuarticReal_38_6
  · exact polyQuarticReal_38_7

theorem polyQuarticReal_39_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 0 = true := by decide +kernel

theorem polyQuarticReal_39_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 1 = true := by decide +kernel

theorem polyQuarticReal_39_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 2 = true := by decide +kernel

theorem polyQuarticReal_39_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 3 = true := by decide +kernel

theorem polyQuarticReal_39_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 4 = true := by decide +kernel

theorem polyQuarticReal_39_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 5 = true := by decide +kernel

theorem polyQuarticReal_39_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 6 = true := by decide +kernel

theorem polyQuarticReal_39_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 7 = true := by decide +kernel

theorem polyQuarticReal_39 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 39 j = true := by
  fin_cases j
  · exact polyQuarticReal_39_0
  · exact polyQuarticReal_39_1
  · exact polyQuarticReal_39_2
  · exact polyQuarticReal_39_3
  · exact polyQuarticReal_39_4
  · exact polyQuarticReal_39_5
  · exact polyQuarticReal_39_6
  · exact polyQuarticReal_39_7

theorem polyQuarticReal_40_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 0 = true := by decide +kernel

theorem polyQuarticReal_40_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 1 = true := by decide +kernel

theorem polyQuarticReal_40_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 2 = true := by decide +kernel

theorem polyQuarticReal_40_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 3 = true := by decide +kernel

theorem polyQuarticReal_40_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 4 = true := by decide +kernel

theorem polyQuarticReal_40_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 5 = true := by decide +kernel

theorem polyQuarticReal_40_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 6 = true := by decide +kernel

theorem polyQuarticReal_40_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 7 = true := by decide +kernel

theorem polyQuarticReal_40 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 40 j = true := by
  fin_cases j
  · exact polyQuarticReal_40_0
  · exact polyQuarticReal_40_1
  · exact polyQuarticReal_40_2
  · exact polyQuarticReal_40_3
  · exact polyQuarticReal_40_4
  · exact polyQuarticReal_40_5
  · exact polyQuarticReal_40_6
  · exact polyQuarticReal_40_7

theorem polyQuarticReal_41_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 0 = true := by decide +kernel

theorem polyQuarticReal_41_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 1 = true := by decide +kernel

theorem polyQuarticReal_41_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 2 = true := by decide +kernel

theorem polyQuarticReal_41_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 3 = true := by decide +kernel

theorem polyQuarticReal_41_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 4 = true := by decide +kernel

theorem polyQuarticReal_41_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 5 = true := by decide +kernel

theorem polyQuarticReal_41_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 6 = true := by decide +kernel

theorem polyQuarticReal_41_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 7 = true := by decide +kernel

theorem polyQuarticReal_41 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 41 j = true := by
  fin_cases j
  · exact polyQuarticReal_41_0
  · exact polyQuarticReal_41_1
  · exact polyQuarticReal_41_2
  · exact polyQuarticReal_41_3
  · exact polyQuarticReal_41_4
  · exact polyQuarticReal_41_5
  · exact polyQuarticReal_41_6
  · exact polyQuarticReal_41_7

theorem polyQuarticReal_42_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 0 = true := by decide +kernel

theorem polyQuarticReal_42_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 1 = true := by decide +kernel

theorem polyQuarticReal_42_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 2 = true := by decide +kernel

theorem polyQuarticReal_42_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 3 = true := by decide +kernel

theorem polyQuarticReal_42_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 4 = true := by decide +kernel

theorem polyQuarticReal_42_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 5 = true := by decide +kernel

theorem polyQuarticReal_42_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 6 = true := by decide +kernel

theorem polyQuarticReal_42_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 7 = true := by decide +kernel

theorem polyQuarticReal_42 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 42 j = true := by
  fin_cases j
  · exact polyQuarticReal_42_0
  · exact polyQuarticReal_42_1
  · exact polyQuarticReal_42_2
  · exact polyQuarticReal_42_3
  · exact polyQuarticReal_42_4
  · exact polyQuarticReal_42_5
  · exact polyQuarticReal_42_6
  · exact polyQuarticReal_42_7

theorem polyQuarticReal_43_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 0 = true := by decide +kernel

theorem polyQuarticReal_43_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 1 = true := by decide +kernel

theorem polyQuarticReal_43_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 2 = true := by decide +kernel

theorem polyQuarticReal_43_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 3 = true := by decide +kernel

theorem polyQuarticReal_43_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 4 = true := by decide +kernel

theorem polyQuarticReal_43_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 5 = true := by decide +kernel

theorem polyQuarticReal_43_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 6 = true := by decide +kernel

theorem polyQuarticReal_43_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 7 = true := by decide +kernel

theorem polyQuarticReal_43 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 43 j = true := by
  fin_cases j
  · exact polyQuarticReal_43_0
  · exact polyQuarticReal_43_1
  · exact polyQuarticReal_43_2
  · exact polyQuarticReal_43_3
  · exact polyQuarticReal_43_4
  · exact polyQuarticReal_43_5
  · exact polyQuarticReal_43_6
  · exact polyQuarticReal_43_7

theorem polyQuarticReal_44_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 0 = true := by decide +kernel

theorem polyQuarticReal_44_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 1 = true := by decide +kernel

theorem polyQuarticReal_44_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 2 = true := by decide +kernel

theorem polyQuarticReal_44_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 3 = true := by decide +kernel

theorem polyQuarticReal_44_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 4 = true := by decide +kernel

theorem polyQuarticReal_44_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 5 = true := by decide +kernel

theorem polyQuarticReal_44_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 6 = true := by decide +kernel

theorem polyQuarticReal_44_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 7 = true := by decide +kernel

theorem polyQuarticReal_44 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 44 j = true := by
  fin_cases j
  · exact polyQuarticReal_44_0
  · exact polyQuarticReal_44_1
  · exact polyQuarticReal_44_2
  · exact polyQuarticReal_44_3
  · exact polyQuarticReal_44_4
  · exact polyQuarticReal_44_5
  · exact polyQuarticReal_44_6
  · exact polyQuarticReal_44_7

theorem polyQuarticReal_45_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 0 = true := by decide +kernel

theorem polyQuarticReal_45_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 1 = true := by decide +kernel

theorem polyQuarticReal_45_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 2 = true := by decide +kernel

theorem polyQuarticReal_45_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 3 = true := by decide +kernel

theorem polyQuarticReal_45_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 4 = true := by decide +kernel

theorem polyQuarticReal_45_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 5 = true := by decide +kernel

theorem polyQuarticReal_45_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 6 = true := by decide +kernel

theorem polyQuarticReal_45_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 7 = true := by decide +kernel

theorem polyQuarticReal_45 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 45 j = true := by
  fin_cases j
  · exact polyQuarticReal_45_0
  · exact polyQuarticReal_45_1
  · exact polyQuarticReal_45_2
  · exact polyQuarticReal_45_3
  · exact polyQuarticReal_45_4
  · exact polyQuarticReal_45_5
  · exact polyQuarticReal_45_6
  · exact polyQuarticReal_45_7

theorem polyQuarticReal_46_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 0 = true := by decide +kernel

theorem polyQuarticReal_46_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 1 = true := by decide +kernel

theorem polyQuarticReal_46_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 2 = true := by decide +kernel

theorem polyQuarticReal_46_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 3 = true := by decide +kernel

theorem polyQuarticReal_46_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 4 = true := by decide +kernel

theorem polyQuarticReal_46_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 5 = true := by decide +kernel

theorem polyQuarticReal_46_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 6 = true := by decide +kernel

theorem polyQuarticReal_46_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 7 = true := by decide +kernel

theorem polyQuarticReal_46 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 46 j = true := by
  fin_cases j
  · exact polyQuarticReal_46_0
  · exact polyQuarticReal_46_1
  · exact polyQuarticReal_46_2
  · exact polyQuarticReal_46_3
  · exact polyQuarticReal_46_4
  · exact polyQuarticReal_46_5
  · exact polyQuarticReal_46_6
  · exact polyQuarticReal_46_7

theorem polyQuarticReal_47_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 0 = true := by decide +kernel

theorem polyQuarticReal_47_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 1 = true := by decide +kernel

theorem polyQuarticReal_47_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 2 = true := by decide +kernel

theorem polyQuarticReal_47_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 3 = true := by decide +kernel

theorem polyQuarticReal_47_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 4 = true := by decide +kernel

theorem polyQuarticReal_47_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 5 = true := by decide +kernel

theorem polyQuarticReal_47_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 6 = true := by decide +kernel

theorem polyQuarticReal_47_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 7 = true := by decide +kernel

theorem polyQuarticReal_47 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 47 j = true := by
  fin_cases j
  · exact polyQuarticReal_47_0
  · exact polyQuarticReal_47_1
  · exact polyQuarticReal_47_2
  · exact polyQuarticReal_47_3
  · exact polyQuarticReal_47_4
  · exact polyQuarticReal_47_5
  · exact polyQuarticReal_47_6
  · exact polyQuarticReal_47_7

theorem polyQuarticReal_48_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 0 = true := by decide +kernel

theorem polyQuarticReal_48_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 1 = true := by decide +kernel

theorem polyQuarticReal_48_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 2 = true := by decide +kernel

theorem polyQuarticReal_48_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 3 = true := by decide +kernel

theorem polyQuarticReal_48_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 4 = true := by decide +kernel

theorem polyQuarticReal_48_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 5 = true := by decide +kernel

theorem polyQuarticReal_48_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 6 = true := by decide +kernel

theorem polyQuarticReal_48_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 7 = true := by decide +kernel

theorem polyQuarticReal_48 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 48 j = true := by
  fin_cases j
  · exact polyQuarticReal_48_0
  · exact polyQuarticReal_48_1
  · exact polyQuarticReal_48_2
  · exact polyQuarticReal_48_3
  · exact polyQuarticReal_48_4
  · exact polyQuarticReal_48_5
  · exact polyQuarticReal_48_6
  · exact polyQuarticReal_48_7

theorem polyQuarticReal_49_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 0 = true := by decide +kernel

theorem polyQuarticReal_49_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 1 = true := by decide +kernel

theorem polyQuarticReal_49_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 2 = true := by decide +kernel

theorem polyQuarticReal_49_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 3 = true := by decide +kernel

theorem polyQuarticReal_49_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 4 = true := by decide +kernel

theorem polyQuarticReal_49_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 5 = true := by decide +kernel

theorem polyQuarticReal_49_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 6 = true := by decide +kernel

theorem polyQuarticReal_49_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 7 = true := by decide +kernel

theorem polyQuarticReal_49 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 49 j = true := by
  fin_cases j
  · exact polyQuarticReal_49_0
  · exact polyQuarticReal_49_1
  · exact polyQuarticReal_49_2
  · exact polyQuarticReal_49_3
  · exact polyQuarticReal_49_4
  · exact polyQuarticReal_49_5
  · exact polyQuarticReal_49_6
  · exact polyQuarticReal_49_7

theorem polyQuarticReal_50_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 0 = true := by decide +kernel

theorem polyQuarticReal_50_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 1 = true := by decide +kernel

theorem polyQuarticReal_50_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 2 = true := by decide +kernel

theorem polyQuarticReal_50_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 3 = true := by decide +kernel

theorem polyQuarticReal_50_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 4 = true := by decide +kernel

theorem polyQuarticReal_50_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 5 = true := by decide +kernel

theorem polyQuarticReal_50_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 6 = true := by decide +kernel

theorem polyQuarticReal_50_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 7 = true := by decide +kernel

theorem polyQuarticReal_50 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 50 j = true := by
  fin_cases j
  · exact polyQuarticReal_50_0
  · exact polyQuarticReal_50_1
  · exact polyQuarticReal_50_2
  · exact polyQuarticReal_50_3
  · exact polyQuarticReal_50_4
  · exact polyQuarticReal_50_5
  · exact polyQuarticReal_50_6
  · exact polyQuarticReal_50_7

theorem polyQuarticReal_51_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 0 = true := by decide +kernel

theorem polyQuarticReal_51_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 1 = true := by decide +kernel

theorem polyQuarticReal_51_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 2 = true := by decide +kernel

theorem polyQuarticReal_51_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 3 = true := by decide +kernel

theorem polyQuarticReal_51_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 4 = true := by decide +kernel

theorem polyQuarticReal_51_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 5 = true := by decide +kernel

theorem polyQuarticReal_51_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 6 = true := by decide +kernel

theorem polyQuarticReal_51_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 7 = true := by decide +kernel

theorem polyQuarticReal_51 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 51 j = true := by
  fin_cases j
  · exact polyQuarticReal_51_0
  · exact polyQuarticReal_51_1
  · exact polyQuarticReal_51_2
  · exact polyQuarticReal_51_3
  · exact polyQuarticReal_51_4
  · exact polyQuarticReal_51_5
  · exact polyQuarticReal_51_6
  · exact polyQuarticReal_51_7

theorem polyQuarticReal_52_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 0 = true := by decide +kernel

theorem polyQuarticReal_52_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 1 = true := by decide +kernel

theorem polyQuarticReal_52_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 2 = true := by decide +kernel

theorem polyQuarticReal_52_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 3 = true := by decide +kernel

theorem polyQuarticReal_52_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 4 = true := by decide +kernel

theorem polyQuarticReal_52_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 5 = true := by decide +kernel

theorem polyQuarticReal_52_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 6 = true := by decide +kernel

theorem polyQuarticReal_52_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 7 = true := by decide +kernel

theorem polyQuarticReal_52 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 52 j = true := by
  fin_cases j
  · exact polyQuarticReal_52_0
  · exact polyQuarticReal_52_1
  · exact polyQuarticReal_52_2
  · exact polyQuarticReal_52_3
  · exact polyQuarticReal_52_4
  · exact polyQuarticReal_52_5
  · exact polyQuarticReal_52_6
  · exact polyQuarticReal_52_7

theorem polyQuarticReal_53_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 0 = true := by decide +kernel

theorem polyQuarticReal_53_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 1 = true := by decide +kernel

theorem polyQuarticReal_53_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 2 = true := by decide +kernel

theorem polyQuarticReal_53_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 3 = true := by decide +kernel

theorem polyQuarticReal_53_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 4 = true := by decide +kernel

theorem polyQuarticReal_53_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 5 = true := by decide +kernel

theorem polyQuarticReal_53_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 6 = true := by decide +kernel

theorem polyQuarticReal_53_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 7 = true := by decide +kernel

theorem polyQuarticReal_53 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 53 j = true := by
  fin_cases j
  · exact polyQuarticReal_53_0
  · exact polyQuarticReal_53_1
  · exact polyQuarticReal_53_2
  · exact polyQuarticReal_53_3
  · exact polyQuarticReal_53_4
  · exact polyQuarticReal_53_5
  · exact polyQuarticReal_53_6
  · exact polyQuarticReal_53_7

theorem polyQuarticReal_54_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 0 = true := by decide +kernel

theorem polyQuarticReal_54_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 1 = true := by decide +kernel

theorem polyQuarticReal_54_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 2 = true := by decide +kernel

theorem polyQuarticReal_54_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 3 = true := by decide +kernel

theorem polyQuarticReal_54_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 4 = true := by decide +kernel

theorem polyQuarticReal_54_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 5 = true := by decide +kernel

theorem polyQuarticReal_54_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 6 = true := by decide +kernel

theorem polyQuarticReal_54_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 7 = true := by decide +kernel

theorem polyQuarticReal_54 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 54 j = true := by
  fin_cases j
  · exact polyQuarticReal_54_0
  · exact polyQuarticReal_54_1
  · exact polyQuarticReal_54_2
  · exact polyQuarticReal_54_3
  · exact polyQuarticReal_54_4
  · exact polyQuarticReal_54_5
  · exact polyQuarticReal_54_6
  · exact polyQuarticReal_54_7

theorem polyQuarticReal_55_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 0 = true := by decide +kernel

theorem polyQuarticReal_55_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 1 = true := by decide +kernel

theorem polyQuarticReal_55_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 2 = true := by decide +kernel

theorem polyQuarticReal_55_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 3 = true := by decide +kernel

theorem polyQuarticReal_55_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 4 = true := by decide +kernel

theorem polyQuarticReal_55_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 5 = true := by decide +kernel

theorem polyQuarticReal_55_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 6 = true := by decide +kernel

theorem polyQuarticReal_55_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 7 = true := by decide +kernel

theorem polyQuarticReal_55 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 55 j = true := by
  fin_cases j
  · exact polyQuarticReal_55_0
  · exact polyQuarticReal_55_1
  · exact polyQuarticReal_55_2
  · exact polyQuarticReal_55_3
  · exact polyQuarticReal_55_4
  · exact polyQuarticReal_55_5
  · exact polyQuarticReal_55_6
  · exact polyQuarticReal_55_7

theorem polyQuarticReal_56_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 0 = true := by decide +kernel

theorem polyQuarticReal_56_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 1 = true := by decide +kernel

theorem polyQuarticReal_56_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 2 = true := by decide +kernel

theorem polyQuarticReal_56_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 3 = true := by decide +kernel

theorem polyQuarticReal_56_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 4 = true := by decide +kernel

theorem polyQuarticReal_56_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 5 = true := by decide +kernel

theorem polyQuarticReal_56_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 6 = true := by decide +kernel

theorem polyQuarticReal_56_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 7 = true := by decide +kernel

theorem polyQuarticReal_56 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 56 j = true := by
  fin_cases j
  · exact polyQuarticReal_56_0
  · exact polyQuarticReal_56_1
  · exact polyQuarticReal_56_2
  · exact polyQuarticReal_56_3
  · exact polyQuarticReal_56_4
  · exact polyQuarticReal_56_5
  · exact polyQuarticReal_56_6
  · exact polyQuarticReal_56_7

theorem polyQuarticReal_57_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 0 = true := by decide +kernel

theorem polyQuarticReal_57_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 1 = true := by decide +kernel

theorem polyQuarticReal_57_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 2 = true := by decide +kernel

theorem polyQuarticReal_57_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 3 = true := by decide +kernel

theorem polyQuarticReal_57_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 4 = true := by decide +kernel

theorem polyQuarticReal_57_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 5 = true := by decide +kernel

theorem polyQuarticReal_57_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 6 = true := by decide +kernel

theorem polyQuarticReal_57_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 7 = true := by decide +kernel

theorem polyQuarticReal_57 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 57 j = true := by
  fin_cases j
  · exact polyQuarticReal_57_0
  · exact polyQuarticReal_57_1
  · exact polyQuarticReal_57_2
  · exact polyQuarticReal_57_3
  · exact polyQuarticReal_57_4
  · exact polyQuarticReal_57_5
  · exact polyQuarticReal_57_6
  · exact polyQuarticReal_57_7

theorem polyQuarticReal_58_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 0 = true := by decide +kernel

theorem polyQuarticReal_58_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 1 = true := by decide +kernel

theorem polyQuarticReal_58_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 2 = true := by decide +kernel

theorem polyQuarticReal_58_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 3 = true := by decide +kernel

theorem polyQuarticReal_58_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 4 = true := by decide +kernel

theorem polyQuarticReal_58_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 5 = true := by decide +kernel

theorem polyQuarticReal_58_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 6 = true := by decide +kernel

theorem polyQuarticReal_58_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 7 = true := by decide +kernel

theorem polyQuarticReal_58 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 58 j = true := by
  fin_cases j
  · exact polyQuarticReal_58_0
  · exact polyQuarticReal_58_1
  · exact polyQuarticReal_58_2
  · exact polyQuarticReal_58_3
  · exact polyQuarticReal_58_4
  · exact polyQuarticReal_58_5
  · exact polyQuarticReal_58_6
  · exact polyQuarticReal_58_7

theorem polyQuarticReal_59_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 0 = true := by decide +kernel

theorem polyQuarticReal_59_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 1 = true := by decide +kernel

theorem polyQuarticReal_59_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 2 = true := by decide +kernel

theorem polyQuarticReal_59_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 3 = true := by decide +kernel

theorem polyQuarticReal_59_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 4 = true := by decide +kernel

theorem polyQuarticReal_59_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 5 = true := by decide +kernel

theorem polyQuarticReal_59_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 6 = true := by decide +kernel

theorem polyQuarticReal_59_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 7 = true := by decide +kernel

theorem polyQuarticReal_59 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 59 j = true := by
  fin_cases j
  · exact polyQuarticReal_59_0
  · exact polyQuarticReal_59_1
  · exact polyQuarticReal_59_2
  · exact polyQuarticReal_59_3
  · exact polyQuarticReal_59_4
  · exact polyQuarticReal_59_5
  · exact polyQuarticReal_59_6
  · exact polyQuarticReal_59_7

theorem polyQuarticReal_60_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 0 = true := by decide +kernel

theorem polyQuarticReal_60_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 1 = true := by decide +kernel

theorem polyQuarticReal_60_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 2 = true := by decide +kernel

theorem polyQuarticReal_60_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 3 = true := by decide +kernel

theorem polyQuarticReal_60_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 4 = true := by decide +kernel

theorem polyQuarticReal_60_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 5 = true := by decide +kernel

theorem polyQuarticReal_60_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 6 = true := by decide +kernel

theorem polyQuarticReal_60_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 7 = true := by decide +kernel

theorem polyQuarticReal_60 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 60 j = true := by
  fin_cases j
  · exact polyQuarticReal_60_0
  · exact polyQuarticReal_60_1
  · exact polyQuarticReal_60_2
  · exact polyQuarticReal_60_3
  · exact polyQuarticReal_60_4
  · exact polyQuarticReal_60_5
  · exact polyQuarticReal_60_6
  · exact polyQuarticReal_60_7

theorem polyQuarticReal_61_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 0 = true := by decide +kernel

theorem polyQuarticReal_61_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 1 = true := by decide +kernel

theorem polyQuarticReal_61_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 2 = true := by decide +kernel

theorem polyQuarticReal_61_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 3 = true := by decide +kernel

theorem polyQuarticReal_61_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 4 = true := by decide +kernel

theorem polyQuarticReal_61_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 5 = true := by decide +kernel

theorem polyQuarticReal_61_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 6 = true := by decide +kernel

theorem polyQuarticReal_61_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 7 = true := by decide +kernel

theorem polyQuarticReal_61 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 61 j = true := by
  fin_cases j
  · exact polyQuarticReal_61_0
  · exact polyQuarticReal_61_1
  · exact polyQuarticReal_61_2
  · exact polyQuarticReal_61_3
  · exact polyQuarticReal_61_4
  · exact polyQuarticReal_61_5
  · exact polyQuarticReal_61_6
  · exact polyQuarticReal_61_7

theorem polyQuarticReal_62_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 0 = true := by decide +kernel

theorem polyQuarticReal_62_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 1 = true := by decide +kernel

theorem polyQuarticReal_62_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 2 = true := by decide +kernel

theorem polyQuarticReal_62_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 3 = true := by decide +kernel

theorem polyQuarticReal_62_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 4 = true := by decide +kernel

theorem polyQuarticReal_62_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 5 = true := by decide +kernel

theorem polyQuarticReal_62_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 6 = true := by decide +kernel

theorem polyQuarticReal_62_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 7 = true := by decide +kernel

theorem polyQuarticReal_62 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 62 j = true := by
  fin_cases j
  · exact polyQuarticReal_62_0
  · exact polyQuarticReal_62_1
  · exact polyQuarticReal_62_2
  · exact polyQuarticReal_62_3
  · exact polyQuarticReal_62_4
  · exact polyQuarticReal_62_5
  · exact polyQuarticReal_62_6
  · exact polyQuarticReal_62_7

theorem polyQuarticReal_63_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 0 = true := by decide +kernel

theorem polyQuarticReal_63_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 1 = true := by decide +kernel

theorem polyQuarticReal_63_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 2 = true := by decide +kernel

theorem polyQuarticReal_63_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 3 = true := by decide +kernel

theorem polyQuarticReal_63_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 4 = true := by decide +kernel

theorem polyQuarticReal_63_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 5 = true := by decide +kernel

theorem polyQuarticReal_63_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 6 = true := by decide +kernel

theorem polyQuarticReal_63_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 7 = true := by decide +kernel

theorem polyQuarticReal_63 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 63 j = true := by
  fin_cases j
  · exact polyQuarticReal_63_0
  · exact polyQuarticReal_63_1
  · exact polyQuarticReal_63_2
  · exact polyQuarticReal_63_3
  · exact polyQuarticReal_63_4
  · exact polyQuarticReal_63_5
  · exact polyQuarticReal_63_6
  · exact polyQuarticReal_63_7

theorem polyQuarticReal_64_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 0 = true := by decide +kernel

theorem polyQuarticReal_64_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 1 = true := by decide +kernel

theorem polyQuarticReal_64_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 2 = true := by decide +kernel

theorem polyQuarticReal_64_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 3 = true := by decide +kernel

theorem polyQuarticReal_64_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 4 = true := by decide +kernel

theorem polyQuarticReal_64_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 5 = true := by decide +kernel

theorem polyQuarticReal_64_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 6 = true := by decide +kernel

theorem polyQuarticReal_64_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 7 = true := by decide +kernel

theorem polyQuarticReal_64 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 64 j = true := by
  fin_cases j
  · exact polyQuarticReal_64_0
  · exact polyQuarticReal_64_1
  · exact polyQuarticReal_64_2
  · exact polyQuarticReal_64_3
  · exact polyQuarticReal_64_4
  · exact polyQuarticReal_64_5
  · exact polyQuarticReal_64_6
  · exact polyQuarticReal_64_7

theorem polyQuarticReal_65_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 0 = true := by decide +kernel

theorem polyQuarticReal_65_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 1 = true := by decide +kernel

theorem polyQuarticReal_65_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 2 = true := by decide +kernel

theorem polyQuarticReal_65_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 3 = true := by decide +kernel

theorem polyQuarticReal_65_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 4 = true := by decide +kernel

theorem polyQuarticReal_65_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 5 = true := by decide +kernel

theorem polyQuarticReal_65_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 6 = true := by decide +kernel

theorem polyQuarticReal_65_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 7 = true := by decide +kernel

theorem polyQuarticReal_65 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 65 j = true := by
  fin_cases j
  · exact polyQuarticReal_65_0
  · exact polyQuarticReal_65_1
  · exact polyQuarticReal_65_2
  · exact polyQuarticReal_65_3
  · exact polyQuarticReal_65_4
  · exact polyQuarticReal_65_5
  · exact polyQuarticReal_65_6
  · exact polyQuarticReal_65_7

theorem polyQuarticReal_66_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 0 = true := by decide +kernel

theorem polyQuarticReal_66_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 1 = true := by decide +kernel

theorem polyQuarticReal_66_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 2 = true := by decide +kernel

theorem polyQuarticReal_66_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 3 = true := by decide +kernel

theorem polyQuarticReal_66_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 4 = true := by decide +kernel

theorem polyQuarticReal_66_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 5 = true := by decide +kernel

theorem polyQuarticReal_66_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 6 = true := by decide +kernel

theorem polyQuarticReal_66_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 7 = true := by decide +kernel

theorem polyQuarticReal_66 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 66 j = true := by
  fin_cases j
  · exact polyQuarticReal_66_0
  · exact polyQuarticReal_66_1
  · exact polyQuarticReal_66_2
  · exact polyQuarticReal_66_3
  · exact polyQuarticReal_66_4
  · exact polyQuarticReal_66_5
  · exact polyQuarticReal_66_6
  · exact polyQuarticReal_66_7

theorem polyQuarticReal_67_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 0 = true := by decide +kernel

theorem polyQuarticReal_67_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 1 = true := by decide +kernel

theorem polyQuarticReal_67_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 2 = true := by decide +kernel

theorem polyQuarticReal_67_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 3 = true := by decide +kernel

theorem polyQuarticReal_67_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 4 = true := by decide +kernel

theorem polyQuarticReal_67_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 5 = true := by decide +kernel

theorem polyQuarticReal_67_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 6 = true := by decide +kernel

theorem polyQuarticReal_67_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 7 = true := by decide +kernel

theorem polyQuarticReal_67 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 67 j = true := by
  fin_cases j
  · exact polyQuarticReal_67_0
  · exact polyQuarticReal_67_1
  · exact polyQuarticReal_67_2
  · exact polyQuarticReal_67_3
  · exact polyQuarticReal_67_4
  · exact polyQuarticReal_67_5
  · exact polyQuarticReal_67_6
  · exact polyQuarticReal_67_7

theorem polyQuarticReal_68_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 0 = true := by decide +kernel

theorem polyQuarticReal_68_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 1 = true := by decide +kernel

theorem polyQuarticReal_68_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 2 = true := by decide +kernel

theorem polyQuarticReal_68_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 3 = true := by decide +kernel

theorem polyQuarticReal_68_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 4 = true := by decide +kernel

theorem polyQuarticReal_68_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 5 = true := by decide +kernel

theorem polyQuarticReal_68_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 6 = true := by decide +kernel

theorem polyQuarticReal_68_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 7 = true := by decide +kernel

theorem polyQuarticReal_68 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 68 j = true := by
  fin_cases j
  · exact polyQuarticReal_68_0
  · exact polyQuarticReal_68_1
  · exact polyQuarticReal_68_2
  · exact polyQuarticReal_68_3
  · exact polyQuarticReal_68_4
  · exact polyQuarticReal_68_5
  · exact polyQuarticReal_68_6
  · exact polyQuarticReal_68_7

theorem polyQuarticReal_69_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 0 = true := by decide +kernel

theorem polyQuarticReal_69_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 1 = true := by decide +kernel

theorem polyQuarticReal_69_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 2 = true := by decide +kernel

theorem polyQuarticReal_69_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 3 = true := by decide +kernel

theorem polyQuarticReal_69_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 4 = true := by decide +kernel

theorem polyQuarticReal_69_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 5 = true := by decide +kernel

theorem polyQuarticReal_69_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 6 = true := by decide +kernel

theorem polyQuarticReal_69_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 7 = true := by decide +kernel

theorem polyQuarticReal_69 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 69 j = true := by
  fin_cases j
  · exact polyQuarticReal_69_0
  · exact polyQuarticReal_69_1
  · exact polyQuarticReal_69_2
  · exact polyQuarticReal_69_3
  · exact polyQuarticReal_69_4
  · exact polyQuarticReal_69_5
  · exact polyQuarticReal_69_6
  · exact polyQuarticReal_69_7

theorem polyQuarticReal_70_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 0 = true := by decide +kernel

theorem polyQuarticReal_70_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 1 = true := by decide +kernel

theorem polyQuarticReal_70_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 2 = true := by decide +kernel

theorem polyQuarticReal_70_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 3 = true := by decide +kernel

theorem polyQuarticReal_70_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 4 = true := by decide +kernel

theorem polyQuarticReal_70_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 5 = true := by decide +kernel

theorem polyQuarticReal_70_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 6 = true := by decide +kernel

theorem polyQuarticReal_70_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 7 = true := by decide +kernel

theorem polyQuarticReal_70 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 70 j = true := by
  fin_cases j
  · exact polyQuarticReal_70_0
  · exact polyQuarticReal_70_1
  · exact polyQuarticReal_70_2
  · exact polyQuarticReal_70_3
  · exact polyQuarticReal_70_4
  · exact polyQuarticReal_70_5
  · exact polyQuarticReal_70_6
  · exact polyQuarticReal_70_7

theorem polyQuarticReal_71_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 0 = true := by decide +kernel

theorem polyQuarticReal_71_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 1 = true := by decide +kernel

theorem polyQuarticReal_71_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 2 = true := by decide +kernel

theorem polyQuarticReal_71_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 3 = true := by decide +kernel

theorem polyQuarticReal_71_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 4 = true := by decide +kernel

theorem polyQuarticReal_71_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 5 = true := by decide +kernel

theorem polyQuarticReal_71_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 6 = true := by decide +kernel

theorem polyQuarticReal_71_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 7 = true := by decide +kernel

theorem polyQuarticReal_71 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 71 j = true := by
  fin_cases j
  · exact polyQuarticReal_71_0
  · exact polyQuarticReal_71_1
  · exact polyQuarticReal_71_2
  · exact polyQuarticReal_71_3
  · exact polyQuarticReal_71_4
  · exact polyQuarticReal_71_5
  · exact polyQuarticReal_71_6
  · exact polyQuarticReal_71_7

theorem polyQuarticReal_72_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 0 = true := by decide +kernel

theorem polyQuarticReal_72_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 1 = true := by decide +kernel

theorem polyQuarticReal_72_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 2 = true := by decide +kernel

theorem polyQuarticReal_72_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 3 = true := by decide +kernel

theorem polyQuarticReal_72_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 4 = true := by decide +kernel

theorem polyQuarticReal_72_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 5 = true := by decide +kernel

theorem polyQuarticReal_72_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 6 = true := by decide +kernel

theorem polyQuarticReal_72_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 7 = true := by decide +kernel

theorem polyQuarticReal_72 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 72 j = true := by
  fin_cases j
  · exact polyQuarticReal_72_0
  · exact polyQuarticReal_72_1
  · exact polyQuarticReal_72_2
  · exact polyQuarticReal_72_3
  · exact polyQuarticReal_72_4
  · exact polyQuarticReal_72_5
  · exact polyQuarticReal_72_6
  · exact polyQuarticReal_72_7

theorem polyQuarticReal_73_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 0 = true := by decide +kernel

theorem polyQuarticReal_73_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 1 = true := by decide +kernel

theorem polyQuarticReal_73_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 2 = true := by decide +kernel

theorem polyQuarticReal_73_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 3 = true := by decide +kernel

theorem polyQuarticReal_73_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 4 = true := by decide +kernel

theorem polyQuarticReal_73_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 5 = true := by decide +kernel

theorem polyQuarticReal_73_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 6 = true := by decide +kernel

theorem polyQuarticReal_73_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 7 = true := by decide +kernel

theorem polyQuarticReal_73 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 73 j = true := by
  fin_cases j
  · exact polyQuarticReal_73_0
  · exact polyQuarticReal_73_1
  · exact polyQuarticReal_73_2
  · exact polyQuarticReal_73_3
  · exact polyQuarticReal_73_4
  · exact polyQuarticReal_73_5
  · exact polyQuarticReal_73_6
  · exact polyQuarticReal_73_7

theorem polyQuarticReal_74_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 0 = true := by decide +kernel

theorem polyQuarticReal_74_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 1 = true := by decide +kernel

theorem polyQuarticReal_74_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 2 = true := by decide +kernel

theorem polyQuarticReal_74_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 3 = true := by decide +kernel

theorem polyQuarticReal_74_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 4 = true := by decide +kernel

theorem polyQuarticReal_74_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 5 = true := by decide +kernel

theorem polyQuarticReal_74_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 6 = true := by decide +kernel

theorem polyQuarticReal_74_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 7 = true := by decide +kernel

theorem polyQuarticReal_74 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 74 j = true := by
  fin_cases j
  · exact polyQuarticReal_74_0
  · exact polyQuarticReal_74_1
  · exact polyQuarticReal_74_2
  · exact polyQuarticReal_74_3
  · exact polyQuarticReal_74_4
  · exact polyQuarticReal_74_5
  · exact polyQuarticReal_74_6
  · exact polyQuarticReal_74_7

theorem polyQuarticReal_75_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 0 = true := by decide +kernel

theorem polyQuarticReal_75_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 1 = true := by decide +kernel

theorem polyQuarticReal_75_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 2 = true := by decide +kernel

theorem polyQuarticReal_75_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 3 = true := by decide +kernel

theorem polyQuarticReal_75_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 4 = true := by decide +kernel

theorem polyQuarticReal_75_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 5 = true := by decide +kernel

theorem polyQuarticReal_75_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 6 = true := by decide +kernel

theorem polyQuarticReal_75_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 7 = true := by decide +kernel

theorem polyQuarticReal_75 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 75 j = true := by
  fin_cases j
  · exact polyQuarticReal_75_0
  · exact polyQuarticReal_75_1
  · exact polyQuarticReal_75_2
  · exact polyQuarticReal_75_3
  · exact polyQuarticReal_75_4
  · exact polyQuarticReal_75_5
  · exact polyQuarticReal_75_6
  · exact polyQuarticReal_75_7

theorem polyQuarticReal_76_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 0 = true := by decide +kernel

theorem polyQuarticReal_76_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 1 = true := by decide +kernel

theorem polyQuarticReal_76_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 2 = true := by decide +kernel

theorem polyQuarticReal_76_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 3 = true := by decide +kernel

theorem polyQuarticReal_76_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 4 = true := by decide +kernel

theorem polyQuarticReal_76_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 5 = true := by decide +kernel

theorem polyQuarticReal_76_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 6 = true := by decide +kernel

theorem polyQuarticReal_76_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 7 = true := by decide +kernel

theorem polyQuarticReal_76 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 76 j = true := by
  fin_cases j
  · exact polyQuarticReal_76_0
  · exact polyQuarticReal_76_1
  · exact polyQuarticReal_76_2
  · exact polyQuarticReal_76_3
  · exact polyQuarticReal_76_4
  · exact polyQuarticReal_76_5
  · exact polyQuarticReal_76_6
  · exact polyQuarticReal_76_7

theorem polyQuarticReal_77_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 0 = true := by decide +kernel

theorem polyQuarticReal_77_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 1 = true := by decide +kernel

theorem polyQuarticReal_77_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 2 = true := by decide +kernel

theorem polyQuarticReal_77_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 3 = true := by decide +kernel

theorem polyQuarticReal_77_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 4 = true := by decide +kernel

theorem polyQuarticReal_77_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 5 = true := by decide +kernel

theorem polyQuarticReal_77_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 6 = true := by decide +kernel

theorem polyQuarticReal_77_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 7 = true := by decide +kernel

theorem polyQuarticReal_77 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 77 j = true := by
  fin_cases j
  · exact polyQuarticReal_77_0
  · exact polyQuarticReal_77_1
  · exact polyQuarticReal_77_2
  · exact polyQuarticReal_77_3
  · exact polyQuarticReal_77_4
  · exact polyQuarticReal_77_5
  · exact polyQuarticReal_77_6
  · exact polyQuarticReal_77_7

theorem polyQuarticReal_78_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 0 = true := by decide +kernel

theorem polyQuarticReal_78_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 1 = true := by decide +kernel

theorem polyQuarticReal_78_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 2 = true := by decide +kernel

theorem polyQuarticReal_78_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 3 = true := by decide +kernel

theorem polyQuarticReal_78_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 4 = true := by decide +kernel

theorem polyQuarticReal_78_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 5 = true := by decide +kernel

theorem polyQuarticReal_78_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 6 = true := by decide +kernel

theorem polyQuarticReal_78_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 7 = true := by decide +kernel

theorem polyQuarticReal_78 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 78 j = true := by
  fin_cases j
  · exact polyQuarticReal_78_0
  · exact polyQuarticReal_78_1
  · exact polyQuarticReal_78_2
  · exact polyQuarticReal_78_3
  · exact polyQuarticReal_78_4
  · exact polyQuarticReal_78_5
  · exact polyQuarticReal_78_6
  · exact polyQuarticReal_78_7

theorem polyQuarticReal_79_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 0 = true := by decide +kernel

theorem polyQuarticReal_79_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 1 = true := by decide +kernel

theorem polyQuarticReal_79_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 2 = true := by decide +kernel

theorem polyQuarticReal_79_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 3 = true := by decide +kernel

theorem polyQuarticReal_79_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 4 = true := by decide +kernel

theorem polyQuarticReal_79_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 5 = true := by decide +kernel

theorem polyQuarticReal_79_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 6 = true := by decide +kernel

theorem polyQuarticReal_79_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 7 = true := by decide +kernel

theorem polyQuarticReal_79 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 79 j = true := by
  fin_cases j
  · exact polyQuarticReal_79_0
  · exact polyQuarticReal_79_1
  · exact polyQuarticReal_79_2
  · exact polyQuarticReal_79_3
  · exact polyQuarticReal_79_4
  · exact polyQuarticReal_79_5
  · exact polyQuarticReal_79_6
  · exact polyQuarticReal_79_7

theorem polyQuarticReal_80_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 0 = true := by decide +kernel

theorem polyQuarticReal_80_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 1 = true := by decide +kernel

theorem polyQuarticReal_80_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 2 = true := by decide +kernel

theorem polyQuarticReal_80_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 3 = true := by decide +kernel

theorem polyQuarticReal_80_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 4 = true := by decide +kernel

theorem polyQuarticReal_80_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 5 = true := by decide +kernel

theorem polyQuarticReal_80_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 6 = true := by decide +kernel

theorem polyQuarticReal_80_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 7 = true := by decide +kernel

theorem polyQuarticReal_80 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 80 j = true := by
  fin_cases j
  · exact polyQuarticReal_80_0
  · exact polyQuarticReal_80_1
  · exact polyQuarticReal_80_2
  · exact polyQuarticReal_80_3
  · exact polyQuarticReal_80_4
  · exact polyQuarticReal_80_5
  · exact polyQuarticReal_80_6
  · exact polyQuarticReal_80_7

theorem polyQuarticReal_81_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 0 = true := by decide +kernel

theorem polyQuarticReal_81_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 1 = true := by decide +kernel

theorem polyQuarticReal_81_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 2 = true := by decide +kernel

theorem polyQuarticReal_81_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 3 = true := by decide +kernel

theorem polyQuarticReal_81_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 4 = true := by decide +kernel

theorem polyQuarticReal_81_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 5 = true := by decide +kernel

theorem polyQuarticReal_81_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 6 = true := by decide +kernel

theorem polyQuarticReal_81_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 7 = true := by decide +kernel

theorem polyQuarticReal_81 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 81 j = true := by
  fin_cases j
  · exact polyQuarticReal_81_0
  · exact polyQuarticReal_81_1
  · exact polyQuarticReal_81_2
  · exact polyQuarticReal_81_3
  · exact polyQuarticReal_81_4
  · exact polyQuarticReal_81_5
  · exact polyQuarticReal_81_6
  · exact polyQuarticReal_81_7

theorem polyQuarticReal_82_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 0 = true := by decide +kernel

theorem polyQuarticReal_82_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 1 = true := by decide +kernel

theorem polyQuarticReal_82_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 2 = true := by decide +kernel

theorem polyQuarticReal_82_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 3 = true := by decide +kernel

theorem polyQuarticReal_82_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 4 = true := by decide +kernel

theorem polyQuarticReal_82_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 5 = true := by decide +kernel

theorem polyQuarticReal_82_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 6 = true := by decide +kernel

theorem polyQuarticReal_82_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 7 = true := by decide +kernel

theorem polyQuarticReal_82 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 82 j = true := by
  fin_cases j
  · exact polyQuarticReal_82_0
  · exact polyQuarticReal_82_1
  · exact polyQuarticReal_82_2
  · exact polyQuarticReal_82_3
  · exact polyQuarticReal_82_4
  · exact polyQuarticReal_82_5
  · exact polyQuarticReal_82_6
  · exact polyQuarticReal_82_7

theorem polyQuarticReal_83_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 0 = true := by decide +kernel

theorem polyQuarticReal_83_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 1 = true := by decide +kernel

theorem polyQuarticReal_83_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 2 = true := by decide +kernel

theorem polyQuarticReal_83_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 3 = true := by decide +kernel

theorem polyQuarticReal_83_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 4 = true := by decide +kernel

theorem polyQuarticReal_83_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 5 = true := by decide +kernel

theorem polyQuarticReal_83_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 6 = true := by decide +kernel

theorem polyQuarticReal_83_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 7 = true := by decide +kernel

theorem polyQuarticReal_83 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 83 j = true := by
  fin_cases j
  · exact polyQuarticReal_83_0
  · exact polyQuarticReal_83_1
  · exact polyQuarticReal_83_2
  · exact polyQuarticReal_83_3
  · exact polyQuarticReal_83_4
  · exact polyQuarticReal_83_5
  · exact polyQuarticReal_83_6
  · exact polyQuarticReal_83_7

theorem polyQuarticReal_84_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 0 = true := by decide +kernel

theorem polyQuarticReal_84_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 1 = true := by decide +kernel

theorem polyQuarticReal_84_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 2 = true := by decide +kernel

theorem polyQuarticReal_84_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 3 = true := by decide +kernel

theorem polyQuarticReal_84_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 4 = true := by decide +kernel

theorem polyQuarticReal_84_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 5 = true := by decide +kernel

theorem polyQuarticReal_84_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 6 = true := by decide +kernel

theorem polyQuarticReal_84_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 7 = true := by decide +kernel

theorem polyQuarticReal_84 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 84 j = true := by
  fin_cases j
  · exact polyQuarticReal_84_0
  · exact polyQuarticReal_84_1
  · exact polyQuarticReal_84_2
  · exact polyQuarticReal_84_3
  · exact polyQuarticReal_84_4
  · exact polyQuarticReal_84_5
  · exact polyQuarticReal_84_6
  · exact polyQuarticReal_84_7

theorem polyQuarticReal_85_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 0 = true := by decide +kernel

theorem polyQuarticReal_85_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 1 = true := by decide +kernel

theorem polyQuarticReal_85_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 2 = true := by decide +kernel

theorem polyQuarticReal_85_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 3 = true := by decide +kernel

theorem polyQuarticReal_85_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 4 = true := by decide +kernel

theorem polyQuarticReal_85_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 5 = true := by decide +kernel

theorem polyQuarticReal_85_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 6 = true := by decide +kernel

theorem polyQuarticReal_85_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 7 = true := by decide +kernel

theorem polyQuarticReal_85 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 85 j = true := by
  fin_cases j
  · exact polyQuarticReal_85_0
  · exact polyQuarticReal_85_1
  · exact polyQuarticReal_85_2
  · exact polyQuarticReal_85_3
  · exact polyQuarticReal_85_4
  · exact polyQuarticReal_85_5
  · exact polyQuarticReal_85_6
  · exact polyQuarticReal_85_7

theorem polyQuarticReal_86_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 0 = true := by decide +kernel

theorem polyQuarticReal_86_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 1 = true := by decide +kernel

theorem polyQuarticReal_86_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 2 = true := by decide +kernel

theorem polyQuarticReal_86_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 3 = true := by decide +kernel

theorem polyQuarticReal_86_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 4 = true := by decide +kernel

theorem polyQuarticReal_86_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 5 = true := by decide +kernel

theorem polyQuarticReal_86_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 6 = true := by decide +kernel

theorem polyQuarticReal_86_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 7 = true := by decide +kernel

theorem polyQuarticReal_86 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 86 j = true := by
  fin_cases j
  · exact polyQuarticReal_86_0
  · exact polyQuarticReal_86_1
  · exact polyQuarticReal_86_2
  · exact polyQuarticReal_86_3
  · exact polyQuarticReal_86_4
  · exact polyQuarticReal_86_5
  · exact polyQuarticReal_86_6
  · exact polyQuarticReal_86_7

theorem polyQuarticReal_87_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 0 = true := by decide +kernel

theorem polyQuarticReal_87_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 1 = true := by decide +kernel

theorem polyQuarticReal_87_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 2 = true := by decide +kernel

theorem polyQuarticReal_87_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 3 = true := by decide +kernel

theorem polyQuarticReal_87_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 4 = true := by decide +kernel

theorem polyQuarticReal_87_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 5 = true := by decide +kernel

theorem polyQuarticReal_87_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 6 = true := by decide +kernel

theorem polyQuarticReal_87_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 7 = true := by decide +kernel

theorem polyQuarticReal_87 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 87 j = true := by
  fin_cases j
  · exact polyQuarticReal_87_0
  · exact polyQuarticReal_87_1
  · exact polyQuarticReal_87_2
  · exact polyQuarticReal_87_3
  · exact polyQuarticReal_87_4
  · exact polyQuarticReal_87_5
  · exact polyQuarticReal_87_6
  · exact polyQuarticReal_87_7

theorem polyQuarticReal_88_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 0 = true := by decide +kernel

theorem polyQuarticReal_88_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 1 = true := by decide +kernel

theorem polyQuarticReal_88_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 2 = true := by decide +kernel

theorem polyQuarticReal_88_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 3 = true := by decide +kernel

theorem polyQuarticReal_88_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 4 = true := by decide +kernel

theorem polyQuarticReal_88_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 5 = true := by decide +kernel

theorem polyQuarticReal_88_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 6 = true := by decide +kernel

theorem polyQuarticReal_88_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 7 = true := by decide +kernel

theorem polyQuarticReal_88 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 88 j = true := by
  fin_cases j
  · exact polyQuarticReal_88_0
  · exact polyQuarticReal_88_1
  · exact polyQuarticReal_88_2
  · exact polyQuarticReal_88_3
  · exact polyQuarticReal_88_4
  · exact polyQuarticReal_88_5
  · exact polyQuarticReal_88_6
  · exact polyQuarticReal_88_7

theorem polyQuarticReal_89_0 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 0 = true := by decide +kernel

theorem polyQuarticReal_89_1 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 1 = true := by decide +kernel

theorem polyQuarticReal_89_2 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 2 = true := by decide +kernel

theorem polyQuarticReal_89_3 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 3 = true := by decide +kernel

theorem polyQuarticReal_89_4 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 4 = true := by decide +kernel

theorem polyQuarticReal_89_5 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 5 = true := by decide +kernel

theorem polyQuarticReal_89_6 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 6 = true := by decide +kernel

theorem polyQuarticReal_89_7 : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 7 = true := by decide +kernel

theorem polyQuarticReal_89 (j : Fin 8) : MatrixBox.exactBlockCheck (k := 8) (b := 32) (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) polyQuarticReal 89 j = true := by
  fin_cases j
  · exact polyQuarticReal_89_0
  · exact polyQuarticReal_89_1
  · exact polyQuarticReal_89_2
  · exact polyQuarticReal_89_3
  · exact polyQuarticReal_89_4
  · exact polyQuarticReal_89_5
  · exact polyQuarticReal_89_6
  · exact polyQuarticReal_89_7

theorem polyQuarticReal_eq : (intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j) = polyQuarticReal := by
  apply MatrixBox.eq_of_exact_blocks (k := 8) (b := 32)
  intro i j
  fin_cases i
  · exact polyQuarticReal_0 j
  · exact polyQuarticReal_1 j
  · exact polyQuarticReal_2 j
  · exact polyQuarticReal_3 j
  · exact polyQuarticReal_4 j
  · exact polyQuarticReal_5 j
  · exact polyQuarticReal_6 j
  · exact polyQuarticReal_7 j
  · exact polyQuarticReal_8 j
  · exact polyQuarticReal_9 j
  · exact polyQuarticReal_10 j
  · exact polyQuarticReal_11 j
  · exact polyQuarticReal_12 j
  · exact polyQuarticReal_13 j
  · exact polyQuarticReal_14 j
  · exact polyQuarticReal_15 j
  · exact polyQuarticReal_16 j
  · exact polyQuarticReal_17 j
  · exact polyQuarticReal_18 j
  · exact polyQuarticReal_19 j
  · exact polyQuarticReal_20 j
  · exact polyQuarticReal_21 j
  · exact polyQuarticReal_22 j
  · exact polyQuarticReal_23 j
  · exact polyQuarticReal_24 j
  · exact polyQuarticReal_25 j
  · exact polyQuarticReal_26 j
  · exact polyQuarticReal_27 j
  · exact polyQuarticReal_28 j
  · exact polyQuarticReal_29 j
  · exact polyQuarticReal_30 j
  · exact polyQuarticReal_31 j
  · exact polyQuarticReal_32 j
  · exact polyQuarticReal_33 j
  · exact polyQuarticReal_34 j
  · exact polyQuarticReal_35 j
  · exact polyQuarticReal_36 j
  · exact polyQuarticReal_37 j
  · exact polyQuarticReal_38 j
  · exact polyQuarticReal_39 j
  · exact polyQuarticReal_40 j
  · exact polyQuarticReal_41 j
  · exact polyQuarticReal_42 j
  · exact polyQuarticReal_43 j
  · exact polyQuarticReal_44 j
  · exact polyQuarticReal_45 j
  · exact polyQuarticReal_46 j
  · exact polyQuarticReal_47 j
  · exact polyQuarticReal_48 j
  · exact polyQuarticReal_49 j
  · exact polyQuarticReal_50 j
  · exact polyQuarticReal_51 j
  · exact polyQuarticReal_52 j
  · exact polyQuarticReal_53 j
  · exact polyQuarticReal_54 j
  · exact polyQuarticReal_55 j
  · exact polyQuarticReal_56 j
  · exact polyQuarticReal_57 j
  · exact polyQuarticReal_58 j
  · exact polyQuarticReal_59 j
  · exact polyQuarticReal_60 j
  · exact polyQuarticReal_61 j
  · exact polyQuarticReal_62 j
  · exact polyQuarticReal_63 j
  · exact polyQuarticReal_64 j
  · exact polyQuarticReal_65 j
  · exact polyQuarticReal_66 j
  · exact polyQuarticReal_67 j
  · exact polyQuarticReal_68 j
  · exact polyQuarticReal_69 j
  · exact polyQuarticReal_70 j
  · exact polyQuarticReal_71 j
  · exact polyQuarticReal_72 j
  · exact polyQuarticReal_73 j
  · exact polyQuarticReal_74 j
  · exact polyQuarticReal_75 j
  · exact polyQuarticReal_76 j
  · exact polyQuarticReal_77 j
  · exact polyQuarticReal_78 j
  · exact polyQuarticReal_79 j
  · exact polyQuarticReal_80 j
  · exact polyQuarticReal_81 j
  · exact polyQuarticReal_82 j
  · exact polyQuarticReal_83 j
  · exact polyQuarticReal_84 j
  · exact polyQuarticReal_85 j
  · exact polyQuarticReal_86 j
  · exact polyQuarticReal_87 j
  · exact polyQuarticReal_88 j
  · exact polyQuarticReal_89 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
