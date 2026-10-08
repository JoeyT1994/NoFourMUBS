import FourierPilotCircleTree000602
import FourierPilotCircleTree000603
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000601
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000602.state FourierPilotCircleTree000603.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000602.covered FourierPilotCircleTree000603.covered
#print axioms covered
end FourierPilotCircleTree000601
