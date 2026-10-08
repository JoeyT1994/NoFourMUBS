import FourierPilotCircleTree004185
import FourierPilotCircleTree004186
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004184
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![14, 24, 8, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004185.state FourierPilotCircleTree004186.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004185.covered FourierPilotCircleTree004186.covered
#print axioms covered
end FourierPilotCircleTree004184
