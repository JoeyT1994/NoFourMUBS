import FourierPilotCircleTree003797
import FourierPilotCircleTree003798
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003796
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003797.state FourierPilotCircleTree003798.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003797.covered FourierPilotCircleTree003798.covered
#print axioms covered
end FourierPilotCircleTree003796
