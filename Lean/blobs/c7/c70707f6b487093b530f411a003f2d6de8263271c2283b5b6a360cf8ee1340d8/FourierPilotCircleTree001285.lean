import FourierPilotCircleTree001286
import FourierPilotCircleTree001305
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001285
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![55, 20, 16, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001286.state FourierPilotCircleTree001305.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001286.covered FourierPilotCircleTree001305.covered
#print axioms covered
end FourierPilotCircleTree001285
