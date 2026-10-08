import FourierPilotCircleTree004235
import FourierPilotCircleTree004266
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004234
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004235.state FourierPilotCircleTree004266.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004235.covered FourierPilotCircleTree004266.covered
#print axioms covered
end FourierPilotCircleTree004234
