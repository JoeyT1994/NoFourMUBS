import FourierPilotCircleTree005132
import FourierPilotCircleTree005133
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005131
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![14, 14, 8, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005132.state FourierPilotCircleTree005133.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005132.covered FourierPilotCircleTree005133.covered
#print axioms covered
end FourierPilotCircleTree005131
