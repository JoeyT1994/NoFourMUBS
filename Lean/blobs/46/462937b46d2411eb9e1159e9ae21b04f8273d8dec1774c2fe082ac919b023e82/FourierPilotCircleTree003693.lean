import FourierPilotCircleTree003694
import FourierPilotCircleTree003695
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003693
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![98, 93, 32, 84, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003694.state FourierPilotCircleTree003695.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003694.covered FourierPilotCircleTree003695.covered
#print axioms covered
end FourierPilotCircleTree003693
