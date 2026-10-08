import FourierPilotCircleTree004862
import FourierPilotCircleTree004863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004861
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 5, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004862.state FourierPilotCircleTree004863.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004862.covered FourierPilotCircleTree004863.covered
#print axioms covered
end FourierPilotCircleTree004861
