import FourierPilotCircleTree004606
import FourierPilotCircleTree004607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004605
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![5, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004606.state FourierPilotCircleTree004607.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004606.covered FourierPilotCircleTree004607.covered
#print axioms covered
end FourierPilotCircleTree004605
