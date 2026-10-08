import FourierPilotCircleTree000202
import FourierPilotCircleTree000207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000201
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000202.state FourierPilotCircleTree000207.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000202.covered FourierPilotCircleTree000207.covered
#print axioms covered
end FourierPilotCircleTree000201
