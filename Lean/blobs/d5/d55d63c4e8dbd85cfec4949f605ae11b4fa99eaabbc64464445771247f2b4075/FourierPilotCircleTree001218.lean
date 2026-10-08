import FourierPilotCircleTree001219
import FourierPilotCircleTree001252
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001218
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![10, 13, 15, 15, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001219.state FourierPilotCircleTree001252.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001219.covered FourierPilotCircleTree001252.covered
#print axioms covered
end FourierPilotCircleTree001218
