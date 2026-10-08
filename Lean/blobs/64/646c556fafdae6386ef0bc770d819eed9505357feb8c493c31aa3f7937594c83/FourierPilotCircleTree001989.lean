import FourierPilotCircleTree001990
import FourierPilotCircleTree001991
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001989
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001990.state FourierPilotCircleTree001991.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001990.covered FourierPilotCircleTree001991.covered
#print axioms covered
end FourierPilotCircleTree001989
