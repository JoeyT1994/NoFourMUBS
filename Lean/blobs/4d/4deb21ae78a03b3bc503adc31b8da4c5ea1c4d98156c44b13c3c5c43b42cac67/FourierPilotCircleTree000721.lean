import FourierPilotCircleTree000722
import FourierPilotCircleTree000789
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000721
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000722.state FourierPilotCircleTree000789.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000722.covered FourierPilotCircleTree000789.covered
#print axioms covered
end FourierPilotCircleTree000721
