import FourierPilotCircleTree001349
import FourierPilotCircleTree001374
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001348
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 4, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001349.state FourierPilotCircleTree001374.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001349.covered FourierPilotCircleTree001374.covered
#print axioms covered
end FourierPilotCircleTree001348
