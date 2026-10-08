import FourierPilotCircleTree003640
import FourierPilotCircleTree003645
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003639
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![93, 98, 63, 107, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003640.state FourierPilotCircleTree003645.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003640.covered FourierPilotCircleTree003645.covered
#print axioms covered
end FourierPilotCircleTree003639
