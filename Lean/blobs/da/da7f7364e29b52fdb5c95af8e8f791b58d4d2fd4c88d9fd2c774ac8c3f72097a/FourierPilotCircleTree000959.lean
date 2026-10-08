import FourierPilotCircleTree000960
import FourierPilotCircleTree000961
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000959
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![100, 98, 54, 87, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000960.state FourierPilotCircleTree000961.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000960.covered FourierPilotCircleTree000961.covered
#print axioms covered
end FourierPilotCircleTree000959
