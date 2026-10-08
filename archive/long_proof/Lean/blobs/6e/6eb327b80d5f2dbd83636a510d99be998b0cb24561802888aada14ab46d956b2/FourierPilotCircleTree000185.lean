import FourierPilotCircleTree000186
import FourierPilotCircleTree000187
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000185
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![28, 47, 31, 43, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000186.state FourierPilotCircleTree000187.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000186.covered FourierPilotCircleTree000187.covered
#print axioms covered
end FourierPilotCircleTree000185
