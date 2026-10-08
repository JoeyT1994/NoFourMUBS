import FourierPilotCircleTree001430
import FourierPilotCircleTree001431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001429
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![19, 23, 31, 26, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001430.state FourierPilotCircleTree001431.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001430.covered FourierPilotCircleTree001431.covered
#print axioms covered
end FourierPilotCircleTree001429
