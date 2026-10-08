import FourierPilotCircleTree000752
import FourierPilotCircleTree000765
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000751
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 54, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000752.state FourierPilotCircleTree000765.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000752.covered FourierPilotCircleTree000765.covered
#print axioms covered
end FourierPilotCircleTree000751
