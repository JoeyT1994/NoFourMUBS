import FourierPilotCircleTree000945
import FourierPilotCircleTree000948
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000944
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 24, 27, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000945.state FourierPilotCircleTree000948.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000945.covered FourierPilotCircleTree000948.covered
#print axioms covered
end FourierPilotCircleTree000944
