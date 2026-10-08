import FourierPilotCircleTree004288
import FourierPilotCircleTree004335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004287
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 6, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004288.state FourierPilotCircleTree004335.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004288.covered FourierPilotCircleTree004335.covered
#print axioms covered
end FourierPilotCircleTree004287
