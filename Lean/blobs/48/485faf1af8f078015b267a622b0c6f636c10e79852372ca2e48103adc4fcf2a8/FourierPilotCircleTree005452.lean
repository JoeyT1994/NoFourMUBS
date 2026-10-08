import FourierPilotCircleTree005453
import FourierPilotCircleTree005454
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005452
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![23, 28, 31, 15, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005453.state FourierPilotCircleTree005454.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005453.covered FourierPilotCircleTree005454.covered
#print axioms covered
end FourierPilotCircleTree005452
