import FourierPilotCircleTree000032
import FourierPilotCircleTree000051
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000031
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![9, 12, 4, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000032.state FourierPilotCircleTree000051.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000032.covered FourierPilotCircleTree000051.covered
#print axioms covered
end FourierPilotCircleTree000031
