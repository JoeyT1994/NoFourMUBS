import FourierPilotCircleTree001659
import FourierPilotCircleTree001660
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001658
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001659.state FourierPilotCircleTree001660.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001659.covered FourierPilotCircleTree001660.covered
#print axioms covered
end FourierPilotCircleTree001658
