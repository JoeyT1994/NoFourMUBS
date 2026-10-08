import FourierPilotCircleTree002998
import FourierPilotCircleTree002999
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002997
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002998.state FourierPilotCircleTree002999.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002998.covered FourierPilotCircleTree002999.covered
#print axioms covered
end FourierPilotCircleTree002997
