import FourierPilotCircleTree002485
import FourierPilotCircleTree002540
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002484
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002485.state FourierPilotCircleTree002540.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002485.covered FourierPilotCircleTree002540.covered
#print axioms covered
end FourierPilotCircleTree002484
