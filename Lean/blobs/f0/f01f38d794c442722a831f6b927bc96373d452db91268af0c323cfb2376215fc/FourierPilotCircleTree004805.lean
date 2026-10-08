import FourierPilotCircleTree004806
import FourierPilotCircleTree004815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004805
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![98, 50, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004806.state FourierPilotCircleTree004815.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004806.covered FourierPilotCircleTree004815.covered
#print axioms covered
end FourierPilotCircleTree004805
