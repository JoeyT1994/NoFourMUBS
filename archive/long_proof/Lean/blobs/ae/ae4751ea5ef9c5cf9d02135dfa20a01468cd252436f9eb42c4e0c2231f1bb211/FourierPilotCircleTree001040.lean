import FourierPilotCircleTree001041
import FourierPilotCircleTree001042
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001040
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![77, 77, 63, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001041.state FourierPilotCircleTree001042.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001041.covered FourierPilotCircleTree001042.covered
#print axioms covered
end FourierPilotCircleTree001040
