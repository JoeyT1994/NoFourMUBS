import FourierPilotCircleTree002561
import FourierPilotCircleTree002588
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002560
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![9, 13, 10, 12, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002561.state FourierPilotCircleTree002588.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002561.covered FourierPilotCircleTree002588.covered
#print axioms covered
end FourierPilotCircleTree002560
