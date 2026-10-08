import FourierPilotCircleTree005524
import FourierPilotCircleTree005525
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005523
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 10, 13, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005524.state FourierPilotCircleTree005525.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005524.covered FourierPilotCircleTree005525.covered
#print axioms covered
end FourierPilotCircleTree005523
