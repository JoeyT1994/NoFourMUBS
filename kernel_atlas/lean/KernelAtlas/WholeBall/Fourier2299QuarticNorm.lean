import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def quarticSquares : Fin 21 → ℚ := ![(84628247141151569296784116603484735 / 664613997892457936451903530140172288 : ℚ), (72224471118669144569984657327703851 / 332306998946228968225951765070086144 : ℚ), (540601182227701448667327268459943591 / 1329227995784915872903807060280344576 : ℚ), (234729006962029580351264931404906185 / 1329227995784915872903807060280344576 : ℚ), (496607456172518333197391991086430505 / 1329227995784915872903807060280344576 : ℚ), (501405218150479182811249718379296885 / 1329227995784915872903807060280344576 : ℚ), (48835472142661716079290948646829287 / 83076749736557242056487941267521536 : ℚ), (561234656796445735964710824942719433 / 1329227995784915872903807060280344576 : ℚ), (112539106345529073515938040750088685 / 1329227995784915872903807060280344576 : ℚ), (558068631508901619527969823380345059 / 1329227995784915872903807060280344576 : ℚ), (529518637400901156708532840815788605 / 664613997892457936451903530140172288 : ℚ), (435840478602083409182240225481525947 / 664613997892457936451903530140172288 : ℚ), (403512058752276393117097846697941271 / 1329227995784915872903807060280344576 : ℚ), (418609939519697386753624806847302963 / 664613997892457936451903530140172288 : ℚ), (555821985626207153454252393444218693 / 1329227995784915872903807060280344576 : ℚ), (308027285783533075253504039559485721 / 664613997892457936451903530140172288 : ℚ), (112529087494802940997299816487474427 / 166153499473114484112975882535043072 : ℚ), (205472703975462357668499455564049887 / 332306998946228968225951765070086144 : ℚ), (410468976199236347388767410350482457 / 1329227995784915872903807060280344576 : ℚ), (571208702340599569281776688592155791 / 1329227995784915872903807060280344576 : ℚ), (229849840689147843662815782005275073 / 664613997892457936451903530140172288 : ℚ)]

theorem quartic_square_0 : data.quartic.squareRowCheck quarticSquares 0 = true := by decide +kernel

theorem quartic_square_1 : data.quartic.squareRowCheck quarticSquares 1 = true := by decide +kernel

theorem quartic_square_2 : data.quartic.squareRowCheck quarticSquares 2 = true := by decide +kernel

theorem quartic_square_3 : data.quartic.squareRowCheck quarticSquares 3 = true := by decide +kernel

theorem quartic_square_4 : data.quartic.squareRowCheck quarticSquares 4 = true := by decide +kernel

theorem quartic_square_5 : data.quartic.squareRowCheck quarticSquares 5 = true := by decide +kernel

theorem quartic_square_6 : data.quartic.squareRowCheck quarticSquares 6 = true := by decide +kernel

theorem quartic_square_7 : data.quartic.squareRowCheck quarticSquares 7 = true := by decide +kernel

theorem quartic_square_8 : data.quartic.squareRowCheck quarticSquares 8 = true := by decide +kernel

theorem quartic_square_9 : data.quartic.squareRowCheck quarticSquares 9 = true := by decide +kernel

theorem quartic_square_10 : data.quartic.squareRowCheck quarticSquares 10 = true := by decide +kernel

theorem quartic_square_11 : data.quartic.squareRowCheck quarticSquares 11 = true := by decide +kernel

theorem quartic_square_12 : data.quartic.squareRowCheck quarticSquares 12 = true := by decide +kernel

theorem quartic_square_13 : data.quartic.squareRowCheck quarticSquares 13 = true := by decide +kernel

theorem quartic_square_14 : data.quartic.squareRowCheck quarticSquares 14 = true := by decide +kernel

theorem quartic_square_15 : data.quartic.squareRowCheck quarticSquares 15 = true := by decide +kernel

theorem quartic_square_16 : data.quartic.squareRowCheck quarticSquares 16 = true := by decide +kernel

theorem quartic_square_17 : data.quartic.squareRowCheck quarticSquares 17 = true := by decide +kernel

theorem quartic_square_18 : data.quartic.squareRowCheck quarticSquares 18 = true := by decide +kernel

theorem quartic_square_19 : data.quartic.squareRowCheck quarticSquares 19 = true := by decide +kernel

theorem quartic_square_20 : data.quartic.squareRowCheck quarticSquares 20 = true := by decide +kernel

theorem quartic_norm_checked : data.quartic.normCheck bounds.t4 = true := by
  apply MatrixBox.normCheck_of_square_rows _ _ quarticSquares
  · intro i
    fin_cases i
    · exact quartic_square_0
    · exact quartic_square_1
    · exact quartic_square_2
    · exact quartic_square_3
    · exact quartic_square_4
    · exact quartic_square_5
    · exact quartic_square_6
    · exact quartic_square_7
    · exact quartic_square_8
    · exact quartic_square_9
    · exact quartic_square_10
    · exact quartic_square_11
    · exact quartic_square_12
    · exact quartic_square_13
    · exact quartic_square_14
    · exact quartic_square_15
    · exact quartic_square_16
    · exact quartic_square_17
    · exact quartic_square_18
    · exact quartic_square_19
    · exact quartic_square_20
  · decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
