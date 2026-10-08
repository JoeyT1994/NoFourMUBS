import FourierPilotCircleTree000805
import FourierPilotCircleTree000864
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000804
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000805.state FourierPilotCircleTree000864.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000805.covered FourierPilotCircleTree000864.covered
#print axioms covered
end FourierPilotCircleTree000804
