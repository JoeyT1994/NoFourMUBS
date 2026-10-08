import FourierPilotCircleTree000769
import FourierPilotCircleTree000770
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000768
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![98, 50, 55, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000769.state FourierPilotCircleTree000770.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000769.covered FourierPilotCircleTree000770.covered
#print axioms covered
end FourierPilotCircleTree000768
