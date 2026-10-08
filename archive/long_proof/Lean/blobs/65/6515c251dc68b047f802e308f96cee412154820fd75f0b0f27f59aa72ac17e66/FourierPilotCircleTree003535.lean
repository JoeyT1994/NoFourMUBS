import FourierPilotCircleTree003536
import FourierPilotCircleTree003537
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003535
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![6, 7, 4, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003536.state FourierPilotCircleTree003537.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003536.covered FourierPilotCircleTree003537.covered
#print axioms covered
end FourierPilotCircleTree003535
