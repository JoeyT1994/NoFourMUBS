import FourierPilotCircleTree004273
import FourierPilotCircleTree004282
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004272
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![4, 7, 6, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004273.state FourierPilotCircleTree004282.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004273.covered FourierPilotCircleTree004282.covered
#print axioms covered
end FourierPilotCircleTree004272
