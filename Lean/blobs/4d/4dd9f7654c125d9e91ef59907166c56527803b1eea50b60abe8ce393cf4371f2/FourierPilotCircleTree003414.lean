import FourierPilotCircleTree003415
import FourierPilotCircleTree003418
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003414
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003415.state FourierPilotCircleTree003418.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003415.covered FourierPilotCircleTree003418.covered
#print axioms covered
end FourierPilotCircleTree003414
