import FourierPilotCircleTree004632
import FourierPilotCircleTree004633
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004631
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![6, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004632.state FourierPilotCircleTree004633.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004632.covered FourierPilotCircleTree004633.covered
#print axioms covered
end FourierPilotCircleTree004631
