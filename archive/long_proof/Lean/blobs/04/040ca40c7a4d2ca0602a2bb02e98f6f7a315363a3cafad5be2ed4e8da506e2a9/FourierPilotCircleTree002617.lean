import FourierPilotCircleTree002618
import FourierPilotCircleTree002647
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002617
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![7, 10, 13, 11, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002618.state FourierPilotCircleTree002647.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002618.covered FourierPilotCircleTree002647.covered
#print axioms covered
end FourierPilotCircleTree002617
