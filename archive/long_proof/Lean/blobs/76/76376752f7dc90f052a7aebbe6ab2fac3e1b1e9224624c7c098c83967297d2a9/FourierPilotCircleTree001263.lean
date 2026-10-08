import FourierPilotCircleTree001264
import FourierPilotCircleTree001265
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001263
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001264.state FourierPilotCircleTree001265.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001264.covered FourierPilotCircleTree001265.covered
#print axioms covered
end FourierPilotCircleTree001263
