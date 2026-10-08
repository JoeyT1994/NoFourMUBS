import FourierPilotCircleTree001687
import FourierPilotCircleTree001688
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001686
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![10, 7, 13, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001687.state FourierPilotCircleTree001688.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001687.covered FourierPilotCircleTree001688.covered
#print axioms covered
end FourierPilotCircleTree001686
