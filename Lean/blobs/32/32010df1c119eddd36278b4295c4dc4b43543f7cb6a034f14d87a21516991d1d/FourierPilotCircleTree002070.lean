import FourierPilotCircleTree002071
import FourierPilotCircleTree002086
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002070
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![40, 55, 16, 61, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002071.state FourierPilotCircleTree002086.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002071.covered FourierPilotCircleTree002086.covered
#print axioms covered
end FourierPilotCircleTree002070
