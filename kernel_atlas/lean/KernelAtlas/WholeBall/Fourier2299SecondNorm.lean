import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def secondSquares : Fin 21 → ℚ := ![(244539512966943589645677043975852009 / 1329227995784915872903807060280344576 : ℚ), (151350777072712704412990353209362355 / 664613997892457936451903530140172288 : ℚ), (117024479735886177200323342160631827 / 332306998946228968225951765070086144 : ℚ), (397531993085187547233793239535442353 / 1329227995784915872903807060280344576 : ℚ), (356307317435595120539946064107223029 / 1329227995784915872903807060280344576 : ℚ), (509579161686383183933277582134480039 / 1329227995784915872903807060280344576 : ℚ), (820358495524795908695986444712942823 / 1329227995784915872903807060280344576 : ℚ), (550226885078388620580485792073202229 / 1329227995784915872903807060280344576 : ℚ), (170209428696554840075200332552639191 / 664613997892457936451903530140172288 : ℚ), (408490916391809023167283929340784301 / 1329227995784915872903807060280344576 : ℚ), (464644587930390335665286548018665201 / 664613997892457936451903530140172288 : ℚ), (731508975580778084285429729861958569 / 1329227995784915872903807060280344576 : ℚ), (85092174790568223632522777350474575 / 332306998946228968225951765070086144 : ℚ), (686516180630235585441877359239971803 / 1329227995784915872903807060280344576 : ℚ), (266503209181679538214988345053661761 / 664613997892457936451903530140172288 : ℚ), (204604290696806905159100689369446773 / 664613997892457936451903530140172288 : ℚ), (158670523116324833881515077233220179 / 332306998946228968225951765070086144 : ℚ), (74346711584522635533967213871849701 / 166153499473114484112975882535043072 : ℚ), (329691421019519460606564191069164823 / 1329227995784915872903807060280344576 : ℚ), (149028220332585438838623287662673367 / 332306998946228968225951765070086144 : ℚ), (471951341045598094989122376249189751 / 1329227995784915872903807060280344576 : ℚ)]

theorem second_square_0 : data.normalSecond.squareRowCheck secondSquares 0 = true := by decide +kernel

theorem second_square_1 : data.normalSecond.squareRowCheck secondSquares 1 = true := by decide +kernel

theorem second_square_2 : data.normalSecond.squareRowCheck secondSquares 2 = true := by decide +kernel

theorem second_square_3 : data.normalSecond.squareRowCheck secondSquares 3 = true := by decide +kernel

theorem second_square_4 : data.normalSecond.squareRowCheck secondSquares 4 = true := by decide +kernel

theorem second_square_5 : data.normalSecond.squareRowCheck secondSquares 5 = true := by decide +kernel

theorem second_square_6 : data.normalSecond.squareRowCheck secondSquares 6 = true := by decide +kernel

theorem second_square_7 : data.normalSecond.squareRowCheck secondSquares 7 = true := by decide +kernel

theorem second_square_8 : data.normalSecond.squareRowCheck secondSquares 8 = true := by decide +kernel

theorem second_square_9 : data.normalSecond.squareRowCheck secondSquares 9 = true := by decide +kernel

theorem second_square_10 : data.normalSecond.squareRowCheck secondSquares 10 = true := by decide +kernel

theorem second_square_11 : data.normalSecond.squareRowCheck secondSquares 11 = true := by decide +kernel

theorem second_square_12 : data.normalSecond.squareRowCheck secondSquares 12 = true := by decide +kernel

theorem second_square_13 : data.normalSecond.squareRowCheck secondSquares 13 = true := by decide +kernel

theorem second_square_14 : data.normalSecond.squareRowCheck secondSquares 14 = true := by decide +kernel

theorem second_square_15 : data.normalSecond.squareRowCheck secondSquares 15 = true := by decide +kernel

theorem second_square_16 : data.normalSecond.squareRowCheck secondSquares 16 = true := by decide +kernel

theorem second_square_17 : data.normalSecond.squareRowCheck secondSquares 17 = true := by decide +kernel

theorem second_square_18 : data.normalSecond.squareRowCheck secondSquares 18 = true := by decide +kernel

theorem second_square_19 : data.normalSecond.squareRowCheck secondSquares 19 = true := by decide +kernel

theorem second_square_20 : data.normalSecond.squareRowCheck secondSquares 20 = true := by decide +kernel

theorem second_norm_checked : data.normalSecond.normCheck bounds.a2 = true := by
  apply MatrixBox.normCheck_of_square_rows _ _ secondSquares
  · intro i
    fin_cases i
    · exact second_square_0
    · exact second_square_1
    · exact second_square_2
    · exact second_square_3
    · exact second_square_4
    · exact second_square_5
    · exact second_square_6
    · exact second_square_7
    · exact second_square_8
    · exact second_square_9
    · exact second_square_10
    · exact second_square_11
    · exact second_square_12
    · exact second_square_13
    · exact second_square_14
    · exact second_square_15
    · exact second_square_16
    · exact second_square_17
    · exact second_square_18
    · exact second_square_19
    · exact second_square_20
  · decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
