import FourierPilotCircleTree000703
import FourierPilotCircleTree000704
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000702
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000703.state FourierPilotCircleTree000704.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000703.covered FourierPilotCircleTree000704.covered
#print axioms covered
end FourierPilotCircleTree000702
