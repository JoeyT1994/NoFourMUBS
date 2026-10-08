import FourierPilotCircleTree005401
import FourierPilotCircleTree005402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![9, 13, 10, 12, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005401.state FourierPilotCircleTree005402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005401.covered FourierPilotCircleTree005402.covered
#print axioms covered
end FourierPilotCircleTree005400
