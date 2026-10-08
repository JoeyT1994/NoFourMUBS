import FourierPilotCircleTree000157
import FourierPilotCircleTree000158
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000156
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000157.state FourierPilotCircleTree000158.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000157.covered FourierPilotCircleTree000158.covered
#print axioms covered
end FourierPilotCircleTree000156
