import FourierPilotCircleTree000876
import FourierPilotCircleTree000877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000875
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 4, 7, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000876.state FourierPilotCircleTree000877.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000876.covered FourierPilotCircleTree000877.covered
#print axioms covered
end FourierPilotCircleTree000875
