import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def mixedSquares : Fin 21 → ℚ := ![(108268486307625557344187720770978787 / 664613997892457936451903530140172288 : ℚ), (396351487114657795847765459722446057 / 1329227995784915872903807060280344576 : ℚ), (113050362649598374978090081527136749 / 664613997892457936451903530140172288 : ℚ), (1904898965322434620199026803301331 / 10384593717069655257060992658440192 : ℚ), (223796506873316888986298098427782321 / 1329227995784915872903807060280344576 : ℚ), (261750003340953371367945509270070015 / 1329227995784915872903807060280344576 : ℚ), (210762517711021037125095742899085473 / 664613997892457936451903530140172288 : ℚ), (5265957994828054055794302340891983 / 20769187434139310514121985316880384 : ℚ), (320522085004051740623274490248969031 / 1329227995784915872903807060280344576 : ℚ), (10176767576532351863644079770861021 / 41538374868278621028243970633760768 : ℚ), (439000546372012369141554118376224917 / 1329227995784915872903807060280344576 : ℚ), (178735886877637253115007005758931637 / 664613997892457936451903530140172288 : ℚ), (39512185188202478243277085489188829 / 332306998946228968225951765070086144 : ℚ), (114628304707434280037144280840899753 / 332306998946228968225951765070086144 : ℚ), (68463597219138851922141430340807463 / 332306998946228968225951765070086144 : ℚ), (132711643589831667629014294796477323 / 664613997892457936451903530140172288 : ℚ), (419463203958537967960660058883617525 / 1329227995784915872903807060280344576 : ℚ), (242845758725687152100595482965744365 / 1329227995784915872903807060280344576 : ℚ), (156063531995687612806204508521667345 / 664613997892457936451903530140172288 : ℚ), (162821219255272177361349359895311207 / 664613997892457936451903530140172288 : ℚ), (230518276147617643360605509397879479 / 1329227995784915872903807060280344576 : ℚ)]

theorem mixed_square_0 : data.mixed.squareRowCheck mixedSquares 0 = true := by decide +kernel

theorem mixed_square_1 : data.mixed.squareRowCheck mixedSquares 1 = true := by decide +kernel

theorem mixed_square_2 : data.mixed.squareRowCheck mixedSquares 2 = true := by decide +kernel

theorem mixed_square_3 : data.mixed.squareRowCheck mixedSquares 3 = true := by decide +kernel

theorem mixed_square_4 : data.mixed.squareRowCheck mixedSquares 4 = true := by decide +kernel

theorem mixed_square_5 : data.mixed.squareRowCheck mixedSquares 5 = true := by decide +kernel

theorem mixed_square_6 : data.mixed.squareRowCheck mixedSquares 6 = true := by decide +kernel

theorem mixed_square_7 : data.mixed.squareRowCheck mixedSquares 7 = true := by decide +kernel

theorem mixed_square_8 : data.mixed.squareRowCheck mixedSquares 8 = true := by decide +kernel

theorem mixed_square_9 : data.mixed.squareRowCheck mixedSquares 9 = true := by decide +kernel

theorem mixed_square_10 : data.mixed.squareRowCheck mixedSquares 10 = true := by decide +kernel

theorem mixed_square_11 : data.mixed.squareRowCheck mixedSquares 11 = true := by decide +kernel

theorem mixed_square_12 : data.mixed.squareRowCheck mixedSquares 12 = true := by decide +kernel

theorem mixed_square_13 : data.mixed.squareRowCheck mixedSquares 13 = true := by decide +kernel

theorem mixed_square_14 : data.mixed.squareRowCheck mixedSquares 14 = true := by decide +kernel

theorem mixed_square_15 : data.mixed.squareRowCheck mixedSquares 15 = true := by decide +kernel

theorem mixed_square_16 : data.mixed.squareRowCheck mixedSquares 16 = true := by decide +kernel

theorem mixed_square_17 : data.mixed.squareRowCheck mixedSquares 17 = true := by decide +kernel

theorem mixed_square_18 : data.mixed.squareRowCheck mixedSquares 18 = true := by decide +kernel

theorem mixed_square_19 : data.mixed.squareRowCheck mixedSquares 19 = true := by decide +kernel

theorem mixed_square_20 : data.mixed.squareRowCheck mixedSquares 20 = true := by decide +kernel

theorem mixed_norm_checked : data.mixed.normCheck bounds.c = true := by
  apply MatrixBox.normCheck_of_square_rows _ _ mixedSquares
  · intro i
    fin_cases i
    · exact mixed_square_0
    · exact mixed_square_1
    · exact mixed_square_2
    · exact mixed_square_3
    · exact mixed_square_4
    · exact mixed_square_5
    · exact mixed_square_6
    · exact mixed_square_7
    · exact mixed_square_8
    · exact mixed_square_9
    · exact mixed_square_10
    · exact mixed_square_11
    · exact mixed_square_12
    · exact mixed_square_13
    · exact mixed_square_14
    · exact mixed_square_15
    · exact mixed_square_16
    · exact mixed_square_17
    · exact mixed_square_18
    · exact mixed_square_19
    · exact mixed_square_20
  · decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
