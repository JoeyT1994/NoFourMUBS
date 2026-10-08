import FourierPilotCircleTree001522
import FourierPilotCircleTree001523
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001521
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![13, 4, 10, 4, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001522.state FourierPilotCircleTree001523.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001522.covered FourierPilotCircleTree001523.covered
#print axioms covered
end FourierPilotCircleTree001521
