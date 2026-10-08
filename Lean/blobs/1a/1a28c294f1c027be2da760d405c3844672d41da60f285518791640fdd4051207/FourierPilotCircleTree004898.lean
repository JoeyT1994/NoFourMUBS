import FourierPilotCircleTree004899
import FourierPilotCircleTree004906
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004898
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![91, 93, 41, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004899.state FourierPilotCircleTree004906.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004899.covered FourierPilotCircleTree004906.covered
#print axioms covered
end FourierPilotCircleTree004898
