import FourierPilotCircleTree001033
import FourierPilotCircleTree001034
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001032
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![38, 38, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001033.state FourierPilotCircleTree001034.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001033.covered FourierPilotCircleTree001034.covered
#print axioms covered
end FourierPilotCircleTree001032
