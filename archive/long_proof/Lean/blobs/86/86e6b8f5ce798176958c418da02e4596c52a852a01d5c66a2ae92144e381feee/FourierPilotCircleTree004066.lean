import FourierPilotCircleTree004067
import FourierPilotCircleTree004108
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004066
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004067.state FourierPilotCircleTree004108.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004067.covered FourierPilotCircleTree004108.covered
#print axioms covered
end FourierPilotCircleTree004066
