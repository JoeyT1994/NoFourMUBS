import FourierPilotCircleTree003665
import FourierPilotCircleTree003712
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003664
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 5, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003665.state FourierPilotCircleTree003712.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003665.covered FourierPilotCircleTree003712.covered
#print axioms covered
end FourierPilotCircleTree003664
