import FourierPilotCircleTree003758
import FourierPilotCircleTree003785
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003757
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 7, 7, 11, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003758.state FourierPilotCircleTree003785.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003758.covered FourierPilotCircleTree003785.covered
#print axioms covered
end FourierPilotCircleTree003757
