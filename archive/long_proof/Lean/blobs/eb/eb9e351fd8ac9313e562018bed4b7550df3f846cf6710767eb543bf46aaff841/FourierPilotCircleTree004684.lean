import FourierPilotCircleTree004685
import FourierPilotCircleTree004686
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004684
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 40, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004685.state FourierPilotCircleTree004686.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004685.covered FourierPilotCircleTree004686.covered
#print axioms covered
end FourierPilotCircleTree004684
