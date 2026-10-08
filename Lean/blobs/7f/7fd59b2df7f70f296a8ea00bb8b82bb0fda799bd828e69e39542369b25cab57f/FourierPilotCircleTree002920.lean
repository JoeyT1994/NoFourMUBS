import FourierPilotCircleTree002921
import FourierPilotCircleTree002922
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002920
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002921.state FourierPilotCircleTree002922.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002921.covered FourierPilotCircleTree002922.covered
#print axioms covered
end FourierPilotCircleTree002920
