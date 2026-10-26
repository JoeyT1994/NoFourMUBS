import KernelAtlas.WholeBall.Fourier2299Data
import KernelAtlas.WholeBall.MatrixBlocks
import KernelAtlas.WholeBall.Fourier2299QuarticRow16
import KernelAtlas.WholeBall.Fourier2299QuarticRealData
import KernelAtlas.WholeBall.Fourier2299QuarticImagData
import KernelAtlas.WholeBall.Fourier2299QuarticColumns

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace NoFourMUBs.KernelAtlas.WholeBall.Fourier2299

theorem quartic_17_0 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 0 = true := by decide +kernel

theorem quartic_17_1 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 1 = true := by decide +kernel

theorem quartic_17_2 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 2 = true := by decide +kernel

theorem quartic_17_3 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 3 = true := by decide +kernel

theorem quartic_17_4 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 4 = true := by decide +kernel

theorem quartic_17_5 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 5 = true := by decide +kernel

theorem quartic_17_6 :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 6 = true := by decide +kernel

theorem quartic_row_17 (j : Fin 7) :
    MatrixBox.enclosesBlockCheck (k := 7) (b := 5) ((data.fourier.K0.mul (polyQuarticReal.columns quarticPick)).add (data.fourier.K1.mul (polyQuarticImag.columns quarticPick))) (data.quartic.columns quarticPick) 17 j = true := by
  fin_cases j
  · exact quartic_17_0
  · exact quartic_17_1
  · exact quartic_17_2
  · exact quartic_17_3
  · exact quartic_17_4
  · exact quartic_17_5
  · exact quartic_17_6

end NoFourMUBs.KernelAtlas.WholeBall.Fourier2299
