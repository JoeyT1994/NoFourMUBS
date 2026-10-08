import FourierPilotCircleTree000803
import FourierPilotCircleTree000804
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000802
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000803.state FourierPilotCircleTree000804.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000803.covered FourierPilotCircleTree000804.covered
#print axioms covered
end FourierPilotCircleTree000802
