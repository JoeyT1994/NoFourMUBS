import FourierPilotCircleTree003387
import FourierPilotCircleTree003388
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003386
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![23, 9, 15, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003387.state FourierPilotCircleTree003388.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003387.covered FourierPilotCircleTree003388.covered
#print axioms covered
end FourierPilotCircleTree003386
