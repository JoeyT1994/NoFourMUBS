import FourierPilotCircleTree003829
import FourierPilotCircleTree003830
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003828
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 13, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003829.state FourierPilotCircleTree003830.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003829.covered FourierPilotCircleTree003830.covered
#print axioms covered
end FourierPilotCircleTree003828
