import FourierPilotCircleTree001221
import FourierPilotCircleTree001222
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001220
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![20, 13, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001221.state FourierPilotCircleTree001222.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001221.covered FourierPilotCircleTree001222.covered
#print axioms covered
end FourierPilotCircleTree001220
