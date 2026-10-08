import FourierPilotCircleTree002186
import FourierPilotCircleTree002187
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002185
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![55, 40, 63, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002186.state FourierPilotCircleTree002187.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002186.covered FourierPilotCircleTree002187.covered
#print axioms covered
end FourierPilotCircleTree002185
