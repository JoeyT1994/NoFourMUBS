import FourierPilotCircleTree004090
import FourierPilotCircleTree004091
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004089
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![20, 58, 27, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004090.state FourierPilotCircleTree004091.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004090.covered FourierPilotCircleTree004091.covered
#print axioms covered
end FourierPilotCircleTree004089
