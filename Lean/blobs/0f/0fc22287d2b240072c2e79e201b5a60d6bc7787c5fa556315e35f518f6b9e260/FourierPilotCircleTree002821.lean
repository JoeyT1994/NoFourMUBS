import FourierPilotCircleTree002822
import FourierPilotCircleTree002823
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002821
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![98, 93, 32, 84, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002822.state FourierPilotCircleTree002823.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002822.covered FourierPilotCircleTree002823.covered
#print axioms covered
end FourierPilotCircleTree002821
