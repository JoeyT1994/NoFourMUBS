import FourierPilotCircleTree001355
import FourierPilotCircleTree001372
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001354
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 9, 8, 25, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001355.state FourierPilotCircleTree001372.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001355.covered FourierPilotCircleTree001372.covered
#print axioms covered
end FourierPilotCircleTree001354
