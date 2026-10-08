import SharedResidualExportControlV4
import ShiftedResidualExportControlV5
namespace Mub6.Classification.ResidualWidthComparison
open Mub6.Numerical.IntervalKernel
open Mub6.Classification.SharedResidualPolynomials
noncomputable section

def width (B : Interval) : ℚ := B.hi - B.lo

theorem same_original_boxes : SharedResidualExportControlV4.boxes =
    ShiftedResidualExportControlV5.boxes := rfl

theorem real_width_improves :
    5 * width ShiftedResidualExportControlV5.residualReBox <
      width SharedResidualExportControlV4.residualReBox := by
  norm_num [width,ShiftedResidualExportControlV5.residualReBox,
    SharedResidualExportControlV4.residualReBox]

theorem imaginary_width_improves :
    27 * width ShiftedResidualExportControlV5.residualImBox <
      width SharedResidualExportControlV4.residualImBox := by
  norm_num [width,ShiftedResidualExportControlV5.residualImBox,
    SharedResidualExportControlV4.residualImBox]

/-- Both narrower intervals enclose the original polynomial on the original
cell. This theorem does not assert that the cell contains a physical carrier. -/
theorem same_residual_enclosed (p : Variable → ℝ)
    (hp : ∀ i, Mem (SharedResidualExportControlV4.boxes i) (p i)) :
    Mem ShiftedResidualExportControlV5.residualReBox
      (evalReal p (residualPoly .horizontal 1 0 0).re) ∧
    Mem ShiftedResidualExportControlV5.residualImBox
      (evalReal p (residualPoly .horizontal 1 0 0).im) := by
  simpa only [div_one] using And.intro (ShiftedResidualExportControlV5.residualRe_sound p hp)
    (ShiftedResidualExportControlV5.residualIm_sound p hp)

#print axioms Mub6.Classification.ResidualWidthComparison.same_original_boxes
#print axioms Mub6.Classification.ResidualWidthComparison.real_width_improves
#print axioms Mub6.Classification.ResidualWidthComparison.imaginary_width_improves
#print axioms Mub6.Classification.ResidualWidthComparison.same_residual_enclosed
end
end Mub6.Classification.ResidualWidthComparison
