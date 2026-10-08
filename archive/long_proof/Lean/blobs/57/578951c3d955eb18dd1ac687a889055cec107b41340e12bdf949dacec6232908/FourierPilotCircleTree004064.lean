import FourierPilotCircleTree004065
import FourierPilotCircleTree004066
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004064
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004065.state FourierPilotCircleTree004066.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004065.covered FourierPilotCircleTree004066.covered
#print axioms covered
end FourierPilotCircleTree004064
