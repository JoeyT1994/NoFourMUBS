import FourierPilotCircleTree001087
import FourierPilotCircleTree001088
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001086
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![28, 28, 16, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001087.state FourierPilotCircleTree001088.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001087.covered FourierPilotCircleTree001088.covered
#print axioms covered
end FourierPilotCircleTree001086
