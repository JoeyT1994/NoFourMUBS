import FourierPilotCircleTree004401
import FourierPilotCircleTree004402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![7, 4, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004401.state FourierPilotCircleTree004402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004401.covered FourierPilotCircleTree004402.covered
#print axioms covered
end FourierPilotCircleTree004400
