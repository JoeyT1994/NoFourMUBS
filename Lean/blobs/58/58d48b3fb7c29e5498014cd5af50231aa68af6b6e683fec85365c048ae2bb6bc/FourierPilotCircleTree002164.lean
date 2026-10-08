import FourierPilotCircleTree002165
import FourierPilotCircleTree002202
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002164
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 10, 15, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002165.state FourierPilotCircleTree002202.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002165.covered FourierPilotCircleTree002202.covered
#print axioms covered
end FourierPilotCircleTree002164
