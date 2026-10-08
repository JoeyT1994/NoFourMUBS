import FourierPilotCircleTree002500
import FourierPilotCircleTree002501
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002499
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![5, 4, 7, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002500.state FourierPilotCircleTree002501.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002500.covered FourierPilotCircleTree002501.covered
#print axioms covered
end FourierPilotCircleTree002499
