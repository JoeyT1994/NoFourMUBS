import FourierPilotCircleTree002944
import FourierPilotCircleTree002957
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002943
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![40, 55, 16, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002944.state FourierPilotCircleTree002957.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002944.covered FourierPilotCircleTree002957.covered
#print axioms covered
end FourierPilotCircleTree002943
