import FourierPilotCircleTree001234
import FourierPilotCircleTree001235
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001233
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![40, 55, 31, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001234.state FourierPilotCircleTree001235.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001234.covered FourierPilotCircleTree001235.covered
#print axioms covered
end FourierPilotCircleTree001233
