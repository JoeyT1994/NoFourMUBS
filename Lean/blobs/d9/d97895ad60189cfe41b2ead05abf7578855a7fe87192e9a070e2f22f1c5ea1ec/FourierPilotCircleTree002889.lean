import FourierPilotCircleTree002890
import FourierPilotCircleTree002907
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002889
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![9, 14, 8, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002890.state FourierPilotCircleTree002907.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002890.covered FourierPilotCircleTree002907.covered
#print axioms covered
end FourierPilotCircleTree002889
