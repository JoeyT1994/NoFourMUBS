import FourierPilotCircleTree003066
import FourierPilotCircleTree003067
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003065
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 80, 127, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003066.state FourierPilotCircleTree003067.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003066.covered FourierPilotCircleTree003067.covered
#print axioms covered
end FourierPilotCircleTree003065
