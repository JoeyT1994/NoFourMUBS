import FourierPilotCircleTree000111
import FourierPilotCircleTree000146
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000110
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000111.state FourierPilotCircleTree000146.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000111.covered FourierPilotCircleTree000146.covered
#print axioms covered
end FourierPilotCircleTree000110
