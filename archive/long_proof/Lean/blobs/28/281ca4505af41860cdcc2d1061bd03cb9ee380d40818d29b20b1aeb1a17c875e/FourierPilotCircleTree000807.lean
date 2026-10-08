import FourierPilotCircleTree000808
import FourierPilotCircleTree000809
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000807
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 5, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000808.state FourierPilotCircleTree000809.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000808.covered FourierPilotCircleTree000809.covered
#print axioms covered
end FourierPilotCircleTree000807
