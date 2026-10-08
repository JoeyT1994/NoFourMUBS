import FourierPilotCircleTree001145
import FourierPilotCircleTree001146
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 7, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001145.state FourierPilotCircleTree001146.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001145.covered FourierPilotCircleTree001146.covered
#print axioms covered
end FourierPilotCircleTree001144
