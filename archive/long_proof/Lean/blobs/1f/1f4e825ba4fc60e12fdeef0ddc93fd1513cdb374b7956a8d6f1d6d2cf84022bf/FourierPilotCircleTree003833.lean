import FourierPilotCircleTree003834
import FourierPilotCircleTree003835
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003833
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 27, 31, 30, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003834.state FourierPilotCircleTree003835.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003834.covered FourierPilotCircleTree003835.covered
#print axioms covered
end FourierPilotCircleTree003833
