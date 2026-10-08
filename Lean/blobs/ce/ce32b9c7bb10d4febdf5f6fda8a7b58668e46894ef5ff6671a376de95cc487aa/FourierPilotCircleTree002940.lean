import FourierPilotCircleTree002941
import FourierPilotCircleTree002942
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002940
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![40, 55, 16, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002941.state FourierPilotCircleTree002942.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002941.covered FourierPilotCircleTree002942.covered
#print axioms covered
end FourierPilotCircleTree002940
