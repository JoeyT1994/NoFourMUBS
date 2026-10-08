import FourierPilotCircleTree000561
import FourierPilotCircleTree000562
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000560
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000561.state FourierPilotCircleTree000562.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000561.covered FourierPilotCircleTree000562.covered
#print axioms covered
end FourierPilotCircleTree000560
