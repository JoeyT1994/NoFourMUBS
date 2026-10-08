import FourierPilotCircleTree004755
import FourierPilotCircleTree004756
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004754
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004755.state FourierPilotCircleTree004756.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004755.covered FourierPilotCircleTree004756.covered
#print axioms covered
end FourierPilotCircleTree004754
