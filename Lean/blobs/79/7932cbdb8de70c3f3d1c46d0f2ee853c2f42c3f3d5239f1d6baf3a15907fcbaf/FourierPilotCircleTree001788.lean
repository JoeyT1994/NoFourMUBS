import FourierPilotCircleTree001789
import FourierPilotCircleTree001790
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001788
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![7, 4, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001789.state FourierPilotCircleTree001790.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001789.covered FourierPilotCircleTree001790.covered
#print axioms covered
end FourierPilotCircleTree001788
