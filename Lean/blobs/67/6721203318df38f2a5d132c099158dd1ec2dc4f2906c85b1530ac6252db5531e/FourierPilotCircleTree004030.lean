import FourierPilotCircleTree004031
import FourierPilotCircleTree004054
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004030
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![9, 23, 15, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004031.state FourierPilotCircleTree004054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004031.covered FourierPilotCircleTree004054.covered
#print axioms covered
end FourierPilotCircleTree004030
