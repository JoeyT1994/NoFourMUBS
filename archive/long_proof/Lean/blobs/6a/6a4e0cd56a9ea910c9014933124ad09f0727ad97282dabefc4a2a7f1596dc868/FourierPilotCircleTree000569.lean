import FourierPilotCircleTree000570
import FourierPilotCircleTree000571
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000569
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![3, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000570.state FourierPilotCircleTree000571.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000570.covered FourierPilotCircleTree000571.covered
#print axioms covered
end FourierPilotCircleTree000569
