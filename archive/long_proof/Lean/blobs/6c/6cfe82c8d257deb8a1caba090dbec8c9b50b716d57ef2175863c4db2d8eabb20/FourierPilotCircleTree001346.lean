import FourierPilotCircleTree001347
import FourierPilotCircleTree001348
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001346
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 4, 12, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001347.state FourierPilotCircleTree001348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001347.covered FourierPilotCircleTree001348.covered
#print axioms covered
end FourierPilotCircleTree001346
