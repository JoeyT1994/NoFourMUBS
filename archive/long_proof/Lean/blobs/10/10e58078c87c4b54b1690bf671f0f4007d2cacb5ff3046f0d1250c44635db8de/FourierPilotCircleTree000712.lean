import FourierPilotCircleTree000713
import FourierPilotCircleTree000714
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000712
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 12, 4, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000713.state FourierPilotCircleTree000714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000713.covered FourierPilotCircleTree000714.covered
#print axioms covered
end FourierPilotCircleTree000712
