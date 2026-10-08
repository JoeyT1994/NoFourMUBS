import FourierPilotCircleTree005261
import FourierPilotCircleTree005262
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005260
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![20, 29, 27, 16, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005261.state FourierPilotCircleTree005262.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005261.covered FourierPilotCircleTree005262.covered
#print axioms covered
end FourierPilotCircleTree005260
