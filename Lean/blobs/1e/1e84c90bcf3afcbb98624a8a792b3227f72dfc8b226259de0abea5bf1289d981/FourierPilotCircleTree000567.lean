import FourierPilotCircleTree000568
import FourierPilotCircleTree000573
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000567
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000568.state FourierPilotCircleTree000573.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000568.covered FourierPilotCircleTree000573.covered
#print axioms covered
end FourierPilotCircleTree000567
