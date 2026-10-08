import FourierPilotCircleTree003974
import FourierPilotCircleTree003975
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003973
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![59, 18, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003974.state FourierPilotCircleTree003975.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003974.covered FourierPilotCircleTree003975.covered
#print axioms covered
end FourierPilotCircleTree003973
