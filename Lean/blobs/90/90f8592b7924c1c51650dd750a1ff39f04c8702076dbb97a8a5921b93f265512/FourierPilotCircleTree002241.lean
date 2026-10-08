import FourierPilotCircleTree002242
import FourierPilotCircleTree002243
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002241
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![29, 18, 31, 51, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002242.state FourierPilotCircleTree002243.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002242.covered FourierPilotCircleTree002243.covered
#print axioms covered
end FourierPilotCircleTree002241
