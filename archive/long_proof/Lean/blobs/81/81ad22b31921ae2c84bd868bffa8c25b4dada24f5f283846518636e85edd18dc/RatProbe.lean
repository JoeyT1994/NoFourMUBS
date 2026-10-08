import TaoGraphData
namespace Mub6.Numerical.GraphKernel.TaoCatalogue
example : (1 / 2 : ℚ) ≤ 1 := by decide
example : (-1 / 2 : ℚ) < 1 := by decide
example : squaredDiameter (⟨-1/16,1/16,15/16,17/16⟩ : RationalRectangle) ≤ 1 := by decide
example : IntervalKernel.smallBoxCheck (fun _ => (⟨-1/16,1/16,15/16,17/16⟩ : RationalRectangle)) = true := by decide
example : boxes 0 0 = (⟨15/16,17/16,-1/16,1/16⟩ : RationalRectangle) := by decide
#eval IntervalKernel.smallBoxCheck (boxes 0)
#eval IntervalKernel.orthPossible (boxes 0) (boxes 0)
end Mub6.Numerical.GraphKernel.TaoCatalogue
