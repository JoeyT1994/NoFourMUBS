import FourierPilotCircleTree000254
import FourierPilotCircleTree000255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000253
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000254.state FourierPilotCircleTree000255.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000254.covered FourierPilotCircleTree000255.covered
#print axioms covered
end FourierPilotCircleTree000253
