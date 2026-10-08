import FourierPilotCircleTree000165
import FourierPilotCircleTree000166
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000164
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 7, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000165.state FourierPilotCircleTree000166.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000165.covered FourierPilotCircleTree000166.covered
#print axioms covered
end FourierPilotCircleTree000164
