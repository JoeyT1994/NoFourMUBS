import FourierPilotCircleTree002148
import FourierPilotCircleTree002149
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002147
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 9, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002148.state FourierPilotCircleTree002149.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002148.covered FourierPilotCircleTree002149.covered
#print axioms covered
end FourierPilotCircleTree002147
