import FourierPilotCircleTree002788
import FourierPilotCircleTree002789
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002787
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002788.state FourierPilotCircleTree002789.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002788.covered FourierPilotCircleTree002789.covered
#print axioms covered
end FourierPilotCircleTree002787
