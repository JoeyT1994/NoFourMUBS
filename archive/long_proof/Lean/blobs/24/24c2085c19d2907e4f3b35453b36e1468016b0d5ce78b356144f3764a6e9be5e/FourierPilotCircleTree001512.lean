import FourierPilotCircleTree001513
import FourierPilotCircleTree001556
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001512
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001513.state FourierPilotCircleTree001556.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001513.covered FourierPilotCircleTree001556.covered
#print axioms covered
end FourierPilotCircleTree001512
