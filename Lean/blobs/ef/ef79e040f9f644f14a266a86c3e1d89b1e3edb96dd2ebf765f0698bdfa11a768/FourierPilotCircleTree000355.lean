import FourierPilotCircleTree000356
import FourierPilotCircleTree000371
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000355
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![14, 10, 13, 11, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000356.state FourierPilotCircleTree000371.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000356.covered FourierPilotCircleTree000371.covered
#print axioms covered
end FourierPilotCircleTree000355
