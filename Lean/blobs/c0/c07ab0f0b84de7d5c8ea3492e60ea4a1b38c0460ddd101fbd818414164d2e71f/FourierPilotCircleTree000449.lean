import FourierPilotCircleTree000450
import FourierPilotCircleTree000453
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000449
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![5, 5, 4, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000450.state FourierPilotCircleTree000453.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000450.covered FourierPilotCircleTree000453.covered
#print axioms covered
end FourierPilotCircleTree000449
