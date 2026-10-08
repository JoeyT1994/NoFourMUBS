import FourierPilotCircleTree000196
import FourierPilotCircleTree000197
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000195
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000196.state FourierPilotCircleTree000197.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000196.covered FourierPilotCircleTree000197.covered
#print axioms covered
end FourierPilotCircleTree000195
