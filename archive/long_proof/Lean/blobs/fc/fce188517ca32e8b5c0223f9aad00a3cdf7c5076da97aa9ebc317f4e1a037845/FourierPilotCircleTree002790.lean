import FourierPilotCircleTree002791
import FourierPilotCircleTree002792
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002790
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002791.state FourierPilotCircleTree002792.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002791.covered FourierPilotCircleTree002792.covered
#print axioms covered
end FourierPilotCircleTree002790
