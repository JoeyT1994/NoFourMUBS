import FourierPilotCircleTree000927
import FourierPilotCircleTree000990
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000926
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000927.state FourierPilotCircleTree000990.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000927.covered FourierPilotCircleTree000990.covered
#print axioms covered
end FourierPilotCircleTree000926
