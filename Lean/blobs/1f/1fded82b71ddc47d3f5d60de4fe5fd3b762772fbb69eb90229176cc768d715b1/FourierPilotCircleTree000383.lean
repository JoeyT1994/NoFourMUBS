import FourierPilotCircleTree000384
import FourierPilotCircleTree000385
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000383
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000384.state FourierPilotCircleTree000385.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000384.covered FourierPilotCircleTree000385.covered
#print axioms covered
end FourierPilotCircleTree000383
