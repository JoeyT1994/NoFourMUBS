import FourierPilotCircleTree005515
import FourierPilotCircleTree005516
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005514
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 2, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005515.state FourierPilotCircleTree005516.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005515.covered FourierPilotCircleTree005516.covered
#print axioms covered
end FourierPilotCircleTree005514
