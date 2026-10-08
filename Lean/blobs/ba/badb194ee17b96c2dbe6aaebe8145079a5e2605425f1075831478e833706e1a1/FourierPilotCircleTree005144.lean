import FourierPilotCircleTree005145
import FourierPilotCircleTree005158
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![57, 57, 16, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005145.state FourierPilotCircleTree005158.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005145.covered FourierPilotCircleTree005158.covered
#print axioms covered
end FourierPilotCircleTree005144
