import FourierPilotCircleTree000303
import FourierPilotCircleTree000330
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000302
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![6, 4, 4, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000303.state FourierPilotCircleTree000330.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000303.covered FourierPilotCircleTree000330.covered
#print axioms covered
end FourierPilotCircleTree000302
