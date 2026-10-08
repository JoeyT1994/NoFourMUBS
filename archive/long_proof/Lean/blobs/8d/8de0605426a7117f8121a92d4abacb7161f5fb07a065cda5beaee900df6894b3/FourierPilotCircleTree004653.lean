import FourierPilotCircleTree004654
import FourierPilotCircleTree004655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004653
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004654.state FourierPilotCircleTree004655.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004654.covered FourierPilotCircleTree004655.covered
#print axioms covered
end FourierPilotCircleTree004653
