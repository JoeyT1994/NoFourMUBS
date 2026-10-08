import FourierPilotCircleTree003367
import FourierPilotCircleTree003368
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003366
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![5, 4, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003367.state FourierPilotCircleTree003368.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003367.covered FourierPilotCircleTree003368.covered
#print axioms covered
end FourierPilotCircleTree003366
