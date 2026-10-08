import FourierPilotCircleTree004903
import FourierPilotCircleTree004904
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004902
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![91, 93, 82, 104, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004903.state FourierPilotCircleTree004904.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004903.covered FourierPilotCircleTree004904.covered
#print axioms covered
end FourierPilotCircleTree004902
