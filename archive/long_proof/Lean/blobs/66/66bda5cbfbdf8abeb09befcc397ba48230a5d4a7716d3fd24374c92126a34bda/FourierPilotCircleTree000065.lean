import FourierPilotCircleTree000066
import FourierPilotCircleTree000067
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000065
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000066.state FourierPilotCircleTree000067.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000066.covered FourierPilotCircleTree000067.covered
#print axioms covered
end FourierPilotCircleTree000065
