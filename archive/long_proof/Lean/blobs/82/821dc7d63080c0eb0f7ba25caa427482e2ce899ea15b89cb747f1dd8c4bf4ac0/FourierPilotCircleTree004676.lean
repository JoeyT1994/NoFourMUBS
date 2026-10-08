import FourierPilotCircleTree004677
import FourierPilotCircleTree004706
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![23, 22, 20, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004677.state FourierPilotCircleTree004706.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004677.covered FourierPilotCircleTree004706.covered
#print axioms covered
end FourierPilotCircleTree004676
