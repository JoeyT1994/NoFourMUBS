import FourierPilotCircleTree005009
import FourierPilotCircleTree005018
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005008
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 98, 54, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005009.state FourierPilotCircleTree005018.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005009.covered FourierPilotCircleTree005018.covered
#print axioms covered
end FourierPilotCircleTree005008
