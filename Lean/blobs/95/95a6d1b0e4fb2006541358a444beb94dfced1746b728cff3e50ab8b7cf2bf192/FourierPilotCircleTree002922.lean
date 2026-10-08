import FourierPilotCircleTree002923
import FourierPilotCircleTree002968
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002922
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 6, 4, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002923.state FourierPilotCircleTree002968.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002923.covered FourierPilotCircleTree002968.covered
#print axioms covered
end FourierPilotCircleTree002922
