import FourierPilotCircleTree004446
import FourierPilotCircleTree004449
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004445
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004446.state FourierPilotCircleTree004449.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004446.covered FourierPilotCircleTree004449.covered
#print axioms covered
end FourierPilotCircleTree004445
