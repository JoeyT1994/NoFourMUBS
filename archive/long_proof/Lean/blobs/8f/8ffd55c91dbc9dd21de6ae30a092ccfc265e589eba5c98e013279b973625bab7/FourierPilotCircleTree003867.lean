import FourierPilotCircleTree003868
import FourierPilotCircleTree003945
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003867
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003868.state FourierPilotCircleTree003945.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003868.covered FourierPilotCircleTree003945.covered
#print axioms covered
end FourierPilotCircleTree003867
