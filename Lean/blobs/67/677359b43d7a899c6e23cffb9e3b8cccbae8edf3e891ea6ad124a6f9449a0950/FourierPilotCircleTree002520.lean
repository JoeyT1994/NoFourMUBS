import FourierPilotCircleTree002521
import FourierPilotCircleTree002522
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002520
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![23, 19, 31, 31, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002521.state FourierPilotCircleTree002522.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002521.covered FourierPilotCircleTree002522.covered
#print axioms covered
end FourierPilotCircleTree002520
