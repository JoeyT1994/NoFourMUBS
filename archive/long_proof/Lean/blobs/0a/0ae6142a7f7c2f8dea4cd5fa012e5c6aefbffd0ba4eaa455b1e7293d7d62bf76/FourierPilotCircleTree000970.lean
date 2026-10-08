import FourierPilotCircleTree000971
import FourierPilotCircleTree000974
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000970
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 49, 55, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000971.state FourierPilotCircleTree000974.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000971.covered FourierPilotCircleTree000974.covered
#print axioms covered
end FourierPilotCircleTree000970
