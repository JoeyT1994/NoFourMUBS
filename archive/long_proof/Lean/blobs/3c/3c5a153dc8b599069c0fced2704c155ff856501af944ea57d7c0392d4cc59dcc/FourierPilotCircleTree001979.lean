import FourierPilotCircleTree001980
import FourierPilotCircleTree001981
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001979
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001980.state FourierPilotCircleTree001981.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001980.covered FourierPilotCircleTree001981.covered
#print axioms covered
end FourierPilotCircleTree001979
