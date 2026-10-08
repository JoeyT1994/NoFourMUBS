import FourierPilotCircleTree000749
import FourierPilotCircleTree000750
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000748
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 27, 17, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000749.state FourierPilotCircleTree000750.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000749.covered FourierPilotCircleTree000750.covered
#print axioms covered
end FourierPilotCircleTree000748
