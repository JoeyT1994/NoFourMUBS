import FourierPilotCircleTree001979
import FourierPilotCircleTree001982
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001978
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001979.state FourierPilotCircleTree001982.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001979.covered FourierPilotCircleTree001982.covered
#print axioms covered
end FourierPilotCircleTree001978
