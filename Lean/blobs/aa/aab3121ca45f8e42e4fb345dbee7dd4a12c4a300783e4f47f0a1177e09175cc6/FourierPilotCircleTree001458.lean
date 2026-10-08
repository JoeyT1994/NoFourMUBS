import FourierPilotCircleTree001459
import FourierPilotCircleTree001500
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001458
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001459.state FourierPilotCircleTree001500.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001459.covered FourierPilotCircleTree001500.covered
#print axioms covered
end FourierPilotCircleTree001458
