import FourierPilotCircleTree003995
import FourierPilotCircleTree003996
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003994
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003995.state FourierPilotCircleTree003996.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003995.covered FourierPilotCircleTree003996.covered
#print axioms covered
end FourierPilotCircleTree003994
