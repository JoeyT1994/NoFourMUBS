import FourierPilotCircleTree000223
import FourierPilotCircleTree000246
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000222
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![4, 13, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000223.state FourierPilotCircleTree000246.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000223.covered FourierPilotCircleTree000246.covered
#print axioms covered
end FourierPilotCircleTree000222
