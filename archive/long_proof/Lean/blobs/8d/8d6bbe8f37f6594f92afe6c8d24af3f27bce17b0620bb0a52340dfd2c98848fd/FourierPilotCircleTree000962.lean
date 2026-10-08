import FourierPilotCircleTree000963
import FourierPilotCircleTree000964
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000962
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![100, 98, 109, 87, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000963.state FourierPilotCircleTree000964.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000963.covered FourierPilotCircleTree000964.covered
#print axioms covered
end FourierPilotCircleTree000962
