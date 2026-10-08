import FourierPilotCircleTree000777
import FourierPilotCircleTree000782
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000776
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 13, 4, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000777.state FourierPilotCircleTree000782.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000777.covered FourierPilotCircleTree000782.covered
#print axioms covered
end FourierPilotCircleTree000776
