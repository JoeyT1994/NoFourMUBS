import FourierPilotCircleTree004036
import FourierPilotCircleTree004037
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004035
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![19, 23, 31, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004036.state FourierPilotCircleTree004037.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004036.covered FourierPilotCircleTree004037.covered
#print axioms covered
end FourierPilotCircleTree004035
