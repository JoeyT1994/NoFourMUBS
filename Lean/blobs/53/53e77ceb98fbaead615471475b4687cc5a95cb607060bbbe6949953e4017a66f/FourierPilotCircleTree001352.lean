import FourierPilotCircleTree001353
import FourierPilotCircleTree001354
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001352
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 9, 8, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001353.state FourierPilotCircleTree001354.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001353.covered FourierPilotCircleTree001354.covered
#print axioms covered
end FourierPilotCircleTree001352
