import FourierPilotCircleTree001592
import FourierPilotCircleTree001593
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001591
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![57, 96, 32, 87, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001592.state FourierPilotCircleTree001593.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001592.covered FourierPilotCircleTree001593.covered
#print axioms covered
end FourierPilotCircleTree001591
