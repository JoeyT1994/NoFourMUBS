import FourierPilotCircleTree000645
import FourierPilotCircleTree000650
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000644
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![93, 91, 41, 61, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000645.state FourierPilotCircleTree000650.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000645.covered FourierPilotCircleTree000650.covered
#print axioms covered
end FourierPilotCircleTree000644
