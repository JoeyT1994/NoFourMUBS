import FourierPilotCircleTree001039
import FourierPilotCircleTree001040
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001038
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![77, 38, 63, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001039.state FourierPilotCircleTree001040.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001039.covered FourierPilotCircleTree001040.covered
#print axioms covered
end FourierPilotCircleTree001038
