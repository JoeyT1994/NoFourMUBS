import FourierPilotCircleTree003676
import FourierPilotCircleTree003707
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003675
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![12, 11, 8, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003676.state FourierPilotCircleTree003707.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003676.covered FourierPilotCircleTree003707.covered
#print axioms covered
end FourierPilotCircleTree003675
