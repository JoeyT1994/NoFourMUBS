import FourierPilotCircleTree000419
import FourierPilotCircleTree000432
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000418
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 38, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000419.state FourierPilotCircleTree000432.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000419.covered FourierPilotCircleTree000432.covered
#print axioms covered
end FourierPilotCircleTree000418
