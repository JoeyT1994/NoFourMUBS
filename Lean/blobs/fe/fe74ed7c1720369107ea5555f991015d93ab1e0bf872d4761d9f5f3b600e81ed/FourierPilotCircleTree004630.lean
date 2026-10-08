import FourierPilotCircleTree004631
import FourierPilotCircleTree004634
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004630
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004631.state FourierPilotCircleTree004634.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004631.covered FourierPilotCircleTree004634.covered
#print axioms covered
end FourierPilotCircleTree004630
