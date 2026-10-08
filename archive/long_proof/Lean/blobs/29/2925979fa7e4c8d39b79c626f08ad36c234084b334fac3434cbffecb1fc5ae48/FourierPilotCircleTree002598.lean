import FourierPilotCircleTree002599
import FourierPilotCircleTree002600
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002598
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002599.state FourierPilotCircleTree002600.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002599.covered FourierPilotCircleTree002600.covered
#print axioms covered
end FourierPilotCircleTree002598
