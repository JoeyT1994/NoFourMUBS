import FourierPilotCircleTree003134
import FourierPilotCircleTree003141
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003134.state FourierPilotCircleTree003141.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003134.covered FourierPilotCircleTree003141.covered
#print axioms covered
end FourierPilotCircleTree003133
