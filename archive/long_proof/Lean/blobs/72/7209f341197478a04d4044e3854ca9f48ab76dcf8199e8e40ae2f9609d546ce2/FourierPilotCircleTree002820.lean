import FourierPilotCircleTree002821
import FourierPilotCircleTree002828
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![98, 93, 32, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002821.state FourierPilotCircleTree002828.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002821.covered FourierPilotCircleTree002828.covered
#print axioms covered
end FourierPilotCircleTree002820
