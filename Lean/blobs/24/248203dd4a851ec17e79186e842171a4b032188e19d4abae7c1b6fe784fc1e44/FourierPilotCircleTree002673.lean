import FourierPilotCircleTree002674
import FourierPilotCircleTree002695
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002673
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![24, 14, 8, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002674.state FourierPilotCircleTree002695.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002674.covered FourierPilotCircleTree002695.covered
#print axioms covered
end FourierPilotCircleTree002673
