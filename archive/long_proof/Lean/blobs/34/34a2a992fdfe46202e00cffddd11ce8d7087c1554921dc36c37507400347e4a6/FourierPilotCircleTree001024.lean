import FourierPilotCircleTree001025
import FourierPilotCircleTree001026
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001024
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![19, 9, 15, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001025.state FourierPilotCircleTree001026.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001025.covered FourierPilotCircleTree001026.covered
#print axioms covered
end FourierPilotCircleTree001024
