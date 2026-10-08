import FourierPilotCircleTree001366
import FourierPilotCircleTree001367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001365
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![59, 18, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001366.state FourierPilotCircleTree001367.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001366.covered FourierPilotCircleTree001367.covered
#print axioms covered
end FourierPilotCircleTree001365
