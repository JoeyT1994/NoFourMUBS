import FourierPilotCircleTree002192
import FourierPilotCircleTree002193
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002191
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![111, 80, 63, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002192.state FourierPilotCircleTree002193.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002192.covered FourierPilotCircleTree002193.covered
#print axioms covered
end FourierPilotCircleTree002191
