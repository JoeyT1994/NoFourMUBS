import FourierPilotCircleTree000943
import FourierPilotCircleTree000944
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000942
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 24, 27, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000943.state FourierPilotCircleTree000944.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000943.covered FourierPilotCircleTree000944.covered
#print axioms covered
end FourierPilotCircleTree000942
