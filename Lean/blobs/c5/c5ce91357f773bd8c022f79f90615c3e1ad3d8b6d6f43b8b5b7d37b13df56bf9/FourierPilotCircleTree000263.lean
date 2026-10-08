import FourierPilotCircleTree000264
import FourierPilotCircleTree000265
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000263
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 7, 7, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000264.state FourierPilotCircleTree000265.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000264.covered FourierPilotCircleTree000265.covered
#print axioms covered
end FourierPilotCircleTree000263
