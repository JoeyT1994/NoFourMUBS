import FourierPilotCircleTree000736
import FourierPilotCircleTree000737
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000735
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![24, 12, 13, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000736.state FourierPilotCircleTree000737.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000736.covered FourierPilotCircleTree000737.covered
#print axioms covered
end FourierPilotCircleTree000735
