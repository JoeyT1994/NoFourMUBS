import FourierPilotCircleTree000615
import FourierPilotCircleTree000616
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000614
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![23, 11, 10, 15, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000615.state FourierPilotCircleTree000616.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000615.covered FourierPilotCircleTree000616.covered
#print axioms covered
end FourierPilotCircleTree000614
