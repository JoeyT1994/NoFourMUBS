import FourierPilotCircleTree004900
import FourierPilotCircleTree004905
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004899
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![91, 93, 41, 104, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004900.state FourierPilotCircleTree004905.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004900.covered FourierPilotCircleTree004905.covered
#print axioms covered
end FourierPilotCircleTree004899
