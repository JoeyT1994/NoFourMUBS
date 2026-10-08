import FourierPilotCircleTree004985
import FourierPilotCircleTree005038
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004984
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 6, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004985.state FourierPilotCircleTree005038.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004985.covered FourierPilotCircleTree005038.covered
#print axioms covered
end FourierPilotCircleTree004984
