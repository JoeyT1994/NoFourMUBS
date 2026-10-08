import FourierPilotCircleTree004675
import FourierPilotCircleTree004710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004674
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![23, 22, 10, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004675.state FourierPilotCircleTree004710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004675.covered FourierPilotCircleTree004710.covered
#print axioms covered
end FourierPilotCircleTree004674
