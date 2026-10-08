import FourierPilotCircleTree002439
import FourierPilotCircleTree002440
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002438
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![15, 20, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002439.state FourierPilotCircleTree002440.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002439.covered FourierPilotCircleTree002440.covered
#print axioms covered
end FourierPilotCircleTree002438
