import FourierPilotCircleTree002059
import FourierPilotCircleTree002092
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002058
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 13, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002059.state FourierPilotCircleTree002092.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002059.covered FourierPilotCircleTree002092.covered
#print axioms covered
end FourierPilotCircleTree002058
