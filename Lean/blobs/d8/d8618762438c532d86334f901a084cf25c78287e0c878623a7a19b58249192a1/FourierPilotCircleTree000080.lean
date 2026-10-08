import FourierPilotCircleTree000081
import FourierPilotCircleTree000096
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000080
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![10, 14, 13, 8, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000081.state FourierPilotCircleTree000096.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000081.covered FourierPilotCircleTree000096.covered
#print axioms covered
end FourierPilotCircleTree000080
