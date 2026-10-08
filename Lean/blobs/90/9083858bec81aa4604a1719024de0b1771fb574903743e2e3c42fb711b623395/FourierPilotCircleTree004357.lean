import FourierPilotCircleTree004358
import FourierPilotCircleTree004389
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004357
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![27, 8, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004358.state FourierPilotCircleTree004389.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004358.covered FourierPilotCircleTree004389.covered
#print axioms covered
end FourierPilotCircleTree004357
