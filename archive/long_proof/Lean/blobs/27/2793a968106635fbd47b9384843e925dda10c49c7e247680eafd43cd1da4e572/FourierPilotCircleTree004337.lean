import FourierPilotCircleTree004338
import FourierPilotCircleTree004443
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004337
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004338.state FourierPilotCircleTree004443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004338.covered FourierPilotCircleTree004443.covered
#print axioms covered
end FourierPilotCircleTree004337
