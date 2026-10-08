import FourierPilotCircleTree000980
import FourierPilotCircleTree000985
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000979
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 12, 13, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000980.state FourierPilotCircleTree000985.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000980.covered FourierPilotCircleTree000985.covered
#print axioms covered
end FourierPilotCircleTree000979
