import FourierPilotCircleTree004901
import FourierPilotCircleTree004902
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004900
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![91, 93, 82, 104, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004901.state FourierPilotCircleTree004902.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004901.covered FourierPilotCircleTree004902.covered
#print axioms covered
end FourierPilotCircleTree004900
