import FourierPilotCircleTree005689
import FourierPilotCircleTree005690
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005688
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![57, 28, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005689.state FourierPilotCircleTree005690.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005689.covered FourierPilotCircleTree005690.covered
#print axioms covered
end FourierPilotCircleTree005688
