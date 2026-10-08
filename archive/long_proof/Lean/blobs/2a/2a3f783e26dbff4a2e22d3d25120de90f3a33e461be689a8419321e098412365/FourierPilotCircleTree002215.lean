import FourierPilotCircleTree002216
import FourierPilotCircleTree002247
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002215
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![7, 4, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002216.state FourierPilotCircleTree002247.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002216.covered FourierPilotCircleTree002247.covered
#print axioms covered
end FourierPilotCircleTree002215
