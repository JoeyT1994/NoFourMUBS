import FourierPilotCircleTree004556
import FourierPilotCircleTree004573
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004555
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![49, 46, 31, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004556.state FourierPilotCircleTree004573.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004556.covered FourierPilotCircleTree004573.covered
#print axioms covered
end FourierPilotCircleTree004555
