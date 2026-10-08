import FourierPilotCircleTree002302
import FourierPilotCircleTree002303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002301
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![17, 55, 40, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002302.state FourierPilotCircleTree002303.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002302.covered FourierPilotCircleTree002303.covered
#print axioms covered
end FourierPilotCircleTree002301
