import FourierPilotCircleTree005670
import FourierPilotCircleTree005709
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005669
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005670.state FourierPilotCircleTree005709.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005670.covered FourierPilotCircleTree005709.covered
#print axioms covered
end FourierPilotCircleTree005669
