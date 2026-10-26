import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299QuarticRow2
import KernelAtlas.WholeBall.Fourier2299QuarticRealData
import KernelAtlas.WholeBall.Fourier2299QuarticImagData
import KernelAtlas.WholeBall.Fourier2299QuarticColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem quartic_3_0 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 0 = true := by decide +kernel

theorem quartic_3_1 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 1 = true := by decide +kernel

theorem quartic_3_2 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 2 = true := by decide +kernel

theorem quartic_3_3 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 3 = true := by decide +kernel

theorem quartic_3_4 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 4 = true := by decide +kernel

theorem quartic_3_5 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 5 = true := by decide +kernel

theorem quartic_3_6 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 6 = true := by decide +kernel

theorem quartic_row_3 (j : Fin 7) :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 3 j = true := by
  fin_cases j
  · exact quartic_3_0
  · exact quartic_3_1
  · exact quartic_3_2
  · exact quartic_3_3
  · exact quartic_3_4
  · exact quartic_3_5
  · exact quartic_3_6

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
