import FourierPilotCircleTree005397
import FourierPilotCircleTree005398
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005396
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 13, 10, 12, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005397.state FourierPilotCircleTree005398.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005397.covered FourierPilotCircleTree005398.covered
#print axioms covered
end FourierPilotCircleTree005396
