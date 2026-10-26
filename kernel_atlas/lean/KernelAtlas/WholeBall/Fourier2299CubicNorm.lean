import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixRowNorms

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

set_option Elab.async false

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

def cubicSquares : Fin 21 → ℚ := ![(155230781373745532804937300151300929 / 1329227995784915872903807060280344576 : ℚ), (129494224187429603230895535199664665 / 1329227995784915872903807060280344576 : ℚ), (123512337170746953379497751862457553 / 1329227995784915872903807060280344576 : ℚ), (137754177883792306431291285905662033 / 664613997892457936451903530140172288 : ℚ), (12842018701870476268280693943466253 / 332306998946228968225951765070086144 : ℚ), (268119239984689833385769054896872297 / 1329227995784915872903807060280344576 : ℚ), (187119465259009568962081041097796737 / 664613997892457936451903530140172288 : ℚ), (256241592169180279613589242324450135 / 1329227995784915872903807060280344576 : ℚ), (284381116713653594754887104598982293 / 1329227995784915872903807060280344576 : ℚ), (55704200194920202764520498465880305 / 1329227995784915872903807060280344576 : ℚ), (285552975797410904551598245034386255 / 1329227995784915872903807060280344576 : ℚ), (262154538033284736900835909887090741 / 1329227995784915872903807060280344576 : ℚ), (6066727275760589430521105159084491 / 166153499473114484112975882535043072 : ℚ), (249987646718430538316747689537586643 / 1329227995784915872903807060280344576 : ℚ), (221797399502094638345225532243381971 / 1329227995784915872903807060280344576 : ℚ), (18753854447693725969857402353875623 / 664613997892457936451903530140172288 : ℚ), (149569710085706260723199265909882167 / 1329227995784915872903807060280344576 : ℚ), (22743762971046618798499671279177131 / 664613997892457936451903530140172288 : ℚ), (106768207192347936942633690813352671 / 1329227995784915872903807060280344576 : ℚ), (82095823394280728654436564133806743 / 332306998946228968225951765070086144 : ℚ), (101616725979763017737016412249901359 / 664613997892457936451903530140172288 : ℚ)]

theorem cubic_square_0 : data.cubic.squareRowCheck cubicSquares 0 = true := by decide +kernel

theorem cubic_square_1 : data.cubic.squareRowCheck cubicSquares 1 = true := by decide +kernel

theorem cubic_square_2 : data.cubic.squareRowCheck cubicSquares 2 = true := by decide +kernel

theorem cubic_square_3 : data.cubic.squareRowCheck cubicSquares 3 = true := by decide +kernel

theorem cubic_square_4 : data.cubic.squareRowCheck cubicSquares 4 = true := by decide +kernel

theorem cubic_square_5 : data.cubic.squareRowCheck cubicSquares 5 = true := by decide +kernel

theorem cubic_square_6 : data.cubic.squareRowCheck cubicSquares 6 = true := by decide +kernel

theorem cubic_square_7 : data.cubic.squareRowCheck cubicSquares 7 = true := by decide +kernel

theorem cubic_square_8 : data.cubic.squareRowCheck cubicSquares 8 = true := by decide +kernel

theorem cubic_square_9 : data.cubic.squareRowCheck cubicSquares 9 = true := by decide +kernel

theorem cubic_square_10 : data.cubic.squareRowCheck cubicSquares 10 = true := by decide +kernel

theorem cubic_square_11 : data.cubic.squareRowCheck cubicSquares 11 = true := by decide +kernel

theorem cubic_square_12 : data.cubic.squareRowCheck cubicSquares 12 = true := by decide +kernel

theorem cubic_square_13 : data.cubic.squareRowCheck cubicSquares 13 = true := by decide +kernel

theorem cubic_square_14 : data.cubic.squareRowCheck cubicSquares 14 = true := by decide +kernel

theorem cubic_square_15 : data.cubic.squareRowCheck cubicSquares 15 = true := by decide +kernel

theorem cubic_square_16 : data.cubic.squareRowCheck cubicSquares 16 = true := by decide +kernel

theorem cubic_square_17 : data.cubic.squareRowCheck cubicSquares 17 = true := by decide +kernel

theorem cubic_square_18 : data.cubic.squareRowCheck cubicSquares 18 = true := by decide +kernel

theorem cubic_square_19 : data.cubic.squareRowCheck cubicSquares 19 = true := by decide +kernel

theorem cubic_square_20 : data.cubic.squareRowCheck cubicSquares 20 = true := by decide +kernel

theorem cubic_norm_checked : data.cubic.normCheck bounds.t3 = true := by
  apply MatrixBox.normCheck_of_square_rows _ _ cubicSquares
  · intro i
    fin_cases i
    · exact cubic_square_0
    · exact cubic_square_1
    · exact cubic_square_2
    · exact cubic_square_3
    · exact cubic_square_4
    · exact cubic_square_5
    · exact cubic_square_6
    · exact cubic_square_7
    · exact cubic_square_8
    · exact cubic_square_9
    · exact cubic_square_10
    · exact cubic_square_11
    · exact cubic_square_12
    · exact cubic_square_13
    · exact cubic_square_14
    · exact cubic_square_15
    · exact cubic_square_16
    · exact cubic_square_17
    · exact cubic_square_18
    · exact cubic_square_19
    · exact cubic_square_20
  · decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
