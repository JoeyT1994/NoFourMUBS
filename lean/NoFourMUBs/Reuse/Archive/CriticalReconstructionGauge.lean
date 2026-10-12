import NoFourMUBs.Reuse.Archive.CriticalDataGauge
import NoFourMUBs.Reuse.Archive.CriticalReconstructionData

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
noncomputable section

/-- Reciprocal lambda weights under the same complex row scaling as the
actual Newton data. No ordinary conjugacy assertion survives this operation. -/
theorem scaleData_reconstruction (a b s S t T r Q z l0 l1 l2 b0 b1 b2 : ℂ)
    (ha : a≠0) (hb : b≠0) :
    scaleData a b (reconstructionData s S t T r Q z l0 l1 l2 b0 b1 b2) =
      reconstructionData (a*s) (a⁻¹*S) (b*t) (b⁻¹*T) ((b/a)*r) ((a/b)*Q) z
        ((a*b)*l0) ((b/a^2)*l1) ((a/b^2)*l2)
        ((a⁻¹*b⁻¹)*b0) ((a^2/b)*b1) ((b^2/a)*b2) := by
  dsimp only [scaleData,reconstructionData]
  congr 1 <;> field_simp [ha,hb] <;> ring

end
#print axioms scaleData_reconstruction
end CriticalNewtonGauge20261003
