import FourierPilotCircleTree002232
import FourierPilotCircleTree002241
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002231
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![29, 18, 31, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002232.state FourierPilotCircleTree002241.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002232.covered FourierPilotCircleTree002241.covered
#print axioms covered
end FourierPilotCircleTree002231
