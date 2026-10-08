import FourierPilotCircleTree004447
import FourierPilotCircleTree004448
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004446
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004447.state FourierPilotCircleTree004448.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004447.covered FourierPilotCircleTree004448.covered
#print axioms covered
end FourierPilotCircleTree004446
