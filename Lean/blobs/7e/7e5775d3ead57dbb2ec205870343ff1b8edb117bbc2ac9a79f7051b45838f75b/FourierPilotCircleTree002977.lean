import FourierPilotCircleTree002978
import FourierPilotCircleTree002979
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002977
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 14, 8, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002978.state FourierPilotCircleTree002979.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002978.covered FourierPilotCircleTree002979.covered
#print axioms covered
end FourierPilotCircleTree002977
