import FourierPilotCircleTree003852
import FourierPilotCircleTree003853
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003851
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 127, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003852.state FourierPilotCircleTree003853.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003852.covered FourierPilotCircleTree003853.covered
#print axioms covered
end FourierPilotCircleTree003851
