import FourierPilotCircleTree004809
import FourierPilotCircleTree004810
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004808
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![98, 100, 54, 34, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004809.state FourierPilotCircleTree004810.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004809.covered FourierPilotCircleTree004810.covered
#print axioms covered
end FourierPilotCircleTree004808
