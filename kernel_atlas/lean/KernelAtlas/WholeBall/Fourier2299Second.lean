import KernelAtlas.WholeBall.Fourier2299SecondRow0
import KernelAtlas.WholeBall.Fourier2299SecondRow1
import KernelAtlas.WholeBall.Fourier2299SecondRow2
import KernelAtlas.WholeBall.Fourier2299SecondRow3
import KernelAtlas.WholeBall.Fourier2299SecondRow4
import KernelAtlas.WholeBall.Fourier2299SecondRow5
import KernelAtlas.WholeBall.Fourier2299SecondRow6
import KernelAtlas.WholeBall.Fourier2299SecondRow7
import KernelAtlas.WholeBall.Fourier2299SecondRow8
import KernelAtlas.WholeBall.Fourier2299SecondRow9
import KernelAtlas.WholeBall.Fourier2299SecondRow10
import KernelAtlas.WholeBall.Fourier2299SecondRow11
import KernelAtlas.WholeBall.Fourier2299SecondRow12
import KernelAtlas.WholeBall.Fourier2299SecondRow13
import KernelAtlas.WholeBall.Fourier2299SecondRow14
import KernelAtlas.WholeBall.Fourier2299SecondRow15
import KernelAtlas.WholeBall.Fourier2299SecondRow16
import KernelAtlas.WholeBall.Fourier2299SecondRow17
import KernelAtlas.WholeBall.Fourier2299SecondRow18
import KernelAtlas.WholeBall.Fourier2299SecondRow19
import KernelAtlas.WholeBall.Fourier2299SecondRow20
import KernelAtlas.WholeBall.Fourier2299SecondRealCheck
import KernelAtlas.WholeBall.Fourier2299SecondImagCheck

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem second_checked : ((data.fourier.K0.mul (data.fourier.T.rowTensor data.fourier.D)).add (data.fourier.K1.mul ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D))).neg.enclosesCheck data.normalSecond = true := by
  rw [polySecondReal_eq, polySecondImag_eq]
  apply MatrixBox.negSumProducts_encloses_of_expansion _ _ _ _ _ _ _ _ secondExpand
    secondReal_columns secondImag_columns secondTarget_columns
  apply MatrixBox.enclosesCheck_of_blocks (k := 42) (b := 5)
  intro i j
  fin_cases i
  · exact second_row_0 j
  · exact second_row_1 j
  · exact second_row_2 j
  · exact second_row_3 j
  · exact second_row_4 j
  · exact second_row_5 j
  · exact second_row_6 j
  · exact second_row_7 j
  · exact second_row_8 j
  · exact second_row_9 j
  · exact second_row_10 j
  · exact second_row_11 j
  · exact second_row_12 j
  · exact second_row_13 j
  · exact second_row_14 j
  · exact second_row_15 j
  · exact second_row_16 j
  · exact second_row_17 j
  · exact second_row_18 j
  · exact second_row_19 j
  · exact second_row_20 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
