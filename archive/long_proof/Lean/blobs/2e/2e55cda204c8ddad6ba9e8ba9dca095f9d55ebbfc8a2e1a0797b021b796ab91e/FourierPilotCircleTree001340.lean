import FourierPilotCircleTree001341
import FourierPilotCircleTree001378
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001340
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 2, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001341.state FourierPilotCircleTree001378.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001341.covered FourierPilotCircleTree001378.covered
#print axioms covered
end FourierPilotCircleTree001340
