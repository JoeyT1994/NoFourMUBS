import KernelAtlas.WholeBall.Fourier2299QuarticRow0
import KernelAtlas.WholeBall.Fourier2299QuarticRow1
import KernelAtlas.WholeBall.Fourier2299QuarticRow2
import KernelAtlas.WholeBall.Fourier2299QuarticRow3
import KernelAtlas.WholeBall.Fourier2299QuarticRow4
import KernelAtlas.WholeBall.Fourier2299QuarticRow5
import KernelAtlas.WholeBall.Fourier2299QuarticRow6
import KernelAtlas.WholeBall.Fourier2299QuarticRow7
import KernelAtlas.WholeBall.Fourier2299QuarticRow8
import KernelAtlas.WholeBall.Fourier2299QuarticRow9
import KernelAtlas.WholeBall.Fourier2299QuarticRow10
import KernelAtlas.WholeBall.Fourier2299QuarticRow11
import KernelAtlas.WholeBall.Fourier2299QuarticRow12
import KernelAtlas.WholeBall.Fourier2299QuarticRow13
import KernelAtlas.WholeBall.Fourier2299QuarticRow14
import KernelAtlas.WholeBall.Fourier2299QuarticRow15
import KernelAtlas.WholeBall.Fourier2299QuarticRow16
import KernelAtlas.WholeBall.Fourier2299QuarticRow17
import KernelAtlas.WholeBall.Fourier2299QuarticRow18
import KernelAtlas.WholeBall.Fourier2299QuarticRow19
import KernelAtlas.WholeBall.Fourier2299QuarticRow20
import KernelAtlas.WholeBall.Fourier2299QuarticRealCheck
import KernelAtlas.WholeBall.Fourier2299QuarticImagCheck

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem quartic_checked : (quarticBox data.fourier.K0 data.fourier.K1 data.fourier.S data.fourier.T).enclosesCheck data.quartic = true := by
  rw [quarticBox, polyQuarticReal_eq, polyQuarticImag_eq]
  apply MatrixBox.sumProducts_encloses_of_columns _ _ _ _ _ quarticPick quarticExpand
    quarticReal_columns quarticImag_columns quarticTarget_columns
  apply MatrixBox.enclosesCheck_of_blocks (k := 7) (b := 5)
  intro i j
  fin_cases i
  · exact quartic_row_0 j
  · exact quartic_row_1 j
  · exact quartic_row_2 j
  · exact quartic_row_3 j
  · exact quartic_row_4 j
  · exact quartic_row_5 j
  · exact quartic_row_6 j
  · exact quartic_row_7 j
  · exact quartic_row_8 j
  · exact quartic_row_9 j
  · exact quartic_row_10 j
  · exact quartic_row_11 j
  · exact quartic_row_12 j
  · exact quartic_row_13 j
  · exact quartic_row_14 j
  · exact quartic_row_15 j
  · exact quartic_row_16 j
  · exact quartic_row_17 j
  · exact quartic_row_18 j
  · exact quartic_row_19 j
  · exact quartic_row_20 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
