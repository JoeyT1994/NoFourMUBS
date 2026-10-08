import FourierPilotCircleTree000309
import FourierPilotCircleTree000328
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000308
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![12, 9, 4, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000309.state FourierPilotCircleTree000328.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000309.covered FourierPilotCircleTree000328.covered
#print axioms covered
end FourierPilotCircleTree000308
