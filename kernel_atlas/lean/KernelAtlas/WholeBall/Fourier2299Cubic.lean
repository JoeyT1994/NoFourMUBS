import KernelAtlas.WholeBall.Fourier2299CubicRow0
import KernelAtlas.WholeBall.Fourier2299CubicRow1
import KernelAtlas.WholeBall.Fourier2299CubicRow2
import KernelAtlas.WholeBall.Fourier2299CubicRow3
import KernelAtlas.WholeBall.Fourier2299CubicRow4
import KernelAtlas.WholeBall.Fourier2299CubicRow5
import KernelAtlas.WholeBall.Fourier2299CubicRow6
import KernelAtlas.WholeBall.Fourier2299CubicRow7
import KernelAtlas.WholeBall.Fourier2299CubicRow8
import KernelAtlas.WholeBall.Fourier2299CubicRow9
import KernelAtlas.WholeBall.Fourier2299CubicRow10
import KernelAtlas.WholeBall.Fourier2299CubicRow11
import KernelAtlas.WholeBall.Fourier2299CubicRow12
import KernelAtlas.WholeBall.Fourier2299CubicRow13
import KernelAtlas.WholeBall.Fourier2299CubicRow14
import KernelAtlas.WholeBall.Fourier2299CubicRow15
import KernelAtlas.WholeBall.Fourier2299CubicRow16
import KernelAtlas.WholeBall.Fourier2299CubicRow17
import KernelAtlas.WholeBall.Fourier2299CubicRow18
import KernelAtlas.WholeBall.Fourier2299CubicRow19
import KernelAtlas.WholeBall.Fourier2299CubicRow20
import KernelAtlas.WholeBall.Fourier2299CubicRealCheck
import KernelAtlas.WholeBall.Fourier2299CubicImagCheck

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem cubic_checked : (cubicBox data.fourier.K0 data.fourier.K1 data.fourier.S data.fourier.T).enclosesCheck data.cubic = true := by
  rw [cubicBox, polyCubicReal_eq, polyCubicImag_eq]
  apply MatrixBox.enclosesCheck_of_blocks (k := 16) (b := 4)
  intro i j
  fin_cases i
  · exact cubic_row_0 j
  · exact cubic_row_1 j
  · exact cubic_row_2 j
  · exact cubic_row_3 j
  · exact cubic_row_4 j
  · exact cubic_row_5 j
  · exact cubic_row_6 j
  · exact cubic_row_7 j
  · exact cubic_row_8 j
  · exact cubic_row_9 j
  · exact cubic_row_10 j
  · exact cubic_row_11 j
  · exact cubic_row_12 j
  · exact cubic_row_13 j
  · exact cubic_row_14 j
  · exact cubic_row_15 j
  · exact cubic_row_16 j
  · exact cubic_row_17 j
  · exact cubic_row_18 j
  · exact cubic_row_19 j
  · exact cubic_row_20 j

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
