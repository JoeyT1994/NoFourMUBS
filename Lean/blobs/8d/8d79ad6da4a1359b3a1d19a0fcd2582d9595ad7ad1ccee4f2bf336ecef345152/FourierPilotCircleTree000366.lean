import FourierPilotCircleTree000367
import FourierPilotCircleTree000368
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000366
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![29, 20, 27, 45, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000367.state FourierPilotCircleTree000368.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000367.covered FourierPilotCircleTree000368.covered
#print axioms covered
end FourierPilotCircleTree000366
