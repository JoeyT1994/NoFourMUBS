import FourierPilotCircleTree002508
import FourierPilotCircleTree002509
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002507
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![11, 9, 7, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002508.state FourierPilotCircleTree002509.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002508.covered FourierPilotCircleTree002509.covered
#print axioms covered
end FourierPilotCircleTree002507
