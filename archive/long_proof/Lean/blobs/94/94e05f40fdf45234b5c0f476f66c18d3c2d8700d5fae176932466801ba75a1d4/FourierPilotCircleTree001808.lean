import FourierPilotCircleTree001809
import FourierPilotCircleTree001810
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001808
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001809.state FourierPilotCircleTree001810.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001809.covered FourierPilotCircleTree001810.covered
#print axioms covered
end FourierPilotCircleTree001808
