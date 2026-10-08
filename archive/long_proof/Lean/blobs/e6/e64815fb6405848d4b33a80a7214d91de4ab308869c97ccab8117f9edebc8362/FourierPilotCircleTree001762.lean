import FourierPilotCircleTree001763
import FourierPilotCircleTree001764
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001762
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![55, 17, 40, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001763.state FourierPilotCircleTree001764.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001763.covered FourierPilotCircleTree001764.covered
#print axioms covered
end FourierPilotCircleTree001762
