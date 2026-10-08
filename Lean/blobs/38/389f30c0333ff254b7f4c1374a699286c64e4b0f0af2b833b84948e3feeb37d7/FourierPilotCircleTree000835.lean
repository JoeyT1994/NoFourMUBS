import FourierPilotCircleTree000836
import FourierPilotCircleTree000837
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000835
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 46, 40, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000836.state FourierPilotCircleTree000837.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000836.covered FourierPilotCircleTree000837.covered
#print axioms covered
end FourierPilotCircleTree000835
