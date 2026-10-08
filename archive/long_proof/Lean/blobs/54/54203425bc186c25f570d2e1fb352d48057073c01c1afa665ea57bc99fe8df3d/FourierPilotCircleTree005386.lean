import FourierPilotCircleTree005387
import FourierPilotCircleTree005420
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005386
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 3, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005387.state FourierPilotCircleTree005420.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005387.covered FourierPilotCircleTree005420.covered
#print axioms covered
end FourierPilotCircleTree005386
