import FourierPilotCircleTree001147
import FourierPilotCircleTree001178
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001146
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 7, 7, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001147.state FourierPilotCircleTree001178.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001147.covered FourierPilotCircleTree001178.covered
#print axioms covered
end FourierPilotCircleTree001146
