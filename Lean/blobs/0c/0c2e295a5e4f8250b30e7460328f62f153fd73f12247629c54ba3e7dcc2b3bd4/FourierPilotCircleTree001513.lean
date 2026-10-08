import FourierPilotCircleTree001514
import FourierPilotCircleTree001515
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001513
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![6, 4, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001514.state FourierPilotCircleTree001515.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001514.covered FourierPilotCircleTree001515.covered
#print axioms covered
end FourierPilotCircleTree001513
