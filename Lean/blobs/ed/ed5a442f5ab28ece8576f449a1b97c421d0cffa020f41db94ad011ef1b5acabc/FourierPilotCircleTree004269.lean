import FourierPilotCircleTree004270
import FourierPilotCircleTree004271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004269
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![4, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004270.state FourierPilotCircleTree004271.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004270.covered FourierPilotCircleTree004271.covered
#print axioms covered
end FourierPilotCircleTree004269
