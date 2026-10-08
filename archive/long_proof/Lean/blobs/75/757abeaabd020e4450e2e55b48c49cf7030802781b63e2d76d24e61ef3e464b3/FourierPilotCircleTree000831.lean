import FourierPilotCircleTree000832
import FourierPilotCircleTree000855
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000831
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 46, 20, 26, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000832.state FourierPilotCircleTree000855.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000832.covered FourierPilotCircleTree000855.covered
#print axioms covered
end FourierPilotCircleTree000831
