import FourierPilotCircleTree000033
import FourierPilotCircleTree000050
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000032
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![9, 12, 8, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000033.state FourierPilotCircleTree000050.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000033.covered FourierPilotCircleTree000050.covered
#print axioms covered
end FourierPilotCircleTree000032
