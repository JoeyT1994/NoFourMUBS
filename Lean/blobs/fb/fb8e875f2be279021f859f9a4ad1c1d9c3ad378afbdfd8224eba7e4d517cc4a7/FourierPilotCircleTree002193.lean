import FourierPilotCircleTree002194
import FourierPilotCircleTree002195
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002193
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![111, 80, 127, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002194.state FourierPilotCircleTree002195.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002194.covered FourierPilotCircleTree002195.covered
#print axioms covered
end FourierPilotCircleTree002193
