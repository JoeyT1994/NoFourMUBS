import FourierPilotCircleTree000210
import FourierPilotCircleTree000211
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000209
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000210.state FourierPilotCircleTree000211.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000210.covered FourierPilotCircleTree000211.covered
#print axioms covered
end FourierPilotCircleTree000209
