import FourierPilotCircleTree003317
import FourierPilotCircleTree003318
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003316
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![30, 20, 27, 52, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003317.state FourierPilotCircleTree003318.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003317.covered FourierPilotCircleTree003318.covered
#print axioms covered
end FourierPilotCircleTree003316
