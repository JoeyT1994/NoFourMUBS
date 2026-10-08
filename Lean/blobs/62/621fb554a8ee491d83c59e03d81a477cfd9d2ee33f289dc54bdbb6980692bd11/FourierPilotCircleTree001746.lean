import FourierPilotCircleTree001747
import FourierPilotCircleTree001782
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001746
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![13, 4, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001747.state FourierPilotCircleTree001782.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001747.covered FourierPilotCircleTree001782.covered
#print axioms covered
end FourierPilotCircleTree001746
