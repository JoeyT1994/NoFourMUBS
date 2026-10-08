import FourierPilotCircleTree004811
import FourierPilotCircleTree004814
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004810
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![98, 100, 109, 34, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004811.state FourierPilotCircleTree004814.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004811.covered FourierPilotCircleTree004814.covered
#print axioms covered
end FourierPilotCircleTree004810
