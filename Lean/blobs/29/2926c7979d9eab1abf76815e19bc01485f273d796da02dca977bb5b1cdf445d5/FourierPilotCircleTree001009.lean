import FourierPilotCircleTree001010
import FourierPilotCircleTree001011
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001009
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 12, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001010.state FourierPilotCircleTree001011.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001010.covered FourierPilotCircleTree001011.covered
#print axioms covered
end FourierPilotCircleTree001009
