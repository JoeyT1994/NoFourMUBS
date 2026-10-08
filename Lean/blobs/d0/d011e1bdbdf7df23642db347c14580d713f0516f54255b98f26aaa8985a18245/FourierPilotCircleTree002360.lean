import FourierPilotCircleTree002361
import FourierPilotCircleTree002362
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002360
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![19, 24, 8, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002361.state FourierPilotCircleTree002362.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002361.covered FourierPilotCircleTree002362.covered
#print axioms covered
end FourierPilotCircleTree002360
