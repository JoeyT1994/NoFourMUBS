import FourierPilotCircleTree001808
import FourierPilotCircleTree001831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001807
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001808.state FourierPilotCircleTree001831.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001808.covered FourierPilotCircleTree001831.covered
#print axioms covered
end FourierPilotCircleTree001807
