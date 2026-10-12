import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Blend
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomialData
import NoFourMUBs.Reuse.Archive.CriticalModulusIntervals

set_option autoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 10000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
open CriticalModulusDomain20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

theorem low01_binding (k t : ℝ) :
    quartic k ((1-t)*minimum k+t*rootMinus k) =
      blend (low01_0 k) (low01_1 k) (low01_2 k) (low01_3 k) (low01_4 k) t := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  have hh' : (k^2+1 : ℝ)≠0 := by simpa [add_comm] using hh
  simp only [quartic,blend,pLow,pLower1,pLower2,pUpper1,pUpper2,quadMinus,other,kappa,low01_0,low01_1,low01_2,low01_3,low01_4,low1inf_0,low1inf_1,low1inf_2,low1inf_3,low1inf_4,high013_0,high013_1,high013_2,high013_3,high013_4,high1inf_0,high1inf_1,high1inf_2,high1inf_3,high1inf_4,minimum,root0,rootPlus,rootMinus,h]
  field_simp [hh,hh']
  <;> ring

end
#print axioms low01_binding
end NoFourMUBs.Step2.Critical.NonzeroScalar
