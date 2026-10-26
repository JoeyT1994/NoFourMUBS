import KernelAtlas.WholeBall.Fourier2299MixedRow0
import KernelAtlas.WholeBall.Fourier2299MixedRow1
import KernelAtlas.WholeBall.Fourier2299MixedRow2
import KernelAtlas.WholeBall.Fourier2299MixedRow3
import KernelAtlas.WholeBall.Fourier2299MixedRow4
import KernelAtlas.WholeBall.Fourier2299MixedRow5
import KernelAtlas.WholeBall.Fourier2299MixedRow6
import KernelAtlas.WholeBall.Fourier2299MixedRow7
import KernelAtlas.WholeBall.Fourier2299MixedRow8
import KernelAtlas.WholeBall.Fourier2299MixedRow9
import KernelAtlas.WholeBall.Fourier2299MixedRow10
import KernelAtlas.WholeBall.Fourier2299MixedRow11
import KernelAtlas.WholeBall.Fourier2299MixedRow12
import KernelAtlas.WholeBall.Fourier2299MixedRow13
import KernelAtlas.WholeBall.Fourier2299MixedRow14
import KernelAtlas.WholeBall.Fourier2299MixedRow15
import KernelAtlas.WholeBall.Fourier2299MixedRow16
import KernelAtlas.WholeBall.Fourier2299MixedRow17
import KernelAtlas.WholeBall.Fourier2299MixedRow18
import KernelAtlas.WholeBall.Fourier2299MixedRow19
import KernelAtlas.WholeBall.Fourier2299MixedRow20

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem mixed_checked : (data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg.enclosesCheck data.mixed = true := by
  apply MatrixBox.enclosesCheck_of_blocks (k := 21) (b := 4)
  intro i j
  fin_cases i
  · exact mixed_row_0 j
  · exact mixed_row_1 j
  · exact mixed_row_2 j
  · exact mixed_row_3 j
  · exact mixed_row_4 j
  · exact mixed_row_5 j
  · exact mixed_row_6 j
  · exact mixed_row_7 j
  · exact mixed_row_8 j
  · exact mixed_row_9 j
  · exact mixed_row_10 j
  · exact mixed_row_11 j
  · exact mixed_row_12 j
  · exact mixed_row_13 j
  · exact mixed_row_14 j
  · exact mixed_row_15 j
  · exact mixed_row_16 j
  · exact mixed_row_17 j
  · exact mixed_row_18 j
  · exact mixed_row_19 j
  · exact mixed_row_20 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
