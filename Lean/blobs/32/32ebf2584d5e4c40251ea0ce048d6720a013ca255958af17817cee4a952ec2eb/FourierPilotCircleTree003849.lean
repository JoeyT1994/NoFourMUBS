import FourierPilotCircleTree003850
import FourierPilotCircleTree003851
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003849
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 63, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003850.state FourierPilotCircleTree003851.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003850.covered FourierPilotCircleTree003851.covered
#print axioms covered
end FourierPilotCircleTree003849
