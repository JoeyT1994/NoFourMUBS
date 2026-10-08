import FourierPilotCircleTree000627
import FourierPilotCircleTree000628
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000626
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![46, 22, 20, 30, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000627.state FourierPilotCircleTree000628.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000627.covered FourierPilotCircleTree000628.covered
#print axioms covered
end FourierPilotCircleTree000626
