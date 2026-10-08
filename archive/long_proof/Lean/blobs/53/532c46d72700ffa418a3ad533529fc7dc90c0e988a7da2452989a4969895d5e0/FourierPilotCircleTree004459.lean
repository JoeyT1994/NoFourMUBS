import FourierPilotCircleTree004460
import FourierPilotCircleTree004461
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004459
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004460.state FourierPilotCircleTree004461.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004460.covered FourierPilotCircleTree004461.covered
#print axioms covered
end FourierPilotCircleTree004459
