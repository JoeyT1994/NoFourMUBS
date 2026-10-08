import FourierPilotCircleTree004229
import FourierPilotCircleTree004230
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004228
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004229.state FourierPilotCircleTree004230.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004229.covered FourierPilotCircleTree004230.covered
#print axioms covered
end FourierPilotCircleTree004228
