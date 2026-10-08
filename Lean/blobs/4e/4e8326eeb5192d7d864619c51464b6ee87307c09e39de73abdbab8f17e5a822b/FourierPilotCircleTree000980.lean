import FourierPilotCircleTree000981
import FourierPilotCircleTree000982
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000980
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 12, 13, 11, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000981.state FourierPilotCircleTree000982.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000981.covered FourierPilotCircleTree000982.covered
#print axioms covered
end FourierPilotCircleTree000980
