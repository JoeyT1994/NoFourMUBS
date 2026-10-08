import FourierPilotCircleTree004149
import FourierPilotCircleTree004152
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004148
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![54, 37, 41, 32, 102]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004149.state FourierPilotCircleTree004152.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004149.covered FourierPilotCircleTree004152.covered
#print axioms covered
end FourierPilotCircleTree004148
