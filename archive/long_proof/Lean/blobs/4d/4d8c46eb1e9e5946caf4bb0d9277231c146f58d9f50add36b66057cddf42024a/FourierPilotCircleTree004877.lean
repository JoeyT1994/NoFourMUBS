import FourierPilotCircleTree004878
import FourierPilotCircleTree004913
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004877
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![22, 23, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004878.state FourierPilotCircleTree004913.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004878.covered FourierPilotCircleTree004913.covered
#print axioms covered
end FourierPilotCircleTree004877
