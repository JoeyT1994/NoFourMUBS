import FourierPilotCircleTree003823
import FourierPilotCircleTree003824
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003822
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003823.state FourierPilotCircleTree003824.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003823.covered FourierPilotCircleTree003824.covered
#print axioms covered
end FourierPilotCircleTree003822
