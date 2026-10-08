import FourierPilotCircleTree003663
import FourierPilotCircleTree003664
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003663.state FourierPilotCircleTree003664.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003663.covered FourierPilotCircleTree003664.covered
#print axioms covered
end FourierPilotCircleTree003662
