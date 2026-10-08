import FourierPilotCircleTree000227
import FourierPilotCircleTree000228
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000226
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![9, 13, 10, 12, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000227.state FourierPilotCircleTree000228.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000227.covered FourierPilotCircleTree000228.covered
#print axioms covered
end FourierPilotCircleTree000226
