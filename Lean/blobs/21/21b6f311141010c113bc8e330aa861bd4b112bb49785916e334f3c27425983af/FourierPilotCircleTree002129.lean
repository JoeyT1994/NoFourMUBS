import FourierPilotCircleTree002130
import FourierPilotCircleTree002131
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002129
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002130.state FourierPilotCircleTree002131.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002130.covered FourierPilotCircleTree002131.covered
#print axioms covered
end FourierPilotCircleTree002129
