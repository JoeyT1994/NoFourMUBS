import FourierPilotCircleTree001236
import FourierPilotCircleTree001247
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001235
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![40, 55, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001236.state FourierPilotCircleTree001247.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001236.covered FourierPilotCircleTree001247.covered
#print axioms covered
end FourierPilotCircleTree001235
