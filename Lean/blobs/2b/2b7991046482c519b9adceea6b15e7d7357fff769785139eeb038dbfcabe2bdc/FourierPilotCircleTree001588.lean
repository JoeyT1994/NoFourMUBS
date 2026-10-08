import FourierPilotCircleTree001589
import FourierPilotCircleTree001594
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001588
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![57, 48, 32, 43, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001589.state FourierPilotCircleTree001594.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001589.covered FourierPilotCircleTree001594.covered
#print axioms covered
end FourierPilotCircleTree001588
