import FourierPilotCircleTree000446
import FourierPilotCircleTree000447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000445
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![5, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000446.state FourierPilotCircleTree000447.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000446.covered FourierPilotCircleTree000447.covered
#print axioms covered
end FourierPilotCircleTree000445
