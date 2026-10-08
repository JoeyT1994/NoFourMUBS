import FourierPilotCircleTree001315
import FourierPilotCircleTree001316
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001314
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001315.state FourierPilotCircleTree001316.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001315.covered FourierPilotCircleTree001316.covered
#print axioms covered
end FourierPilotCircleTree001314
