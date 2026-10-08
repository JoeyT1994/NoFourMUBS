import FourierPilotCircleTree000405
import FourierPilotCircleTree000406
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000404
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![9, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000405.state FourierPilotCircleTree000406.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000405.covered FourierPilotCircleTree000406.covered
#print axioms covered
end FourierPilotCircleTree000404
