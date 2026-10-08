import FourierPilotCircleTree004681
import FourierPilotCircleTree004704
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004680
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 20, 30, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004681.state FourierPilotCircleTree004704.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004681.covered FourierPilotCircleTree004704.covered
#print axioms covered
end FourierPilotCircleTree004680
