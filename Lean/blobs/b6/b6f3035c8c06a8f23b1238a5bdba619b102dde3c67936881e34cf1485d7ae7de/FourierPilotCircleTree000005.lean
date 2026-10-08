import FourierPilotCircleTree000006
import FourierPilotCircleTree000007
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000005
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000006.state FourierPilotCircleTree000007.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000006.covered FourierPilotCircleTree000007.covered
#print axioms covered
end FourierPilotCircleTree000005
