import FourierPilotCircleTree003360
import FourierPilotCircleTree003361
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003359
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003360.state FourierPilotCircleTree003361.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003360.covered FourierPilotCircleTree003361.covered
#print axioms covered
end FourierPilotCircleTree003359
