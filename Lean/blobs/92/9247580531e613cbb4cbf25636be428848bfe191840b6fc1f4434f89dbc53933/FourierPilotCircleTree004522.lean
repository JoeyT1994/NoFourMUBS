import FourierPilotCircleTree004523
import FourierPilotCircleTree004582
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004522
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004523.state FourierPilotCircleTree004582.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004523.covered FourierPilotCircleTree004582.covered
#print axioms covered
end FourierPilotCircleTree004522
