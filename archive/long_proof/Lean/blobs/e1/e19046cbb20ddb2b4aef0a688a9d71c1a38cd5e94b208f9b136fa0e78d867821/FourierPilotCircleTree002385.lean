import FourierPilotCircleTree002386
import FourierPilotCircleTree002405
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002385
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002386.state FourierPilotCircleTree002405.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002386.covered FourierPilotCircleTree002405.covered
#print axioms covered
end FourierPilotCircleTree002385
