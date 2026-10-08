import FourierPilotCircleTree002925
import FourierPilotCircleTree002926
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002924
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 6, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002925.state FourierPilotCircleTree002926.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002925.covered FourierPilotCircleTree002926.covered
#print axioms covered
end FourierPilotCircleTree002924
