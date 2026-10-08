import FourierPilotCircleTree003393
import FourierPilotCircleTree003394
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003392
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![23, 19, 31, 31, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003393.state FourierPilotCircleTree003394.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003393.covered FourierPilotCircleTree003394.covered
#print axioms covered
end FourierPilotCircleTree003392
