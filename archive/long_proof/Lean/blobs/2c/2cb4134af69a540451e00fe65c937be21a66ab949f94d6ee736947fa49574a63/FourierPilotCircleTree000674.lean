import FourierPilotCircleTree000675
import FourierPilotCircleTree000676
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000674
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 11, 7, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000675.state FourierPilotCircleTree000676.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000675.covered FourierPilotCircleTree000676.covered
#print axioms covered
end FourierPilotCircleTree000674
