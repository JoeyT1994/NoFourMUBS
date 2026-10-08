import FourierPilotCircleTree001951
import FourierPilotCircleTree001952
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001950
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![49, 46, 31, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001951.state FourierPilotCircleTree001952.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001951.covered FourierPilotCircleTree001952.covered
#print axioms covered
end FourierPilotCircleTree001950
