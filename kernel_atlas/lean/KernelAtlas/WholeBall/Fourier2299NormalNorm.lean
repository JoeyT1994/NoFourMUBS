import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def normalSquares : Fin 21 → ℚ := ![(549588995646723761242640941133817827 / 664613997892457936451903530140172288 : ℚ), (1862975540473315175983979841741923599 / 1329227995784915872903807060280344576 : ℚ), (778577640510041309589173413340413173 / 664613997892457936451903530140172288 : ℚ), (383674831413421374424253844089058193 / 332306998946228968225951765070086144 : ℚ), (1350316853417588580254351647534714013 / 1329227995784915872903807060280344576 : ℚ), (227959699145888595847068006715829039 / 166153499473114484112975882535043072 : ℚ), (3038805925097967338203123349508574353 / 1329227995784915872903807060280344576 : ℚ), (262911317488420091479589020821113337 / 166153499473114484112975882535043072 : ℚ), (1730216428879797704481451673322165033 / 1329227995784915872903807060280344576 : ℚ), (943683240669813070615952205432488307 / 664613997892457936451903530140172288 : ℚ), (1612225566029675573759887994385253801 / 664613997892457936451903530140172288 : ℚ), (2598611441187992948775911960801393637 / 1329227995784915872903807060280344576 : ℚ), (1129869219141458816717581547034189265 / 1329227995784915872903807060280344576 : ℚ), (2760785843552642768733132023941623181 / 1329227995784915872903807060280344576 : ℚ), (1896635153471071071635026890258701247 / 1329227995784915872903807060280344576 : ℚ), (51071877422939914208118377684663599 / 41538374868278621028243970633760768 : ℚ), (1312174550614139814428804233314169009 / 664613997892457936451903530140172288 : ℚ), (1944275793756504897375219359560564059 / 1329227995784915872903807060280344576 : ℚ), (425107354306355409973008139863166137 / 332306998946228968225951765070086144 : ℚ), (552637814782194735130138428320811207 / 332306998946228968225951765070086144 : ℚ), (400238852726275157432751774367053539 / 332306998946228968225951765070086144 : ℚ)]

theorem normal_square_0 : data.normalTensor.squareRowCheck normalSquares 0 = true := by decide +kernel

theorem normal_square_1 : data.normalTensor.squareRowCheck normalSquares 1 = true := by decide +kernel

theorem normal_square_2 : data.normalTensor.squareRowCheck normalSquares 2 = true := by decide +kernel

theorem normal_square_3 : data.normalTensor.squareRowCheck normalSquares 3 = true := by decide +kernel

theorem normal_square_4 : data.normalTensor.squareRowCheck normalSquares 4 = true := by decide +kernel

theorem normal_square_5 : data.normalTensor.squareRowCheck normalSquares 5 = true := by decide +kernel

theorem normal_square_6 : data.normalTensor.squareRowCheck normalSquares 6 = true := by decide +kernel

theorem normal_square_7 : data.normalTensor.squareRowCheck normalSquares 7 = true := by decide +kernel

theorem normal_square_8 : data.normalTensor.squareRowCheck normalSquares 8 = true := by decide +kernel

theorem normal_square_9 : data.normalTensor.squareRowCheck normalSquares 9 = true := by decide +kernel

theorem normal_square_10 : data.normalTensor.squareRowCheck normalSquares 10 = true := by decide +kernel

theorem normal_square_11 : data.normalTensor.squareRowCheck normalSquares 11 = true := by decide +kernel

theorem normal_square_12 : data.normalTensor.squareRowCheck normalSquares 12 = true := by decide +kernel

theorem normal_square_13 : data.normalTensor.squareRowCheck normalSquares 13 = true := by decide +kernel

theorem normal_square_14 : data.normalTensor.squareRowCheck normalSquares 14 = true := by decide +kernel

theorem normal_square_15 : data.normalTensor.squareRowCheck normalSquares 15 = true := by decide +kernel

theorem normal_square_16 : data.normalTensor.squareRowCheck normalSquares 16 = true := by decide +kernel

theorem normal_square_17 : data.normalTensor.squareRowCheck normalSquares 17 = true := by decide +kernel

theorem normal_square_18 : data.normalTensor.squareRowCheck normalSquares 18 = true := by decide +kernel

theorem normal_square_19 : data.normalTensor.squareRowCheck normalSquares 19 = true := by decide +kernel

theorem normal_square_20 : data.normalTensor.squareRowCheck normalSquares 20 = true := by decide +kernel

theorem normal_norm_checked : data.normalTensor.normCheck bounds.d = true := by
  apply MatrixBox.normCheck_of_square_rows _ _ normalSquares
  · intro i
    fin_cases i
    · exact normal_square_0
    · exact normal_square_1
    · exact normal_square_2
    · exact normal_square_3
    · exact normal_square_4
    · exact normal_square_5
    · exact normal_square_6
    · exact normal_square_7
    · exact normal_square_8
    · exact normal_square_9
    · exact normal_square_10
    · exact normal_square_11
    · exact normal_square_12
    · exact normal_square_13
    · exact normal_square_14
    · exact normal_square_15
    · exact normal_square_16
    · exact normal_square_17
    · exact normal_square_18
    · exact normal_square_19
    · exact normal_square_20
  · decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
