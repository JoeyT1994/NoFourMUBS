import FourierPilotCircleTree000266
import FourierPilotCircleTree000267
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000265
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 7, 7, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000266.state FourierPilotCircleTree000267.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000266.covered FourierPilotCircleTree000267.covered
#print axioms covered
end FourierPilotCircleTree000265
