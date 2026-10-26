import KernelAtlas.WholeBall.Fourier2299NormalRow0
import KernelAtlas.WholeBall.Fourier2299NormalRow1
import KernelAtlas.WholeBall.Fourier2299NormalRow2
import KernelAtlas.WholeBall.Fourier2299NormalRow3
import KernelAtlas.WholeBall.Fourier2299NormalRow4
import KernelAtlas.WholeBall.Fourier2299NormalRow5
import KernelAtlas.WholeBall.Fourier2299NormalRow6
import KernelAtlas.WholeBall.Fourier2299NormalRow7
import KernelAtlas.WholeBall.Fourier2299NormalRow8
import KernelAtlas.WholeBall.Fourier2299NormalRow9
import KernelAtlas.WholeBall.Fourier2299NormalRow10
import KernelAtlas.WholeBall.Fourier2299NormalRow11
import KernelAtlas.WholeBall.Fourier2299NormalRow12
import KernelAtlas.WholeBall.Fourier2299NormalRow13
import KernelAtlas.WholeBall.Fourier2299NormalRow14
import KernelAtlas.WholeBall.Fourier2299NormalRow15
import KernelAtlas.WholeBall.Fourier2299NormalRow16
import KernelAtlas.WholeBall.Fourier2299NormalRow17
import KernelAtlas.WholeBall.Fourier2299NormalRow18
import KernelAtlas.WholeBall.Fourier2299NormalRow19
import KernelAtlas.WholeBall.Fourier2299NormalRow20

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem normal_checked : (data.fourier.K0.mul (data.fourier.D.rowTensor data.fourier.D)).neg.enclosesCheck data.normalTensor = true := by
  apply MatrixBox.enclosesCheck_of_blocks (k := 63) (b := 7)
  intro i j
  fin_cases i
  · exact normal_row_0 j
  · exact normal_row_1 j
  · exact normal_row_2 j
  · exact normal_row_3 j
  · exact normal_row_4 j
  · exact normal_row_5 j
  · exact normal_row_6 j
  · exact normal_row_7 j
  · exact normal_row_8 j
  · exact normal_row_9 j
  · exact normal_row_10 j
  · exact normal_row_11 j
  · exact normal_row_12 j
  · exact normal_row_13 j
  · exact normal_row_14 j
  · exact normal_row_15 j
  · exact normal_row_16 j
  · exact normal_row_17 j
  · exact normal_row_18 j
  · exact normal_row_19 j
  · exact normal_row_20 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
