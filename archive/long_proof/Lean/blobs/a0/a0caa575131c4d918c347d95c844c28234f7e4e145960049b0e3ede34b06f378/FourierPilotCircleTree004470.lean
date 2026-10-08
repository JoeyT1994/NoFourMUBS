import FourierPilotCircleTree004471
import FourierPilotCircleTree004518
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004470
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004471.state FourierPilotCircleTree004518.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004471.covered FourierPilotCircleTree004518.covered
#print axioms covered
end FourierPilotCircleTree004470
