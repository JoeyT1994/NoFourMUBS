import FourierPilotCircleTree001206
import FourierPilotCircleTree001255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001205
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001206.state FourierPilotCircleTree001255.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001206.covered FourierPilotCircleTree001255.covered
#print axioms covered
end FourierPilotCircleTree001205
