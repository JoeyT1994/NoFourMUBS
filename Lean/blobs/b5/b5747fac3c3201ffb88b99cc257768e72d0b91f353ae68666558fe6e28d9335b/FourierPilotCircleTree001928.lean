import FourierPilotCircleTree001929
import FourierPilotCircleTree001970
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001928
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 5, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001929.state FourierPilotCircleTree001970.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001929.covered FourierPilotCircleTree001970.covered
#print axioms covered
end FourierPilotCircleTree001928
