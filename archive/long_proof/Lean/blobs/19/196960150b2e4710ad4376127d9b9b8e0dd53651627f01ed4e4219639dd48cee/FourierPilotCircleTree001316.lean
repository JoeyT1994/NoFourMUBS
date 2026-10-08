import FourierPilotCircleTree001317
import FourierPilotCircleTree001336
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001316
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 5, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001317.state FourierPilotCircleTree001336.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001317.covered FourierPilotCircleTree001336.covered
#print axioms covered
end FourierPilotCircleTree001316
