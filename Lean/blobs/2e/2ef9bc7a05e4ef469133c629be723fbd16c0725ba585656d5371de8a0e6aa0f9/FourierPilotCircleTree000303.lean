import FourierPilotCircleTree000304
import FourierPilotCircleTree000329
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000303
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![6, 4, 4, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000304.state FourierPilotCircleTree000329.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000304.covered FourierPilotCircleTree000329.covered
#print axioms covered
end FourierPilotCircleTree000303
