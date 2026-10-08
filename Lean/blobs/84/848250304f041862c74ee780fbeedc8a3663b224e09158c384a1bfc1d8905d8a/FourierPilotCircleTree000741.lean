import FourierPilotCircleTree000742
import FourierPilotCircleTree000745
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000741
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![24, 25, 27, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000742.state FourierPilotCircleTree000745.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000742.covered FourierPilotCircleTree000745.covered
#print axioms covered
end FourierPilotCircleTree000741
