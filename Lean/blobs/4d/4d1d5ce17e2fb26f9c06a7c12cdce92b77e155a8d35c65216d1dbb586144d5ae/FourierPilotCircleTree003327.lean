import FourierPilotCircleTree003328
import FourierPilotCircleTree003329
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003327
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![60, 80, 109, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003328.state FourierPilotCircleTree003329.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003328.covered FourierPilotCircleTree003329.covered
#print axioms covered
end FourierPilotCircleTree003327
