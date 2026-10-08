import FourierPilotCircleTree001321
import FourierPilotCircleTree001334
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001320
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001321.state FourierPilotCircleTree001334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001321.covered FourierPilotCircleTree001334.covered
#print axioms covered
end FourierPilotCircleTree001320
