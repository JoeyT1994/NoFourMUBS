import FourierPilotCircleTree004041
import FourierPilotCircleTree004052
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004040
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![19, 47, 31, 52, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004041.state FourierPilotCircleTree004052.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004041.covered FourierPilotCircleTree004052.covered
#print axioms covered
end FourierPilotCircleTree004040
