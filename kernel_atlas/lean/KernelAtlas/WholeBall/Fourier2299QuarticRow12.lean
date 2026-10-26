import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299QuarticRow11
import KernelAtlas.WholeBall.Fourier2299QuarticRealData
import KernelAtlas.WholeBall.Fourier2299QuarticImagData
import KernelAtlas.WholeBall.Fourier2299QuarticColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem quartic_12_0 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 0 = true := by decide +kernel

theorem quartic_12_1 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 1 = true := by decide +kernel

theorem quartic_12_2 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 2 = true := by decide +kernel

theorem quartic_12_3 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 3 = true := by decide +kernel

theorem quartic_12_4 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 4 = true := by decide +kernel

theorem quartic_12_5 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 5 = true := by decide +kernel

theorem quartic_12_6 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 6 = true := by decide +kernel

theorem quartic_row_12 (j : Fin 7) :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 12 j = true := by
  fin_cases j
  · exact quartic_12_0
  · exact quartic_12_1
  · exact quartic_12_2
  · exact quartic_12_3
  · exact quartic_12_4
  · exact quartic_12_5
  · exact quartic_12_6

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
