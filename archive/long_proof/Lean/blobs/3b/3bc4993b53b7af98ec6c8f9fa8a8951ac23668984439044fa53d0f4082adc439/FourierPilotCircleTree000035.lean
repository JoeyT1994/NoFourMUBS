import FourierPilotCircleTree000036
import FourierPilotCircleTree000037
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000035
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![9, 24, 8, 26, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000036.state FourierPilotCircleTree000037.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000036.covered FourierPilotCircleTree000037.covered
#print axioms covered
end FourierPilotCircleTree000035
