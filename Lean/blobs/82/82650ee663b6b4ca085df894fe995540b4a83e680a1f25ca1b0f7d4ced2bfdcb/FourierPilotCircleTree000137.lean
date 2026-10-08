import FourierPilotCircleTree000138
import FourierPilotCircleTree000139
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000137
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![27, 18, 20, 31, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000138.state FourierPilotCircleTree000139.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000138.covered FourierPilotCircleTree000139.covered
#print axioms covered
end FourierPilotCircleTree000137
