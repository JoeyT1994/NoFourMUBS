import FourierPilotCircleTree001342
import FourierPilotCircleTree001377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001341
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001342.state FourierPilotCircleTree001377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001342.covered FourierPilotCircleTree001377.covered
#print axioms covered
end FourierPilotCircleTree001341
