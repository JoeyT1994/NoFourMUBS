import FourierPilotCircleTree000087
import FourierPilotCircleTree000094
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000086
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![20, 29, 27, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000087.state FourierPilotCircleTree000094.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000087.covered FourierPilotCircleTree000094.covered
#print axioms covered
end FourierPilotCircleTree000086
