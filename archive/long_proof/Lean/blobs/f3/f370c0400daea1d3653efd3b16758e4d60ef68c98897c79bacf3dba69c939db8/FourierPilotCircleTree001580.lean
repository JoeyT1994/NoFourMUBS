import FourierPilotCircleTree001581
import FourierPilotCircleTree001598
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001580
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![28, 24, 16, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001581.state FourierPilotCircleTree001598.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001581.covered FourierPilotCircleTree001598.covered
#print axioms covered
end FourierPilotCircleTree001580
