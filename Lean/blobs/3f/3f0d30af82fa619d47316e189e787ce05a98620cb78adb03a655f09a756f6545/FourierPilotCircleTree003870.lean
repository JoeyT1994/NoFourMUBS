import FourierPilotCircleTree003871
import FourierPilotCircleTree003922
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003870
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003871.state FourierPilotCircleTree003922.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003871.covered FourierPilotCircleTree003922.covered
#print axioms covered
end FourierPilotCircleTree003870
