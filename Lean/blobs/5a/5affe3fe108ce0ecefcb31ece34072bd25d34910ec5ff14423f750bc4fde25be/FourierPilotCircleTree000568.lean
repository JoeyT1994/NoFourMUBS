import FourierPilotCircleTree000569
import FourierPilotCircleTree000572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000568
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000569.state FourierPilotCircleTree000572.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000569.covered FourierPilotCircleTree000572.covered
#print axioms covered
end FourierPilotCircleTree000568
