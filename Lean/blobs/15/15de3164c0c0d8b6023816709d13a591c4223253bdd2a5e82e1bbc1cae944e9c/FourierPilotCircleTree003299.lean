import FourierPilotCircleTree003300
import FourierPilotCircleTree003345
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003299
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003300.state FourierPilotCircleTree003345.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003300.covered FourierPilotCircleTree003345.covered
#print axioms covered
end FourierPilotCircleTree003299
