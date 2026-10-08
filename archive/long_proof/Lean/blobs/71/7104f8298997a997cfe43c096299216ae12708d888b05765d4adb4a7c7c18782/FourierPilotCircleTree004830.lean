import FourierPilotCircleTree004831
import FourierPilotCircleTree004832
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004830
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 12, 13, 8, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004831.state FourierPilotCircleTree004832.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004831.covered FourierPilotCircleTree004832.covered
#print axioms covered
end FourierPilotCircleTree004830
