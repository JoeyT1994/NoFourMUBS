import FourierPilotCircleTree000631
import FourierPilotCircleTree000632
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000630
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![46, 45, 40, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000631.state FourierPilotCircleTree000632.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000631.covered FourierPilotCircleTree000632.covered
#print axioms covered
end FourierPilotCircleTree000630
