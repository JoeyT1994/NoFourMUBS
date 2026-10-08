import FourierPilotCircleTree000709
import FourierPilotCircleTree000710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000708
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 6, 4, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000709.state FourierPilotCircleTree000710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000709.covered FourierPilotCircleTree000710.covered
#print axioms covered
end FourierPilotCircleTree000708
