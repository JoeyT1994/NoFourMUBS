import FourierPilotCircleTree003009
import FourierPilotCircleTree003010
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003008
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 4, 7, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003009.state FourierPilotCircleTree003010.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003009.covered FourierPilotCircleTree003010.covered
#print axioms covered
end FourierPilotCircleTree003008
