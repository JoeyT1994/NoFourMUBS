import FourierPilotCircleTree003799
import FourierPilotCircleTree003800
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003798
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003799.state FourierPilotCircleTree003800.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003799.covered FourierPilotCircleTree003800.covered
#print axioms covered
end FourierPilotCircleTree003798
