import FourierPilotCircleTree004017
import FourierPilotCircleTree004018
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004016
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 5, 7, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004017.state FourierPilotCircleTree004018.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004017.covered FourierPilotCircleTree004018.covered
#print axioms covered
end FourierPilotCircleTree004016
