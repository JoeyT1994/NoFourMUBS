import FourierPilotCircleTree002733
import FourierPilotCircleTree002782
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002732
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002733.state FourierPilotCircleTree002782.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002733.covered FourierPilotCircleTree002782.covered
#print axioms covered
end FourierPilotCircleTree002732
