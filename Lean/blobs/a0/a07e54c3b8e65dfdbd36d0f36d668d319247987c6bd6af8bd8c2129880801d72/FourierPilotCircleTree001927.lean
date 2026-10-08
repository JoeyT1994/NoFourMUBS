import FourierPilotCircleTree001928
import FourierPilotCircleTree001971
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001927
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 5, 7, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001928.state FourierPilotCircleTree001971.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001928.covered FourierPilotCircleTree001971.covered
#print axioms covered
end FourierPilotCircleTree001927
