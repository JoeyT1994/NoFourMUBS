import FourierPilotCircleTree003064
import FourierPilotCircleTree003065
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003063
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 80, 63, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003064.state FourierPilotCircleTree003065.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003064.covered FourierPilotCircleTree003065.covered
#print axioms covered
end FourierPilotCircleTree003063
