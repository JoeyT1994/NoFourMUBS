import FourierPilotCircleTree001346
import FourierPilotCircleTree001375
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001345
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001346.state FourierPilotCircleTree001375.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001346.covered FourierPilotCircleTree001375.covered
#print axioms covered
end FourierPilotCircleTree001345
