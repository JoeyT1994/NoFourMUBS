import FourierPilotCircleTree000132
import FourierPilotCircleTree000133
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000131
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![27, 18, 20, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000132.state FourierPilotCircleTree000133.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000132.covered FourierPilotCircleTree000133.covered
#print axioms covered
end FourierPilotCircleTree000131
