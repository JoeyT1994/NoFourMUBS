import FourierPilotCircleTree000604
import FourierPilotCircleTree000661
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000603
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 5, 7, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000604.state FourierPilotCircleTree000661.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000604.covered FourierPilotCircleTree000661.covered
#print axioms covered
end FourierPilotCircleTree000603
