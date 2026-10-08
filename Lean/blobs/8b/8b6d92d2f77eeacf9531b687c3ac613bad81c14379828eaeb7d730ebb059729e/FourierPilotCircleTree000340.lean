import FourierPilotCircleTree000341
import FourierPilotCircleTree000342
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000340
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000341.state FourierPilotCircleTree000342.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000341.covered FourierPilotCircleTree000342.covered
#print axioms covered
end FourierPilotCircleTree000340
