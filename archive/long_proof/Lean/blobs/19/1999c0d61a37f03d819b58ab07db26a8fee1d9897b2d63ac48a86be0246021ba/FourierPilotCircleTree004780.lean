import FourierPilotCircleTree004781
import FourierPilotCircleTree004836
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004780
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 6, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004781.state FourierPilotCircleTree004836.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004781.covered FourierPilotCircleTree004836.covered
#print axioms covered
end FourierPilotCircleTree004780
