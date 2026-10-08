import FourierPilotCircleTree004853
import FourierPilotCircleTree004854
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004852
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004853.state FourierPilotCircleTree004854.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004853.covered FourierPilotCircleTree004854.covered
#print axioms covered
end FourierPilotCircleTree004852
