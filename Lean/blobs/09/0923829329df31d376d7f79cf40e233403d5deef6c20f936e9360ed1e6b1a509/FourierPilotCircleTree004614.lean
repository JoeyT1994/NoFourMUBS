import FourierPilotCircleTree004615
import FourierPilotCircleTree004616
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004614
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![2, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004615.state FourierPilotCircleTree004616.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004615.covered FourierPilotCircleTree004616.covered
#print axioms covered
end FourierPilotCircleTree004614
