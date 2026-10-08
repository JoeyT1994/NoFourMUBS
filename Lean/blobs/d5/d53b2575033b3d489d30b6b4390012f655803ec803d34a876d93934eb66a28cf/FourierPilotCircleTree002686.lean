import FourierPilotCircleTree002687
import FourierPilotCircleTree002688
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002686
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![96, 57, 32, 32, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002687.state FourierPilotCircleTree002688.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002687.covered FourierPilotCircleTree002688.covered
#print axioms covered
end FourierPilotCircleTree002686
