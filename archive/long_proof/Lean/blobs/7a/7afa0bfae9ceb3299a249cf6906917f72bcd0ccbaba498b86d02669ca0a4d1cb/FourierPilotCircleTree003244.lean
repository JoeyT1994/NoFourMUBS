import FourierPilotCircleTree003245
import FourierPilotCircleTree003348
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003244
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003245.state FourierPilotCircleTree003348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003245.covered FourierPilotCircleTree003348.covered
#print axioms covered
end FourierPilotCircleTree003244
