import FourierPilotCircleTree002214
import FourierPilotCircleTree002215
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002213
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![7, 4, 7, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002214.state FourierPilotCircleTree002215.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002214.covered FourierPilotCircleTree002215.covered
#print axioms covered
end FourierPilotCircleTree002213
