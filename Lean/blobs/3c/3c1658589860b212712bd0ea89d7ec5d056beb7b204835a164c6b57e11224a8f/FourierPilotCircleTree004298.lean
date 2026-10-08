import FourierPilotCircleTree004299
import FourierPilotCircleTree004332
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004298
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![10, 15, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004299.state FourierPilotCircleTree004332.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004299.covered FourierPilotCircleTree004332.covered
#print axioms covered
end FourierPilotCircleTree004298
