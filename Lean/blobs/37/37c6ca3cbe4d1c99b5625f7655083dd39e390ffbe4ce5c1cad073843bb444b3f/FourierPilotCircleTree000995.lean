import FourierPilotCircleTree000996
import FourierPilotCircleTree001057
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000995
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000996.state FourierPilotCircleTree001057.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000996.covered FourierPilotCircleTree001057.covered
#print axioms covered
end FourierPilotCircleTree000995
