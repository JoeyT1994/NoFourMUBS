import FourierPilotCircleTree005522
import FourierPilotCircleTree005523
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005521
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 10, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005522.state FourierPilotCircleTree005523.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005522.covered FourierPilotCircleTree005523.covered
#print axioms covered
end FourierPilotCircleTree005521
