import FourierPilotCircleTree004289
import FourierPilotCircleTree004334
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004288
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004289.state FourierPilotCircleTree004334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004289.covered FourierPilotCircleTree004334.covered
#print axioms covered
end FourierPilotCircleTree004288
