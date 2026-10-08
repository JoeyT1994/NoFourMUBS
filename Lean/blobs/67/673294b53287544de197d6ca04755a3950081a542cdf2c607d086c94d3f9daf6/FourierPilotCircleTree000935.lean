import FourierPilotCircleTree000936
import FourierPilotCircleTree000979
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000935
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 12, 13, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000936.state FourierPilotCircleTree000979.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000936.covered FourierPilotCircleTree000979.covered
#print axioms covered
end FourierPilotCircleTree000935
