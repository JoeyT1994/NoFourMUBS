import FourierPilotCircleTree004792
import FourierPilotCircleTree004793
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004791
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 25, 27, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004792.state FourierPilotCircleTree004793.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004792.covered FourierPilotCircleTree004793.covered
#print axioms covered
end FourierPilotCircleTree004791
