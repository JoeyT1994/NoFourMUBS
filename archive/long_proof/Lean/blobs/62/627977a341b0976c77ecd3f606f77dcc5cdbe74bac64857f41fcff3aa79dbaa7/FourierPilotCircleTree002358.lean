import FourierPilotCircleTree002359
import FourierPilotCircleTree002360
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002358
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![9, 24, 8, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002359.state FourierPilotCircleTree002360.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002359.covered FourierPilotCircleTree002360.covered
#print axioms covered
end FourierPilotCircleTree002358
