import FourierPilotCircleTree005375
import FourierPilotCircleTree005378
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005374
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005375.state FourierPilotCircleTree005378.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005375.covered FourierPilotCircleTree005378.covered
#print axioms covered
end FourierPilotCircleTree005374
